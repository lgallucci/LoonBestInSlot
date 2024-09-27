using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
    private Dictionary<string, (string, List<string>)> dungeonUriList = new Dictionary<string, (string, List<string>)>
    {
        // { @"https://www.wowhead.com/classic/guide/ragefire-chasm-dungeon-strategy-wow-classic", ("Ragefire Chasm", 
        // new List<string>{"Oggleflint","Taragaman the Hungerer", "Jergosh the Invoker", "Bazzalan", "Quests"}) },

        // { @"https://www.wowhead.com/classic/guide/wailing-caverns-dungeon-strategy-wow-classic", ("Wailing Caverns", 
        // new List<string>{"Kresh","Lady Anacondra", "Lord Cobrahn", "Deviate Faerie Dragon (Rare)", "Lord Pythas", 
        // "Skum", "Lord Serpentis", "Verdan the Everliving", "The Naralex Event (Mutanus the Devourer)", "Quests" }) },

        // { @"https://www.wowhead.com/classic/guide/deadmines-dungeon-strategy-wow-classic", ("The Deadmines", 
        // new List<string>{"Rhahk'zor","Miner Johnson (Rare)", "Sneed's Shredder", "Gilnid", "Mr. Smite", 
        // "Captain Greenskin", "Edwin Van Cleef", "Cookie", "Noteworthy Deadmines BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/shadowfang-keep-dungeon-strategy-wow-classic", ("Shadowfang Keep", 
        // new List<string>{"Rethilgore","Fel Steeds/Shadow Charger","Razorclaw the Butcher","Baron Silverlaine","Commander Springvale",
        // "Odo the Blindwatcher","Deathsworn Captain (Rare)","Fenrus the Devourer", "Wolf Master Nandos", "Archmage Arugal", "Noteworthy Shadowfang Keep BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/the-stockade-dungeon-strategy-wow-classic", ("The Stockade", 
        // new List<string>{"Targorr the Dread","Kam Deepfury","Hamhock","Bazil Thredd","Dextren Ward","Bruegal Ironknuckle (Rare)", "Quests"}) },

        // { @"https://www.wowhead.com/classic/guide/razorfen-kraul-dungeon-strategy-wow-classic", ("Razorfen Kraul", 
        // new List<string>{"Roogug","Aggem Thorncurse","Death Speaker Jargba","Overlord Ramtusk","Agathelos the Raging",
        // "Blind Hunter (Rare)","Earthcaller Halmgar","Charlga Razorflank", "Razorfen Kraul BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/scarlet-monastery-dungeon-strategy-wow-classic", ("Scarlet Monastery", 
        // new List<string>{"Interrogator Vishas","Bloodmage Thalnos","Azshir the Sleepless (Rare)","Fallen Champion (Rare)",
        // "Ironspine (Rare)","Houndmaster Loksey","Arcanist Doan","Herod","Scarlet Commander Mograine","High Inquisitor Whitemane",
        // "High Inquisitor Fairbanks", "Gold Farming in Scarlet Monastery"}) },

        // { @"https://www.wowhead.com/classic/guide/razorfen-downs-dungeon-strategy-wow-classic", ("Razorfen Downs", 
        // new List<string>{"Tuten'kash","Mordresh Fire Eye","Glutton","Ragglesnout (Rare)","Amnennar the Coldbringer", 
        // "Plaguemaw the Rotting", "Noteworthy Razorfen Downs Trash Mobs"}) },

        // { @"https://www.wowhead.com/classic/guide/uldaman-dungeon-strategy-wow-classic", ("Uldaman", 
        // new List<string>{"The Lost Dwarves","Revelosh", "Ironaya", "Obsidian Sentinel", "Ancient Stone Keeper", 
        // "Galgann Firehammer", "Grimlok", "Archaedas", "Noteworthy Uldaman BoE Loot"})},

        // { @"https://www.wowhead.com/classic/guide/zulfarrak-dungeon-strategy-wow-classic", ("Zul'Farrak", 
        // new List<string>{"Antu'sul <Overseer of Sul>", "Theka the Martyr", "Witch Doctor Zum'rah","Nekrum Gutchewer and Shadowpriest Sezz'ziz",
        // "Sergeant Bly","Hydromancer Velratha","Chief Ukorz Sandscalp","Zerillis", "Gahz'rilla", "Noteworthy Zul'Farrak BoE Loot"})},

        // { @"https://www.wowhead.com/classic/guide/maraudon-dungeon-strategy-wow-classic", ("Maraudon", 
        // new List<string>{"Lord Vyletongue", "Noxxion", "Razorlash", "Meshlok the Harvester (Rare)","Celebras the Cursed","Landslide",
        // "Princess Theradras","Rotgrip","Tinkerer Gizlock", "BoEs from Maraudon"}) },

        // { @"https://www.wowhead.com/classic/guide/blackrock-depths-detention-block-dungeon-strategy-wow-classic", ("Blackrock Depths", 
        // new List<string>{"High Interrogator Gerstahn", "Lord Roccor", "Houndmaster Grebmar", "Ring of the Law", "Fineous Darkvire", 
        // "Pyromancer Loregrain", "Bael'gar", "Lord Incendius", "The Vault", "Notable Blackrock Depths BoE Loot"}) },

        // { @"https://www.wowhead.com/classic/guide/blackrock-depths-shadowforge-city-dungeon-strategy-wow-classic", ("Blackrock Depths", 
        // new List<string>{"General Angerforge", "Golem Lord Argelmach", "The Grim Guzzler", "Ambassador Flamelash", "Panzor the Invincible",
        // "Chest of the Seven", "The Lyceum Gauntlet", "Magmus", "Emperor Dagran Thaurissan", "Emperor Farming Runs"}) },
    };

    private Dictionary<string, (string, string)> dungeonBossUriList = new Dictionary<string, (string, string)>
    {
        //Lower Blackrock Spire
        { "https://www.wowhead.com/classic/npc=9219/spirestone-butcher", ("Spirestone Butcher (Rare)", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9218/spirestone-battle-lord", ("Spirestone Battle Lord (Rare)", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9196/highlord-omokk", ("Highlord Omokk", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9236/shadow-hunter-voshgajin", ("Shadow Hunter Vosh’gajin", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9237/war-master-voone", ("War Master Voone", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=16080/mor-grayhoof", ("Mor Grayhoof", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9596/bannok-grimaxe", ("Bannok Grimaxe (Rare)", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10596/mother-smolderweb", ("Mother Smolderweb", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10596/mother-smolderweb#drops;mode:normal;50", ("Mother Smolderweb", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10376/crystal-fang", ("Crystal Fang (Rare)", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10584/urok-doomhowl", ("Urok Doomhowl", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9736/quartermaster-zigris", ("Quartermaster Zigris", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10220/halycon", ("Halycon", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10268/gizrul-the-slavener", ("Gizrul the Slavener", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9568/overlord-wyrmthalak", ("Overlord Wyrmthalak", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9568/overlord-wyrmthalak#drops;mode:normal;50", ("Overlord Wyrmthalak", "Lower Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9568/overlord-wyrmthalak#drops;mode:normal;100", ("Overlord Wyrmthalak", "Lower Blackrock Spire")},

        //Upper Blackrock Spire
        { "https://www.wowhead.com/classic/npc=9816/pyroguard-emberseer", ("Pyroguard Emberseer", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9816/pyroguard-emberseer#drops;mode:normal;50", ("Pyroguard Emberseer", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9816/pyroguard-emberseer#drops;mode:normal;100", ("Pyroguard Emberseer", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=9816/pyroguard-emberseer#drops;mode:normal;150", ("Pyroguard Emberseer", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10264/solakar-flamewreath", ("Solakar Flamewreath", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10264/solakar-flamewreath#drops;mode:normal;50", ("Solakar Flamewreath", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10899/goraluk-anvilcrack", ("Goraluk Anvilcrack", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10899/goraluk-anvilcrack#drops;mode:normal;50", ("Goraluk Anvilcrack", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10509/jed-runewatcher", ("Jed Runewatcher", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10509/jed-runewatcher#drops;mode:normal;50", ("Jed Runewatcher", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10509/jed-runewatcher#drops;mode:normal;100", ("Jed Runewatcher", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10509/jed-runewatcher#drops;mode:normal;150", ("Jed Runewatcher", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10339/gyth", ("Gyth", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10339/gyth#drops;mode:normal;50", ("Gyth", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10429/warchief-rend-blackhand", ("Warchief Rend Blackhand", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10429/warchief-rend-blackhand#drops;mode:normal;50", ("Warchief Rend Blackhand", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10429/warchief-rend-blackhand#drops;mode:normal;100", ("Warchief Rend Blackhand", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10430/the-beast", ("The Beast", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10430/the-beast#drops;mode:normal;50", ("The Beast", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=16042/lord-valthalak", ("Lord Valthalak", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10363/general-drakkisath", ("General Drakkisath", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10363/general-drakkisath#drops;mode:normal;50", ("General Drakkisath", "Upper Blackrock Spire")},
        { "https://www.wowhead.com/classic/npc=10363/general-drakkisath#drops;mode:normal;100", ("General Drakkisath", "Upper Blackrock Spire")},

        //Scholomance
        { "https://www.wowhead.com/classic/npc=14861/blood-steward-of-kirtonos", ("Blood Steward of Kirtonos", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10506/kirtonos-the-herald", ("Kirtonos the Herald", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10506/kirtonos-the-herald#drops;mode:normal;50", ("Kirtonos the Herald", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10506/kirtonos-the-herald#drops;mode:normal;100", ("Kirtonos the Herald", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10503/jandice-barov", ("Jandice Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10503/jandice-barov#drops;mode:normal;50", ("Jandice Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10503/jandice-barov#drops;mode:normal;100", ("Jandice Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11622/rattlegore", ("Rattlegore", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11622/rattlegore#drops;mode:normal;50", ("Rattlegore", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11622/rattlegore#drops;mode:normal;100", ("Rattlegore", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11622/rattlegore#drops;mode:normal;150", ("Rattlegore", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10433/marduk-blackpool", ("Marduk Blackpool", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10433/marduk-blackpool#drops;mode:normal;50", ("Marduk Blackpool", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10432/vectus", ("Vectus", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10432/vectus#drops;mode:normal;50", ("Vectus", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10508/ras-frostwhisper", ("Ras Frostwhisper", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10508/ras-frostwhisper#drops;mode:normal;50", ("Ras Frostwhisper", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10508/ras-frostwhisper#drops;mode:normal;100", ("Ras Frostwhisper", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10508/ras-frostwhisper#drops;mode:normal;150", ("Ras Frostwhisper", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=16118/kormok", ("Kormok", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10505/instructor-malicia", ("Instructor Malicia", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10505/instructor-malicia#drops;mode:normal;50", ("Instructor Malicia", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10505/instructor-malicia#drops;mode:normal;100", ("Instructor Malicia", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10505/instructor-malicia#drops;mode:normal;150", ("Instructor Malicia", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10505/instructor-malicia#drops;mode:normal;200", ("Instructor Malicia", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov", ("Doctor Theolen Krastinov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov#drops;mode:normal;50", ("Doctor Theolen Krastinov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov#drops;mode:normal;100", ("Doctor Theolen Krastinov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov#drops;mode:normal;150", ("Doctor Theolen Krastinov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=11261/doctor-theolen-krastinov#drops;mode:normal;200", ("Doctor Theolen Krastinov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt", ("Lorekeeper Polkelt", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt#drops;mode:normal;50", ("Lorekeeper Polkelt", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt#drops;mode:normal;100", ("Lorekeeper Polkelt", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt#drops;mode:normal;150", ("Lorekeeper Polkelt", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10901/lorekeeper-polkelt#drops;mode:normal;200", ("Lorekeeper Polkelt", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10507/the-ravenian", ("The Ravenian", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10507/the-ravenian#drops;mode:normal;50", ("The Ravenian", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10507/the-ravenian#drops;mode:normal;100", ("The Ravenian", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10507/the-ravenian#drops;mode:normal;150", ("The Ravenian", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10507/the-ravenian#drops;mode:normal;200", ("The Ravenian", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10504/lord-alexei-barov", ("Lord Alexei Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10504/lord-alexei-barov#drops;mode:normal;50", ("Lord Alexei Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10504/lord-alexei-barov#drops;mode:normal;100", ("Lord Alexei Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10504/lord-alexei-barov#drops;mode:normal;150", ("Lord Alexei Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10504/lord-alexei-barov#drops;mode:normal;200", ("Lord Alexei Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10502/lady-illucia-barov", ("Lady Illucia Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10502/lady-illucia-barov#drops;mode:normal;50", ("Lady Illucia Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10502/lady-illucia-barov#drops;mode:normal;100", ("Lady Illucia Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10502/lady-illucia-barov#drops;mode:normal;150", ("Lady Illucia Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=10502/lady-illucia-barov#drops;mode:normal;200", ("Lady Illucia Barov", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=1853/darkmaster-gandling", ("Darkmaster Gandling", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=1853/darkmaster-gandling#drops;mode:normal;50", ("Darkmaster Gandling", "Scholomance")},
        { "https://www.wowhead.com/classic/npc=1853/darkmaster-gandling#drops;mode:normal;100", ("Darkmaster Gandling", "Scholomance")},
        
        //Stratholme Live
        { "https://www.wowhead.com/classic/npc=11058/ezra-grimm", ("Ezra Grimm", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10558/hearthsinger-forresten", ("Hearthsinger Forresten (Rare)", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10393/skul", ("Skul (Rare)", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10516/the-unforgiven", ("The Unforgiven", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=11143/postmaster-malown", ("Postmaster Malown", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10808/timmy-the-cruel", ("Timmy the Cruel", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=11032/malor-the-zealous", ("Malor the Zealous", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=11032/malor-the-zealous#drops;mode:normal;50", ("Malor the Zealous", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10997/cannon-master-willey", ("Cannon Master Willey", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10811/archivist-galford", ("Archivist Galford", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10812/grand-crusader-dathrohan", ("Grand Crusader Dathrohan/Balnazzar", "Stratholme Live")},
        { "https://www.wowhead.com/classic/npc=10812/grand-crusader-dathrohan#drops;mode:normal;50", ("Grand Crusader Dathrohan/Balnazzar", "Stratholme Live")},
        { "https://www.wowhead.com/classic/object=181083/sothos-and-jariens-heirlooms#contains;mode:normal", ("Sothos and Jarien", "Stratholme Live")},

        //Stratholme Undead
        { "https://www.wowhead.com/classic/npc=10435/magistrate-barthilas", ("Magistrate Barthilas", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10809/stonespine", ("Stonespine", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10437/nerubenkan", ("Nerub'enkan", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=11121/black-guard-swordsmith", ("Black Guard Swordsmith", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10438/maleki-the-pallid", ("Maleki the Pallid", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10436/baroness-anastari", ("Baroness Anastari", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10439/ramstein-the-gorger", ("Ramstein the Gorger", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10439/ramstein-the-gorger#drops;mode:normal;50", ("Ramstein the Gorger", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10439/ramstein-the-gorger#drops;mode:normal;100", ("Ramstein the Gorger", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10440/baron-rivendare", ("Baron Rivendare", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10440/baron-rivendare#drops;mode:normal;50", ("Baron Rivendare", "Stratholme Undead")},
        { "https://www.wowhead.com/classic/npc=10440/baron-rivendare#drops;mode:normal;100", ("Baron Rivendare", "Stratholme Undead")},

        //DM: East
        { "https://www.wowhead.com/classic/npc=14354/pusillin", ("Pusillin", "Dire Maul East")},
        { "https://www.wowhead.com/classic/npc=14327/lethtendris", ("Lethtendris", "Dire Maul East")},
        { "https://www.wowhead.com/classic/npc=13280/hydrospawn", ("Hydrospawn", "Dire Maul East")},
        { "https://www.wowhead.com/classic/npc=11490/zevrim-thornhoof", ("Zevrim Thornhoof", "Dire Maul East")},
        { "https://www.wowhead.com/classic/npc=11492/alzzin-the-wildshaper", ("Alzzin the Wildshaper", "Dire Maul East")},
        { "https://www.wowhead.com/classic/npc=16097/isalien", ("Isalien", "Dire Maul East")},

        //DM: West
        { "https://www.wowhead.com/classic/npc=11489/tendris-warpwood", ("Tendris Warpwood", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=11487/magister-kalendris", ("Magister Kalendris", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=11467/tsuzee", ("Tsu'zee", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=11488/illyanna-ravenoak", ("Illyanna Ravenoak", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=11496/immolthar", ("Immol'thar", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=11486/prince-tortheldrin", ("Prince Tortheldrin", "Dire Maul West")},
        { "https://www.wowhead.com/classic/npc=14506/lord-helnurath", ("Lord Hel'nurath", "Dire Maul West")},

        //DM: North
        { "https://www.wowhead.com/classic/npc=14326/guard-moldar", ("Guard Mol'dar", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14322/stomper-kreeg", ("Stomper Kreeg", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14321/guard-fengus#drops;mode:normal", ("Guard Fengus", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14321/guard-fengus#drops;mode:normal;50", ("Guard Fengus", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14323/guard-slipkik", ("Guard Slip'kik", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14323/guard-slipkik#drops;mode:normal;50", ("Guard Slip'kik", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14325/captain-kromcrush", ("Captain Kromcrush", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=11501/king-gordok", ("King Gordok", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=11501/king-gordok#drops;mode:normal;50", ("King Gordok", "Dire Maul North") },
        { "https://www.wowhead.com/classic/npc=14324/chorush-the-observer", ("Cho'Rush", "Dire Maul North") },
    };

    private HashSet<int> _excludedIds = new HashSet<int>()
    {
        2589, 2592, 4306, 7740, 7741, 10588, 11207, 11610, 17191, 11813, 11325, 11602, 
        11612, 11742, 13459, 18653, 12533, 12534, 12838, 18784, 12835, 13247, 12586
    };

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

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
                while(element != null && element.ParentElement != null && element.ParentElement.Id != "guide-body")
                    element = element.ParentElement;

                AddLootItems(element, dungeonUriList[uri].Item1, bossName, nextBoss, items);
            }
        }, writeToLog, null);

        await Common.ReadWowheadDropsList(dungeonBossUriList.Keys.ToList(), (uri, row, itemId, item) =>
        {
            var bossName = dungeonBossUriList[uri].Item1;
            var dungeonName = dungeonBossUriList[uri].Item2;

            if ((item?.ClassName?.Contains("q0") ?? false) || 
                (item?.ClassName?.Contains("q1") ?? false) || 
                (item?.ClassName?.Contains("q2") ?? false))
            {
                return;
            }

            var sourceFaction = "B";
            if (row.Children[6].Children.Count() > 0)
            {
                var factionColumn = (IElement)row.Children[6].ChildNodes[0];
                if (factionColumn?.ClassName == "icon-horde")
                    sourceFaction = "H";
                else if (factionColumn?.ClassName == "icon-alliance")
                    sourceFaction = "A";
            }

            if (!_excludedIds.Contains(itemId))
                items.AddItem(itemId, new DatabaseItem 
                {
                    Name = item?.TextContent ?? "unknown",
                    Source = bossName,
                    SourceType = "Drop",
                    SourceNumber = "0",
                    SourceLocation = dungeonName,
                    SourceFaction = sourceFaction
                });
        }, writeToLog);

        return items;
    }

    private Dictionary<string, string> _bossNameReplacements = new Dictionary<string, string> 
    {
        {"Fel Steeds/Shadow Charger", "Fel Steeds & Shadow Charger"},
        {"Bannok Grimaxe", "Bannok Grimaxe (Rare)"},
        {"The Rookery - Father Flame", "Solakar Flamewreath"},
        { "Doctor Theolen Krastinov <The Butcher>", "Doctor Theolen Krastinov"},
    };

    private List<IHtmlAnchorElement> RecursivelyFindAnchors(IElement element)
    {
        List<IHtmlAnchorElement> results = new List<IHtmlAnchorElement>();
        if (element is IHtmlAnchorElement && element.ClassName != "toggler-off")
            results.Add(element as IHtmlAnchorElement);
        else
        {
            foreach (var child in element.Children)
            {
                results.AddRange(RecursivelyFindAnchors(child));
            }
        }
        return results;
    }

    private void AddLootItems(IElement htmlElement, string dungeonName, string bossName, string? nextBoss, DatabaseItems items)
    {
        IElement element = htmlElement;
        bool readingLoot = false;
        IElement? lootElement = null;
        while (true)
        {
            if (element == null)
                return;

            if (nextBoss != null && 
                (element.TextContent.Contains(nextBoss) || element.TextContent.Contains("Quest")) && 
                (element.NodeName == "H3" || element.NodeName == "H2" || element.FirstChild.NodeName == "H3" || element.FirstChild.NodeName == "H2"))
                return;
                
            if (element.TextContent.Contains("Loot"))
            {
                lootElement = element;
                readingLoot = true;
            }

            if (readingLoot && lootElement != null)
            {
                var anchors = RecursivelyFindAnchors(element as IElement);

                foreach(var anchor in anchors)
                {
                    if (anchor != null && anchor.PathName.Contains("/item="))
                    {
                        var sourceFaction = "B";
                        if (lootElement.TextContent.Contains("Horde"))
                            sourceFaction = "H";
                        else if (lootElement.TextContent.Contains("Alliance"))
                            sourceFaction = "A";

                        var item = anchor.PathName.Replace("/classic", "").Replace("/item=", "");

                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");

                        int itemId = -999;
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);
                        var name = anchor.TextContent.Trim();

                        if (!_excludedIds.Contains(itemId))
                            items.AddItem(itemId, new DatabaseItem 
                            {
                                Name = name,
                                Source = bossName,
                                SourceType = "Drop",
                                SourceNumber = "0",
                                SourceLocation = dungeonName,
                                SourceFaction = sourceFaction
                            });
                    }
                }
            }

            element = element.NextElementSibling;
        }
    }
}
