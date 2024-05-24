using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private Dictionary<string, string> dungeonUriList = new Dictionary<string, string>
        {
            {@"https://www.wowhead.com/cata/guide/dungeons/blackrock-caverns-loot-guide", "Blackrock Caverns"},
            {@"https://www.wowhead.com/cata/guide/dungeons/deadmines-loot-guide", "The Deadmines"},
            {@"https://www.wowhead.com/cata/guide/dungeons/grim-batol-loot-guide", "Grim Batol"},
            {@"https://www.wowhead.com/cata/guide/dungeons/halls-of-origination-loot-guide", "Halls of Origination"},
            {@"https://www.wowhead.com/cata/guide/dungeons/lost-city-of-tolvir-loot-guide", "Lost City of the Tol'vir"},
            {@"https://www.wowhead.com/cata/guide/dungeons/shadowfang-keep-loot-guide", "Shadowfang Keep"},
            {@"https://www.wowhead.com/cata/guide/dungeons/the-stonecore-loot-guide", "The Stonecore"},
            {@"https://www.wowhead.com/cata/guide/dungeons/throne-of-the-tides-loot-guide", "Throne of the Tides"},
            {@"https://www.wowhead.com/cata/guide/dungeons/vortex-pinnacle-loot-guide", "Vortex Pinnacle"},
        };

    public DungeonImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(dungeonUriList.Keys.ToList(), (uri, doc) =>
        {
            var htmlElements = doc.QuerySelectorAll("#guide-body h3");
            if (htmlElements != null && htmlElements.Length > 0)
            {
                foreach (var htmlElement in htmlElements)
                {
                    AddLootItems(htmlElement, dungeonUriList[uri], items);
                }
            }
        }, writeToLog, _importCancelToken);
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
            var item = ((IHtmlAnchorElement)itemElement).PathName.Replace("/cata/", "/").Replace("/item=", "");

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");

            if (itemIdIndex != -1)
            {
                item = item.Substring(0, itemIdIndex);
                int.TryParse(item, out itemId);
                name = itemElement.TextContent.Trim();
            }
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
            if (rowValues.Item1 > 0)
            {
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
    }

    private IElement? FindNextTableHeader(IElement? currentElement, ref string dungeonModifier, ref string bossName)
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
                var bossContent = currentElement.TextContent;
                bossName = bossContent.Replace("/", " & ").Replace("  ", " ").Replace("(", "").Replace(")", "").Trim();

                if (bossName == "Trash")
                    bossName = "Trash Mobs";
                else if (bossName == "Tribunal Chest")
                    bossName = "The Tribunal of Ages";

                if (bossContent.Contains("Normal"))
                {
                    bossName = bossName.Replace("Normal", "").Trim();
                    dungeonModifier = "Normal";
                }
                else if (bossContent.Contains("Heroic"))
                {
                    bossName = bossName.Replace("Heroic", "").Trim();
                    dungeonModifier = "Heroic";
                }
                else
                    foundTable = false;
            }
            else
                foundTable = false;

            if (!foundTable)
                currentElement = currentElement?.NextElementSibling;
        }
        return currentElement;
    }

    private void AddLootItems(IElement? htmlElement, string dungeonName, DatabaseItems items)
    {
        var dungeonModifier = string.Empty;
        var bossName = string.Empty;

        htmlElement = FindNextTableHeader(htmlElement, ref dungeonModifier, ref bossName);
        while (htmlElement != null)
        {
            var table = htmlElement.NextElementSibling;
            if (table is IHtmlTableElement)
            {
                LoopThroughTable((IHtmlTableElement)table, bossName, dungeonName, dungeonModifier, items);
            }

            htmlElement = FindNextTableHeader(table, ref dungeonModifier, ref bossName);
        }
    }
}
