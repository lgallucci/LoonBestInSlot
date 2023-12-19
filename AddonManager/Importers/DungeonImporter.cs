using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private Dictionary<string, string> dungeonUriList = new Dictionary<string, string>
        {
            { @"https://www.wowhead.com/classic/guide/ragefire-chasm-dungeon-strategy-wow-classic", "Ragefire Chasm"},
            { @"https://www.wowhead.com/classic/guide/wailing-caverns-dungeon-strategy-wow-classic", "Wailing Caverns"},
            { @"https://www.wowhead.com/classic/guide/deadmines-dungeon-strategy-wow-classic", "Deadmines" },
            { @"https://www.wowhead.com/classic/guide/shadowfang-keep-dungeon-strategy-wow-classic", "Shadowfang Keep" },
            { @"https://www.wowhead.com/classic/guide/the-stockade-dungeon-strategy-wow-classic", "The Stockade" },
            { @"https://www.wowhead.com/classic/guide/razorfen-kraul-dungeon-strategy-wow-classic", "Razorfen Kraul" },
            { @"https://www.wowhead.com/classic/guide/scarlet-monastery-dungeon-strategy-wow-classic", "Scarlet Monastery" },
            { @"https://www.wowhead.com/classic/guide/razorfen-downs-dungeon-strategy-wow-classic", "Razerfen Downs" }
        };

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(dungeonUriList.Keys.ToList(), async (uri, content) =>
        {
            writeToLog($"Reading from: {uri}");

            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            var bossesElement = doc.QuerySelector("h2#bosses");

            LoopThroughBosses(bossesElement, (bossName, be) => {
                AddLootItems(be, dungeonUriList[uri], bossName, items);
            });
        });
        return items;
    }

    private IHtmlAnchorElement? RecursivelyFindFirstAnchor(IElement element)
    {
        IHtmlAnchorElement? result = null;
        if (element is IHtmlAnchorElement && element.ClassName != "toggler-off")
            result = element as IHtmlAnchorElement;
        else
        {
            foreach (var child in element.Children)
            {
                if (result == null)
                    result = RecursivelyFindFirstAnchor(child);
            }
        }
        return result;
    }

    private void LoopThroughBosses(IElement bossesElement, Action<string, IElement> eachBossFunction)
    {
        //find next boss until done
        IElement element = bossesElement;
        while(element != null && element.Id != "quests")
        {
            if (element.ClassName == "r2")
            {
                eachBossFunction(element.TextContent, element);
            }
            element = element.NextElementSibling;
        }
    }

    private void AddLootItems(IElement htmlElement, string dungeonName, string bossName, DatabaseItems items)
    {
        var foundLoot = false;   
        IElement element = htmlElement;
        while (!foundLoot)
        {
            foundLoot = true;

            if (element == null)
                return;

            if (element.TextContent == "Loot")
            {
                foreach(var lootElement in element.NextElementSibling.ChildNodes)
                {
                    var anchor = RecursivelyFindFirstAnchor(lootElement as IElement);

                    var item = anchor.PathName.Replace("/classic", "").Replace("/item=", "");

                    var itemIdIndex = item.IndexOf("/");
                    if (itemIdIndex == -1)
                        itemIdIndex = item.IndexOf("&");

                    int itemId = -999;
                    item = item.Substring(0, itemIdIndex);
                    int.TryParse(item, out itemId);
                    var name = anchor.TextContent.Trim();

                    items.AddItem(itemId, new DatabaseItem 
                    {
                        Name = name,
                        Source = bossName,
                        SourceType = "Drop",
                        SourceNumber = "0",
                        SourceLocation = dungeonName
                    });
                }
            }
            else
                foundLoot = false;

            if (!foundLoot)
                element = element.NextElementSibling;
        }
    }
}
