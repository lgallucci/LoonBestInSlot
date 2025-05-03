using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> raidUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/classic/guide/season-of-discovery/raids/scarlet-enclave-loot", "Scarlet Enclave" },
        { @"https://www.wowhead.com/classic/guide/wow-classic-zulgurub-loot-guide", "Zul'Gurub" },
    };

    private List<string> excludedWords = new List<string>()
    {
        "Satchel",
        "Skin Bag",
    };

    private Dictionary<string, string> bossTableQueries = new Dictionary<string, string>()
    {
        { "#razorgore-the-untamed-loot ~ .clean-markup-table-borders", "Razorgore the Untamed" },

    };


    private Dictionary<string, (string, string)> bossUriList = new Dictionary<string, (string, string)>
    {
        // { @"", ("Reborn Council", "Scarlet Enclave") },
        // { @"", ("Lillian Voss", "Scarlet Enclave") },
        
        //Edge of Madness
        { @"https://www.wowhead.com/classic/npc=15082/grilek#drops", ("Gri'lek (Madness)", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=15083/hazzarah#drops", ("Hazza'rah (Madness)", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=15084/renataki#drops", ("Renataki (Madness)", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=15085/wushoolay#drops", ("Wushoolay (Madness)", "Zul'Gurub") },

        { @"https://www.wowhead.com/classic/npc=14507/high-priest-venoxis#drops", ("High Priest Venoxis", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=14517/high-priestess-jeklik#drops", ("High Priestess Jeklik", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=14510/high-priestess-marli#drops", ("High Priestess Mar'li", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=14509/high-priest-thekal#drops", ("High Priest Thekal", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=14515/high-priestess-arlokk#drops", ("High Priestess Arlokk", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=14834/hakkar#drops", ("Hakkar", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=11382/bloodlord-mandokir#drops", ("Bloodlord Mandokir", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=15114/gahzranka#drops", ("Gahz'ranka", "Zul'Gurub") },
        { @"https://www.wowhead.com/classic/npc=11380/jindo-the-hexxer#drops", ("Jin'do the Hexxer", "Zul'Gurub") },
    };
    

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        // foreach(var raidUri in raidUriList)
        // {
        //     items.AddItems(await ConvertRaidLoot(raidUri, items, writeToLog));
        // }
        foreach(var raidUri in raidUriList)
        {
            await ConvertGeneralRaidLoot(raidUri, items, writeToLog);
        }

         //await GetItemDrops(items, bossUriList.Keys.Where(b => b.Contains("drops")), writeToLog);
        // await GetItemContains(items, bossUriList.Keys.Where(b => b.Contains("contains")), writeToLog);

        return items;
    }

    private List<string> _madnessBosses = new List<string>() { "Gri'lek", "Hazza'rah", "Renataki", "Wushoolay" };

    private async Task ConvertGeneralRaidLoot(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        
        await Common.LoadFromWebPage(raidUri.Key, (uri, doc) =>
        {
            var tables = doc.QuerySelectorAll("div.markup-table-wrapper table");
            foreach(var table in tables)
            {
                if (table != null)
                {
                    LoopThroughTable(table as IHtmlTableElement, (itemId, itemName, bossName) => {

                        if (bossName == "Charred Emblem")
                            bossName = "Grand Crusader Caldoran";

                        if (bossName == "Wing of Balnazzar")
                            bossName = "Balnazzar";

                        if (bossName == "Caladboulder")
                            bossName = "Sword in the Stone";

                        if (bossName == "TBD")
                            bossName = "unknown";

                        if (_madnessBosses.Contains(bossName))
                            bossName = bossName + " (Madness)";

                        if (bossName == "Zone Drop")
                            bossName = "Trash Mobs";

                        if (itemId > 0 && !excludedWords.Any(w => itemName.Contains(w)))
                        {
                            items.AddItem(itemId, new DatabaseItem() 
                            {
                                Name = itemName,
                                Source = bossName,
                                SourceType = "Drop",
                                SourceNumber = "0",
                                SourceLocation = raidUri.Value,
                            });
                        }
                    }, (itemId, itemName, questName, faction) => {
                        throw new NotImplementedException("Quest drops not implemented yet.");
                    });
                }
            }
        }, writeToLog);
    }

    private async Task GetItemDrops(DatabaseItems items, IEnumerable<string> uriList, Action<string> writeToLog)
    {
        await Common.ReadWowheadDropsList(uriList, (uri, row, itemId, item) => {
            var sourceFaction = "B";
            var isPurple = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
            if (!isPurple) return;
            if (row.Children[6].Children.Count() > 0)
            {
                var factionColumn = (IElement)row.Children[6].ChildNodes[0];
                if (factionColumn?.ClassName == "icon-horde")
                    sourceFaction = "H";
                else if (factionColumn?.ClassName == "icon-alliance")
                    sourceFaction = "A";
            }

            items.AddItem(itemId, new DatabaseItem 
            {
                Name = item?.TextContent ?? "unknown",
                Source = bossUriList[uri].Item1,
                SourceType = "Drop",
                SourceNumber = "0",
                SourceLocation = bossUriList[uri].Item2,
                SourceFaction = sourceFaction
            });
        }, writeToLog);
    }

    private async Task GetItemContains(DatabaseItems items, IEnumerable<string> uriList, Action<string> writeToLog)
    {
        await Common.ReadWowheadContainsList(uriList, (uri, row, itemId, item) => {
            var sourceFaction = "B";
            var isPurple = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
            if (!isPurple) return;
            if (row.Children[6].Children.Count() > 0)
            {
                var factionColumn = (IElement)row.Children[6].ChildNodes[0];
                if (factionColumn?.ClassName == "icon-horde")
                    sourceFaction = "H";
                else if (factionColumn?.ClassName == "icon-alliance")
                    sourceFaction = "A";
            }

            items.AddItem(itemId, new DatabaseItem 
            {
                Name = item?.TextContent ?? "unknown",
                Source = bossUriList[uri].Item1,
                SourceType = "Drop",
                SourceNumber = "0",
                SourceLocation = bossUriList[uri].Item2,
                SourceFaction = sourceFaction
            });
        }, writeToLog);
    }

    internal async Task<DatabaseItems> ConvertRaidLoot(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        await Common.LoadFromWebPage(raidUri.Key, (uri, doc) =>
        {
            foreach(var boss in bossTableQueries)
            {
                var bossTable = doc.QuerySelector(boss.Key);
                var table = bossTable as IHtmlTableElement;
                var firstRow = false;

                if (table != null)
                    foreach (var row in table.Rows)
                    {
                        if (!firstRow)
                        {
                            firstRow = true;
                            continue;
                        }
                        var (itemId, itemName) = GetItemFromTableRow(row);

                        items.AddItem(itemId, new DatabaseItem() 
                        {
                            Name = itemName,
                            Source = boss.Value,
                            SourceType = "Drop",
                            SourceNumber = "0",
                            SourceLocation = raidUri.Value,
                        });
                    }

            }
        }, writeToLog);

        return items;
    }

    private (int, string) GetItemFromAnchor(IHtmlAnchorElement? anchor)
    {
        var itemId = 0;
        string name = string.Empty;

        if (anchor != null)
        {
            var item = anchor.PathName.Replace("/classic", "").Replace("/item=", "");

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");

            item = item.Substring(0, itemIdIndex);
            _ = int.TryParse(item, out itemId);
            name = anchor.TextContent.Trim();
        }
        return (itemId, name);
    }

    private (int, string) GetItemFromTableRow(IHtmlTableRowElement row)
    {
        var tableCell = row.Cells[1];
        var itemElement = tableCell.QuerySelector("a");

        return GetItemFromAnchor((IHtmlAnchorElement?)itemElement);
    }

    private void LoopThroughTable(IHtmlTableElement? table, Action<int, string, string> bossFunc, Action<int, string, string, string> questFunc)
    {
        if (table == null)
            return;

        var isBoss = false;
        var firstRow = false;
        var bossCell = 0;
        foreach (var row in table.Rows)
        {
            if (!firstRow)
            {
                if (row.Cells.Length == 4)
                {
                    bossCell = 3;
                } 
                else if (row.Cells.Length == 3)
                {
                    bossCell = 2;
                } 
                else 
                {
                    return;
                }

                firstRow = true;
                if (row.Cells[bossCell].TextContent.Trim() == "Boss" ||
                    row.Cells[bossCell].TextContent.Trim() == "Source")
                    isBoss = true;
                continue;
            }

            if (isBoss)
            {
                var (itemId, itemName) = GetItemFromTableRow(row);

                if (itemId > 0)
                    bossFunc(itemId, itemName, GetBossNames(row.Cells[bossCell]));
                else 
                    Console.WriteLine($"{itemId} <= 0 for {itemName}");
            } 
            else
            {
                var (itemId, itemName) = GetItemFromTableRow(row);
                
                Common.RecursiveBoxSearch(row.Cells[bossCell], (anchor) => 
                {
                    var faction = "B";
                    if(anchor?.Children[1]?.ClassName?.Contains("icon-horde") ?? false) {
                        faction = "H";
                    } else if (anchor?.Children[1]?.ClassName?.Contains("icon-alliance") ?? false) {
                        faction = "A";
                    }
                    if (itemId > 0)
                        questFunc(itemId, itemName, anchor?.TextContent?.Trim() ?? string.Empty, faction);
                    else 
                        Console.WriteLine($"{itemId} <= 0 for itemName");
                    return true;
                });
            }
        }
    }

    private string GetBossNames(IHtmlTableCellElement htmlTableCellElement)
    {
        var bossNames = string.Empty;

        if (htmlTableCellElement.Children.Length > 0)
        {
            var newLineSplit = htmlTableCellElement.Children;

            foreach(var bossName in newLineSplit)
            {
                if (!string.IsNullOrWhiteSpace(bossName.TextContent))
                    bossNames += $" {bossName.TextContent} &";
            }
        }
        else 
        {
            bossNames = htmlTableCellElement.TextContent;
        }
        return bossNames.TrimEnd('&').Trim();
    }
}
