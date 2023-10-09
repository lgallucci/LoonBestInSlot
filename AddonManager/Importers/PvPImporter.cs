using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells", "Relentless, Battlemaster>245" },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50", "Relentless, Battlemaster>245" },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;100", "Relentless, Battlemaster>245" },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;150", "Relentless, Battlemaster>245" },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells", "Furious" },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50","Furious" },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;100","Furious" },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;150","Furious" },
        { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer#sells", "Deadly, Battlemaster, Hateful" },
        { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer#sells;50", "Deadly, Battlemaster, Hateful" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;150", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;200", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;250", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;300", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;350", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;50", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;100", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;150", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;200", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;250", "Deadly, Hateful, Savage" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;100", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;150", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;200", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;250", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;300", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;350", "Furious, Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix#sells", "Relentless" },
        { @"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix#sells;50", "Relentless" }
    };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        var total = wowheadUriList.Count;
        var count = 0;
        await Common.LoadFromWebPages(wowheadUriList.Keys.ToList(), async (uri, content) => 
        {            
            writeToLog($"Reading from {uri} ({++count}/{total})");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            Common.ReadWowheadSellsList(doc, uri, (uri, row, itemId, item) =>
            {
                var success = false;
                var currencySource = "";
                var currencyNumber = "";
                var currencySourceLocation = "";
                var itemName = item.TextContent;

                Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
                var nameSplit = wowheadUriList[uri].Split(",");
                var levelSplit = nameSplit.Select(n => n.Split('>'));

                if (!levelSplit.Any(i => itemName.Contains(i[0].Trim()) && (i.Length < 2 || Int32.Parse(i[1]) < itemLevel)))
                    return;

                Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
                {
                    var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "");

                    var currencyIdIndex = item.IndexOf("/");
                    if (currencyIdIndex == -1)
                        currencyIdIndex = item.IndexOf("&");

                    if (currencyIdIndex > -1)
                    {
                        item = item.Substring(0, currencyIdIndex);

                        success = int.TryParse(item, out var currencyInteger);

                        if (success)
                        {
                            if (!string.IsNullOrWhiteSpace(currencySource))
                            {
                                currencySource += " & ";
                                currencyNumber += " & ";
                            }
                            var currentSource = item == "1901" ? "Honor Points" : "Arena Points";
                            currencySource += currentSource;

                            var currencyAmount = int.Parse(anchorObject.TextContent);
                            currencyNumber += currencyAmount.ToString();
                            if (currencySource.Contains("Arena"))
                                currencySourceLocation = "Arena Vendor";
                            else
                                currencySourceLocation = "PvP Vendor";
                        }

                    }
                    return success;
                });

                if (items.Items.ContainsKey(itemId))
                {
                    if (items.Items[itemId].Source != currencySource)
                    {
                        items.Items[itemId].SourceNumber += "/" + currencyNumber;
                        items.Items[itemId].Source += "/" + currencySource;
                        items.Items[itemId].SourceLocation += "/" + currencySourceLocation;
                    }
                }
                else
                {
                    var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                    {
                        Name = itemName,
                        SourceNumber = currencyNumber,
                        Source = currencySource,
                        SourceLocation = currencySourceLocation,
                        SourceType = "PvP"
                    });
                }
            });
        });

        return items;
    }
}
