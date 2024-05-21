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
        //Tier 11
        @"https://www.wowhead.com/cata/item=63683/helm-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=63684/helm-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=63682/helm-of-the-forlorn-vanquisher#currency-for",
        
        @"https://www.wowhead.com/cata/item=64315/mantle-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=64316/mantle-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=64314/mantle-of-the-forlorn-vanquisher#currency-for",

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

        //Tier 11 Heroic
        @"https://www.wowhead.com/cata/item=65001/crown-of-the-forlorn-conqueror#currency-for", 
        @"https://www.wowhead.com/cata/item=65000/crown-of-the-forlorn-protector#currency-for", 
        @"https://www.wowhead.com/cata/item=65002/crown-of-the-forlorn-vanquisher#currency-for",

        @"https://www.wowhead.com/cata/item=65088/shoulders-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=65087/shoulders-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=65089/shoulders-of-the-forlorn-vanquisher#currency-for",

        @"https://www.wowhead.com/cata/item=67423/chest-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=67424/chest-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=67425/chest-of-the-forlorn-vanquisher#currency-for",
    
        @"https://www.wowhead.com/cata/item=67428/leggings-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=67427/leggings-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=67426/leggings-of-the-forlorn-vanquisher#currency-for",

        @"https://www.wowhead.com/cata/item=67429/gauntlets-of-the-forlorn-conqueror#currency-for",
        @"https://www.wowhead.com/cata/item=67430/gauntlets-of-the-forlorn-protector#currency-for",
        @"https://www.wowhead.com/cata/item=67431/gauntlets-of-the-forlorn-vanquisher#currency-for",
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
                        int itemId = 0, tokenId = 0;
                        var item = cellAnchor.PathName.Replace("/cata/", "/").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

                        var token = uri.Replace("https://www.wowhead.com/cata/item=", "");

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
                                Source = tokenName?.TextContent ?? string.Empty,
                                SourceLocation = "unknown",
                                SourceNumber = tokenId.ToString(),
                                SourceType = "TierToken",
                                SourceFaction = sourceFaction
                            });
                        }
                    }
                }
            }
        }, writeToText);

        return dbItems;
    }
}
