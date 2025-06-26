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
        "https://www.wowhead.com/item=78868/crown-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78172/crown-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78852/crown-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78874/shoulders-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78170/shoulders-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78861/shoulders-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78862/chest-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78174/chest-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78849/chest-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78865/gauntlets-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78173/gauntlets-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78855/gauntlets-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78871/leggings-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78171/leggings-of-the-corrupted-vanquisher#currency-for",
        "https://www.wowhead.com/item=78858/leggings-of-the-corrupted-vanquisher#currency-for",

        "https://www.wowhead.com/item=78869/crown-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78182/crown-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78850/crown-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78875/shoulders-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78180/shoulders-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78859/shoulders-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78863/chest-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78184/chest-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78847/chest-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78866/gauntlets-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78183/gauntlets-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78853/gauntlets-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78872/leggings-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78181/leggings-of-the-corrupted-conqueror#currency-for",
        "https://www.wowhead.com/item=78856/leggings-of-the-corrupted-conqueror#currency-for",
        
        "https://www.wowhead.com/item=78870/crown-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78177/crown-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78851/crown-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78876/shoulders-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78175/shoulders-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78860/shoulders-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78864/chest-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78179/chest-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78848/chest-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78867/gauntlets-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78178/gauntlets-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78854/gauntlets-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78873/leggings-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78176/leggings-of-the-corrupted-protector#currency-for",
        "https://www.wowhead.com/item=78857/leggings-of-the-corrupted-protector#currency-for",
        
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
        }, writeToText, _importCancelToken);
    }
}
