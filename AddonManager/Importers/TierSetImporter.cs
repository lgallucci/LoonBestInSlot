using System.IO;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using Newtonsoft.Json;

namespace AddonManager.Importers;
public class TierSetImporter : LootImporter
{
    private List<string> armorSetUris = new List<string>
    {
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens?filter=16;3456;0", //drops in naxx
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens?filter=16;4493;0", //drops in obsidian
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens?filter=16;4273;0", //drops in ulduar
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens?filter=16;4722;0", //drops in trials
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens/name:regalia+of+the", //also drops in trials
        @"https://www.wowhead.com/items/miscellaneous/armor-tokens?filter=16;4812;0", //drops in icecrown
    };

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToText)
    {
        items.Items.Clear();
        var armorTokenUris = await GetArmorSets();

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

    private async Task<List<string>> GetArmorSets()
    {
        var uris = new List<string>();

        await Common.LoadFromWebPages(armorSetUris, async (uri, content) =>
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
                        }
                        else if (cellAnchor.TextContent.Contains("Regalia of the"))
                        {
                            uris.Add($"{cellAnchor.Href}?fromWrath#currency-for");
                            uris.Add($"{cellAnchor.Href}?fromWrath#currency-for;50");
                        }
                        else
                        {
                            uris.Add($"{cellAnchor.Href}?fromWrath#currency-for");
                        }
                    else
                        uris.Add("wtf");
                }
            }
        });

        return uris;
    }

    private async Task<DatabaseItems> ConvertArmorSets(List<string> uris, Action<string> writeToText)
    {
        var dbItems = new DatabaseItems();

        int uriCount = 0;
        await Common.LoadFromWebPages(uris, async (uri, content) =>
        {
            uriCount++;
            writeToText($"Reading from: {uri} {uriCount}/{uris.Count}");

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
                        var item = cellAnchor.PathName.Replace("/wotlk", "").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

                        var token = uri.Replace("https://www.wowhead.com/item=", "");

                        var tokenIdIndex = token.IndexOf("/");
                        if (tokenIdIndex == -1)
                            tokenIdIndex = token.IndexOf("&");
                        token = token.Substring(0, tokenIdIndex);
                        int.TryParse(token, out tokenId);

                        var tokenName = doc.QuerySelector(".heading-size-1");

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
                                SourceType = "TierToken"
                            });
                        }
                    }
                }
            }
        });

        return dbItems;
    }
}
