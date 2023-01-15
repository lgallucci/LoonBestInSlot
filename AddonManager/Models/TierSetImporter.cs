using System.IO;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using Newtonsoft.Json;

namespace AddonManager.Models;
public class TierSetImporter
{
    private List<string> armorSetUris = new List<string>
    {
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens/min-level:27/max-level:30",
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens/min-level:27/max-level:30#50",
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens/min-level:27/max-level:30#100"
    };

    public virtual async Task Convert(string jsonText)
    {
        var dbItems = new DatabaseItems();

        var armorTokenUris = await GetArmorSets();
        var uriCount = 0;
        foreach (var armorTokenUri in armorTokenUris)
        {
            uriCount++;
            System.Diagnostics.Debug.WriteLine($"Reading from: {armorTokenUri} {uriCount}/{armorTokenUris.Count}");
            dbItems.AddItems(await ConvertArmorSet(armorTokenUri));
        }
        //write dictionary to file
        File.WriteAllText(@$"{Constants.ItemDbPath}\{FileName}.json", JsonConvert.SerializeObject(dbItems, Formatting.Indented));
    }

    internal string FileName { get { return "TierSetList"; } }

    private IHtmlAnchorElement? RecursivelyFindFirstAnchor(IElement element)
    {
        IHtmlAnchorElement? result = null;
        if (element is IHtmlAnchorElement)
            result = element as IHtmlAnchorElement;
        else
        {
            foreach(var child in element.Children)
            {
                if (result == null)
                    result = RecursivelyFindFirstAnchor(child);
            }
        }
        return result;
    }

    private async Task<List<string>> GetArmorSets()
    {
        var uris= new List<string>();

        foreach (var armorSetUri in armorSetUris)
        {
            await Common.LoadFromWebPage(armorSetUri, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

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
                            if (cellAnchor.TextContent == "Trophy of the Crusade")
                            {
                                uris.Add($"{cellAnchor.Href}?fromWrath#currency-for");
                                uris.Add($"{cellAnchor.Href}?fromWrath#currency-for;50");
                                uris.Add($"{cellAnchor.Href}?fromWrath#currency-for;100");
                                uris.Add($"{cellAnchor.Href}?fromWrath#currency-for;150");
                            } else
                            {
                                uris.Add($"{cellAnchor.Href}?fromWrath#currency-for");
                            }                            
                        else
                            uris.Add("wtf");
                    }
                }
            });
        }

        return uris;
    }

    private async Task<DatabaseItems> ConvertArmorSet(string uri)
    {
        var dbItems = new DatabaseItems();
        await Common.LoadFromWebPage(uri, async (content) =>
        {
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

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
                        var item = cellAnchor.PathName.Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        Int32.TryParse(item, out itemId);

                        var token = uri.Replace("https://www.wowhead.com/item=", "");

                        var tokenIdIndex = token.IndexOf("/");
                        if (tokenIdIndex == -1)
                            tokenIdIndex = token.IndexOf("&");
                        token = token.Substring(0, tokenIdIndex);
                        Int32.TryParse(token, out tokenId);

                        var tokenName = doc.QuerySelector(".heading-size-1");

                        dbItems.Items.Add(itemId, new DatabaseItem()
                        {
                            Name = cellAnchor.TextContent,
                            Source = tokenName.TextContent,
                            SourceLocation = "unknown",
                            SourceNumber = tokenId.ToString(),
                            SourceType = "TierToken"
                        });
                    }

                }
            }
        });

        return dbItems;
    }
}
