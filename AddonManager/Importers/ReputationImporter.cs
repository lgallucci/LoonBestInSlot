using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/wotlk/npc=31910/geen", "The Oracles" },
        { @"https://www.wowhead.com/wotlk/npc=31911/tanak", "Frenzyheart Tribe" },
        { @"https://www.wowhead.com/wotlk/npc=32540/lillehoff", "The Sons of Hodir" },
        { @"https://www.wowhead.com/wotlk/npc=31916/tanaika", "The Kalu'ak" },
        { @"https://www.wowhead.com/wotlk/npc=32533/cielstrasza", "The Wyrmrest Accord" },
        { @"https://www.wowhead.com/wotlk/npc=32538/duchess-mynx", "Knights of the Ebon Blade" },
        { @"https://www.wowhead.com/wotlk/npc=32287/archmage-alvareaux", "Kirin Tor" },
        { @"https://www.wowhead.com/wotlk/npc=30431/veteran-crusader-aliocha-segard", "Argent Crusade" },
        { @"https://www.wowhead.com/wotlk/npc=32565/gara-skullcrush", "Horde Expedition" },
        { @"https://www.wowhead.com/wotlk/npc=32773/logistics-officer-brighton", "Alliance Vanguard" }
    };

    internal override string FileName { get => "ReputationItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        foreach (var repVendor in wowheadUriList)
        {
            writeToLog($"Reading from: {repVendor.Key}");
            await Common.LoadFromWebPage(repVendor.Key, async (content) => //TODO: Convert to Single Browser loop
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);
                Common.ReadWowheadItemList(doc, repVendor.Key, (uri, row, itemId, itemName) =>
                {
                    var standingColumn = row.Children[5];
                    if (standingColumn != null)
                    {
                        var reputation = standingColumn.TextContent;

                        var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                        {
                            Name = itemName,
                            SourceNumber = "0",
                            Source = repVendor.Value,
                            SourceLocation = reputation,
                            SourceType = "Reputation"
                        });
                    }
                });
            });
        }
        return items;
    }
}