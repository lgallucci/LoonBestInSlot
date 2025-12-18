using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
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

            if (standingColumn != null && !IsExcluded(itemName))
            {
                var reputation = standingColumn.TextContent;

                var sourceSplit = wowheadUriList[uri].Split(",");

                var (currencySource, currencyNumber) = EmblemImporter.GetSourceText(row.Children[11]);

                var sourceLocation = reputation == string.Empty ? $"{currencyNumber} {currencySource}" : currencySource != string.Empty ? $"{reputation} ({currencyNumber} {currencySource})" : reputation;
                var sourceType = reputation == string.Empty ? "Token" : "Reputation";

                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = "0",
                    Source = sourceSplit[0].Trim(),
                    SourceLocation = sourceLocation,
                    SourceType = sourceType,
                    SourceFaction = sourceSplit[1].Trim()
                });
            }
        }, writeToLog, _importCancelToken, true);

        return items;
    }

    private bool IsExcluded(string itemName)
    {
        if (itemName.StartsWith("Plans: ") ||
            itemName.StartsWith("Pattern: ") ||
            itemName.StartsWith("Recipe: ") ||
            itemName.StartsWith("Formula: ") ||
            itemName.StartsWith("Grand Armored ") ||
            itemName.StartsWith("Grand Commendation ") ||
            itemName.StartsWith("Reins of "))
        {
            return true;
        }
        return false;
    }
}