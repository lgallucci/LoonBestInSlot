using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
        {
            { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike", "Deadly, Battlemaster" },
            { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50","Deadly, Battlemaster" },
            { @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;100","Deadly, Battlemaster" },
            { @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer", "Hateful" },
            { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;150", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;200", "Furious" },
            { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom", "Hateful, Savage" },
            { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;50", "Hateful, Savage" },
            { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;100", "Hateful, Savage" },
            { @"https://www.wowhead.com/wotlk/npc=31865/zom-bocom#sells;150", "Hateful, Savage" },
            { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe", "Deadly" },
            { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50", "Deadly" },
            { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;100", "Deadly" },
            { @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;150", "Deadly" },
            { @"https://www.wowhead.com/wotlk/npc=34087/trapjaw-rix", "Furious" }
        };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        foreach (var webAddress in wowheadUriList)
        {
            writeToLog($"Reading from {webAddress.Key}");
            await Common.LoadFromWebPage(webAddress.Key, async (content) => //TODO: Convert to Single Browser loop
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

                Common.ReadWowheadItemList(doc, (row, itemId, itemName) =>
                {
                    var success = false;
                    var currencySource = "";
                    var currencyNumber = "";
                    var currencySourceLocation = "";

                    if (!webAddress.Value.Split(",").Any(i => itemName.Contains(i.Trim())))
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
                                var currentSource = item == "1901" ? "Honor Points" : "Arena Points";
                                currencySource += currentSource;

                                var currencyAmount = int.Parse(anchorObject.TextContent);
                                currencyNumber += currencyAmount.ToString();
                                if (currencySource.Contains("Arena"))
                                    currencySourceLocation = "Arena Vendor";
                                else
                                    currencySourceLocation = "PvP Vendor";
                            }

                        }
                        return success;
                    });

                    if (items.Items.ContainsKey(itemId))
                    {
                        if (items.Items[itemId].Source != currencySource)
                        {
                            items.Items[itemId].SourceNumber += "/" + currencyNumber;
                            items.Items[itemId].Source += "/" + currencySource;
                            items.Items[itemId].SourceLocation += "/" + currencySourceLocation;
                        }
                    }
                    else
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
        }

        return items;
    }
}
