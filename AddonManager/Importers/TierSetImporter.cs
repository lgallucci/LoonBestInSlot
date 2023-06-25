using System.IO;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using Newtonsoft.Json;

namespace AddonManager.Importers;
public class TierSetImporter : LootImporter
{
    private List<string> armorTokenUris = new List<string>
    {
        @"https://www.wowhead.com/wotlk/item=40618/helm-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40621/leggings-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40639/mantle-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40612/chestguard-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40615/gloves-of-the-lost-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=40625/breastplate-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40622/spaulders-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40616/helm-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40619/leggings-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40637/mantle-of-the-lost-conqueror#currency-for",

        @"https://www.wowhead.com/wotlk/item=40623/spaulders-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40617/helm-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40620/leggings-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40638/mantle-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40611/chestguard-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40636/legplates-of-the-lost-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=40627/breastplate-of-the-lost-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=40633/crown-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40630/gauntlets-of-the-lost-vanquisher#currency-for", 
        @"https://www.wowhead.com/wotlk/item=40624/spaulders-of-the-lost-vanquisher#currency-for",

        @"https://www.wowhead.com/wotlk/item=40610/chestguard-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40631/crown-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40613/gloves-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40634/legplates-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40628/gauntlets-of-the-lost-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=40629/gauntlets-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40635/legplates-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40614/gloves-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40632/crown-of-the-lost-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=40626/breastplate-of-the-lost-protector#currency-for",

        @"https://www.wowhead.com/wotlk/item=45638/crown-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45659/spaulders-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45632/breastplate-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45656/mantle-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45644/gloves-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45650/leggings-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45635/chestguard-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45647/helm-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45641/gauntlets-of-the-wayward-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=45653/legplates-of-the-wayward-conqueror#currency-for",

        @"https://www.wowhead.com/wotlk/item=45642/gauntlets-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45639/crown-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45633/breastplate-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45636/chestguard-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45660/spaulders-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45657/mantle-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45651/leggings-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45645/gloves-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45648/helm-of-the-wayward-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=45654/legplates-of-the-wayward-protector#currency-for",

        @"https://www.wowhead.com/wotlk/item=45655/legplates-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45640/crown-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45634/breastplate-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45661/spaulders-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45649/helm-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45646/gloves-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45652/leggings-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45658/mantle-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45643/gauntlets-of-the-wayward-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=45637/chestguard-of-the-wayward-vanquisher#currency-for",

        @"https://www.wowhead.com/wotlk/item=47559/regalia-of-the-grand-vanquisher#currency-for",
        @"https://www.wowhead.com/wotlk/item=47559/regalia-of-the-grand-vanquisher#currency-for;50",
        @"https://www.wowhead.com/wotlk/item=47557/regalia-of-the-grand-conqueror#currency-for",
        @"https://www.wowhead.com/wotlk/item=47557/regalia-of-the-grand-conqueror#currency-for;50",
        @"https://www.wowhead.com/wotlk/item=47558/regalia-of-the-grand-protector#currency-for",
        @"https://www.wowhead.com/wotlk/item=47558/regalia-of-the-grand-protector#currency-for;50",

        //@"https://www.wowhead.com/wotlk/item=52025/vanquishers-mark-of-sanctification#currency-for",
        //@"https://www.wowhead.com/wotlk/item=52026/protectors-mark-of-sanctification#currency-for",
        //@"https://www.wowhead.com/wotlk/item=52027/conquerors-mark-of-sanctification#currency-for",
        //@"https://www.wowhead.com/wotlk/item=52028/vanquishers-mark-of-sanctification#currency-for",
        //@"https://www.wowhead.com/wotlk/item=52029/protectors-mark-of-sanctification#currency-for",
        //@"https://www.wowhead.com/wotlk/item=52030/conquerors-mark-of-sanctification#currency-for",
    };

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToText)
    {
        items.Items.Clear();

        return await ConvertArmorSets(armorTokenUris, writeToText);
    }

    internal override string FileName { get { return "TierSetList"; } }

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

    private async Task<DatabaseItems> ConvertArmorSets(List<string> uris, Action<string> writeToText)
    {
        var dbItems = new DatabaseItems();

        int uriCount = 0;
        await Common.LoadFromWebPages(uris, async (uri, content) =>
        {
            uriCount++;
            writeToText($"Reading from: {uri} {uriCount}/{uris.Count}");

            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            var tableElement = doc.QuerySelector(".listview-mode-default");

            if (tableElement is IHtmlTableElement)
            {
                bool skipFirst = true;
                foreach (var row in ((IHtmlTableElement)tableElement).Rows)
                {
                    if (skipFirst)
                    {
                        skipFirst = false;
                        continue;
                    }

                    var cellAnchor = RecursivelyFindFirstAnchor(row.Cells[2]);

                    if (cellAnchor != null)
                    {
                        int itemId = 0, tokenId = 0;
                        var item = cellAnchor.PathName.Replace("/wotlk", "").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

                        var token = uri.Replace("https://www.wowhead.com/wotlk/item=", "");

                        var tokenIdIndex = token.IndexOf("/");
                        if (tokenIdIndex == -1)
                            tokenIdIndex = token.IndexOf("&");
                        token = token.Substring(0, tokenIdIndex);
                        int.TryParse(token, out tokenId);

                        var tokenName = doc.QuerySelector(".heading-size-1");

                        var sourceFaction = "B";
                        if (row.Children[6].Children.Count() > 0)
                        {
                            var factionColumn = (IElement)row.Children[6].ChildNodes[0];
                            if (factionColumn?.ClassName == "icon-horde")
                                sourceFaction = "H";
                            else if (factionColumn?.ClassName == "icon-alliance")
                                sourceFaction = "A";
                        }

                        if (itemId == 0)
                        {
                            Console.WriteLine("item is 0?");
                        }
                        if (!dbItems.Items.ContainsKey(itemId))
                        {
                            dbItems.Items.Add(itemId, new DatabaseItem()
                            {
                                Name = cellAnchor.TextContent,
                                Source = tokenName.TextContent,
                                SourceLocation = "unknown",
                                SourceNumber = tokenId.ToString(),
                                SourceType = "TierToken",
                                SourceFaction = sourceFaction
                            });
                        }
                    }
                }
            }
        });

        return dbItems;
    }
}
