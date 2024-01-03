using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Vault
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10", "Archavon the Stone Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10;50", "Archavon the Stone Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10;100", "Archavon the Stone Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25;50", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25;100", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10;50", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10;100", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25;50", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25;100", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=35013/koralon-the-flame-watcher#drops;mode:n10", "Koralon the Flame Watcher, Vault of Archavon (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=35013/koralon-the-flame-watcher#drops;mode:n25", "Koralon the Flame Watcher, Vault of Archavon (25)" },
        // { @"https://www.wowhead.com/wotlk/npc=38433/toravon-the-ice-watcher#drops;mode:n10", "Toravon the Ice Watcher, Vault of Archavon (10)" },
        // { @"https://www.wowhead.com/wotlk/npc=38433/toravon-the-ice-watcher#drops;mode:n25", "Toravon the Ice Watcher, Vault of Archavon (25)" },
        //Naxxramas
        //{ @"https://www.wowhead.com/wotlk/npc=15956/anubrekhan#drops;mode:n25", "Anub'Rekhan, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15953/grand-widow-faerlina#drops;mode:n25", "Grand Widow Faerlina, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15952/maexxna#drops;mode:n25", "Maexxna, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15954/noth-the-plaguebringer#drops;mode:n25", "Noth the Plaguebringer, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15936/heigan-the-unclean#drops;mode:n25", "Heigan the Unclean, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=16011/loatheb#drops;mode:n25", "Loatheb, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=16061/instructor-razuvious#drops;mode:n25", "Instructor Razuvious, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=16060/gothik-the-harvester#drops;mode:n25", "Gothik the Harvester, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=16064/thane-korthazz#drops;mode:n25", "The Four Horsemen, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=16028/patchwerk#drops;mode:n25", "Patchwerk, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15931/grobbulus#drops;mode:n25", "Grobbulus, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15928/thaddius#drops;mode:n25", "Thaddius, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25", "Gluth, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;50", "Gluth, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;100", "Gluth, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;150", "Gluth, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15989/sapphiron#drops;mode:n25", "Sapphiron, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=15990/kelthuzad#drops;mode:n25", "Kel'Thuzad, Naxxramas" },
        //{ @"https://www.wowhead.com/wotlk/npc=28860/sartharion#drops;mode:n25", "Sartharion, The Obsidian Sanctum" },
        //{ @"https://www.wowhead.com/wotlk/npc=28859/malygos#drops;mode:n25", "Malygos, The Eye of Eternity" },
        //Ulduar
        //{ @"https://www.wowhead.com/wotlk/npc=33113/flame-leviathan#drops;mode:n10", "Flame Leviathan, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33113/flame-leviathan#drops;mode:n25", "Flame Leviathan, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33186/razorscale#drops;mode:n10", "Razorscale, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33186/razorscale#drops;mode:n25", "Razorscale, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33118/ignis-the-furnace-master#drops;mode:n10", "Ignis the Furnace Master, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33118/ignis-the-furnace-master#drops;mode:n25", "Ignis the Furnace Master, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33293/xt-002-deconstructor#drops;mode:n10", "XT-002 Deconstructor, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33293/xt-002-deconstructor#drops;mode:n25", "XT-002 Deconstructor, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32867/steelbreaker#drops;mode:n10", "The Iron Council, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32927/runemaster-molgeim#drops;mode:n10", "The Iron Council, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32857/stormcaller-brundir#drops;mode:n10", "The Iron Council, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32867/steelbreaker#drops;mode:n25", "The Iron Council, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32927/runemaster-molgeim#drops;mode:n25", "The Iron Council, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32857/stormcaller-brundir#drops;mode:n25", "The Iron Council, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32930/kologarn#drops;mode:n10", "Kologarn, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32930/kologarn#drops;mode:n25", "Kologarn, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33515/auriaya#drops;mode:n10", "Auriaya, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33515/auriaya#drops;mode:n25", "Auriaya, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32845/hodir#drops;mode:n10", "Hodir, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32845/hodir#drops;mode:n25", "Hodir, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32865/thorim#drops;mode:n10", "Thorim, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32865/thorim#drops;mode:n25", "Thorim, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32906/freya#drops;mode:n10", "Freya, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32906/freya#drops;mode:n25", "Freya, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33350/mimiron#drops;mode:n10", "Mimiron, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33350/mimiron#drops;mode:n25", "Mimiron, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33271/general-vezax#drops;mode:n10", "General Vezax, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33271/general-vezax#drops;mode:n25", "General Vezax, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33288/yogg-saron#drops;mode:n10", "Yogg-Saron, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=33288/yogg-saron#drops;mode:n25", "Yogg-Saron, Ulduar (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32871/algalon-the-observer#drops;mode:n10", "Algalon the Observer, Ulduar (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=32871/algalon-the-observer#drops;mode:n25", "Algalon the Observer, Ulduar (25)" },
        //Trials
        //{ @"https://www.wowhead.com/wotlk/npc=34797/icehowl#drops;mode:n10", "The Beasts of Northrend, Trial of the Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34797/icehowl#drops;mode:n25", "The Beasts of Northrend, Trial of the Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34797/icehowl#drops;mode:heroic10", "The Beasts of Northrend, Trial of the Grand Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34797/icehowl#drops;mode:heroic25", "The Beasts of Northrend, Trial of the Grand Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34780/lord-jaraxxus#drops;mode:n10", "Lord Jaraxxus, Trial of the Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34780/lord-jaraxxus#drops;mode:n25", "Lord Jaraxxus, Trial of the Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34780/lord-jaraxxus#drops;mode:heroic10", "Lord Jaraxxus, Trial of the Grand Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34780/lord-jaraxxus#drops;mode:heroic25", "Lord Jaraxxus, Trial of the Grand Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34444/thrakgar#drops;mode:n10", "Faction Champions, Trial of the Crusader (10)" }, //DOESNT WORK :*(
        //{ @"https://www.wowhead.com/wotlk/npc=34444/thrakgar#drops;mode:n25", "Faction Champions, Trial of the Crusader (25)" }, //DOESNT WORK :*(
        //{ @"https://www.wowhead.com/wotlk/npc=34444/thrakgar#drops;mode:heroic10", "Faction Champions, Trial of the Grand Crusader (10)" }, //DOESNT WORK :*(
        //{ @"https://www.wowhead.com/wotlk/npc=34444/thrakgar#drops;mode:heroic25", "Faction Champions, Trial of the Grand Crusader (25)" }, //DOESNT WORK :*(
        //{ @"https://www.wowhead.com/wotlk/npc=34497/fjola-lightbane#drops;mode:n10", "The Twin Val'kyr, Trial of the Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34496/eydis-darkbane#drops;mode:n10", "The Twin Val'kyr, Trial of the Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34497/fjola-lightbane#drops;mode:n25", "The Twin Val'kyr, Trial of the Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34496/eydis-darkbane#drops;mode:n25", "The Twin Val'kyr, Trial of the Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34497/fjola-lightbane#drops;mode:heroic10", "The Twin Val'kyr, Trial of the Grand Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34496/eydis-darkbane#drops;mode:heroic10", "The Twin Val'kyr, Trial of the Grand Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34497/fjola-lightbane#drops;mode:heroic25", "The Twin Val'kyr, Trial of the Grand Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34496/eydis-darkbane#drops;mode:heroic25", "The Twin Val'kyr, Trial of the Grand Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34564/anubarak#drops;mode:n10", "Anub'arak, Trial of the Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34564/anubarak#drops;mode:n25", "Anub'arak, Trial of the Crusader (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34564/anubarak#drops;mode:heroic10", "Anub'arak, Trial of the Grand Crusader (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=34564/anubarak#drops;mode:heroic25", "Anub'arak, Trial of the Grand Crusader (25)" },
        //Icecrown
        //{ @"https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar#drops;mode:n10", "Lord Marrowgar, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar#drops;mode:n25", "Lord Marrowgar, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar#drops;mode:heroic10", "Lord Marrowgar, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36612/lord-marrowgar#drops;mode:heroic25", "Lord Marrowgar, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper#drops;mode:n10", "Lady Deathwhisper, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper#drops;mode:n25", "Lady Deathwhisper, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper#drops;mode:heroic10", "Lady Deathwhisper, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36855/lady-deathwhisper#drops;mode:heroic25", "Lady Deathwhisper, Icecrown Citadel (25H)" },

        //{ @"", "" },//Gunship Armory
        //{ @"", "" },//Gunship Armory
        //{ @"", "" },//Gunship Armory
        //{ @"", "" },//Gunship Armory

        //{ @"https://www.wowhead.com/wotlk/npc=37813/deathbringer-saurfang#drops;mode:n10", "Deathbringer Saurfang, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37813/deathbringer-saurfang#drops;mode:n25", "Deathbringer Saurfang, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37813/deathbringer-saurfang#drops;mode:heroic10", "Deathbringer Saurfang, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37813/deathbringer-saurfang#drops;mode:heroic25", "Deathbringer Saurfang, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36626/festergut#drops;mode:n10", "Festergut, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36626/festergut#drops;mode:n25", "Festergut, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36626/festergut#drops;mode:heroic10", "Festergut, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36626/festergut#drops;mode:heroic25", "Festergut, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36627/rotface#drops;mode:n10", "Rotface, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36627/rotface#drops;mode:n25", "Rotface, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36627/rotface#drops;mode:heroic10", "Rotface, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36627/rotface#drops;mode:heroic25", "Rotface, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36678/professor-putricide#drops;mode:n10", "Professor Putricide, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36678/professor-putricide#drops;mode:n25", "Professor Putricide, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36678/professor-putricide#drops;mode:heroic10", "Professor Putricide, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36678/professor-putricide#drops;mode:heroic25", "Professor Putricide, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=37970/prince-valanar#drops;mode:n10", "Prince Valanar, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37970/prince-valanar#drops;mode:n25", "Prince Valanar, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37970/prince-valanar#drops;mode:heroic10", "Prince Valanar, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37970/prince-valanar#drops;mode:heroic25", "Prince Valanar, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel#drops;mode:n10", "Blood-Queen Lana'thel, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel#drops;mode:n25", "Blood-Queen Lana'thel, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel#drops;mode:heroic10", "Blood-Queen Lana'thel, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=37955/blood-queen-lanathel#drops;mode:heroic25", "Blood-Queen Lana'thel, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36789/valithria-dreamwalker#drops;mode:n10", "Valithria Dreamwalker, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36789/valithria-dreamwalker#drops;mode:n25", "Valithria Dreamwalker, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36789/valithria-dreamwalker#drops;mode:heroic10", "Valithria Dreamwalker, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36789/valithria-dreamwalker#drops;mode:heroic25", "Valithria Dreamwalker, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36853/sindragosa#drops;mode:n10", "Sindragosa, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36853/sindragosa#drops;mode:n25", "Sindragosa, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36853/sindragosa#drops;mode:heroic10", "Sindragosa, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36853/sindragosa#drops;mode:heroic25", "Sindragosa, Icecrown Citadel (25H)" },

        //{ @"https://www.wowhead.com/wotlk/npc=36597/the-lich-king#drops;mode:n10", "The Lich King, Icecrown Citadel (10)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36597/the-lich-king#drops;mode:n25", "The Lich King, Icecrown Citadel (25)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36597/the-lich-king#drops;mode:heroic10", "The Lich King, Icecrown Citadel (10H)" },
        //{ @"https://www.wowhead.com/wotlk/npc=36597/the-lich-king#drops;mode:heroic25", "The Lich King, Icecrown Citadel (25H)" },

        //Ruby Sanctum
        // { @"https://www.wowhead.com/wotlk/npc=39863/halion#drops;mode:n10", "Halion, The Ruby Sanctum (10)"},
        // { @"https://www.wowhead.com/wotlk/npc=39863/halion#drops;mode:h10", "Halion, The Ruby Sanctum (10H)"},
        // { @"https://www.wowhead.com/wotlk/npc=39863/halion#drops;mode:n25", "Halion, The Ruby Sanctum (25)"},
        // { @"https://www.wowhead.com/wotlk/npc=39863/halion#drops;mode:h25", "Halion, The Ruby Sanctum (25H)"},
    };
    private Dictionary<string, string> wowheadContainsUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/wotlk/object=194201/rare-cache-of-winter", "Hodir, Ulduar (25)" },
    };
    private Dictionary<int, DatabaseItem> trashDrops = new Dictionary<int, DatabaseItem>
    {
        //{ 40406, new DatabaseItem() { Name = "Inevitable Defeat", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40407, new DatabaseItem() { Name = "Silent Crusader", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40408, new DatabaseItem() { Name = "Haunting Call", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40410, new DatabaseItem() { Name = "Shadow of the Ghoul", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40412, new DatabaseItem() { Name = "Ousted Bead Necklace", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40409, new DatabaseItem() { Name = "Boots of the Escaped Captive", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        //{ 40414, new DatabaseItem() { Name = "Shoulderguards of the Undaunted", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },

        // { 46347, new DatabaseItem() { Name = "Cloak of the Dormant Blaze", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46341, new DatabaseItem() { Name = "Drape of the Spellweaver", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46343, new DatabaseItem() { Name = "Fervor of the Protectorate", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46344, new DatabaseItem() { Name = "Iceshear Mantle", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46346, new DatabaseItem() { Name = "Boots of Unsettled Prey", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46351, new DatabaseItem() { Name = "Bloodcrush Cudgel", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46340, new DatabaseItem() { Name = "Adamant Handguards", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46345, new DatabaseItem() { Name = "Bracers of Righteous Reformation", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46342, new DatabaseItem() { Name = "Golemheart Longbow", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46339, new DatabaseItem() { Name = "Mimiron's Repeater", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46350, new DatabaseItem() { Name = "Pillar of Fortitude", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },

        // { 45541, new DatabaseItem() { Name = "Shroud of Alteration", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45539, new DatabaseItem() { Name = "Pendant of Focused Energies", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45538, new DatabaseItem() { Name = "Titanstone Pendant", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45540, new DatabaseItem() { Name = "Bladebearer's Signet", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45549, new DatabaseItem() { Name = "Grips of Chaos", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45548, new DatabaseItem() { Name = "Belt of the Sleeper", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45547, new DatabaseItem() { Name = "Relic Hunter's Cord", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45544, new DatabaseItem() { Name = "Leggings of the Tortured Earth", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45543, new DatabaseItem() { Name = "Shoulders of Misfortune", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45605, new DatabaseItem() { Name = "Daschal's Bite", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 45542, new DatabaseItem() { Name = "Greaves of the Stonewarder", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 46138, new DatabaseItem() { Name = "Idol of the Flourishing Life", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },

        // { 50449, new DatabaseItem() { Name = "Stiffened Corpse Shoulderpads", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50450, new DatabaseItem() { Name = "Leggings of Dubious Charms", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50451, new DatabaseItem() { Name = "Belt of the Lonely Noble", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50452, new DatabaseItem() { Name = "Wodin's Lucky Necklace", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50447, new DatabaseItem() { Name = "Harbinger's Bone Band", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50453, new DatabaseItem() { Name = "Ring of Rotting Sinew", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        // { 50444, new DatabaseItem() { Name = "Rowan's Rifle of Silver Bullets", Source = "Trash Mobs", SourceLocation = "Icecrown Citadel (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} }
    };

    private Dictionary<string, int> hardmodeLevels = new Dictionary<string, int>()
    {
        { "Ulduar (10)", 226 },
        { "Ulduar (25)", 239 }
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
        "Shadowfrost Shard"
    };

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadDropsList(wowheadUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[4].TextContent, out int itemLevel);
            InternalItemsParse(wowheadUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog);

        await Common.ReadWowheadContainsList(wowheadContainsUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(wowheadContainsUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog);

        foreach (var trashDrop in trashDrops)
        {
            items.AddItem(trashDrop.Key, new DatabaseItem
            {
                Name = trashDrop.Value.Name,
                SourceNumber = trashDrop.Value.SourceNumber,
                Source = trashDrop.Value.Source,
                SourceLocation = trashDrop.Value.SourceLocation,
                SourceType = trashDrop.Value.SourceType,
                SourceFaction = trashDrop.Value.SourceFaction
            });
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
        if (hardmodeLevels.ContainsKey(sourceSplit[1].Trim()) &&
            itemLevel > hardmodeLevels[sourceSplit[1].Trim()] &&
            !sourceSplit[0].Trim().Contains("Algalon"))
        {
            sourceName += " (Hard)";
        }

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
