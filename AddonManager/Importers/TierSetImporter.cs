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
        { "https://www.wowhead.com/classic/item=239722/consecrated-wristguards#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239719/consecrated-bindings#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239759/consecrated-bracers#currency-for", "Scarlet Enclave"},
        
        { "https://www.wowhead.com/classic/item=239760/consecrated-waistguard#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239718/consecrated-belt#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239756/consecrated-girdle#currency-for", "Scarlet Enclave"},        
        
        { "https://www.wowhead.com/classic/item=239707/consecrated-helmet#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239714/consecrated-circlet#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239729/consecrated-headpiece#currency-for", "Scarlet Enclave"},    
        
        { "https://www.wowhead.com/classic/item=239706/consecrated-sabatons#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239710/consecrated-sandals#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239726/consecrated-boots#currency-for", "Scarlet Enclave"},
        
        { "https://www.wowhead.com/classic/item=239762/consecrated-gauntlets#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239730/consecrated-handguards#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239716/consecrated-gloves#currency-for", "Scarlet Enclave"},
        
        { "https://www.wowhead.com/classic/item=239708/consecrated-pauldrons#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239712/consecrated-shoulderpads#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239758/consecrated-spaulders#currency-for", "Scarlet Enclave"},
        
        { "https://www.wowhead.com/classic/item=239721/consecrated-leggings#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239757/consecrated-legguards#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239709/consecrated-legplates#currency-for", "Scarlet Enclave"},
        
        { "https://www.wowhead.com/classic/item=239715/consecrated-robe#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239761/consecrated-breastplate#currency-for", "Scarlet Enclave"},
        { "https://www.wowhead.com/classic/item=239731/consecrated-tunic#currency-for", "Scarlet Enclave"},
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
