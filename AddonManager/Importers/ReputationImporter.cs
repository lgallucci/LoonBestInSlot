using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { "https://www.wowhead.com/tbc/npc=17904/fedryen-swiftspear#sells", "Cenarion Expedition, B" },
        { "https://www.wowhead.com/tbc/npc=17904/fedryen-swiftspear#sells;50", "Cenarion Expedition, B" },
        { "https://www.wowhead.com/tbc/npc=23007/paulstaats#sells", "The Consortium, B" },
        { "https://www.wowhead.com/tbc/npc=21432/almaador#sells", "The Sha'tar, B" },
        { "https://www.wowhead.com/tbc/npc=17585/quartermaster-urgronn#sells", "Thrallmar, H" },
        { "https://www.wowhead.com/tbc/npc=17657/logistics-officer-ulrike#sells", "Honor Hold, A" },
        { "https://www.wowhead.com/tbc/npc=21643/alurmi#sells", "Keepers of Time, B" },
        { "https://www.wowhead.com/tbc/npc=20240/trader-narasu#sells", "Kurenai, A" },
        { "https://www.wowhead.com/tbc/npc=21655/nakodu#sells", "Lower City, B" },
        { "https://www.wowhead.com/tbc/npc=20241/provisioner-nasela#sells", "The Mag'har, H" },
        { "https://www.wowhead.com/tbc/npc=23367/grella#sells", "Sha'tari Skyguard, B" },
        { "https://www.wowhead.com/tbc/npc=25032/eldara-dawnrunner#sells", "Shattered Sun Offensive, B" },
        { "https://www.wowhead.com/tbc/npc=23428/jhonass#sells", "Ogri'la, B" },
        { "https://www.wowhead.com/tbc/npc=23159/okuno#sells", "Ashtongue Deathsworn, B" },
        { "https://www.wowhead.com/tbc/npc=18382/mycah#sells", "Sporeggar, B" },
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

            var isBlue = (item.ClassName?.Contains("q3") ?? false) || 
                            (item.ClassName?.Contains("q4") ?? false) || 
                            (item.ClassName?.Contains("q5") ?? false);
            if (!isBlue) return;

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
            itemName.StartsWith("Design: ") ||
            itemName.StartsWith("Schematic: ") ||
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