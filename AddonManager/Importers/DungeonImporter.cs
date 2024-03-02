using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private Dictionary<string, (string, List<string>)> dungeonUriList = new Dictionary<string, (string, List<string>)>
    {
        { @"https://www.wowhead.com/classic/guide/ragefire-chasm-dungeon-strategy-wow-classic", ("Ragefire Chasm", 
        new List<string>{"Oggleflint","Taragaman the Hungerer", "Jergosh the Invoker", "Bazzalan", "Quests"}) },

        { @"https://www.wowhead.com/classic/guide/wailing-caverns-dungeon-strategy-wow-classic", ("Wailing Caverns", 
        new List<string>{"Kresh","Lady Anacondra", "Lord Cobrahn", "Deviate Faerie Dragon (Rare)", "Lord Pythas", 
        "Skum", "Lord Serpentis", "Verdan the Everliving", "The Naralex Event (Mutanus the Devourer)", "Quests" }) },

        { @"https://www.wowhead.com/classic/guide/deadmines-dungeon-strategy-wow-classic", ("The Deadmines", 
        new List<string>{"Rhahk'zor","Miner Johnson (Rare)", "Sneed's Shredder", "Gilnid", "Mr. Smite", 
        "Captain Greenskin", "Edwin Van Cleef", "Cookie", "Noteworthy Deadmines BoE Loot"}) },

        { @"https://www.wowhead.com/classic/guide/shadowfang-keep-dungeon-strategy-wow-classic", ("Shadowfang Keep", 
        new List<string>{"Rethilgore","Fel Steeds/Shadow Charger","Razorclaw the Butcher","Baron Silverlaine","Commander Springvale",
        "Odo the Blindwatcher","Deathsworn Captain (Rare)","Fenrus the Devourer", "Wolf Master Nandos", "Archmage Arugal", "Noteworthy Shadowfang Keep BoE Loot"}) },

        { @"https://www.wowhead.com/classic/guide/the-stockade-dungeon-strategy-wow-classic", ("The Stockade", 
        new List<string>{"Targorr the Dread","Kam Deepfury","Hamhock","Bazil Thredd","Dextren Ward","Bruegal Ironknuckle (Rare)", "Quests"}) },

        { @"https://www.wowhead.com/classic/guide/razorfen-kraul-dungeon-strategy-wow-classic", ("Razorfen Kraul", 
        new List<string>{"Roogug","Aggem Thorncurse","Death Speaker Jargba","Overlord Ramtusk","Agathelos the Raging",
        "Blind Hunter (Rare)","Earthcaller Halmgar","Charlga Razorflank", "Razorfen Kraul BoE Loot"}) },

        { @"https://www.wowhead.com/classic/guide/scarlet-monastery-dungeon-strategy-wow-classic", ("Scarlet Monastery", 
        new List<string>{"Interrogator Vishas","Bloodmage Thalnos","Azshir the Sleepless (Rare)","Fallen Champion (Rare)",
        "Ironspine (Rare)","Houndmaster Loksey","Arcanist Doan","Herod","Scarlet Commander Mograine","High Inquisitor Whitemane",
        "High Inquisitor Fairbanks", "Gold Farming in Scarlet Monastery"}) },

        { @"https://www.wowhead.com/classic/guide/razorfen-downs-dungeon-strategy-wow-classic", ("Razorfen Downs", 
        new List<string>{"Tuten'kash","Mordresh Fire Eye","Glutton","Ragglesnout (Rare)","Amnennar the Coldbringer", 
        "Plaguemaw the Rotting", "Noteworthy Razorfen Downs Trash Mobs"}) },

        { @"https://www.wowhead.com/classic/guide/uldaman-dungeon-strategy-wow-classic", ("Uldaman", 
        new List<string>{"The Lost Dwarves","Revelosh", "Ironaya", "Obsidian Sentinel", "Ancient Stone Keeper", 
        "Galgann Firehammer", "Grimlok", "Archaedas", "Noteworthy Uldaman BoE Loot"})},

        { @"https://www.wowhead.com/classic/guide/zulfarrak-dungeon-strategy-wow-classic", ("Zul'Farrak", 
        new List<string>{"Antu'sul <Overseer of Sul>", "Theka the Martyr", "Witch Doctor Zum'rah","Nekrum Gutchewer and Shadowpriest Sezz'ziz",
        "Sergeant Bly","Hydromancer Velratha","Chief Ukorz Sandscalp","Zerillis", "Gahz'rilla", "Noteworthy Zul'Farrak BoE Loot"})},

        { @"https://www.wowhead.com/classic/guide/maraudon-dungeon-strategy-wow-classic", ("Maraudon", 
        new List<string>{"Lord Vyletongue", "Noxxion", "Razorlash", "Meshlok the Harvester (Rare)","Celebras the Cursed","Landslide",
        "Princess Theradras","Rotgrip","Tinkerer Gizlock", "BoEs from Maraudon"}) },

        { @"https://www.wowhead.com/classic/guide/temple-of-atalhakkar-sunken-temple-dungeon-strategy-wow-classic", ("The Sunken Temple", 
        new List<string>{"Atal’alrion <Guardian of the Idol>", "Jammal'an the Prophet & Ogom the Wretched", "Weaver and Dreamscythe",
        "Hazzas and Morphaz", "The Shade of Eranikus", "Avatar of Hakkar", "Noteworthy Sunken Temple BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/blackrock-depths-detention-block-dungeon-strategy-wow-classic", ("Blackrock Depths", 
        // new List<string>{"High Interrogator Gerstahn", "Lord Roccor", "Houndmaster Grebmar", "Ring of the Law", "Fineous Darkvire",
        // "Bael'gar", "Lord Incendius", "The Vault", "Notable Blackrock Depths BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/blackrock-depths-shadowforge-city-dungeon-strategy-wow-classic", ("Blackrock Depths", 
        // new List<string>{"General Angerforge","Golem Lord Argelmach","The Grim Guzzler","Ambassador Flamelash","Panzor the Invincible",
        // "Chest of the Seven","The Lyceum Gauntlet","Magmus","Emperor Dagran Thaurissan", "Emperor Farming Runs"}) },

        // { @"https://www.wowhead.com/classic/guide/lower-blackrock-spire-lbrs-dungeon-strategy-wow-classic", ("Lower Blackrock Spire", 
        // new List<string>{"Spirestone Butcher (Rare)", "Spirestone Battle Lord (Rare)", "Highlord Omokk", "Shadow Hunter Vosh’gajin",
        // "War Master Voone", "Mor Grayhoof", "Bannok Grimaxe", "Mother Smolderweb", "Crystal Fang (Rare)",
        // "Urok Doomhowl", "Quartermaster Zigris", "Halycon", "Gizrul the Slavener", "Overlord Wyrmthalak", "Alliance LBRS Quests"}) },

        //{ @"https://www.wowhead.com/classic/guide/upper-blackrock-spire-ubrs-dungeon-strategy-wow-classic", ("Upper Blackrock Spire", 
        //new List<string>{"","",}) },// Fix

        // { @"https://www.wowhead.com/classic/guide/scholomance-dungeon-strategy-wow-classic", ("Scholomance", 
        // new List<string>{"Blood Steward of Kirtonos","Kirtonos the Herald","Jandice Barov","Rattlegore","Marduk Blackpool",
        // "Vectus","Ras Frostwhisper","Kormok","Instructor Malicia","Doctor Theolen Krastinov <The Butcher>","Lorekeeper Polkelt","The Ravenian",
        // "Lord Alexei Barov","Lady Illucia Barov", "Darkmaster Gandling", "Noteworthy Trash Mobs in Scholomance"})},

        //{ @"https://www.wowhead.com/classic/guide/stratholme-live-dungeon-strategy-wow-classic", ("Stratholme Live", 
        //new List<string>{"","",})},// Fix

        //{ @"https://www.wowhead.com/classic/guide/stratholme-undead-dungeon-strategy-wow-classic", ("Stratholme Undead", 
        //new List<string>{"","",})},// Fix

        // { @"https://www.wowhead.com/classic/guide/dire-maul-east-dungeon-strategy-wow-classic", ("Dire Maul East", 
        // new List<string>{"Pusillin","Lethtendris","Hydrospawn","Zevrim Thornhoof","Alzzin the Wildshaper","Isalien"})}, //Figure out dealing with Isalien

        // { @"https://www.wowhead.com/classic/guide/dire-maul-west-dungeon-strategy-wow-classic", ("Dire Maul West", 
        // new List<string>{"Tendris Warpwood","Magister Kalendris","Tzu'see","Illyanna Ravenoak","Immol'thar","Prince Tortheldrin",
        // "Lord Hel'nurath", "ABOUT THE AUTHOR"})},

        // { @"https://www.wowhead.com/classic/guide/dire-maul-north-dungeon-strategy-wow-classic", ("Dire Maul North", 
        // new List<string>{"Guard Mol'dar", "Stomper Kreeg", "Guard Fengus", "Guard Slip'kik", "Captain Kromcrush", 
        // "King Gordok & Cho'Rush the Observer", "Gordok Tribute", "Tribute Buffs"})}
    };

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(dungeonUriList.Keys.ToList(), (uri, doc) =>
        {
            var bossElements = doc.QuerySelectorAll("h3").ToList();
            
            bossElements.AddRange(doc.QuerySelectorAll("h2").ToList());

            for(int i = 0; i < dungeonUriList[uri].Item2.Count - 1; i++)
            {
                var bossName = dungeonUriList[uri].Item2[i];
                string? nextBoss = null;
                if (i < dungeonUriList[uri].Item2.Count - 1)
                    nextBoss = dungeonUriList[uri].Item2[i+1];

                var bossElement = bossElements.FirstOrDefault(b => b.TextContent.Contains(bossName));
                foreach(var replaceString in _bossNameReplacements.Keys)
                    bossName = bossName.Replace(replaceString, _bossNameReplacements[replaceString]);

                var element = bossElement;
                while(element.ParentElement != null && element.ParentElement.Id != "guide-body")
                    element = element.ParentElement;

                AddLootItems(element, dungeonUriList[uri].Item1, bossName, nextBoss, items);
            }
        }, writeToLog, null, false);
        return items;
    }

    private Dictionary<string, string> _bossNameReplacements = new Dictionary<string, string> 
    {
        {"Fel Steeds/Shadow Charger", "Fel Steeds & Shadow Charger"},
        {"Bannok Grimaxe", "Bannok Grimaxe (Rare)"}
    };

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

    private void AddLootItems(IElement htmlElement, string dungeonName, string bossName, string? nextBoss, DatabaseItems items)
    {
        IElement element = htmlElement;
        while (true)
        {
            if (element == null)
                return;

            if (nextBoss != null && element.TextContent.Contains(nextBoss) && 
                (element.NodeName == "H3" || element.NodeName == "H2" || 
                element.FirstChild.NodeName == "H3" || element.FirstChild.NodeName == "H2"))
                return;

            if (element.TextContent.Contains("Loot"))
            {
                foreach(var lootElement in element.NextElementSibling.ChildNodes)
                {
                    if (lootElement is not IElement)
                        continue;

                    var anchor = RecursivelyFindFirstAnchor(lootElement as IElement);

                    if (anchor != null)
                    {
                        var sourceFaction = "B";
                        if (element.TextContent.Contains("Horde"))
                            sourceFaction = "H";
                        else if (element.TextContent.Contains("Alliance"))
                            sourceFaction = "A";

                        var item = anchor.PathName.Replace("/classic", "").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");

                        int itemId = -999;
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);
                        var name = anchor.TextContent.Trim();

                        items.AddItem(itemId, new DatabaseItem 
                        {
                            Name = name,
                            Source = bossName,
                            SourceType = "Drop",
                            SourceNumber = "0",
                            SourceLocation = dungeonName,
                            SourceFaction = sourceFaction
                        });
                    } else {
                        Console.WriteLine($"anchor is null for {bossName}");
                    }
                }
            }

            element = element.NextElementSibling;
        }
    }
}
