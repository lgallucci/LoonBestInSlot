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
using AngleSharp.Dom;
using System.Windows.Documents;

namespace AddonManager.Models;
public abstract class LootImporter
{
    public virtual async Task Convert(string jsonText)
    {
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\{FileName}.json");
        DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        //write dictionary to file
        File.WriteAllText(@$"{Constants.ItemDbPath}\{FileName}.json", JsonConvert.SerializeObject(await InnerConvert(dbItems, jsonText), Formatting.Indented));
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
    private List<(string, string)> dungeonUriList = new List<(string, string)>
        {
            (@"https://www.icy-veins.com/wotlk-classic/utgarde-keep-dungeon-guide", "Utgarde Keep"),
            (@"https://www.icy-veins.com/wotlk-classic/the-nexus-dungeon-guide", "The Nexus"),
            (@"https://www.icy-veins.com/wotlk-classic/azjol-nerub-dungeon-guide", "Azjol-Nerub"),
            (@"https://www.icy-veins.com/wotlk-classic/ahn-kahet-the-old-kingdom-dungeon-guide", "Ahn'kahet: The Old Kingdom"),
            (@"https://www.icy-veins.com/wotlk-classic/drak-tharon-keep-dungeon-guide", "Drak'Tharon"),
            (@"https://www.icy-veins.com/wotlk-classic/the-violet-hold-dungeon-guide", "The Violet Hold"),
            (@"https://www.icy-veins.com/wotlk-classic/gundrak-dungeon-guide", "Gundrak"),
            (@"https://www.icy-veins.com/wotlk-classic/halls-of-stone-dungeon-guide", "Halls of Stone"),
            (@"https://www.icy-veins.com/wotlk-classic/halls-of-lightning-dungeon-guide", "Halls of Lightning"),
            (@"https://www.icy-veins.com/wotlk-classic/utgarde-pinnacle-dungeon-guide", "Utgarde Pinnacle"),
            (@"https://www.icy-veins.com/wotlk-classic/the-oculus-dungeon-guide", "The Oculus"),
            (@"https://www.icy-veins.com/wotlk-classic/the-culling-of-stratholme-dungeon-guide", "The Culling of Stratholme"),
            //(@"https://www.icy-veins.com/wotlk-classic/trial-of-the-champion-dungeon-guide", "Trial of the Champion"),
            //(@"https://www.icy-veins.com/wotlk-classic/the-forge-of-souls-dungeon-guide", "The Forge of Souls"),
            //(@"https://www.icy-veins.com/wotlk-classic/pit-of-saron-dungeon-guide", "Pit of Saron"),
            //(@"https://www.icy-veins.com/wotlk-classic/halls-of-reflection-dungeon-guide", "Halls of Reflection"),
        };

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        items.Items.Clear();

        foreach (var dungeonUri in dungeonUriList)
        {
            await Common.LoadFromWebPage(dungeonUri.Item1, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

                var htmlElements = doc.QuerySelectorAll(".heading_container.heading_number_3");
                if (htmlElements != null && htmlElements.Length > 0)
                {
                    foreach (var htmlElement in htmlElements)
                    {
                        var success = false;

                        //find h3 and get boss name
                        var bossName = htmlElement.QuerySelector("h3")?.TextContent;

                        AddLootItems(htmlElement, bossName, dungeonUri.Item2, items);                        
                    }
                }
            });
        }
        return items;
    }

    private (int, string) GetItemFromTableRow(IHtmlTableRowElement row)
    {
        var tableCell = row.Cells[0];
        var itemId = 0;
        string name = string.Empty;
        var itemSpan = tableCell.QuerySelector("span > span");
        var dataString = string.Empty;
        if (itemSpan != null)
        {
            name = itemSpan.TextContent;
            dataString = ((IHtmlSpanElement)itemSpan).GetAttribute("data-wowhead");
        }
        else
        {
            var itemAnchor = tableCell.QuerySelector("span > a");
            if (itemAnchor != null)
            {
                name = itemAnchor.TextContent;
                dataString = itemAnchor.GetAttribute("data-wowhead");
            }
        }

        var item = dataString?.Replace("&domain=wotlk", "").Replace("item=", "");
        Int32.TryParse(item, out itemId);
        return (itemId, name);
    }

    private void LoopThroughTable(IHtmlTableElement table, string bossName, string dungeonName, string dungeonModifier, DatabaseItems items)
    {
        if (table == null)
            return;

        var firstRow = false;
        foreach (var row in table.Rows)
        {
            if (!firstRow)
            {
                firstRow = true;
                continue;
            }

            var rowValues = GetItemFromTableRow(row);
            items.Items.TryAdd(rowValues.Item1, new DatabaseItem
            {
                Name = rowValues.Item2,
                SourceNumber = "0",
                Source = bossName,
                SourceLocation = $"{dungeonName} ({dungeonModifier})",
                SourceType = "Drop"
            });
        }
    }

    private IElement FindNextTableHeader(IElement currentElement, ref string dungeonModifier)
    {
        var foundTable = false;
        while (!foundTable)
        {
            foundTable = true;
            currentElement = currentElement.NextElementSibling;

            if (currentElement == null)
            {
                return null;
            }
            if (currentElement.ClassName == "heading_container heading_number_3")
            {
                return null;
            }

            if (currentElement.ClassName == "heading_container heading_number_4")
            {
                var headerChild = currentElement.QuerySelector("h4");
                if (headerChild != null && headerChild.TextContent.Contains("Loot from Heroic"))
                    dungeonModifier = "Heroic";
                else if (headerChild != null && headerChild.TextContent.Contains("Loot from Normal"))
                    dungeonModifier = "Normal";
                else
                    foundTable = false;
            }
            else
                foundTable = false;
        }
        return currentElement;
    }

    private void AddLootItems(IElement htmlElement, string bossName, string dungeonName, DatabaseItems items)
    {
        var dungeonModifier = string.Empty;

        htmlElement = FindNextTableHeader(htmlElement, ref dungeonModifier);
        while (htmlElement != null)
        {
            var table = htmlElement.NextElementSibling;
            if (table is IHtmlTableElement)
            {
                LoopThroughTable(table as IHtmlTableElement, bossName, dungeonName, dungeonModifier, items);
            }

            htmlElement = FindNextTableHeader(htmlElement, ref dungeonModifier);
        }
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


        using (var reader = new StreamReader(@$".\wotlk-loot-table.csv"))
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