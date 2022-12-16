using System.IO;
using Newtonsoft.Json;
using AngleSharp.Html.Dom;
using System.Xml.Linq;
using AngleSharp.Html.Parser;
using System.Security.Principal;
using System.Transactions;
using CsvHelper;
using System.Globalization;
using CsvHelper.Configuration.Attributes;

namespace AddonManager.Models;
public abstract class LootImporter
{
    public virtual async Task Convert(string jsonText)
    {
        var jsonFileString = File.ReadAllText(@$"..\..\..\ItemDatabase\{FileName}.json");
        DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        //write dictionary to file
        File.WriteAllText(@$"..\..\..\ItemDatabase\{FileName}.json", JsonConvert.SerializeObject(await InnerConvert(dbItems, jsonText), Formatting.Indented));
    }

    internal abstract string FileName { get; }
    internal abstract Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText);
}

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        @"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne",
        @"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne#sells;50",
        @"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne#sells;100",
        @"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin",
        @"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin#sells;50",
        @"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin#sells;100",
        @"https://www.wowhead.com/wotlk/npc=29529/ninsianna"
    };

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        items.Items.Clear();

        await Common.ReadWowheadItemList(wowheadUriList, (row, itemId, itemName) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "";

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                if (success) return true;

                var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "");

                var currencyIdIndex = item.IndexOf("/");
                if (currencyIdIndex == -1)
                    currencyIdIndex = item.IndexOf("&");

                if (currencyIdIndex > -1)
                {
                    item = item.Substring(0, currencyIdIndex);

                    success = Int32.TryParse(item, out var currencyInteger);

                    if (success)
                    {
                        currencySource = item == "101" ? "Emblem of Heroism" : "Emblem of Valor";
                        currencyNumber = anchorObject.TextContent;
                        if (item == "101")
                            currencySourceLocation = "Emblem Vendor";
                        else
                            currencySourceLocation = "Emblem Vendor";
                    }
                }
                return success;
            });

            if (items.Items.ContainsKey(itemId))
            {
                items.Items.Remove(itemId);
            }
            var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
            {
                Name = itemName,
                SourceNumber = currencyNumber,
                Source = currencySource,
                SourceLocation = currencySourceLocation,
                SourceType = "Dungeon Token"
            });
        });

        return items;
    }
}

public class ProfessionImporter : LootImporter
{
    internal override string FileName { get => "ProfessionItemList"; }
    internal override Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);

        return default;
    }
}

public class DungeonImporter : LootImporter
{
    internal override string FileName { get => "DungeonItemList"; }
    internal override Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        foreach (var itemType in obj.boss)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Normal)",
                        SourceType = "Drop"
                    });
                }
            }

            foreach (var item in itemType.Heroic)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Heroic)",
                        SourceType = "Drop"
                    });
                }
            }
        }
        return Task.FromResult(items);
    }
}

public class RaidImporter : LootImporter
{
    private class RaidItem
    {
        [Index(0)]
        public string InstanceName { get; set; }

        [Index(1)]
        public string BossName { get; set; }

        [Index(2)]
        public string ItemName { get; set; }

        [Index(3)]
        public string ItemQuality { get; set; }

        [Index(4)]
        public int ItemId { get; set; }
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        var raidModifiers = new Dictionary<string, string> { { "H10", "Heroic 10" }, { "H25", "Heroic 25" }, { "N10", "10" }, { "N25", "10" } };


        using (var reader = new StreamReader(@$"..\..\..\wotlk-loot-table.csv"))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<RaidItem>();

            foreach (var record in records)
            {
                try
                {
                    var raidNameSplit = record.InstanceName.Split(" ");
                    var raidModifier = raidNameSplit[raidNameSplit.Length - 1].Trim('\"');

                    items.Items.TryAdd(record.ItemId, new DatabaseItem
                    {
                        Name = record.ItemName,
                        SourceNumber = "0",
                        Source = record.BossName,
                        SourceLocation = $"{string.Join(" ", raidNameSplit.Take(raidNameSplit.Length - 1))} ({raidModifiers[raidModifier]})",
                        SourceType = "Drop"
                    });
                }
                catch (Exception ex)
                {
                }
            }
        }

        return items;
    }
}

public class PvPImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
        {
            @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia",
            @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50",
            @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike",
            @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50",
            @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100",
            @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom",
            @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;50",
            @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe",
            @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50"
        };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        items.Items.Clear();

        await Common.ReadWowheadItemList(wowheadUriList, (row, itemId, itemName) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "";

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "");

                var currencyIdIndex = item.IndexOf("/");
                if (currencyIdIndex == -1)
                    currencyIdIndex = item.IndexOf("&");

                if (currencyIdIndex > -1)
                {
                    item = item.Substring(0, currencyIdIndex);

                    success = Int32.TryParse(item, out var currencyInteger);

                    if (success)
                    {
                        if (!string.IsNullOrWhiteSpace(currencySource))
                        {
                            currencySource += " & ";
                            currencyNumber += " & ";
                        }
                        var currentSource = item == "1901" ? "Honor Points" : "Arena Points";
                        currencySource += currentSource;

                        var currencyAmount = int.Parse(anchorObject.TextContent);
                        currencyNumber += currencyAmount.ToString();
                        if (currencySource.Contains("Arena"))
                            currencySourceLocation = "Arena Vendor";
                        else
                            currencySourceLocation = "PvP Vendor";
                    }

                }
                return success;
            });

            if (items.Items.ContainsKey(itemId))
            {
                if (items.Items[itemId].Source != currencySource)
                {
                    items.Items[itemId].SourceNumber += "/" + currencyNumber;
                    items.Items[itemId].Source += "/" + currencySource;
                    items.Items[itemId].SourceLocation += "/" + currencySourceLocation;
                }
            }
            else
            {
                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = currencyNumber,
                    Source = currencySource,
                    SourceLocation = currencySourceLocation,
                    SourceType = "PvP"
                });
            }
        });

        return items;
    }
}

public class ReputationImporter : LootImporter
{
    private List<(string, string)> wowheadUriList = new List<(string, string)>
        {
            (@"https://www.wowhead.com/wotlk/npc=31910/geen", "The Oracles"),
            (@"https://www.wowhead.com/wotlk/npc=31911/tanak", "Frenzyheart Tribe"),
            (@"https://www.wowhead.com/wotlk/npc=32540/lillehoff", "The Sons of Hodir"),
            (@"https://www.wowhead.com/wotlk/npc=31916/tanaika", "The Kalu'ak"),
            (@"https://www.wowhead.com/wotlk/npc=32533/cielstrasza", "The Wyrmrest Accord"),
            (@"https://www.wowhead.com/wotlk/npc=32538/duchess-mynx", "Knights of the Ebon Blade"),
            (@"https://www.wowhead.com/wotlk/npc=32287/archmage-alvareaux", "Kirin Tor"),
            (@"https://www.wowhead.com/wotlk/npc=30431/veteran-crusader-aliocha-segard", "Argent Crusade"),
            (@"https://www.wowhead.com/wotlk/npc=32565/gara-skullcrush", "Horde Expedition"),
            (@"https://www.wowhead.com/wotlk/npc=32773/logistics-officer-brighton", "Alliance Vanguard")
        };

    internal override string FileName { get => "ReputationItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        items.Items.Clear();

        foreach (var repVendor in wowheadUriList)
        {
            await Common.LoadFromWebPage(repVendor.Item1, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);
                Common.ReadWowheadItemList(doc, (row, itemId, itemName) =>
                {
                    var standingColumn = row.Children[5];
                    if (standingColumn != null)
                    {
                        var reputation = standingColumn.TextContent;

                        var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                        {
                            Name = itemName,
                            SourceNumber = "0",
                            Source = repVendor.Item2,
                            SourceLocation = reputation,
                            SourceType = "Reputation"
                        });
                    }
                });
            });
        }
        return items;
    }
}