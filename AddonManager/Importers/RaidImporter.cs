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
        // //{ @"https://www.wowhead.com/classic/guide/season-of-discovery/raids/molten-core-overview-loot", "Molten Core"},
        // { @"https://www.wowhead.com/classic/npc=10184/onyxia#drops;mode:som40", ("Onyxia", "Onyxia's Lair")},
        //{ @"https://www.wowhead.com/classic/guide/season-of-discovery/raids/blackwing-lair-loot", "Blackwing Lair" },
        //{ @"https://www.wowhead.com/classic/guide/season-of-discovery/raids/zul-gurub-loot", "Zul'Gurub" },
    };

    private List<string> excludedWords = new List<string>()
    {
        "Satchel",
        "Skin Bag",
    };

    private Dictionary<string, string> bossTableQueries = new Dictionary<string, string>()
    {
        { "#razorgore-the-untamed-loot ~ .clean-markup-table-borders", "Razorgore the Untamed" },
        { "#razorgore-the-untamed-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Razorgore the Untamed" },
        { "#razorgore-the-untamed-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Razorgore the Untamed" },
        { "#vaelastrasz-the-corrupt-loot ~ .clean-markup-table-borders", "Vaelastrasz the Corrupt" },
        { "#vaelastrasz-the-corrupt-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Vaelastrasz the Corrupt" },
        { "#vaelastrasz-the-corrupt-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Vaelastrasz the Corrupt" },
        { "#broodlord-lashlayer-loot ~ .clean-markup-table-borders", "Broodlord Lashlayer" },
        { "#broodlord-lashlayer-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Broodlord Lashlayer" },
        { "#firemaw-loot ~ .clean-markup-table-borders", "Firemaw" },
        { "#firemaw-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Firemaw" },
        { "#firemaw-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Firemaw" },
        { "#ebonroc-loot ~ .clean-markup-table-borders", "Ebonroc" },
        { "#ebonroc-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Ebonroc" },
        { "#ebonroc-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Ebonroc" },
        { "#ebonroc-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Ebonroc" },
        { "#ebonroc-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Ebonroc" },
        { "#flamegor-loot ~ .clean-markup-table-borders", "Flamegor" },
        { "#flamegor-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Flamegor" },
        { "#flamegor-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Flamegor" },
        { "#chromaggus-loot ~ .clean-markup-table-borders", "Chromaggus" },
        { "#chromaggus-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Chromaggus" },
        { "#nefarian-loot ~ .clean-markup-table-borders", "Nefarian" },
        { "#nefarian-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Nefarian" },
        { "#nefarian-loot ~ .clean-markup-table-borders ~ .clean-markup-table-borders ~ .clean-markup-table-borders", "Nefarian" },
        { "#classic-blackwing-lair-trash-loot ~ .clean-markup-table-borders", "Trash Mobs" },
        // { "#high-priests-shared-loot-table ~ .clean-markup-table-borders", "High Priests Shared" },
        // { "#high-priest-venoxis ~ .clean-markup-table-borders", "High Priest Venoxis" },
        // { "#high-priest-jeklik ~ .clean-markup-table-borders", "High Priest Jeklik"},
        // { "#high-priest-marli ~ .clean-markup-table-borders", "High Priest Mar'li"},
        // { "#high-priest-thekal ~ .clean-markup-table-borders", "High Priest Thekal"},
        // { "#high-priestess-arlokk ~ .clean-markup-table-borders", "High Priestess Arlokk"},
        // { "#hakkar ~ .clean-markup-table-borders", "Hakkar"},
        // { "#bloodlord-mandokir ~ .clean-markup-table-borders", "Bloodlord Mandokir"},
        // { "#jindo-the-hexxer ~ .clean-markup-table-borders", "Jin'do the Hexxer"},
        // { "#gahzranka ~ .clean-markup-table-borders", "Gahz'ranka"},
    };


    private Dictionary<string, (string, string)> bossUriList = new Dictionary<string, (string, string)>
    {
        { @"https://www.wowhead.com/classic/npc=12435/razorgore-the-untamed#drops;mode:seasonal40", ("Razorgore the Untamed", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=13020/vaelastrasz-the-corrupt#drops;mode:seasonal40", ("Vaelastrasz the Corrupt", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=12017/broodlord-lashlayer#drops;mode:seasonal40", ("Broodlord Lashlayer", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=11983/firemaw#drops;mode:seasonal40", ("Firemaw", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=14601/ebonroc#drops;mode:seasonal40", ("Ebonroc", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=11981/flamegor#drops;mode:seasonal40", ("Flamegor", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=14020/chromaggus#drops;mode:seasonal40", ("Chromaggus", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=11583/nefarian#drops;mode:seasonal40", ("Nefarian", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=11583/nefarian#drops;mode:seasonal40;50", ("Nefarian", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=11583/nefarian#drops;mode:seasonal40;100", ("Nefarian", "Blackwing Lair") },
        { @"https://www.wowhead.com/classic/npc=231494/prince-thunderaan#drops", ("Prince Thunderaan", "The Crystal Vale")}
    };
    

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        // foreach(var raidUri in raidUriList)
        // {
        //     items.AddItems(await ConvertRaidLoot(raidUri, items, writeToLog));
        // }


        await GetItemDrops(items, writeToLog);

        return items;
    }

    private async Task GetItemDrops(DatabaseItems items, Action<string> writeToLog)
    {
        await Common.ReadWowheadDropsList(bossUriList.Keys.ToList(), (uri, row, itemId, item) => {
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
