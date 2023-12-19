using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, Tuple<string, string>> wowheadUriList = new Dictionary<string, Tuple<string, string>>
    {
        //{ @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells", new Tuple<string, string>("Wrathful, Battlemaster>245", "Faction PVP Vendor") },
    };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        var total = wowheadUriList.Count;
        var count = 0;
        await Common.LoadFromWebPages(wowheadUriList.Keys.ToList(), async (uri, content) =>
        {
            writeToLog($"Reading from {uri} ({++count}/{total})");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            Common.ReadWowheadSellsList(doc, uri, (uri, row, itemId, item) =>
            {
                var success = false;
                var currencySource = "";
                var currencyNumber = "";
                var currencySourceLocation = "";
                var itemName = item.TextContent;

                Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
                var nameSplit = wowheadUriList[uri].Item1.Split(",");
                var levelSplit = nameSplit.Select(n => n.Split('>'));

                if (!levelSplit.Any(i => itemName.Contains(i[0].Trim()) && (i.Length < 2 || Int32.Parse(i[1]) < itemLevel)))
                    return;

                Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
                {
                    var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "");

                    var currencyIdIndex = item.IndexOf("/");
                    if (currencyIdIndex == -1)
                        currencyIdIndex = item.IndexOf("&");

                    if (currencyIdIndex > -1)
                    {
                        item = item.Substring(0, currencyIdIndex);

                        success = int.TryParse(item, out var currencyInteger);

                        if (success)
                        {
                            if (!string.IsNullOrWhiteSpace(currencySource))
                            {
                                currencySource += " & ";
                                currencyNumber += " & ";
                            }
                            var currentSource = item == "1901" ? "Honor Points" : 
                            item == "126" ? "Wintergrasp Marks" : 
                            item == "1900" ? "Arena Points" : "Unknown Currency";
                            currencySource += currentSource;

                            var currencyAmount = int.Parse(anchorObject.TextContent);
                            currencyNumber += currencyAmount.ToString();
                            currencySourceLocation = wowheadUriList[uri].Item2;
                        }

                    }
                    return success;
                });

                if (!items.Items.ContainsKey(itemId))
                {                   
                    var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                    {
                        Name = itemName,
                        SourceNumber = currencyNumber,
                        Source = currencySource,
                        SourceLocation = currencySourceLocation,
                        SourceType = "PvP"
                    });
                }
            });
        });

        return items;
    }
}
