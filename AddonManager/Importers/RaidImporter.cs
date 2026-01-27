using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Karazhan
        { @"https://www.wowhead.com/tbc/npc=16180/shadikith-the-glider", "Servant Quarters,  Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=16181/rokad-the-ravager", "Servant Quarters,  Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=16179/hyakiss-the-lurker", "Servant Quarters,  Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15550/attumen-the-huntsman", "Attumen the Huntsman, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15687/moroes", "Moroes, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=16457/maiden-of-virtue", "Maiden of Virtue, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=18168/the-crone", "Opera Event (Oz), Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=17521/the-big-bad-wolf", "Opera Event (Wolf), Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=17533/romulo", "Opera Event (Romeo), Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=17534/julianne", "Opera Event (Romeo), Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15691/the-curator", "The Curator, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15688/terestian-illhoof", "Terestian Illhoof, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=16524/shade-of-aran", "Shade of Aran, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15689/netherspite", "Netherspite, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=17225/nightbane", "Nightbane, Karazhan" },
        { @"https://www.wowhead.com/tbc/npc=15690/prince-malchezaar", "Prince Malchezaar, Karazhan" },

        //Gruul's Lair
        { @"https://www.wowhead.com/tbc/npc=19044/gruul-the-dragonkiller", "Gruul, Gruul's Lair" },
        { @"https://www.wowhead.com/tbc/npc=18831/high-king-maulgar", "High King Maulgar, Gruul's Lair" },

        //Magtheridon's Lair
        { @"https://www.wowhead.com/tbc/npc=17257/magtheridon", "Magtheridon, Magtheridon's Lair" },

        //Serpentshrine Cavern
        { @"https://www.wowhead.com/tbc/npc=21216/hydross-the-unstable", "Hydross the Unstable, Serpentshrine Cavern" },
        { @"https://www.wowhead.com/tbc/npc=21217/the-lurker-below", "The Lurker Below, Serpentshrine Cavern" },
        { @"https://www.wowhead.com/tbc/npc=21215/leotheras-the-blind", "Leotheras the Blind, Serpentshrine Cavern" },
        { @"https://www.wowhead.com/tbc/npc=21214/fathom-lord-karathress", "Fathom-Lord Karathress, Serpentshrine Cavern" },
        { @"https://www.wowhead.com/tbc/npc=21213/morogrim-tidewalker", "Morogrim Tidewalker, Serpentshrine Cavern" },
        { @"https://www.wowhead.com/tbc/npc=21212/lady-vashj", "Lady Vashj, Serpentshrine Cavern" },

        //Tempest Keep
        { @"https://www.wowhead.com/tbc/npc=19516/void-reaver", "Void Reaver, Tempest Keep" },
        { @"https://www.wowhead.com/tbc/npc=19514/alar", "Al'ar, Tempest Keep" },
        { @"https://www.wowhead.com/tbc/npc=18805/high-astromancer-solarian", "High Astromancer Solarian, Tempest Keep" },
        { @"https://www.wowhead.com/tbc/npc=19622/kaelthas-sunstrider", "Kael'thas Sunstrider, Tempest Keep" },

        //Hyjal Summit
        { @"https://www.wowhead.com/tbc/npc=17767/rage-winterchill", "Rage Winterchill, Hyjal Summit" },
        { @"https://www.wowhead.com/tbc/npc=17808/anetheron", "Anetheron, Hyjal Summit" },
        { @"https://www.wowhead.com/tbc/npc=17888/kazrogal", "Kaz'rogal, Hyjal Summit" },
        { @"https://www.wowhead.com/tbc/npc=17842/azgalor", "Azgalor, Hyjal Summit" },
        { @"https://www.wowhead.com/tbc/npc=17968/archimonde", "Archimonde, Hyjal Summit" },

        //Black Temple
        { @"https://www.wowhead.com/tbc/npc=22887/high-warlord-najentus", "High Warlord Naj'entus, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22898/supremus", "Supremus, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22841/shade-of-akama", "Shade of Akama, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22871/teron-gorefiend", "Teron Gorefiend, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22948/gurtogg-bloodboil", "Gurtogg Bloodboil, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=23420/essence-of-anger", "Reliquary of Souls, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22947/mother-shahraz", "Mother Shahraz, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22949/gathios-the-shatterer", "The Illidari Council, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22950/high-nethermancer-zerevor", "The Illidari Council, Black Temple" },
        { @"https://www.wowhead.com/tbc/npc=22917/illidan-stormrage", "Illidan Stormrage, Black Temple" },

        //Zul'Aman
        { @"https://www.wowhead.com/tbc/npc=23574/akilzon", "Akil'zon, Zul'Aman" },
        { @"https://www.wowhead.com/tbc/npc=23576/nalorakk", "Nalorakk, Zul'Aman" },
        { @"https://www.wowhead.com/tbc/npc=23578/janalai", "Jan'alai, Zul'Aman" },
        { @"https://www.wowhead.com/tbc/npc=23577/halazzi", "Halazzi, Zul'Aman" },
        { @"https://www.wowhead.com/tbc/npc=24239/hex-lord-malacrass", "Hex Lord Malacrass, Zul'Aman" },
        { @"https://www.wowhead.com/tbc/npc=23863/zuljin", "Zul'jin, Zul'Aman" },

        //Sunwell Plateau
        { @"https://www.wowhead.com/tbc/npc=24850/kalecgos", "Kalecgos, Sunwell Plateau" },
        { @"https://www.wowhead.com/tbc/npc=24882/brutallus", "Brutallus, Sunwell Plateau" },
        { @"https://www.wowhead.com/tbc/npc=25038/felmyst", "Felmyst, Sunwell Plateau" },
        { @"https://www.wowhead.com/tbc/npc=25166/grand-warlock-alythess", "Eredar Twins, Sunwell Plateau" },
        { @"https://www.wowhead.com/tbc/npc=25840/entropius", "M'uru, Sunwell Plateau" },
        { @"https://www.wowhead.com/tbc/npc=25315/kiljaeden", "Kil'Jaeden, Sunwell Plateau" },
    };

    private Dictionary<string, string> wowheadContainsUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/tbc/object=185119/dust-covered-chest", "Chess Event, Karazhan" },
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
    };

    public RaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

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
