using System.IO;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;
public class TierSetImporter : LootImporter
{
    private List<string> armorTokenUris = new List<string>
    {
        "https://www.wowhead.com/item=99672/helm-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99689/helm-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99724/helm-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99690/shoulders-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99669/shoulders-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99718/shoulders-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99678/chest-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99686/chest-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99715/chest-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99721/gauntlets-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99687/gauntlets-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99681/gauntlets-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99675/leggings-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99712/leggings-of-the-cursed-conqueror#currency-for",
        "https://www.wowhead.com/item=99688/leggings-of-the-cursed-conqueror#currency-for",
        // "https://www.wowhead.com/item=105858/essence-of-the-cursed-conqueror#currency-for",
        // "https://www.wowhead.com/item=105861/essence-of-the-cursed-conqueror#currency-for",
        // "https://www.wowhead.com/item=105867/essence-of-the-cursed-conqueror#currency-for",

        "https://www.wowhead.com/item=99694/helm-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99725/helm-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99673/helm-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99670/shoulders-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99719/shoulders-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99695/shoulders-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99679/chest-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99691/chest-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99716/chest-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99722/gauntlets-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99667/gauntlets-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99692/gauntlets-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99693/leggings-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99713/leggings-of-the-cursed-protector#currency-for",
        "https://www.wowhead.com/item=99676/leggings-of-the-cursed-protector#currency-for",
        // "https://www.wowhead.com/item=105866/essence-of-the-cursed-protector#currency-for",
        // "https://www.wowhead.com/item=105860/essence-of-the-cursed-protector#currency-for",
        // "https://www.wowhead.com/item=105857/essence-of-the-cursed-protector#currency-for",

        "https://www.wowhead.com/item=99671/helm-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99723/helm-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99683/helm-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99685/shoulders-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99717/shoulders-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99668/shoulders-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99677/chest-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99696/chest-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99714/chest-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99680/gauntlets-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99682/gauntlets-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99720/gauntlets-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99726/leggings-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99674/leggings-of-the-cursed-vanquisher#currency-for",
        "https://www.wowhead.com/item=99684/leggings-of-the-cursed-vanquisher#currency-for",
        //"https://www.wowhead.com/item=105859/essence-of-the-cursed-vanquisher#currency-for",
        //"https://www.wowhead.com/item=105862/essence-of-the-cursed-vanquisher#currency-for",
        //"https://www.wowhead.com/item=105868/essence-of-the-cursed-vanquisher#currency-for"

    };

    public TierSetImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToText)
    {
        //items.Items.Clear();

        await ConvertArmorSets(armorTokenUris, items, writeToText);
        return items;
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

    private async Task ConvertArmorSets(List<string> uris, DatabaseItems items, Action<string> writeToText)
    {
        await Common.LoadFromWebPages(uris, (uri, doc) =>
        {
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
                        int itemId = 0;
                        var item = cellAnchor.PathName.Replace("/mop-classic/", "/").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

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

                        var tokens = string.Empty;
                        Common.RecursiveBoxSearch(row.Children[10], (anchor) => {
                            var token = anchor.PathName.Replace("/mop-classic/", "/").Replace("/item=", "");

                            var tokenIdIndex = token.IndexOf("/");
                            if (tokenIdIndex == -1)
                                tokenIdIndex = token.IndexOf("&");
                            token = token.Substring(0, tokenIdIndex);

                            if (!string.IsNullOrEmpty(tokens))
                            {
                                tokens+="~";
                            }
                            tokens += token;
                            
                            return false;
                        });

                        if (itemId == 0)
                        {
                            Console.WriteLine("item is 0?");
                        }
                        if (!items.Items.ContainsKey(itemId))
                        {
                            items.Items.Add(itemId, new DatabaseItem()
                            {
                                Name = cellAnchor.TextContent,
                                Source = tokenName?.TextContent ?? string.Empty,
                                SourceLocation = "unknown",
                                SourceNumber = tokens,
                                SourceType = "Tier Token",
                                SourceFaction = sourceFaction
                            });
                        }
                    }
                }
            }
        }, writeToText, _importCancelToken, true);
    }
}
