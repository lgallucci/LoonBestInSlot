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
        @"https://www.wowhead.com/classic/item=217008/power-depleted-chest#currency-for",
        @"https://www.wowhead.com/classic/item=217009/power-depleted-legs#currency-for",
        @"https://www.wowhead.com/classic/item=217007/power-depleted-boots#currency-for"
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
                        var item = cellAnchor.PathName.Replace("/classic", "").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

                        var token = uri.Replace("https://www.wowhead.com/classic/item=", "");

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
        }, writeToText);

        return dbItems;
    }
}
