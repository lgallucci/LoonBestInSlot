using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> raidUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/classic/guide/season-of-discovery/blackfathom-deeps-level-up-raid-loot", "Blackfathom Deeps" },
        { @"https://www.wowhead.com/classic/guide/season-of-discovery/gnomeregan-level-up-raid-loot", "Gnomeregan" },
        { @"https://www.wowhead.com/classic/guide/season-of-discovery/sunken-temple-level-up-raid-loot", "Sunken Temple" }
    };

    private List<string> excludedWords = new List<string>()
    {
        "Satchel",
        "Skin Bag",
    };

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        foreach(var raidUri in raidUriList)
        {
            if (new string[]{"Blackfathom Deeps", "Gnomeregan"}.Contains(raidUri.Value))
            {
                items.AddItems(await ConvertFirstTwoRaids(raidUri, items, writeToLog));
            } 
            else 
            {
                items.AddItems(await ConvertSunkenTemple(raidUri, items, writeToLog));
            }
        }
        return items;
    }

    private async Task<DatabaseItems> ConvertSunkenTemple(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPage(raidUri.Key, (doc) =>
        {
            var tooltipElements = doc.QuerySelectorAll("div.wowhead-tooltip");

            foreach(var tooltip in tooltipElements)
            {
                Common.RecursiveBoxSearch(tooltip, (anchor) => {
                    
                    if (anchor is IHtmlAnchorElement)
                    {
                        if (((IHtmlAnchorElement)anchor).PathName.Contains("/item=")) {
                            
                            (int itemId, string name) = GetItemFromAnchor((IHtmlAnchorElement)anchor);

                            items.AddItem(itemId, new DatabaseItem 
                            {
                                Name = name,
                                Source = string.Empty,
                                SourceType = "Drop",
                                SourceNumber = "0",
                                SourceLocation = raidUri.Value
                            });
                            return true;
                        }
                        else{
                            return false;
                        }
                    }
                    else {
                        return false;
                    }
                });
            }
        }, writeToLog);

        foreach(var item in items.Items.Where(i => i.Value.Source == string.Empty))
        {
            //set boss
            item.Value.Source = string.Empty;
        }

        return items;
    }

    internal async Task<DatabaseItems> ConvertFirstTwoRaids(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPage(raidUri.Key, (doc) =>
        {
            var tableElements = doc.QuerySelectorAll("table.grid");

            foreach(var table in tableElements)
            {
                LoopThroughTable(table as IHtmlTableElement,
                    (itemId, itemName, bossName)=> {
                        items.AddItem(itemId, new DatabaseItem 
                        {
                            Name = itemName,
                            Source = bossName,
                            SourceType = "Drop",
                            SourceNumber = "0",
                            SourceLocation = raidUri.Value
                        });
                    },
                    (itemId, itemName, questName, faction) => {
                        items.AddItem(itemId, new DatabaseItem 
                        {
                            Name = itemName,
                            Source = questName,
                            SourceType = "Quest",
                            SourceNumber = "0",
                            SourceLocation = raidUri.Value,
                            SourceFaction = faction
                        });
                    });
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
                    bossCell = 3;;
                } else 
                {
                    bossCell = 2;
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

                bossFunc(itemId, itemName, GetBossNames(row.Cells[bossCell]));
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
                    questFunc(itemId, itemName, anchor?.TextContent?.Trim() ?? string.Empty, faction);
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
