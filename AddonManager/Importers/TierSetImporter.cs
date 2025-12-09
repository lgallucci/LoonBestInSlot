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
        "https://www.wowhead.com/item=95582/helm-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=96625/helm-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95881/helm-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95583/shoulders-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=96701/shoulders-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95957/shoulders-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=96568/chest-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95579/chest-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95824/chest-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=96601/gauntlets-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95580/gauntlets-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95857/gauntlets-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95581/leggings-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=96633/leggings-of-the-crackling-protector#currency-for",
        "https://www.wowhead.com/item=95889/leggings-of-the-crackling-protector#currency-for",

        "https://www.wowhead.com/item=95571/helm-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=96623/helm-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95879/helm-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95573/shoulders-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=96699/shoulders-of-the-crackling-vanquisher#currency-for",
        "hhttps://www.wowhead.com/item=95955/shoulders-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95569/chest-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=96566/chest-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95822/chest-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95570/gauntlets-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=96599/gauntlets-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95855/gauntlets-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=96631/leggings-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95572/leggings-of-the-crackling-vanquisher#currency-for",
        "https://www.wowhead.com/item=95887/leggings-of-the-crackling-vanquisher#currency-for",  

        "https://www.wowhead.com/item=96624/helm-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95880/helm-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95577/helm-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=96700/shoulders-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95956/shoulders-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95578/shoulders-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=96567/chest-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95574/chest-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95823/chest-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=96600/gauntlets-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95575/gauntlets-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95856/gauntlets-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=96632/leggings-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95576/leggings-of-the-crackling-conqueror#currency-for",
        "https://www.wowhead.com/item=95888/leggings-of-the-crackling-conqueror#currency-for",
        
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
