using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private Dictionary<string, (string, List<string>)> dungeonUriList = new Dictionary<string, (string, List<string>)>
        {
            { @"https://www.wowhead.com/classic/guide/ragefire-chasm-dungeon-strategy-wow-classic", ("Ragefire Chasm", new List<string>{"Oggleflint","Taragaman the Hungerer", "Jergosh the Invoker", "Bazzalan"}) },
            { @"https://www.wowhead.com/classic/guide/wailing-caverns-dungeon-strategy-wow-classic", ("Wailing Caverns", new List<string>{"Kresh","Lady Anacondra", "Lord Cobrahn", "Deviate Faerie Dragon", "Lord Pythas", "Skum", "Lord Serpentis", "Verdan the Everliving", "Mutanus the Devourer", "" }) },
            { @"https://www.wowhead.com/classic/guide/deadmines-dungeon-strategy-wow-classic", ("The Deadmines", new List<string>{"Rhahk'zor","Miner Johnson", "Sneed", "Gilnid", "Mr. Smite", "Captain Greenskin", "Edwin Van Cleef", "Cookie"}) },
            { @"https://www.wowhead.com/classic/guide/shadowfang-keep-dungeon-strategy-wow-classic", ("Shadowfang Keep", new List<string>{"Rethilgore","Fel Steeds","Razorclaw the Butcher","Baron Silverlaine","Commander Springvale","Odo the Blindwatcher","Deathsworn Captain","Fenrus the Devourer", "Wolf Master Nandos", "Archmage Arugal"}) },
            { @"https://www.wowhead.com/classic/guide/the-stockade-dungeon-strategy-wow-classic", ("The Stockade", new List<string>{"Targorr the Dread","Kam Deepfury","Hamhock","Bazil Thredd","Dextren Ward","Bruegal Ironknuckle"}) },
            { @"https://www.wowhead.com/classic/guide/razorfen-kraul-dungeon-strategy-wow-classic", ("Razorfen Kraul", new List<string>{"Roogug","Aggem Thorncurse","Death Speaker Jargba","Overlord Ramtusk","Agathelos the Raging","Blind Hunter","Earthcaller Halmgar","Charlga Razorflank"}) },
            { @"https://www.wowhead.com/classic/guide/scarlet-monastery-dungeon-strategy-wow-classic", ("Scarlet Monastery", new List<string>{"Interrogator Vishas","Bloodmage Thalnos","Azshir the Sleepless","Fallen Champion","Ironspine","Houndmaster Loksey","Arcanist Doan","Herod","Scarlet Commander Mograine","High Inquisitor Whitemane","High Inquisitor Fairbanks"}) },
            { @"https://www.wowhead.com/classic/guide/razorfen-downs-dungeon-strategy-wow-classic", ("Razorfen Downs", new List<string>{"Tuten'kash","Mordresh Fire Eye","Glutton","Ragglesnout","Amnennar the Coldbringer", "Plaguemaw the Rotting"}) },
            { @"https://www.wowhead.com/classic/guide/uldaman-dungeon-strategy-wow-classic", ("Uldaman", new List<string>{"The Lost Dwarves","Revelosh", "Ironaya", "Obsidian Sentinel", "Ancient Stone Keeper", "Galgann Firehammer", "Grimlok", "Archaedas"})},
            { @"https://www.wowhead.com/classic/guide/zulfarrak-dungeon-strategy-wow-classic", ("Zul'Farrak", new List<string>{"Antu'sul","Theka the Martyr","Witch Doctor Zum'rah","Nekrum Gutchewer","Sergeant Bly","Hydromancer Velratha","Chief Ukorz Sandscalp","Zerillis", "Gahz'rilla"})},
            { @"https://www.wowhead.com/classic/guide/maraudon-dungeon-strategy-wow-classic", ("Maraudon", new List<string>{"Lord Vyletongue","Noxxion","Razorlash","Meshlok the Harvester","Celebras the Cursed","Landslide","Princess Theradras","Rotgrip","Tinkerer Gizlock"}) },
            { @"https://www.wowhead.com/classic/guide/temple-of-atalhakkar-sunken-temple-dungeon-strategy-wow-classic", ("The Sunken Temple", new List<string>{"Jammal'an the Prophet","Weaver and Dreamscythe","Hazzas and Morphaz","The Shade of Eranikus","Avatar of Hakkar"}) },
            //{ @"https://www.wowhead.com/classic/guide/blackrock-depths-detention-block-dungeon-strategy-wow-classic", ("Blackrock Depths", new List<string>{"High Interrogator Gerstahn","Lord Roccor","Houndmaster Grebmar","Ring of the Law","Fineous Darkvire","Bael'gar","Lord Incendius","The Vault"}) },
            //{ @"https://www.wowhead.com/classic/guide/blackrock-depths-shadowforge-city-dungeon-strategy-wow-classic", ("Blackrock Depths", new List<string>{"General Angerforge","Golem Lord Argelmach","The Grim Guzzler","Ambassador Flamelash","Panzor the Invincible","Chest of the Seven","The Lyceum Gauntlet","Magmus","Emperor Dagran Thaurissan"}) },
            { @"https://www.wowhead.com/classic/guide/lower-blackrock-spire-lbrs-dungeon-strategy-wow-classic", ("Lower Blackrock Spire", new List<string>{"Spirestone Butcher","Spirestone Battle Lord","Highlord Omokk","Shadow Hunter Vosh’gajin","War Master Voone","Mor Grayhoof","Bannok Grimaxe","Mother Smolderweb","Crystal Fang","Urok Doomhowl","Quartermaster Zigris","Halycon","Gizrul the Slavener", "Overlord Wyrmthalak"}) },
            //{ @"https://www.wowhead.com/classic/guide/upper-blackrock-spire-ubrs-dungeon-strategy-wow-classic", ("Upper Blackrock Spire", new List<string>{"","",}) },// Fix
            { @"https://www.wowhead.com/classic/guide/scholomance-dungeon-strategy-wow-classic", ("Scholomance", new List<string>{"Blood Steward of Kirtonos","Kirtonos the Herald","Jandice Barov","Rattlegore","Marduk Blackpool","Vectus","Ras Frostwhisper","Kormok","Instructor Malicia","Doctor Theolen Krastinov","Lorekeeper Polkelt","The Ravenian","Lord Alexei Barov","Lady Illucia Barov", "Darkmaster Gandling"})},
            //{ @"https://www.wowhead.com/classic/guide/stratholme-live-dungeon-strategy-wow-classic", ("Stratholme Live", new List<string>{"","",})},// Fix
            //{ @"https://www.wowhead.com/classic/guide/stratholme-undead-dungeon-strategy-wow-classic", ("Stratholme Undead", new List<string>{"","",})},// Fix
            { @"https://www.wowhead.com/classic/guide/dire-maul-east-dungeon-strategy-wow-classic", ("Dire Maul East", new List<string>{"Pusillin","Lethtendris","Hydrospawn","Zevrim Thornhoof","Alzzin the Wildshaper","Isalien"})},
            { @"https://www.wowhead.com/classic/guide/dire-maul-west-dungeon-strategy-wow-classic", ("Dire Maul West", new List<string>{"Tendris Warpwood","Magister Kalendris","Tzu'see","Illyanna Ravenoak","Immol'thar","Prince Tortheldrin","Lord Hel'nurath"})},
            { @"https://www.wowhead.com/classic/guide/dire-maul-north-dungeon-strategy-wow-classic", ("Dire Maul North", new List<string>{"Guard Mol'dar","Stomper Kreeg","Guard Fengus","Guard Slip'kik","Captain Kromcrush","King Gordok", "Gordok Tribute"})}
        };

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(dungeonUriList.Keys.ToList(), (uri, doc) =>
        {
            var bossElements = doc.QuerySelectorAll("h3 .q10").ToList();
            
            bossElements.AddRange(doc.QuerySelectorAll("h2").ToList());

            foreach (var bossElement in bossElements.Where(b => dungeonUriList[uri].Item2.Contains(b.TextContent)))
            {
                var bossName = bossElement.TextContent;
                foreach(var replaceString in _bossNameRemovals)
                    bossName = bossName.Replace(replaceString, "");

                var element = bossElement.ParentElement;                
                while(element.ParentElement != null && element.ParentElement.Id != "guide-body")
                    element = element.ParentElement;

                AddLootItems(element, dungeonUriList[uri].Item1, bossName, items);
            }
        }, writeToLog, null, false);
        return items;
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

    private List<string> _bossNameRemovals = new List<string> 
    {
        " <Scarlet Champion>",
        " (Bonus Boss)"
    };

    private void AddLootItems(IElement htmlElement, string dungeonName, string bossName, DatabaseItems items)
    {
        var foundLoot = false;   
        IElement element = htmlElement;
        while (!foundLoot)
        {
            foundLoot = true;

            if (element == null)
                return;

            if (element.TextContent.Contains("Loot"))
            {
                foreach(var lootElement in element.NextElementSibling.ChildNodes)
                {
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
            else
                foundLoot = false;

            if (!foundLoot)
                element = element.NextElementSibling;
        }
    }
}
