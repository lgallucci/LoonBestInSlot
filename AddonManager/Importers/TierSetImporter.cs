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
        "https://www.wowhead.com/mop-classic/item=89259/helm-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89235/helm-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89274/helm-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89246/shoulders-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89262/shoulders-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89277/shoulders-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89237/chest-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89250/chest-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89265/chest-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89256/gauntlets-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89240/gauntlets-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89271/gauntlets-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89268/leggings-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89243/leggings-of-the-shadowy-conqueror#currency-for",
        "https://www.wowhead.com/mop-classic/item=89253/leggings-of-the-shadowy-conqueror#currency-for",

        "https://www.wowhead.com/mop-classic/item=89273/helm-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89234/helm-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89258/helm-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89248/shoulders-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89261/shoulders-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89276/shoulders-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89239/chest-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89249/chest-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89264/chest-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89270/gauntlets-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89242/gauntlets-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89255/gauntlets-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89245/leggings-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89252/leggings-of-the-shadowy-vanquisher#currency-for",
        "https://www.wowhead.com/mop-classic/item=89267/leggings-of-the-shadowy-vanquisher#currency-for",  

        "https://www.wowhead.com/mop-classic/item=89275/helm-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89236/helm-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89260/helm-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89263/shoulders-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89247/shoulders-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89278/shoulders-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89251/chest-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89238/chest-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89266/chest-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89272/gauntlets-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89241/gauntlets-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89257/gauntlets-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89244/leggings-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89254/leggings-of-the-shadowy-protector#currency-for",
        "https://www.wowhead.com/mop-classic/item=89269/leggings-of-the-shadowy-protector#currency-for",
        
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
