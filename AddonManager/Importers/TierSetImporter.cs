using System.IO;
using System.Runtime.Intrinsics;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;
public class TierSetImporter : LootImporter
{
    private Dictionary<string, string> armorTokenUris = new Dictionary<string, string>
    {
        // { "https://www.wowhead.com/classic/item=236231/desecrated-breastplate#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236232/desecrated-waistguard#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236233/desecrated-gauntlets#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236234/desecrated-sabatons#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236235/desecrated-bracers#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236236/desecrated-helmet#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236237/desecrated-pauldrons#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236238/desecrated-legplates#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236239/desecrated-sandals#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236240/desecrated-shoulderpads#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236241/desecrated-circlet#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236242/desecrated-robe#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236243/desecrated-gloves#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236244/desecrated-belt#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236245/desecrated-bindings#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236246/desecrated-leggings#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236247/desecrated-wristguards#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236248/desecrated-boots#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236249/desecrated-headpiece#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236250/desecrated-handguards#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236251/desecrated-tunic#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236252/desecrated-girdle#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236253/desecrated-legguards#currency-for", "Naxxramas"},
        // { "https://www.wowhead.com/classic/item=236254/desecrated-spaulders#currency-for", "Naxxramas"},
        { "https://www.wowhead.com/classic/item=237381/desecrated-ring#currency-for", "Naxxramas"},
    };

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToText)
    {
        //items.Items.Clear();

        items.AddItems(await ConvertArmorSets(armorTokenUris, writeToText));
        
        return items;
    }

    internal override string FileName { get { return "TierSetList"; } }

    private Dictionary<int, int> recursiveItemsToQuery = new Dictionary<int, int>();

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
            var tokenId = 0;
            var token = uri.Replace("https://www.wowhead.com/classic/item=", "");

            var tokenIdIndex = token.IndexOf("/");
            if (tokenIdIndex == -1)
                tokenIdIndex = token.IndexOf("&");
            token = token.Substring(0, tokenIdIndex);
            int.TryParse(token, out tokenId);

            if (uri.Contains("currency-for"))
                AddCurrencyItem(dbItems, doc, tokenId, uris[uri]);
            else if(uri.Contains("objective-of"))
                AddObjectiveItem(dbItems, doc, tokenId, uris[uri]);
        }, writeToText);

        // await Common.LoadFromWebPages(recursiveItemsToQuery.Select(r => $"https://www.wowhead.com/classic/item={r.Key}/#currency-for"), (uri, doc) => {
        //     var key = uri.Replace("https://www.wowhead.com/classic/item=", "").Replace("/#currency-for", "");
        //     AddCurrencyItem(dbItems, doc, recursiveItemsToQuery[Int32.Parse(key)], "Molten Core", false);
        // }, writeToText);

        return dbItems;
    }

    
    private void AddObjectiveItem(DatabaseItems dbItems, IHtmlDocument doc, int tokenId, string location)
    {
        var tableElement = doc.QuerySelector("#tab-objective-of .listview-mode-default");

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
                var cellAnchor = RecursivelyFindFirstAnchor(row.Cells[5]);

                if (cellAnchor != null)
                {
                    int itemId = 0;
                    var item = cellAnchor.PathName.Replace("/classic", "").Replace("/item=", "");

                    var itemIdIndex = item.IndexOf("/");
                    if (itemIdIndex == -1)
                        itemIdIndex = item.IndexOf("&");
                    item = item.Substring(0, itemIdIndex);
                    int.TryParse(item, out itemId);

                    var tokenName = doc.QuerySelector(".heading-size-1");

                    var sourceFaction = "B";
                    if (row.Children[4].Children.Count() > 0)
                    {
                        var factionColumn = (IElement)row.Children[4].ChildNodes[0];
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
                            SourceLocation = location,
                            SourceNumber = tokenId.ToString(),
                            SourceType = "TierToken",
                            SourceFaction = sourceFaction
                        });
                    }
                }
            }
        }

    }

    private void AddCurrencyItem(DatabaseItems dbItems, IHtmlDocument doc, int tokenId, string location, bool recursive = true)
    {
        var tableElement = doc.QuerySelector("#tab-currency-for .listview-mode-default");

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
                    var item = cellAnchor.PathName.Replace("/classic", "").Replace("/item=", "");

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
                            SourceLocation = location,
                            SourceNumber = tokenId.ToString(),
                            SourceType = "TierToken",
                            SourceFaction = sourceFaction
                        });
                        if (recursive)
                            recursiveItemsToQuery.Add(itemId, tokenId);
                    }
                }
            }
        }
    }
}
