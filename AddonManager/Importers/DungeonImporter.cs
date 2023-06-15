using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

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
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        foreach (var dungeonUri in dungeonUriList) //TODO: Convert to Single Browser loop
        {
            writeToLog($"Reading from: {dungeonUri}");
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
            int.TryParse(item, out itemId);
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
