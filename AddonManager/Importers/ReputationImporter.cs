using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class ReputationImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/cata/npc=50314/provisioner-whitecloud", "Guardians of Hyjal, B" },
        { @"https://www.wowhead.com/cata/npc=54401/naresir-stormfury", "Avengers of Hyjal, B" },
        { @"https://www.wowhead.com/cata/npc=45408/dlom-the-collector", "Therazane, B" },
        { @"https://www.wowhead.com/cata/npc=48617/blacksmith-abasi", "Ramkahen, B" },
        { @"https://www.wowhead.com/cata/npc=50324/provisioner-arok", "The Earthen Ring, B" },
        { @"https://www.wowhead.com/npc=49386/craw-macgraw", "The Wildhammer Clan, A" },
        { @"https://www.wowhead.com/npc=49387/grot-deathblow", "The Dragonmaw Clan, H" },
        { @"https://www.wowhead.com/npc=47328/quartermaster-brazie", "Baradin's Wardens, A" },
        { @"https://www.wowhead.com/npc=48531/pogg", "Hellscream's Reach, H" },
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
        }, writeToLog);

        return items;
    }
}