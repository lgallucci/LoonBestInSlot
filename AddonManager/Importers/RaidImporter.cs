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
            items.AddItems(await ConvertRaidLoot(raidUri, items, writeToLog));
        }
        return items;
    }

    internal async Task<DatabaseItems> ConvertRaidLoot(KeyValuePair<string, string> raidUri, DatabaseItems items, Action<string> writeToLog)
    {
        await Common.LoadFromWebPage(raidUri.Key, (uri, doc) =>
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
