using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, Tuple<string, string>> wowheadUriList = new Dictionary<string, Tuple<string, string>>
    {
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells", new Tuple<string, string>("Wrathful, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50", new Tuple<string, string>("Wrathful, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;100", new Tuple<string, string>("Wrathful, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;150", new Tuple<string, string>("Wrathful, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells", new Tuple<string, string>("Relentless, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50",new Tuple<string, string>("Relentless, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;100",new Tuple<string, string>("Relentless, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;150",new Tuple<string, string>("Relentless, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;200",new Tuple<string, string>("Relentless, Battlemaster>245", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer#sells", new Tuple<string, string>("Furious, Battlemaster, Deadly, Hateful", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer#sells;50", new Tuple<string, string>("Furious, Battlemaster, Deadly, Hateful", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer#sells;150", new Tuple<string, string>("Furious, Battlemaster, Deadly, Hateful", "Faction PVP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;150",new Tuple<string, string>( "Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;200", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;250", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;300", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;350", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;400", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;450", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;50", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;100", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;150", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;200", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;250", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;300", new Tuple<string, string>("Deadly, Hateful, Savage", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;100", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;150", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;200", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;250", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;300", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;350", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;400", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;450", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;500", new Tuple<string, string>("Relentless", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix#sells", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix#sells;50", new Tuple<string, string>("Wrathful", "Dalaran PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells;50", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells;100", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells;150", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells;200", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32354/leeni-smiley-smalls#sells;250", new Tuple<string, string>("Furious, Deadly, Hateful, Savage", "Area52 PvP Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32294/knight-dameron", new Tuple<string, string>("Titan-Forged", "Wintergrasp Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32294/knight-dameron#sells;50", new Tuple<string, string>("Titan-Forged", "Wintergrasp Vendor") },
        { @"https://www.wowhead.com/wotlk/npc=32294/knight-dameron#sells;100", new Tuple<string, string>("Titan-Forged", "Wintergrasp Vendor") },
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
                var nameSplit = wowheadUriList[uri].Item1.Split(",");
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
                            currencySourceLocation = wowheadUriList[uri].Item2;
                        }

                    }
                    return success;
                });

                if (!items.Items.ContainsKey(itemId))
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
