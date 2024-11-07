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
        //Tier 12
        // @"https://www.wowhead.com/cata/item=63683/helm-of-the-forlorn-conqueror#currency-for",
        // @"https://www.wowhead.com/cata/item=63684/helm-of-the-forlorn-protector#currency-for",
        // @"https://www.wowhead.com/cata/item=63682/helm-of-the-forlorn-vanquisher#currency-for",
        
        // @"https://www.wowhead.com/cata/item=64315/mantle-of-the-forlorn-conqueror#currency-for",
        // @"https://www.wowhead.com/cata/item=64316/mantle-of-the-forlorn-protector#currency-for",
        // @"https://www.wowhead.com/cata/item=64314/mantle-of-the-forlorn-vanquisher#currency-for",

        //These are sold for valor points ?
        // @"",
        // @"",
        // @"",

        // @"",
        // @"",
        // @"",
        
        // @"",
        // @"",
        // @"",

        //Tier 12 Heroic
        @"https://www.wowhead.com/item=71677/crown-of-the-fiery-conqueror#currency-for", 
        @"https://www.wowhead.com/item=71684/crown-of-the-fiery-protector#currency-for",
        @"https://www.wowhead.com/item=71670/crown-of-the-fiery-vanquisher#currency-for",

        @"https://www.wowhead.com/item=71680/shoulders-of-the-fiery-conqueror#currency-for",
        @"https://www.wowhead.com/item=71687/shoulders-of-the-fiery-protector#currency-for",
        @"https://www.wowhead.com/item=71673/shoulders-of-the-fiery-vanquisher#currency-for",
       
        @"https://www.wowhead.com/item=71679/chest-of-the-fiery-conqueror#currency-for",
        @"https://www.wowhead.com/item=71686/chest-of-the-fiery-protector#currency-for",
        @"https://www.wowhead.com/item=71672/chest-of-the-fiery-vanquisher#currency-for",
    
        @"https://www.wowhead.com/item=71678/leggings-of-the-fiery-conqueror#currency-for",
        @"https://www.wowhead.com/item=71685/leggings-of-the-fiery-protector#currency-for",
        @"https://www.wowhead.com/item=71671/leggings-of-the-fiery-vanquisher#currency-for",

        @"https://www.wowhead.com/item=71676/gauntlets-of-the-fiery-conqueror#currency-for",
        @"https://www.wowhead.com/item=71683/gauntlets-of-the-fiery-protector#currency-for",
        @"https://www.wowhead.com/item=71669/gauntlets-of-the-fiery-vanquisher#currency-for",
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
                        var item = cellAnchor.PathName.Replace("/cata/", "/").Replace("/item=", "");

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
                            var token = anchor.PathName.Replace("/cata/", "/").Replace("/item=", "");

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
