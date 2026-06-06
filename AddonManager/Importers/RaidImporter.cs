using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Siege of Orgrimmar
        { @"https://www.wowhead.com/mop-classic/npc=71543/immerseus#drops;mode:n10", "Immerseus (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71543/immerseus#drops;mode:h10", "Immerseus (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71475/rook-stonetoe#drops;mode:n10", "The Fallen Protectors (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71475/rook-stonetoe#drops;mode:h10", "The Fallen Protectors (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=72276/amalgam-of-corruption#drops;mode:n10", "Norushen (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=72276/amalgam-of-corruption#drops;mode:h10", "Norushen (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=71734/sha-of-pride#drops;mode:n10", "Sha of Pride (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71734/sha-of-pride#drops;mode:h10", "Sha of Pride (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=72249/galakras#drops;mode:n10", "Galakras (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=72249/galakras#drops;mode:h10", "Galakras (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=71466/iron-juggernaut#drops;mode:n10", "Iron Juggernaut (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71466/iron-juggernaut#drops;mode:h10", "Iron Juggernaut (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=71859/earthbreaker-haromm#drops;mode:n10", "Kor'kron Dark Shaman (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71859/earthbreaker-haromm#drops;mode:h10", "Kor'kron Dark Shaman (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=71515/general-nazgrim#drops;mode:n10", "General Nazgrim (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71515/general-nazgrim#drops;mode:h10", "General Nazgrim (H), Siege of Orgrimmar" },
        
        { @"https://www.wowhead.com/mop-classic/npc=71454/malkorok#drops;mode:n10", "Malkorok (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71454/malkorok#drops;mode:h10", "Malkorok (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71889/secured-stockpile-of-pandaren-spoils#drops;mode:n10", "Spoils of Pandaria (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71889/secured-stockpile-of-pandaren-spoils#drops;mode:h10", "Spoils of Pandaria (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71529/thok-the-bloodthirsty#drops;mode:n10", "Thok the Bloodthirsty (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71529/thok-the-bloodthirsty#drops;mode:h10", "Thok the Bloodthirsty (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71504/siegecrafter-blackfuse#drops;mode:n10", "Siegecrafter Blackfuse (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71504/siegecrafter-blackfuse#drops;mode:h10", "Siegecrafter Blackfuse (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71161/kilruk-the-wind-reaver#drops;mode:n10", "Paragons of the Klaxxi (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71161/kilruk-the-wind-reaver#drops;mode:h10", "Paragons of the Klaxxi (H), Siege of Orgrimmar" },

        { @"https://www.wowhead.com/mop-classic/npc=71865/garrosh-hellscream#drops;mode:n10", "Garrosh Hellscream (N), Siege of Orgrimmar" },
        { @"https://www.wowhead.com/mop-classic/npc=71865/garrosh-hellscream#drops;mode:h10", "Garrosh Hellscream (H), Siege of Orgrimmar" },

    };

    private Dictionary<string, string> wowheadContainsUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/mop-classic/object=194201/rare-cache-of-winter", "Hodir, Ulduar (25)" },
    };

    private Dictionary<int, DatabaseItem> trashDrops = new Dictionary<int, DatabaseItem>()
    {
    };

    private List<string> excludedWords = new List<string>()
    {
        "Reins of the",
        "Plans: ",
        "Pattern: ",
        "Formula: ",
        "Trophy of the Crusade",
        "Large Satchel",
        "Dragon Hide Bag",
        "Shadowfrost Shard",
        "Sigil of Power",
        "Sigil of Wisdom",
        "Secrets of the Empire",
        "Titan Runestone"
    };

    public RaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadDropsList(wowheadUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[4].TextContent, out int itemLevel);
            InternalItemsParse(wowheadUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        await Common.ReadWowheadContainsList(wowheadContainsUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(wowheadContainsUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        foreach (var trashDrop in trashDrops)
        {
            items.AddItem(trashDrop.Key, trashDrop.Value);
        }

        return items;
    }

    private void InternalItemsParse(Dictionary<string, string> uriList, string webAddress, IElement row, int itemId, int itemLevel, IElement item, DatabaseItems items)
    {
        var itemName = item.TextContent;
        var isPurple = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
        if (!isPurple) return;
        if (excludedWords.Any(w => itemName.Contains(w))) return;

        var sourceFaction = "B";
        if (row.Children[7].Children.Count() > 0)
        {
            var factionColumn = (IElement)row.Children[7].ChildNodes[0];
            if (factionColumn?.ClassName == "icon-horde")
                sourceFaction = "H";
            else if (factionColumn?.ClassName == "icon-alliance")
                sourceFaction = "A";
        }

        var sourceSplit = uriList[webAddress].Split(",");
        var sourceName = sourceSplit[0].Trim();

        items.AddItem(itemId, new DatabaseItem
        {
            Name = itemName,
            SourceNumber = "0",
            Source = sourceName,
            SourceLocation = sourceSplit[1].Trim(),
            SourceType = "Drop",
            SourceFaction = sourceFaction
        });
    }

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
}
