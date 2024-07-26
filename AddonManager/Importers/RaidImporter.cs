using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> raidUriList = new Dictionary<string, string>
    {
        // { @"https://www.wowhead.com/classic/guide/season-of-discovery/blackfathom-deeps-level-up-raid-loot", "Blackfathom Deeps" },
        // { @"https://www.wowhead.com/classic/guide/season-of-discovery/gnomeregan-level-up-raid-loot", "Gnomeregan" },
        // { @"https://www.wowhead.com/classic/guide/season-of-discovery/sunken-temple-level-up-raid-loot", "Sunken Temple" }
        //{ @"https://www.wowhead.com/classic/guide/season-of-discovery/raids/molten-core-overview-loot", "Molten Core"},
        { @"https://www.wowhead.com/classic/npc=10184/onyxia#drops;mode:som40", "Onyxia"},
    };

    private List<string> excludedWords = new List<string>()
    {
        "Satchel",
        "Skin Bag",
    };

    private Dictionary<string, string> bossTableQueries = new Dictionary<string, string>()
    {
        { "#tab-lucifron-main-drop-table .clean-markup-table-borders", "Lucifron" },
        { "#tab-lucifron-shared-boss-loot .clean-markup-table-borders", "Lucifron" },
        { "#tab-magmadar-main-drop-table .clean-markup-table-borders", "Magmadar" },
        { "#tab-magmadar-shared-loot .clean-markup-table-borders", "Magmadar" },
        { "#tab-gehennas-main-drop-table .clean-markup-table-borders", "Gehennas" },
        { "#tab-gehennas-shared-boss-loot .clean-markup-table-borders", "Gehennas" },        
        { "#tab-garr-main-drop-table .clean-markup-table-borders", "Garr" },
        { "#tab-garr-shared-boss-loot .clean-markup-table-borders", "Garr" },
        { "#tab-shazzrah-main-drop-table .clean-markup-table-borders", "Shazzrah" },
        { "#tab-shazzrah-shared-boss-loot .clean-markup-table-borders", "Shazzrah" },
        { "#tab-baron-geddon-main-drop-table .clean-markup-table-borders", "Baron Geddon" },
        { "#tab-baron-geddon-shared-boss-loot .clean-markup-table-borders", "Baron Geddon" },
        { "#tab-golemagg-main-drop-table .clean-markup-table-borders", "Golemagg the Incinerator"},
        { "#tab-golemagg-shared-boss-loot .clean-markup-table-borders", "Golemagg the Incinerator"},
        { "#tab-sulfuron-harbinger-main-drop-table .clean-markup-table-borders", "Sulfuron Harbinger"},
        { "#tab-sulfuron-harbinger-shared-boss-loot .clean-markup-table-borders", "Sulfuron Harbinger"},
        { "#tab-majordomo-main-drop-table .clean-markup-table-borders", "Majordomo Executus" },
        { "#tab-majordomo-shared-boss-loot .clean-markup-table-borders", "Majordomo Executus" },
        { "#tab-ragnaros-main-drop-table .clean-markup-table-borders", "Ragnaros"},
    };

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

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
        var tableCell = row.Cells[0];
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
