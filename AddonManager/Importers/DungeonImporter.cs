using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private List<string> excludedWords = new List<string>()
    {
        "Reins of the",
        "Plans: ",
        "Pattern: ",
        "Formula: ",
        "Design: ",
        "Schematic: ",
        "Trophy of the Crusade",
        "Large Satchel",
        "Dragon Hide Bag",
        "Shadowfrost Shard",
        "Primal Nether",
        "Tome of", 
        "Book: ",
        "Badge of Justice",
        "Codex: ",
        " of Furies",
        " of Storms",
        " of Lunacy",
    };

    private Dictionary<string, string> _bossUriList = new Dictionary<string, string>()
    {
        { @"https://www.wowhead.com/tbc/npc=17306/watchkeeper-gargolmar#drops", "Watchkeeper Gargolmar, Hellfire Ramparts"},
        { @"https://www.wowhead.com/tbc/npc=17308/omor-the-unscarred#drops", "Omor the Unscarred, Hellfire Ramparts"},

        { @"https://www.wowhead.com/tbc/npc=17381/the-maker#drops", "The Maker, The Blood Furnace"},
        { @"https://www.wowhead.com/tbc/npc=17380/broggok#drops", "Broggok, The Blood Furnace"},
        { @"https://www.wowhead.com/tbc/npc=17377/kelidan-the-breaker#drops", "Keli'dan the Breaker, The Blood Furnace"},

        { @"https://www.wowhead.com/tbc/npc=16807/grand-warlock-nethekurse#drops", "Grand Warlock Nethekurse, The Shattered Halls"},
        { @"https://www.wowhead.com/tbc/npc=20923/blood-guard-porung#drops", "Blood Guard Porung, The Shattered Halls"},
        { @"https://www.wowhead.com/tbc/npc=16809/warbringer-omrogg#drops", "Warbringer O'mrogg, The Shattered Halls"},
        { @"https://www.wowhead.com/tbc/npc=16808/warchief-kargath-bladefist#drops", "Warchief Kargath Bladefist, The Shattered Halls"},

        { "https://www.wowhead.com/tbc/npc=17991/rokmar-the-crackler#drops", "Rokmar the Crackler, The Slave Pens" },
        { "https://www.wowhead.com/tbc/npc=17941/mennu-the-betrayer#drops", "Mennu the Betrayer, The Slave Pens" },
        { "https://www.wowhead.com/tbc/npc=17942/quagmirran#drops", "Quagmirran, The Slave Pens" },

        { "https://www.wowhead.com/tbc/npc=17770/hungarfen#drops", "Hungarfen, The Underbog" },
        { "https://www.wowhead.com/tbc/npc=18105/ghazan#drops", "Ghaz'an, The Underbog" },
        { "https://www.wowhead.com/tbc/npc=17826/swamplord-muselek#drops", "Swamplord Musel'ek, The Underbog" },
        { "https://www.wowhead.com/tbc/npc=17882/the-black-stalker#drops", "The Black Stalker, The Underbog" },

        { "https://www.wowhead.com/tbc/npc=17797/hydromancer-thespia#drops", "Hydromancer Thespia, The Steamvault" },
        { "https://www.wowhead.com/tbc/npc=17796/mekgineer-steamrigger#drops", "Mekgineer Steamrigger, The Steamvault" },
        { "https://www.wowhead.com/tbc/npc=17798/warlord-kalithresh#drops", "Warlord Kalithresh, The Steamvault" },

        { "https://www.wowhead.com/tbc/npc=17848/lieutenant-drake#drops", "Lieutenant Drake, Old Hillsbrad Foothills" },
        { "https://www.wowhead.com/tbc/npc=17862/captain-skarloc#drops", "Captain Skarloc, Old Hillsbrad Foothills" },
        { "https://www.wowhead.com/tbc/npc=18096/epoch-hunter#drops", "Epoch Hunter, Old Hillsbrad Foothills" },

        { "https://www.wowhead.com/tbc/npc=17879/chrono-lord-deja#drops", "Chrono Lord Deja, The Black Morass" },
        { "https://www.wowhead.com/tbc/npc=17880/temporus#drops", "Temporus, The Black Morass" },
        { "https://www.wowhead.com/tbc/npc=17881/aeonus#drops", "Aeonus, The Black Morass" },

        { "https://www.wowhead.com/tbc/npc=18341/pandemonius#drops", "Pandemonius, Mana Tombs" },
        { "https://www.wowhead.com/tbc/npc=18343/tavarok#drops", "Tavarok, Mana Tombs" },
        { "https://www.wowhead.com/tbc/npc=18344/nexus-prince-shaffar#drops", "Nexus-Prince Shaffar, Mana Tombs" },
        { "https://www.wowhead.com/tbc/npc=22930/yor#drops", "Yor, Mana Tombs" },

        { "https://www.wowhead.com/tbc/npc=18371/shirrak-the-dead-watcher#drops", "Shirrak the Dead Watcher, Auchenai Crypts" },
        { "https://www.wowhead.com/tbc/npc=18373/exarch-maladaar#drops", "Exarch Maladaar, Auchenai Crypts" },

        { "https://www.wowhead.com/tbc/npc=18472/darkweaver-syth#drops", "Darkweaver Syth, Sethekk Halls" },
        { "https://www.wowhead.com/tbc/npc=23035/anzu#drops", "Anzu, Sethekk Halls" },
        { "https://www.wowhead.com/tbc/npc=18473/talon-king-ikiss#drops", "Talon King Ikiss, Sethekk Halls" },

        { "https://www.wowhead.com/tbc/npc=18731/ambassador-hellmaw#drops", "Ambassador Hellmaw, Shadow Labyrinth" },
        { "https://www.wowhead.com/tbc/npc=18667/blackheart-the-inciter#drops", "Blackheart the Inciter, Shadow Labyrinth" },
        { "https://www.wowhead.com/tbc/npc=18732/grandmaster-vorpil#drops", "Grandmaster Vorpil, Shadow Labyrinth" },
        { "https://www.wowhead.com/tbc/npc=18708/murmur#drops", "Murmur, Shadow Labyrinth" },

        { "https://www.wowhead.com/tbc/npc=19219/mechano-lord-capacitus#drops", "Mechano-Lord Capacitus, The Mechanar" },
        { "https://www.wowhead.com/tbc/npc=19221/nethermancer-sepethrea#drops", "Nethermancer Sepethrea, The Mechanar" },
        { "https://www.wowhead.com/tbc/npc=19220/pathaleon-the-calculator#drops", "Pathaleon the Calculator, The Mechanar" },

        { "https://www.wowhead.com/tbc/npc=17976/commander-sarannis#drops", "Commander Sarannis, The Botanica" },
        { "https://www.wowhead.com/tbc/npc=17975/high-botanist-freywinn#drops", "High Botanist Freywinn, The Botanica" },
        { "https://www.wowhead.com/tbc/npc=17978/thorngrin-the-tender#drops", "Thorngrin the Tender, The Botanica" },
        { "https://www.wowhead.com/tbc/npc=17980/laj#drops", "Laj, The Botanica" },
        { "https://www.wowhead.com/tbc/npc=17977/warp-splinter#drops", "Warp Splinter, The Botanica" },

        { "https://www.wowhead.com/tbc/npc=20870/zereketh-the-unbound#drops", "Zereketh the Unbound, The Arcatraz" },
        { "https://www.wowhead.com/tbc/npc=20885/dalliah-the-doomsayer#drops", "Dalliah the Doomsayer, The Arcatraz" },
        { "https://www.wowhead.com/tbc/npc=20886/wrath-scryer-soccothrates#drops", "Wrath-Scryer Soccothrates, The Arcatraz" },
        { "https://www.wowhead.com/tbc/npc=20912/harbinger-skyriss#drops", "Harbinger Skyriss, The Arcatraz" },
    };

    private Dictionary<string, string> _objectUriList = new Dictionary<string, string>()
    {
        { @"https://www.wowhead.com/tbc/object=185168/reinforced-fel-iron-chest#contains", "Vazruden, Hellfire Ramparts"},
        { @"https://www.wowhead.com/tbc/object=184465/cache-of-the-legion#contains", "The Gatewatchers, The Mechanar"}
    };

    public DungeonImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.ReadWowheadDropsList(_bossUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(_bossUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        await Common.ReadWowheadContainsList(_objectUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(_objectUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        return items;
    }

    private void InternalItemsParse(Dictionary<string, string> uriList, string webAddress, IElement row, int itemId, int itemLevel, IElement item, DatabaseItems items)
    {
        var itemName = item.TextContent;
        var isBlue = (item.ClassName?.Contains("q3") ?? false) || (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
        if (!isBlue) return;
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

        //Read Mode and add to sourceLocation
        string modeText = "";
        var modeElement = row.Children[3];
        if (modeElement.TextContent.Contains("Heroic"))
            modeText = "H";

        var sourceSplit = uriList[webAddress].Split(",");
        var sourceName = sourceSplit[0].Trim();

        var isGem = row.Children[10].TextContent.Contains("Gem");
        if (isGem)
            return;
        items.AddItem(itemId, new DatabaseItem
        {
            Name = itemName,
            SourceNumber = "0",
            Source = sourceName,
            SourceLocation = sourceSplit[1].Trim() + (!string.IsNullOrWhiteSpace(modeText) ? $" ({modeText})" : ""),
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