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

        await Common.LoadFromWebPages(raidUriList.Keys.ToList(), (uri, doc) =>
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
                            SourceLocation = raidUriList[uri]
                        });
                    },
                    (itemId, itemName, questName, faction) => {
                        items.AddItem(itemId, new DatabaseItem 
                        {
                            Name = itemName,
                            Source = questName,
                            SourceType = "Quest",
                            SourceNumber = "0",
                            SourceLocation = raidUriList[uri],
                            SourceFaction = faction
                        });
                    });
            }
        }, writeToLog);

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
            var item = ((IHtmlAnchorElement)itemElement).PathName.Replace("/classic", "").Replace("/item=", "");

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");

            item = item.Substring(0, itemIdIndex);
            int.TryParse(item, out itemId);
            name = itemElement.TextContent.Trim();
        }

        return (itemId, name);
    }

    private void LoopThroughTable(IHtmlTableElement table, Action<int, string, string> bossFunc, Action<int, string, string, string> questFunc)
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
                    if(anchor.Children[1].ClassName.Contains("icon-horde")) {
                        faction = "H";
                    } else if (anchor.Children[1].ClassName.Contains("icon-alliance")) {
                        faction = "A";
                    }
                    questFunc(itemId, itemName, anchor.TextContent.Trim(), faction);
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
