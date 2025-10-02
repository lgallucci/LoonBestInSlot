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

    private Dictionary<string, (string, string)> raidContainsList = new Dictionary<string, (string, string)>
    {
    };

    private Dictionary<string, (string, string)> bossUriList = new Dictionary<string, (string, string)>
    {
        { @"https://classicdb.ch/?npc=15956", ("Anub'Rekhan", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15953", ("Grand Widow Faerlina", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15952", ("Maexxna", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15954", ("Noth the Plaguebringer", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15936", ("Heigan the Unclean", "Naxxramas") },
        { @"https://classicdb.ch/?npc=16011", ("Loatheb", "Naxxramas") },
        { @"https://classicdb.ch/?npc=16061", ("Instructor Razuvious", "Naxxramas") },
        { @"https://classicdb.ch/?npc=16060", ("Gothik the Harvester", "Naxxramas") },
        { @"https://classicdb.ch/?npc=16028", ("Patchwerk", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15931", ("Grobbulus", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15932", ("Gluth", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15928", ("Thaddius", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15989", ("Sapphiron", "Naxxramas") },
        { @"https://classicdb.ch/?npc=15990", ("Kel'Thuzad", "Naxxramas") },
        { @"https://classicdb.ch/?object=181366", ("The Four Horseman", "Naxxramas") },
    };
    
    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        // foreach(var raidUri in raidUriList)
        // {
        //     items.AddItems(await ConvertRaidLoot(raidUri, items, writeToLog));
        // }
        // foreach(var raidUri in raidUriList)
        // {
        //     await ConvertGeneralRaidLoot(raidUri, items, writeToLog);
        // }

        //await GetItemDrops(items, bossUriList.Keys.Where(b => b.Contains("drops")), writeToLog);
        //await GetItemContains(items, bossUriList.Keys.Where(b => b.Contains("contains")), writeToLog);

        await GetClassicDbItemDrops(items, bossUriList.Keys, writeToLog);

        return items;
    }

    private List<string> _madnessBosses = new List<string>() { "Gri'lek", "Hazza'rah", "Renataki", "Wushoolay" };

    public RaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    private async Task ConvertGeneralRaidLoot(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        var doc = await Common.LoadFromWebPage(raidUri.Key, writeToLog);

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
    }

    private async Task GetClassicDbItemDrops(DatabaseItems items, IEnumerable<string> uriList, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(uriList, (uri, doc) =>
        {
            IHtmlCollection<IElement> rowElements = null;
            if (uri.Contains("npc="))
                rowElements = doc.QuerySelectorAll("#tab-drop .listview-mode-default tr");
            else
                rowElements = doc.QuerySelectorAll("#tab-contains .listview-mode-default tr");

            if (rowElements != null && rowElements.Length > 0)
            {
                foreach (var row in rowElements)
                {
                    var success = false;
                    var itemId = 0; // Get ItemId from Row 
                    var itemName = "";

                    Common.RecursiveBoxSearch(row.Children[1], (anchorObject) =>
                    {
                        if (success) return true;

                        var item = ((IHtmlAnchorElement)anchorObject).Href.Replace("about:///?item=", "");
                        itemName = anchorObject.TextContent;

                        success = Int32.TryParse(item, out itemId);
                        
                        if (success)
                            AddItems(items, uri, row, itemId, anchorObject);

                        return success;
                    });

                }
            }
        }, writeToLog, _importCancelToken);        
    }

    private void AddItems(DatabaseItems items, string uri, IElement row, int itemId, IHtmlAnchorElement item)
    {
        var sourceFaction = "B";
        var isBlue = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
        if (!isBlue) return;
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
    }

    private async Task GetItemDrops(DatabaseItems items, IEnumerable<string> uriList, Action<string> writeToLog)
    {
        await Common.ReadWowheadDropsList(uriList, (uri, row, itemId, item) =>
        {
            var sourceFaction = "B";
            var isBlue = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
            if (!isBlue) return;
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
        }, writeToLog, _importCancelToken);
    }

    private async Task GetItemContains(DatabaseItems items, IEnumerable<string> uriList, Action<string> writeToLog)
    {
        await Common.ReadWowheadContainsList(uriList, (uri, row, itemId, item) =>
        {
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
                Source = raidContainsList[uri].Item1,
                SourceType = "Drop",
                SourceNumber = "0",
                SourceLocation = raidContainsList[uri].Item2,
                SourceFaction = sourceFaction
            });
        }, writeToLog, _importCancelToken);
    }

    internal async Task<DatabaseItems> ConvertRaidLoot(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        var doc = await Common.LoadFromWebPage(raidUri.Key, writeToLog);

        foreach (var boss in bossTableQueries)
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
