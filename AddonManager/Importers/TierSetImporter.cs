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
        //Tier 4
        "https://www.wowhead.com/tbc/item=29761/helm-of-the-fallen-defender#currency-for",
        "https://www.wowhead.com/tbc/item=29764/pauldrons-of-the-fallen-defender#currency-for",
        "https://www.wowhead.com/tbc/item=29753/chestguard-of-the-fallen-defender#currency-for",
        "https://www.wowhead.com/tbc/item=29758/gloves-of-the-fallen-defender#currency-for",
        "https://www.wowhead.com/tbc/item=29767/leggings-of-the-fallen-defender#currency-for",
        "https://www.wowhead.com/tbc/item=29759/helm-of-the-fallen-hero#currency-for",
        "https://www.wowhead.com/tbc/item=29762/pauldrons-of-the-fallen-hero#currency-for",
        "https://www.wowhead.com/tbc/item=29755/chestguard-of-the-fallen-hero#currency-for",
        "https://www.wowhead.com/tbc/item=29756/gloves-of-the-fallen-hero#currency-for",
        "https://www.wowhead.com/tbc/item=29765/leggings-of-the-fallen-hero#currency-for",
        "https://www.wowhead.com/tbc/item=29760/helm-of-the-fallen-champion#currency-for",
        "https://www.wowhead.com/tbc/item=29763/pauldrons-of-the-fallen-champion#currency-for",
        "https://www.wowhead.com/tbc/item=29754/chestguard-of-the-fallen-champion#currency-for",
        "https://www.wowhead.com/tbc/item=29757/gloves-of-the-fallen-champion#currency-for",
        "https://www.wowhead.com/tbc/item=29766/leggings-of-the-fallen-champion#currency-for",

        //Tier 5
        "https://www.wowhead.com/tbc/item=30242/helm-of-the-vanquished-champion#currency-for",
        "https://www.wowhead.com/tbc/item=30248/pauldrons-of-the-vanquished-champion#currency-for",
        "https://www.wowhead.com/tbc/item=30236/chestguard-of-the-vanquished-champion#currency-for",
        "https://www.wowhead.com/tbc/item=30239/gloves-of-the-vanquished-champion#currency-for",
        "https://www.wowhead.com/tbc/item=30245/leggings-of-the-vanquished-champion#currency-for",
        "https://www.wowhead.com/tbc/item=30244/helm-of-the-vanquished-hero#currency-for",
        "https://www.wowhead.com/tbc/item=30250/pauldrons-of-the-vanquished-hero#currency-for",
        "https://www.wowhead.com/tbc/item=30238/chestguard-of-the-vanquished-hero#currency-for",
        "https://www.wowhead.com/tbc/item=30241/gloves-of-the-vanquished-hero#currency-for",
        "https://www.wowhead.com/tbc/item=30247/leggings-of-the-vanquished-hero#currency-for",
        "https://www.wowhead.com/tbc/item=30243/helm-of-the-vanquished-defender#currency-for",
        "https://www.wowhead.com/tbc/item=30249/pauldrons-of-the-vanquished-defender#currency-for",
        "https://www.wowhead.com/tbc/item=30237/chestguard-of-the-vanquished-defender#currency-for",
        "https://www.wowhead.com/tbc/item=30240/gloves-of-the-vanquished-defender#currency-for",
        "https://www.wowhead.com/tbc/item=30246/leggings-of-the-vanquished-defender#currency-for",

        //Tier 6
        "https://www.wowhead.com/tbc/item=31096/helm-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=31102/pauldrons-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=31090/chestguard-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=31093/gloves-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=31099/leggings-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=34858/boots-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=34852/bracers-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=34855/belt-of-the-forgotten-vanquisher#currency-for",
        "https://www.wowhead.com/tbc/item=31095/helm-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=31103/pauldrons-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=31091/chestguard-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=31094/gloves-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=31100/leggings-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=34857/boots-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=34851/bracers-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=34854/belt-of-the-forgotten-protector#currency-for",
        "https://www.wowhead.com/tbc/item=31097/helm-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=31101/pauldrons-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=31089/chestguard-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=31092/gloves-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=31098/leggings-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=34856/boots-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=34848/bracers-of-the-forgotten-conqueror#currency-for",
        "https://www.wowhead.com/tbc/item=34853/belt-of-the-forgotten-conqueror#currency-for",
        
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
                        var item = cellAnchor.PathName.Replace("/tbc/", "/").Replace("/item=", "");

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
                            var token = anchor.PathName.Replace("/tbc/", "/").Replace("/item=", "");

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
