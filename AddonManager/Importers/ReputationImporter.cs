using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/classic/npc=31910/geen", "The Oracles" },
        { @"https://www.wowhead.com/classic/npc=222685/quartermaster-kyleen#sells", "Emeral Wardens"},
        { @"https://www.wowhead.com/classic/npc=222685/quartermaster-kyleen#sells;50", "Emeral Wardens"}
    };

    internal override string FileName { get => "ReputationItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.ReadWowheadSellsList(wowheadUriList.Keys.ToList(), (uri, row, itemId, item) =>
        {
            var standingColumn = row.Children[5];
            var itemName = item.TextContent;
            if (standingColumn != null)
            {
                var reputation = standingColumn.TextContent;

                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = "0",
                    Source = wowheadUriList[uri],
                    SourceLocation = reputation,
                    SourceType = "Reputation"
                });
            }
        }, writeToLog);

        return items;
    }
}