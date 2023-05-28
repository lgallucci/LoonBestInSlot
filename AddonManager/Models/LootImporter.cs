using System;
using System.Globalization;
using System.IO;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using CsvHelper;
using CsvHelper.Configuration.Attributes;
using Newtonsoft.Json;

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
        @"https://www.wowhead.com/wotlk/npc=33964/arcanist-firael",
        @"https://www.wowhead.com/wotlk/npc=33964/arcanist-firael#sells;50"
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
                        currencySource = item == "101" ? "Emblem of Heroism" :
                            item == "102" ? "Emblem of Valor" :
                            item == "221" ? "Emblem of Conquest" :
                            item == "301" ? "Emblem of Triumph" :
                            item == "341" ? "Emblem of Frost" : "unknown";

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
        throw new NotImplementedException();
    }
}

public class DungeonImporter : LootImporter
{
    private List<(string, string)> dungeonUriList = new List<(string, string)>
        {
            (@"https://www.wowhead.com/wotlk/guide/utgarde-keep-loot", "Utgarde Keep"),
            (@"https://www.wowhead.com/wotlk/guide/the-nexus-loot", "The Nexus"),
            (@"https://www.wowhead.com/wotlk/guide/ahnkahet-loot", "Ahn'kahet: The Old Kingdom"),
            (@"https://www.wowhead.com/wotlk/guide/azjol-nerub-loot", "Azjol-Nerub"),
            (@"https://www.wowhead.com/wotlk/guide/draktharon-keep-loot", "Drak'Tharon Keep"),
            (@"https://www.wowhead.com/wotlk/guide/the-violet-hold-loot", "The Violet Hold"),
            (@"https://www.wowhead.com/wotlk/guide/gundrak-loot", "Gundrak"),
            (@"https://www.wowhead.com/wotlk/guide/halls-of-stone-loot", "Halls of Stone"),
            (@"https://www.wowhead.com/wotlk/guide/halls-of-lightning-loot", "Halls of Lightning"),
            (@"https://www.wowhead.com/wotlk/guide/utgarde-pinnacle-loot", "Utgarde Pinnacle"),
            (@"https://www.wowhead.com/wotlk/guide/the-oculus-loot", "The Oculus"),
            (@"https://www.wowhead.com/wotlk/guide/the-culling-of-stratholme-loot", "The Culling of Stratholme"),
            (@"https://www.wowhead.com/wotlk/guide/trial-of-the-champion-loot", "Trial of the Champion"),
            (@"https://www.wowhead.com/wotlk/guide/halls-of-reflection-loot", "Halls of Reflection"),
            (@"https://www.wowhead.com/wotlk/guide/the-forge-of-souls-loot", "The Forge of Souls"),
            (@"https://www.wowhead.com/wotlk/guide/pit-of-saron-loot", "Pit of Saron")
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

                var htmlElements = doc.QuerySelectorAll("#guide-body h2");
                if (htmlElements != null && htmlElements.Length > 0)
                {
                    foreach (var htmlElement in htmlElements)
                    {
                        AddLootItems(htmlElement, dungeonUri.Item2, items);                        
                    }
                }
            });
        }
        return items;
    }

    private (int, string) GetItemFromTableRow(IHtmlTableRowElement row)
    {
        var tableCell = row.Cells[1];
        var itemId = 0;
        var itemElement = tableCell.QuerySelector("a");
        string name = string.Empty;
        if (itemElement != null)
        {
            var item = ((IHtmlAnchorElement)itemElement).PathName.Replace("/wotlk", "").Replace("/item=", "");

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");

            item = item.Substring(0, itemIdIndex);
            Int32.TryParse(item, out itemId);
            name = itemElement.TextContent.Trim();
        }

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
            if (!items.Items.TryAdd(rowValues.Item1, new DatabaseItem
            {
                Name = rowValues.Item2,
                SourceNumber = "0",
                Source = bossName,
                SourceLocation = $"{dungeonName} ({dungeonModifier})",
                SourceType = "Drop"
            }))
            {
                if (!items.Items[rowValues.Item1].Source.Contains(bossName))
                {
                    items.Items[rowValues.Item1].Source = $"{items.Items[rowValues.Item1].Source} & {bossName}";
                }
            }
        }
    }

    private IElement FindNextTableHeader(IElement currentElement, ref string dungeonModifier, ref string bossName)
    {
        var foundTable = false;
        while (!foundTable)
        {
            foundTable = true;

            if (currentElement == null)
            {
                return null;
            }
            if (currentElement.NodeName == "DIV" && currentElement.FirstElementChild != null)
            {
                currentElement = FindNextTableHeader(currentElement.FirstElementChild, ref dungeonModifier, ref bossName);
            }
            else if (currentElement.NodeName == "H3")
            {
                var bossContent = currentElement.TextContent.Split('(');
                bossName = bossContent[0].Replace("/", " & ").Replace("  ", " ").Trim();

                if (bossName == "Trash")
                    bossName = "Trash Mobs";
                else if (bossName == "Tribunal Chest")
                    bossName = "The Tribunal of Ages";

                if (bossContent[1].Contains("Normal"))
                    dungeonModifier = "Normal";                
                else if (bossContent[1].Contains("Heroic"))
                    dungeonModifier = "Heroic";
                else
                    foundTable = false;
            }
            else
                foundTable = false;

            if (!foundTable)
                currentElement = currentElement.NextElementSibling;
        }
        return currentElement;
    }

    private void AddLootItems(IElement htmlElement, string dungeonName, DatabaseItems items)
    {
        var dungeonModifier = string.Empty;
        var bossName = string.Empty;

        htmlElement = FindNextTableHeader(htmlElement, ref dungeonModifier, ref bossName);
        while (htmlElement != null)
        {
            var table = htmlElement.NextElementSibling;
            if (table is IHtmlTableElement)
            {
                LoopThroughTable(table as IHtmlTableElement, bossName, dungeonName, dungeonModifier, items);
            }

            htmlElement = FindNextTableHeader(table, ref dungeonModifier, ref bossName);
        }
    }
}

public class RaidImporter : LootImporter
{
    private class RaidItem
    {
        [Index(0)]
        public string? InstanceName { get; set; }

        [Index(1)]
        public string? BossName { get; set; }

        [Index(2)]
        public string? ItemName { get; set; }

        [Index(3)]
        public string? ItemQuality { get; set; }

        [Index(4)]
        public int ItemId { get; set; }
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
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

                    _ = items.Items.TryAdd(record.ItemId, new DatabaseItem
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

        return Task.FromResult(items);
    }
}

public class PvPImporter : LootImporter
{
    private List<(string, string)> wowheadUriList = new List<(string, string)>
        {
            (@"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike", "Deadly, Battlemaster"),
            (@"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50","Deadly, Battlemaster"),
            (@"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;100","Deadly, Battlemaster"),
            (@"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer", "Hateful"),
            (@"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;150", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;200", "Furious"),
            (@"https://www.wowhead.com/wotlk/npc=31865/zom-bocom", "Hateful, Savage"),
            (@"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;50", "Hateful, Savage"),
            (@"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;100", "Hateful, Savage"),
            (@"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;150", "Hateful, Savage"),
            (@"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe", "Deadly"),
            (@"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50", "Deadly"),
            (@"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;100", "Deadly"),
            (@"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;150", "Deadly"),
            (@"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix", "Furious")
        };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, string jsonText)
    {
        items.Items.Clear();

        foreach (var webAddress in wowheadUriList)
        {
            await Common.LoadFromWebPage(webAddress.Item1, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

                Common.ReadWowheadItemList(doc, (row, itemId, itemName) =>
                {
                    var success = false;
                    var currencySource = "";
                    var currencyNumber = "";
                    var currencySourceLocation = "";

                    if (!webAddress.Item2.Split(",").Any(i => itemName.Contains(i.Trim())))
                        return;

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
            });
        }

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