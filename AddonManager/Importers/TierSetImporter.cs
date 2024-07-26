using System.IO;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;
public class TierSetImporter : LootImporter
{
    private Dictionary<string, string> armorTokenUris = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/classic/item=220636/atalai-ritual-token#currency-for", "Sunken Temple" },
        { @"https://www.wowhead.com/classic/item=220637/atalai-ritual-token#currency-for", "Sunken Temple" },


        { @"https://www.wowhead.com/classic/item=227532/incandescent-hood#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227537/incandescent-shoulderpads#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227533/incandescent-gloves#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227535/incandescent-robe#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227534/incandescent-leggings#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227536/incandescent-boots#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227530/incandescent-belt#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227531/incandescent-bindings#currency-for", "Molten Core"},

        { @"https://www.wowhead.com/classic/item=227764/scorched-core-helm#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227762/scorched-core-shoulderpads#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227759/scorched-core-gloves#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227766/scorched-core-chest#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227763/scorched-core-leggings#currency-for", "Molten Core"},        
        { @"https://www.wowhead.com/classic/item=227765/scorched-core-boots#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227761/scorched-core-belt#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227760/scorched-core-bindings#currency-for", "Molten Core"},

        { @"https://www.wowhead.com/classic/item=227755/molten-scaled-helm#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227752/molten-scaled-shoulderpads#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227756/molten-scaled-gloves#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227758/molten-scaled-chest#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227754/molten-scaled-leggings#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227757/molten-scaled-boots#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227751/molten-scaled-belt#currency-for", "Molten Core"},
        { @"https://www.wowhead.com/classic/item=227750/molten-scaled-bindings#currency-for", "Molten Core"},
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

    private async Task<DatabaseItems> ConvertArmorSets(Dictionary<string, string> uris, Action<string> writeToText)
    {
        var dbItems = new DatabaseItems();

        await Common.LoadFromWebPages(uris.Keys, (uri, doc) =>
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
                                SourceLocation = uris[uri],
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
