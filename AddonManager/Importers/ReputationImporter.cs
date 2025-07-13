using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/mop-classic/npc=64599/ambersmith-zikk", "The Klaxxi, B" },
    };

    public ReputationImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

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

                var sourceSplit = wowheadUriList[uri].Split(",");

                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = "0",
                    Source = sourceSplit[0].Trim(),
                    SourceLocation = reputation,
                    SourceType = "Reputation",
                    SourceFaction = sourceSplit[1].Trim()
                });
            }
        }, writeToLog, _importCancelToken);

        return items;
    }
}