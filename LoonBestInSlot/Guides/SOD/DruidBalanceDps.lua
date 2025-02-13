local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance Dps"], "7")

    LBIS:AddEnchant(spec7, "468318", LBIS.L["Head"]) --Animist's Balance
    LBIS:AddEnchant(spec7, "1219510", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "25082", LBIS.L["Back"]) --Enchant Cloak - Greater Nature Resistance
    LBIS:AddEnchant(spec7, "25084", LBIS.L["Back"]) --Enchant Cloak - Subtlety
    LBIS:AddEnchant(spec7, "1213829", LBIS.L["Chest"]) --Glowing Chitin Armor Kit
    LBIS:AddEnchant(spec7, "1220624", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec7, "1213626", LBIS.L["Hands"]) --Enchant Gloves - Arcane Power
    LBIS:AddEnchant(spec7, "468318", LBIS.L["Legs"]) --Animist's Balance
    LBIS:AddEnchant(spec7, "1213829", LBIS.L["Feet"]) --Glowing Chitin Armor Kit
    LBIS:AddEnchant(spec7, "1219580", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec7, "22749", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec7, "24421", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1217189", LBIS.L["Wrist"]) --

    LBIS:AddItem(spec0, "235869", LBIS.L["Head"], "BIS") --The Master's Cowl
    LBIS:AddItem(spec0, "228677", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec0, "234315", LBIS.L["Head"], "Alt") --Sylvan Crown
    LBIS:AddItem(spec0, "226773", LBIS.L["Head"], "Alt") --Feralheart Cowl
    LBIS:AddItem(spec0, "234312", LBIS.L["Shoulder"], "BIS") --Sylvan Shoulders
    LBIS:AddItem(spec0, "226778", LBIS.L["Shoulder"], "Alt") --Feralheart Spaulders
    LBIS:AddItem(spec0, "220745", LBIS.L["Shoulder"], "Alt") --Membrane of Dark Neurosis
    LBIS:AddItem(spec0, "20686", LBIS.L["Shoulder"], "Alt") --Abyssal Cloth Amice
    LBIS:AddItem(spec0, "236690", LBIS.L["Back"], "BIS") --Glacial Cloak
    LBIS:AddItem(spec0, "233959", LBIS.L["Back"], "BIS") --Qiraji Silk Cloak
    LBIS:AddItem(spec0, "20697", LBIS.L["Back"], "BIS") --Crystalline Threaded Cape
    LBIS:AddItem(spec0, "227869", LBIS.L["Back"], "BIS") --Brilliant Chromatic Cloak
    LBIS:AddItem(spec0, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec0, "220611", LBIS.L["Back"], "Alt") --Hukku's Hex Cape
    LBIS:AddItem(spec0, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec0, "236727", LBIS.L["Chest"], "BIS") --Tunic of Undead Cleansing
    LBIS:AddItem(spec0, "234317", LBIS.L["Chest"], "BIS") --Sylvan Vest
    LBIS:AddItem(spec0, "226776", LBIS.L["Chest"], "Alt") --Feralheart Vest
    LBIS:AddItem(spec0, "231253", LBIS.L["Wrist"], "BIS") --Stormrage Bindings
    LBIS:AddItem(spec0, "236725", LBIS.L["Wrist"], "BIS") --Wristwraps of Undead Cleansing
    LBIS:AddItem(spec0, "226775", LBIS.L["Wrist"], "Alt") --Feralheart Wraps
    LBIS:AddItem(spec0, "234484", LBIS.L["Wrist"], "Alt") --Dreamscale Bracers
    LBIS:AddItem(spec0, "220538", LBIS.L["Wrist"], "Alt") --Cursed Slimescale Bracers
    LBIS:AddItem(spec0, "231248", LBIS.L["Hands"], "BIS") --Stormrage Mitts
    LBIS:AddItem(spec0, "236717", LBIS.L["Hands"], "BIS") --Gloves of Undead Cleansing
    LBIS:AddItem(spec0, "236643", LBIS.L["Hands"], "Alt") --Nightwatcher's Gloves
    LBIS:AddItem(spec0, "235874", LBIS.L["Hands"], "Alt") --Cultist's Handwraps
    LBIS:AddItem(spec0, "234485", LBIS.L["Hands"], "Alt") --Dreamscale Mitts
    LBIS:AddItem(spec0, "226777", LBIS.L["Hands"], "Alt") --Feralheart Hands
    LBIS:AddItem(spec0, "220544", LBIS.L["Hands"], "Alt") --Bloodflare Talons
    LBIS:AddItem(spec0, "231252", LBIS.L["Waist"], "BIS") --Stormrage Cord
    LBIS:AddItem(spec0, "227882", LBIS.L["Waist"], "BIS") --Girdle of Arcane Insight
    LBIS:AddItem(spec0, "223192", LBIS.L["Waist"], "Alt") --Cord of the Untamed
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec0, "226772", LBIS.L["Waist"], "Alt") --Feralheart Sash
    LBIS:AddItem(spec0, "234482", LBIS.L["Legs"], "BIS") --Dreamscale Kilt
    LBIS:AddItem(spec0, "227191", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Pants
    LBIS:AddItem(spec0, "227185", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Pants
    LBIS:AddItem(spec0, "226779", LBIS.L["Legs"], "Alt") --Feralheart Kilt
    LBIS:AddItem(spec0, "231247", LBIS.L["Feet"], "BIS") --Stormrage Sandals
    LBIS:AddItem(spec0, "235880", LBIS.L["Feet"], "BIS") --Pauper Soles
    LBIS:AddItem(spec0, "220675", LBIS.L["Feet"], "Alt") --Lost Worshipper's Treads
    LBIS:AddItem(spec0, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec0, "227194", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Boots
    LBIS:AddItem(spec0, "227188", LBIS.L["Feet"], "Alt") --Blood Guard's Dragonhide Boots
    LBIS:AddItem(spec0, "227965", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec0, "235887", LBIS.L["Neck"], "BIS") --Barian's Choker
    LBIS:AddItem(spec0, "228536", LBIS.L["Neck"], "BIS") --Star of Mystaria
    LBIS:AddItem(spec0, "233731", LBIS.L["Neck"], "Alt") --Blood-Caked Amulet
    LBIS:AddItem(spec0, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec0, "220623", LBIS.L["Neck"], "Alt") --Jin'do's Lost Locket
    LBIS:AddItem(spec0, "234463", LBIS.L["Ring"], "BIS") --Wrath of Cenarius
    LBIS:AddItem(spec0, "235885", LBIS.L["Ring"], "BIS") --Ghastly Ring
    LBIS:AddItem(spec0, "235884", LBIS.L["Ring"], "BIS") --Spectral Signet
    LBIS:AddItem(spec0, "228683", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec0, "228046", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec0, "233735", LBIS.L["Ring"], "Alt") --Blood-Caked Loop
    LBIS:AddItem(spec0, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec0, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec0, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec0, "228678", LBIS.L["Trinket"], "BIS") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "233991", LBIS.L["Trinket"], "BIS") --Tear of the Dreamer
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "227972", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "228081", LBIS.L["Trinket"], "Alt") --Germinating Poisonseed
    LBIS:AddItem(spec0, "235890", LBIS.L["Main Hand"], "BIS") --Shadow Weaver's Needle
    LBIS:AddItem(spec0, "233797", LBIS.L["Main Hand"], "Alt") --Obsidian Stormhammer
    LBIS:AddItem(spec0, "234574", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec0, "234550", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec0, "227886", LBIS.L["Main Hand"], "Alt") --Skyrider's Masterwork Stormhammer
    LBIS:AddItem(spec0, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec0, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec0, "228484", LBIS.L["Main Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec0, "223964", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Darkness
    LBIS:AddItem(spec0, "228548", LBIS.L["Off Hand"], "BIS") --Scepter of Interminable Focus
    LBIS:AddItem(spec0, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec0, "223539", LBIS.L["Off Hand"], "Alt") --Enthralled Sphere
    LBIS:AddItem(spec0, "234474", LBIS.L["Ranged/Relic"], "BIS") --Idol of Sidereal Wrath
    LBIS:AddItem(spec0, "232390", LBIS.L["Ranged/Relic"], "BIS") --Idol of Celestial Focus
    LBIS:AddItem(spec0, "228180", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Swarm

    LBIS:AddItem(spec1, "211507", LBIS.L["Head"], "BIS") --Twilight Elementalist's Cowl
    LBIS:AddItem(spec1, "211842", LBIS.L["Head"], "BIS") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec1, "4373", LBIS.L["Head"], "Alt") --Shadow Goggles
    LBIS:AddItem(spec1, "215365", LBIS.L["Shoulder"], "BIS") --Invoker's Mantle
    LBIS:AddItem(spec1, "12998", LBIS.L["Shoulder"], "Alt") --Magician's Mantle
    LBIS:AddItem(spec1, "211468", LBIS.L["Shoulder"], "Alt") --Frayed Chestnut Mantle
    LBIS:AddItem(spec1, "209679", LBIS.L["Shoulder"], "Alt") --Azshari Novice's Shoulderpads
    LBIS:AddItem(spec1, "3748", LBIS.L["Shoulder"], "Alt") --Feline Mantle
    LBIS:AddItem(spec1, "209423", LBIS.L["Back"], "BIS") --Flowing Scarf
    LBIS:AddItem(spec1, "15135", LBIS.L["Back"], "BIS") --Cutthroat's Cape
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec1, "211509", LBIS.L["Chest"], "BIS") --Twilight Elementalist's Robe
    LBIS:AddItem(spec1, "2800", LBIS.L["Chest"], "Alt") --Black Velvet Robes
    LBIS:AddItem(spec1, "2292", LBIS.L["Chest"], "Alt") --Necrology Robes
    LBIS:AddItem(spec1, "6324", LBIS.L["Chest"], "Alt") --Robes of Arugal
    LBIS:AddItem(spec1, "209578", LBIS.L["Wrist"], "BIS") --Glowing Leather Bands
    LBIS:AddItem(spec1, "1974", LBIS.L["Wrist"], "Alt") --Mindthrust Bracers
    LBIS:AddItem(spec1, "4036", LBIS.L["Wrist"], "Alt") --Silver-thread Cuffs
    LBIS:AddItem(spec1, "1351", LBIS.L["Wrist"], "Alt") --Fingerbone Bracers
    LBIS:AddItem(spec1, "211502", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec1, "211455", LBIS.L["Hands"], "BIS") --Slick Fingerless Gloves
    LBIS:AddItem(spec1, "209672", LBIS.L["Hands"], "Alt") --Black Fingerless Gloves
    LBIS:AddItem(spec1, "892", LBIS.L["Hands"], "Alt") --Gnoll Casting Gloves
    LBIS:AddItem(spec1, "209685", LBIS.L["Waist"], "BIS") --Ancient Moss Cinch
    LBIS:AddItem(spec1, "215366", LBIS.L["Waist"], "Alt") --Invoker's Cord
    LBIS:AddItem(spec1, "6392", LBIS.L["Waist"], "Alt") --Belt of Arugal
    LBIS:AddItem(spec1, "209684", LBIS.L["Legs"], "BIS") --Soul Leech Pants
    LBIS:AddItem(spec1, "209667", LBIS.L["Legs"], "Alt") --Gaze Dreamer Leggings
    LBIS:AddItem(spec1, "2954", LBIS.L["Legs"], "Alt") --Night Watch Pantaloons
    LBIS:AddItem(spec1, "4037", LBIS.L["Legs"], "Alt") --Silver-thread Pants
    LBIS:AddItem(spec1, "210795", LBIS.L["Feet"], "BIS") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec1, "211508", LBIS.L["Feet"], "BIS") --Twilight Elementalist's Footpads
    LBIS:AddItem(spec1, "209569", LBIS.L["Feet"], "Alt") --Murloc Hide Kneeboots
    LBIS:AddItem(spec1, "4320", LBIS.L["Feet"], "Alt") --Spidersilk Boots
    LBIS:AddItem(spec1, "209686", LBIS.L["Neck"], "BIS") --Jagged Bone Necklace
    LBIS:AddItem(spec1, "209825", LBIS.L["Neck"], "Alt") --Droplet Choker
    LBIS:AddItem(spec1, "20431", LBIS.L["Ring"], "BIS") --Lorekeeper's Ring
    LBIS:AddItem(spec1, "20426", LBIS.L["Ring"], "BIS") --Advisor's Ring
    LBIS:AddItem(spec1, "209668", LBIS.L["Ring"], "BIS") --Signet of the Twilight Lord
    LBIS:AddItem(spec1, "1156", LBIS.L["Ring"], "Alt") --Lavishly Jeweled Ring
    LBIS:AddItem(spec1, "6463", LBIS.L["Ring"], "Alt") --Deep Fathom Ring
    LBIS:AddItem(spec1, "2933", LBIS.L["Ring"], "Alt") --Seal of Wrynn
    LBIS:AddItem(spec1, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec1, "21566", LBIS.L["Trinket"], "BIS") --Rune of Perfection
    LBIS:AddItem(spec1, "18863", LBIS.L["Trinket"], "Alt") --Insignia of the Alliance
    LBIS:AddItem(spec1, "18853", LBIS.L["Trinket"], "Alt") --Insignia of the Horde
    LBIS:AddItem(spec1, "211420", LBIS.L["Trinket"], "Alt") --Shifting Scale Talisman
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec1, "209561", LBIS.L["Main Hand"], "BIS") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec1, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec1, "209573", LBIS.L["Main Hand"], "Alt") --Wrathful Spire
    LBIS:AddItem(spec1, "209694", LBIS.L["Main Hand"], "Alt") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec1, "5201", LBIS.L["Main Hand"], "Alt") --Emberstone Staff
    LBIS:AddItem(spec1, "890", LBIS.L["Main Hand"], "Alt") --Twisted Chanter's Staff
    LBIS:AddItem(spec1, "209570", LBIS.L["Off Hand"], "BIS") --Tome of Cavern Lore
    LBIS:AddItem(spec1, "209590", LBIS.L["Off Hand"], "Alt") --Cracked Water Globe
    LBIS:AddItem(spec1, "15973", LBIS.L["Off Hand"], "Alt") --Watcher's Star
    LBIS:AddItem(spec1, "209576", LBIS.L["Ranged/Relic"], "BIS") --Mind-Expanding Mushroom

    LBIS:AddItem(spec2, "215381", LBIS.L["Head"], "BIS") --Gneuro-Conductive Channeler's Hood
    LBIS:AddItem(spec2, "215111", LBIS.L["Head"], "Alt") --Gneuro-Linked Arcano-Filament Monocle
    LBIS:AddItem(spec2, "211842", LBIS.L["Head"], "Alt") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec2, "8214", LBIS.L["Head"], "Alt") --Wild Leather Helmet
    LBIS:AddItem(spec2, "213301", LBIS.L["Shoulder"], "BIS") --Synthetic Mantle
    LBIS:AddItem(spec2, "19507", LBIS.L["Shoulder"], "Alt") --Inquisitor's Shawl
    LBIS:AddItem(spec2, "9912", LBIS.L["Shoulder"], "Alt") --Royal Amice
    LBIS:AddItem(spec2, "216620", LBIS.L["Back"], "BIS") --Bloodrot Cloak
    LBIS:AddItem(spec2, "213306", LBIS.L["Back"], "Alt") --Ingenuity's Cover
    LBIS:AddItem(spec2, "14270", LBIS.L["Back"], "Alt") --Gaea's Cloak
    LBIS:AddItem(spec2, "213312", LBIS.L["Chest"], "BIS") --Insulated Apron
    LBIS:AddItem(spec2, "1716", LBIS.L["Chest"], "Alt") --Robe of the Magi
    LBIS:AddItem(spec2, "10021", LBIS.L["Chest"], "Alt") --Dreamweave Vest
    LBIS:AddItem(spec2, "19597", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "213318", LBIS.L["Wrist"], "Alt") --Ornate Dark Iron Bangles
    LBIS:AddItem(spec2, "213285", LBIS.L["Wrist"], "Alt") --Lev's Oil-Stained Bindings
    LBIS:AddItem(spec2, "10019", LBIS.L["Hands"], "BIS") --Dreamweave Gloves
    LBIS:AddItem(spec2, "213321", LBIS.L["Waist"], "BIS") --Volatile Concoction Belt
    LBIS:AddItem(spec2, "4329", LBIS.L["Waist"], "Alt") --Star Belt
    LBIS:AddItem(spec2, "213331", LBIS.L["Legs"], "BIS") --Insulated Leggings
    LBIS:AddItem(spec2, "10009", LBIS.L["Legs"], "Alt") --Red Mageweave Pants
    LBIS:AddItem(spec2, "15168", LBIS.L["Legs"], "Alt") --Imposing Pants
    LBIS:AddItem(spec2, "209684", LBIS.L["Legs"], "Alt") --Soul Leech Pants
    LBIS:AddItem(spec2, "215378", LBIS.L["Feet"], "BIS") --Irradiated Boots
    LBIS:AddItem(spec2, "213342", LBIS.L["Feet"], "BIS") --Insulated Galoshes
    LBIS:AddItem(spec2, "15162", LBIS.L["Feet"], "Alt") --Imposing Boots
    LBIS:AddItem(spec2, "213345", LBIS.L["Neck"], "BIS") --Piston Pendant
    LBIS:AddItem(spec2, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec2, "217296", LBIS.L["Neck"], "Alt") --Ghostshard Talisman
    LBIS:AddItem(spec2, "19524", LBIS.L["Ring"], "BIS") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "19520", LBIS.L["Ring"], "BIS") --Advisor's Ring
    LBIS:AddItem(spec2, "213283", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec2, "213287", LBIS.L["Ring"], "Alt") --Electrocutioner Hexnut
    LBIS:AddItem(spec2, "19525", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "19521", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec2, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec2, "213347", LBIS.L["Trinket"], "BIS") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec2, "213410", LBIS.L["Main Hand"], "BIS") --Glimmering Gizmoblade
    LBIS:AddItem(spec2, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec2, "7714", LBIS.L["Main Hand"], "Alt") --Hypnotic Blade
    LBIS:AddItem(spec2, "209561", LBIS.L["Main Hand"], "Alt") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec2, "213354", LBIS.L["Main Hand"], "Alt") --Staff of the Evil Genius
    LBIS:AddItem(spec2, "216498", LBIS.L["Off Hand"], "BIS") --Enchanted Sanguine Grimoire
    LBIS:AddItem(spec2, "213542", LBIS.L["Off Hand"], "Alt") --The Necro-Gnomicon
    LBIS:AddItem(spec2, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec2, "216490", LBIS.L["Ranged/Relic"], "BIS") --Idol of Wrath

    LBIS:AddItem(spec3, "220523", LBIS.L["Head"], "BIS") --Visage of the Exiled
    LBIS:AddItem(spec3, "220521", LBIS.L["Head"], "Alt") --Hakkari Ritualist's Headdress
    LBIS:AddItem(spec3, "215381", LBIS.L["Head"], "Alt") --Gneuro-Conductive Channeler's Hood
    LBIS:AddItem(spec3, "223328", LBIS.L["Head"], "Alt") --Gemburst Circlet
    LBIS:AddItem(spec3, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec3, "220870", LBIS.L["Shoulder"], "BIS") --Knight-Lieutenant's Crackling Leather Spaulders
    LBIS:AddItem(spec3, "220871", LBIS.L["Shoulder"], "BIS") --Blood Guard's Crackling Leather Spaulders
    LBIS:AddItem(spec3, "220745", LBIS.L["Shoulder"], "BIS") --Membrane of Dark Neurosis
    LBIS:AddItem(spec3, "220751", LBIS.L["Shoulder"], "BIS") --Shoulderpads of the Deranged
    LBIS:AddItem(spec3, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec3, "223521", LBIS.L["Shoulder"], "Alt") --Rotgrip Mantle
    LBIS:AddItem(spec3, "213301", LBIS.L["Shoulder"], "Alt") --Synthetic Mantle
    LBIS:AddItem(spec3, "220611", LBIS.L["Back"], "BIS") --Hukku's Hex Cape
    LBIS:AddItem(spec3, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec3, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec3, "220672", LBIS.L["Chest"], "BIS") --Lost Worshipper's Harness
    LBIS:AddItem(spec3, "220535", LBIS.L["Chest"], "Alt") --Garments of the Atal'ai Prophet
    LBIS:AddItem(spec3, "215377", LBIS.L["Chest"], "Alt") --Irradiated Robe
    LBIS:AddItem(spec3, "223981", LBIS.L["Chest"], "Alt") --Flamestrider Robes
    LBIS:AddItem(spec3, "19596", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "221025", LBIS.L["Wrist"], "BIS") --Void-Powered Invoker's Vambraces
    LBIS:AddItem(spec3, "213318", LBIS.L["Wrist"], "Alt") --Ornate Dark Iron Bangles
    LBIS:AddItem(spec3, "220548", LBIS.L["Hands"], "BIS") --Atal'ai Hexxer's Gloves
    LBIS:AddItem(spec3, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec3, "220544", LBIS.L["Hands"], "Alt") --Bloodflare Talons
    LBIS:AddItem(spec3, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec3, "223192", LBIS.L["Waist"], "BIS") --Cord of the Untamed
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "20166", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec3, "20098", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec3, "220673", LBIS.L["Legs"], "BIS") --Lost Worshipper's Leggings
    LBIS:AddItem(spec3, "220556", LBIS.L["Legs"], "Alt") --Kilt of the Fallen Atal'ai Prophet
    LBIS:AddItem(spec3, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec3, "220675", LBIS.L["Feet"], "BIS") --Lost Worshipper's Treads
    LBIS:AddItem(spec3, "220862", LBIS.L["Feet"], "Alt") --Sergeant Major's Crackling Leather Boots
    LBIS:AddItem(spec3, "220863", LBIS.L["Feet"], "Alt") --First Sergeant's Crackling Leather Boots
    LBIS:AddItem(spec3, "215378", LBIS.L["Feet"], "Alt") --Irradiated Boots
    LBIS:AddItem(spec3, "223543", LBIS.L["Feet"], "Alt") --Vinerot Sandals
    LBIS:AddItem(spec3, "220623", LBIS.L["Neck"], "BIS") --Jin'do's Lost Locket
    LBIS:AddItem(spec3, "213345", LBIS.L["Neck"], "Alt") --Piston Pendant
    LBIS:AddItem(spec3, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec3, "221440", LBIS.L["Ring"], "BIS") --Roar of the Dream
    LBIS:AddItem(spec3, "220628", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Harbinger
    LBIS:AddItem(spec3, "19523", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec3, "19519", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "223985", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec3, "213283", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec3, "7553", LBIS.L["Ring"], "Alt") --Band of the Unicorn
    LBIS:AddItem(spec3, "220634", LBIS.L["Trinket"], "BIS") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec3, "213347", LBIS.L["Trinket"], "Alt") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec3, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec3, "223964", LBIS.L["Main Hand"], "BIS") --Blade of Eternal Darkness
    LBIS:AddItem(spec3, "213410", LBIS.L["Main Hand"], "Alt") --Glimmering Gizmoblade
    LBIS:AddItem(spec3, "220586", LBIS.L["Main Hand"], "Alt") --Hubris, the Bandit Brander
    LBIS:AddItem(spec3, "220590", LBIS.L["Main Hand"], "Alt") --Spire of Hakkari Worship
    LBIS:AddItem(spec3, "220595", LBIS.L["Main Hand"], "Alt") --Nightmare Focus Staff
    LBIS:AddItem(spec3, "220598", LBIS.L["Off Hand"], "BIS") --Drakestone of the Nightmare Harbinger
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "221447", LBIS.L["Off Hand"], "Alt") --Ritualist's Bloodmoon Grimoire
    LBIS:AddItem(spec3, "213542", LBIS.L["Off Hand"], "Alt") --The Necro-Gnomicon
    LBIS:AddItem(spec3, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec3, "216490", LBIS.L["Ranged/Relic"], "BIS") --Idol of Wrath

    LBIS:AddItem(spec4, "226658", LBIS.L["Head"], "BIS") --Cenarion Antlers
    LBIS:AddItem(spec4, "228677", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec4, "226773", LBIS.L["Head"], "Alt") --Feralheart Cowl
    LBIS:AddItem(spec4, "226653", LBIS.L["Shoulder"], "BIS") --Cenarion Mantle
    LBIS:AddItem(spec4, "226778", LBIS.L["Shoulder"], "Alt") --Feralheart Spaulders
    LBIS:AddItem(spec4, "220745", LBIS.L["Shoulder"], "Alt") --Membrane of Dark Neurosis
    LBIS:AddItem(spec4, "20686", LBIS.L["Shoulder"], "Alt") --Abyssal Cloth Amice
    LBIS:AddItem(spec4, "228100", LBIS.L["Back"], "BIS") --Drape of the Fire Lord
    LBIS:AddItem(spec4, "227869", LBIS.L["Back"], "Alt") --Brilliant Chromatic Cloak
    LBIS:AddItem(spec4, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "226656", LBIS.L["Chest"], "BIS") --Cenarion Embrace
    LBIS:AddItem(spec4, "226776", LBIS.L["Chest"], "Alt") --Feralheart Vest
    LBIS:AddItem(spec4, "220672", LBIS.L["Chest"], "Alt") --Lost Worshipper's Harness
    LBIS:AddItem(spec4, "226655", LBIS.L["Wrist"], "BIS") --Cenarion Wrists
    LBIS:AddItem(spec4, "226775", LBIS.L["Wrist"], "Alt") --Feralheart Wraps
    LBIS:AddItem(spec4, "220538", LBIS.L["Wrist"], "Alt") --Cursed Slimescale Bracers
    LBIS:AddItem(spec4, "226777", LBIS.L["Hands"], "BIS") --Feralheart Hands
    LBIS:AddItem(spec4, "211502", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec4, "226654", LBIS.L["Hands"], "Alt") --Cenarion Gauntlets
    LBIS:AddItem(spec4, "220544", LBIS.L["Hands"], "Alt") --Bloodflare Talons
    LBIS:AddItem(spec4, "226657", LBIS.L["Waist"], "BIS") --Cenarion Cord
    LBIS:AddItem(spec4, "227882", LBIS.L["Waist"], "Alt") --Girdle of Arcane Insight
    LBIS:AddItem(spec4, "223192", LBIS.L["Waist"], "Alt") --Cord of the Untamed
    LBIS:AddItem(spec4, "228256", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec4, "228282", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec4, "226651", LBIS.L["Legs"], "BIS") --Cenarion Pants
    LBIS:AddItem(spec4, "227191", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Pants
    LBIS:AddItem(spec4, "227185", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Pants
    LBIS:AddItem(spec4, "220673", LBIS.L["Legs"], "Alt") --Lost Worshipper's Leggings
    LBIS:AddItem(spec4, "226774", LBIS.L["Feet"], "BIS") --Feralheart Galoshes
    LBIS:AddItem(spec4, "226652", LBIS.L["Feet"], "Alt") --Cenarion Sandals
    LBIS:AddItem(spec4, "227194", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Boots
    LBIS:AddItem(spec4, "227188", LBIS.L["Feet"], "Alt") --Blood Guard's Dragonhide Boots
    LBIS:AddItem(spec4, "220675", LBIS.L["Feet"], "Alt") --Lost Worshipper's Treads
    LBIS:AddItem(spec4, "228289", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "228536", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "228247", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "228287", LBIS.L["Ring"], "BIS") --Band of Sulfuras
    LBIS:AddItem(spec4, "228683", LBIS.L["Ring"], "BIS") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "228243", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec4, "20632", LBIS.L["Ring"], "Alt") --Mindtear Band
    LBIS:AddItem(spec4, "228255", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec4, "228678", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec4, "227972", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "228081", LBIS.L["Trinket"], "Alt") --Germinating Poisonseed
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "228382", LBIS.L["Main Hand"], "BIS") --Fang of the Mystics
    LBIS:AddItem(spec4, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "228263", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec4, "223964", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Darkness
    LBIS:AddItem(spec4, "228548", LBIS.L["Off Hand"], "BIS") --Scepter of Interminable Focus
    LBIS:AddItem(spec4, "223539", LBIS.L["Off Hand"], "Alt") --Enthralled Sphere
    LBIS:AddItem(spec4, "228180", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Swarm
    LBIS:AddItem(spec4, "216490", LBIS.L["Ranged/Relic"], "Alt") --Idol of Wrath
    LBIS:AddItem(spec4, "23197", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Moon

    LBIS:AddItem(spec5, "231249", LBIS.L["Head"], "BIS") --Stormrage Antlers
    LBIS:AddItem(spec5, "230812", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "226658", LBIS.L["Head"], "Alt") --Cenarion Antlers
    LBIS:AddItem(spec5, "226773", LBIS.L["Head"], "Alt") --Feralheart Cowl
    LBIS:AddItem(spec5, "231251", LBIS.L["Shoulder"], "BIS") --Stormrage Mantle
    LBIS:AddItem(spec5, "230240", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "226653", LBIS.L["Shoulder"], "Alt") --Cenarion Mantle
    LBIS:AddItem(spec5, "226778", LBIS.L["Shoulder"], "Alt") --Feralheart Spaulders
    LBIS:AddItem(spec5, "230804", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "231300", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec5, "228100", LBIS.L["Back"], "Alt") --Drape of the Fire Lord
    LBIS:AddItem(spec5, "231317", LBIS.L["Chest"], "BIS") --Zandalar Haruspex's Tunic
    LBIS:AddItem(spec5, "231246", LBIS.L["Chest"], "Alt") --Stormrage Leathers
    LBIS:AddItem(spec5, "226656", LBIS.L["Chest"], "Alt") --Cenarion Embrace
    LBIS:AddItem(spec5, "226776", LBIS.L["Chest"], "Alt") --Feralheart Vest
    LBIS:AddItem(spec5, "231253", LBIS.L["Wrist"], "BIS") --Stormrage Bindings
    LBIS:AddItem(spec5, "230252", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "226655", LBIS.L["Wrist"], "Alt") --Cenarion Wrists
    LBIS:AddItem(spec5, "231248", LBIS.L["Hands"], "BIS") --Stormrage Mitts
    LBIS:AddItem(spec5, "230742", LBIS.L["Hands"], "Alt") --Taut Dragonhide Gloves
    LBIS:AddItem(spec5, "226777", LBIS.L["Hands"], "Alt") --Feralheart Hands
    LBIS:AddItem(spec5, "226654", LBIS.L["Hands"], "Alt") --Cenarion Gauntlets
    LBIS:AddItem(spec5, "228256", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec5, "231252", LBIS.L["Waist"], "Alt") --Stormrage Cord
    LBIS:AddItem(spec5, "231318", LBIS.L["Waist"], "Alt") --Zandalar Haruspex's Belt
    LBIS:AddItem(spec5, "230739", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec5, "231250", LBIS.L["Legs"], "BIS") --Stormrage Kilt
    LBIS:AddItem(spec5, "226651", LBIS.L["Legs"], "Alt") --Cenarion Pants
    LBIS:AddItem(spec5, "231247", LBIS.L["Feet"], "BIS") --Stormrage Sandals
    LBIS:AddItem(spec5, "226774", LBIS.L["Feet"], "Alt") --Feralheart Galoshes
    LBIS:AddItem(spec5, "226652", LBIS.L["Feet"], "Alt") --Cenarion Sandals
    LBIS:AddItem(spec5, "231316", LBIS.L["Neck"], "BIS") --Pristine Enchanted South Seas Kelp
    LBIS:AddItem(spec5, "228289", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "228536", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec5, "228247", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "20632", LBIS.L["Ring"], "BIS") --Mindtear Band
    LBIS:AddItem(spec5, "228243", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec5, "228687", LBIS.L["Ring"], "Alt") --Dragonslayer's Signet
    LBIS:AddItem(spec5, "228287", LBIS.L["Ring"], "Alt") --Band of Sulfuras
    LBIS:AddItem(spec5, "230281", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec5, "230810", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "231280", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec5, "228255", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "230244", LBIS.L["Trinket"], "Alt") --Shapeshifter's Sigil
    LBIS:AddItem(spec5, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "224281", LBIS.L["Main Hand"], "BIS") --Gla'sir
    LBIS:AddItem(spec5, "230813", LBIS.L["Main Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "231387", LBIS.L["Main Hand"], "Alt") --Stormwrath, Sanctified Shortblade of the Galefinder
    LBIS:AddItem(spec5, "230794", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "230838", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "230841", LBIS.L["Off Hand"], "BIS") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec5, "231005", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec5, "228548", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec5, "228180", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Swarm
    LBIS:AddItem(spec5, "216490", LBIS.L["Ranged/Relic"], "Alt") --Idol of Wrath
    LBIS:AddItem(spec5, "23197", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Moon

    LBIS:AddItem(spec6, "233718", LBIS.L["Head"], "BIS") --Genesis Headdress
    LBIS:AddItem(spec6, "231249", LBIS.L["Head"], "Alt") --Stormrage Antlers
    LBIS:AddItem(spec6, "231251", LBIS.L["Shoulder"], "BIS") --Stormrage Mantle
    LBIS:AddItem(spec6, "234082", LBIS.L["Shoulder"], "Alt") --Mantle of Maz'Nadir
    LBIS:AddItem(spec6, "233717", LBIS.L["Shoulder"], "Alt") --Genesis Mantle
    LBIS:AddItem(spec6, "233630", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec6, "233519", LBIS.L["Back"], "Alt") --Cape of the Trinity
    LBIS:AddItem(spec6, "233959", LBIS.L["Back"], "Alt") --Qiraji Silk Cloak
    LBIS:AddItem(spec6, "230804", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "231300", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "230858", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec6, "233715", LBIS.L["Chest"], "BIS") --Genesis Leathers
    LBIS:AddItem(spec6, "231246", LBIS.L["Chest"], "Alt") --Stormrage Leathers
    LBIS:AddItem(spec6, "231317", LBIS.L["Chest"], "Alt") --Zandalar Haruspex's Tunic
    LBIS:AddItem(spec6, "231253", LBIS.L["Wrist"], "BIS") --Stormrage Bindings
    LBIS:AddItem(spec6, "231319", LBIS.L["Wrist"], "Alt") --Zandalar Haruspex's Bracers
    LBIS:AddItem(spec6, "233625", LBIS.L["Wrist"], "Alt") --Burrower Bracers
    LBIS:AddItem(spec6, "233631", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "211502", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec6, "233559", LBIS.L["Hands"], "Alt") --Gloves of Ebru
    LBIS:AddItem(spec6, "231248", LBIS.L["Hands"], "Alt") --Stormrage Mitts
    LBIS:AddItem(spec6, "231318", LBIS.L["Waist"], "BIS") --Zandalar Haruspex's Belt
    LBIS:AddItem(spec6, "231252", LBIS.L["Waist"], "Alt") --Stormrage Cord
    LBIS:AddItem(spec6, "233633", LBIS.L["Waist"], "Alt") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "234072", LBIS.L["Waist"], "Alt") --Southwind's Grasp
    LBIS:AddItem(spec6, "228256", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "233714", LBIS.L["Legs"], "BIS") --Genesis Leggings
    LBIS:AddItem(spec6, "233505", LBIS.L["Legs"], "Alt") --Leggings of Immersion
    LBIS:AddItem(spec6, "231250", LBIS.L["Legs"], "Alt") --Stormrage Kilt
    LBIS:AddItem(spec6, "234108", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "233716", LBIS.L["Feet"], "BIS") --Genesis Treads
    LBIS:AddItem(spec6, "231247", LBIS.L["Feet"], "Alt") --Stormrage Sandals
    LBIS:AddItem(spec6, "234093", LBIS.L["Feet"], "Alt") --Quicksand Waders
    LBIS:AddItem(spec6, "233611", LBIS.L["Feet"], "Alt") --Boots of Epiphany
    LBIS:AddItem(spec6, "234167", LBIS.L["Feet"], "Alt") --Boots of Fright
    LBIS:AddItem(spec6, "231316", LBIS.L["Neck"], "BIS") --Pristine Enchanted South Seas Kelp
    LBIS:AddItem(spec6, "233620", LBIS.L["Neck"], "Alt") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "234811", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec6, "234463", LBIS.L["Ring"], "BIS") --Wrath of Cenarius
    LBIS:AddItem(spec6, "234101", LBIS.L["Ring"], "BIS") --Ring of the Desert Winds
    LBIS:AddItem(spec6, "234032", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "234436", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "234803", LBIS.L["Ring"], "Alt") --Ring of the Fallen God
    LBIS:AddItem(spec6, "233648", LBIS.L["Ring"], "Alt") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec6, "234169", LBIS.L["Ring"], "Alt") --Mindtear Band
    LBIS:AddItem(spec6, "228287", LBIS.L["Ring"], "Alt") --Band of Sulfuras
    LBIS:AddItem(spec6, "228687", LBIS.L["Ring"], "Alt") --Dragonslayer's Signet
    LBIS:AddItem(spec6, "228243", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec6, "231280", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec6, "230810", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "233991", LBIS.L["Trinket"], "Alt") --Tear of the Dreamer
    LBIS:AddItem(spec6, "228255", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "231387", LBIS.L["Main Hand"], "BIS") --Stormwrath, Sanctified Shortblade of the Galefinder
    LBIS:AddItem(spec6, "234574", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec6, "234550", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec6, "233797", LBIS.L["Main Hand"], "Alt") --Obsidian Stormhammer
    LBIS:AddItem(spec6, "230794", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "233616", LBIS.L["Off Hand"], "BIS") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "234076", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec6, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec6, "230841", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec6, "231005", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "234474", LBIS.L["Ranged/Relic"], "BIS") --Idol of Sidereal Wrath
    LBIS:AddItem(spec6, "232390", LBIS.L["Ranged/Relic"], "Alt") --Idol of Celestial Focus
    LBIS:AddItem(spec6, "228180", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Swarm

    LBIS:AddItem(spec7, "236196", LBIS.L["Head"], "BIS") --Dreamwalker Hood
    LBIS:AddItem(spec7, "236278", LBIS.L["Head"], "Alt") --Glacial Headdress
    LBIS:AddItem(spec7, "236279", LBIS.L["Head"], "Alt") --Preceptor's Hat
    LBIS:AddItem(spec7, "236315", LBIS.L["Head"], "Alt") --Polar Helmet
    LBIS:AddItem(spec7, "233718", LBIS.L["Head"], "Alt") --Genesis Headdress
    LBIS:AddItem(spec7, "236194", LBIS.L["Shoulder"], "BIS") --Dreamwalker Mantle
    LBIS:AddItem(spec7, "236295", LBIS.L["Shoulder"], "Alt") --Glacial Mantle
    LBIS:AddItem(spec7, "236298", LBIS.L["Shoulder"], "Alt") --Rime Covered Mantle
    LBIS:AddItem(spec7, "231251", LBIS.L["Shoulder"], "Alt") --Stormrage Mantle
    LBIS:AddItem(spec7, "233717", LBIS.L["Shoulder"], "Alt") --Genesis Mantle
    LBIS:AddItem(spec7, "236307", LBIS.L["Back"], "BIS") --Veil of Eclipse
    LBIS:AddItem(spec7, "236327", LBIS.L["Back"], "BIS") --Cloak of the Necropolis
    LBIS:AddItem(spec7, "233630", LBIS.L["Back"], "Alt") --Cloak of the Devoured
    LBIS:AddItem(spec7, "233959", LBIS.L["Back"], "Alt") --Qiraji Silk Cloak
    LBIS:AddItem(spec7, "233519", LBIS.L["Back"], "Alt") --Cape of the Trinity
    LBIS:AddItem(spec7, "230804", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec7, "236200", LBIS.L["Chest"], "BIS") --Dreamwalker Leathers
    LBIS:AddItem(spec7, "236267", LBIS.L["Chest"], "Alt") --Crystal Webbed Robe
    LBIS:AddItem(spec7, "236718", LBIS.L["Chest"], "Alt") --Robe of Undead Cleansing
    LBIS:AddItem(spec7, "233715", LBIS.L["Chest"], "Alt") --Genesis Leathers
    LBIS:AddItem(spec7, "231246", LBIS.L["Chest"], "Alt") --Stormrage Leathers
    LBIS:AddItem(spec7, "231317", LBIS.L["Chest"], "Alt") --Zandalar Haruspex's Tunic
    LBIS:AddItem(spec7, "231253", LBIS.L["Wrist"], "BIS") --Stormrage Bindings
    LBIS:AddItem(spec7, "236313", LBIS.L["Wrist"], "BIS") --The Soul Harvester's Bindings
    LBIS:AddItem(spec7, "236192", LBIS.L["Wrist"], "Alt") --Dreamwalker Bindings
    LBIS:AddItem(spec7, "236716", LBIS.L["Wrist"], "Alt") --Bracers of Undead Cleansing
    LBIS:AddItem(spec7, "231319", LBIS.L["Wrist"], "Alt") --Zandalar Haruspex's Bracers
    LBIS:AddItem(spec7, "236197", LBIS.L["Hands"], "BIS") --Dreamwalker Mitts
    LBIS:AddItem(spec7, "236643", LBIS.L["Hands"], "Alt") --Nightwatcher's Gloves
    LBIS:AddItem(spec7, "235874", LBIS.L["Hands"], "Alt") --Cultist's Handwraps
    LBIS:AddItem(spec7, "236717", LBIS.L["Hands"], "Alt") --Gloves of Undead Cleansing
    LBIS:AddItem(spec7, "233631", LBIS.L["Hands"], "Alt") --Dark Storm Gauntlets
    LBIS:AddItem(spec7, "233559", LBIS.L["Hands"], "Alt") --Gloves of Ebru
    LBIS:AddItem(spec7, "231318", LBIS.L["Waist"], "BIS") --Zandalar Haruspex's Belt
    LBIS:AddItem(spec7, "236193", LBIS.L["Waist"], "BIS") --Dreamwalker Cord
    LBIS:AddItem(spec7, "231252", LBIS.L["Waist"], "Alt") --Stormrage Cord
    LBIS:AddItem(spec7, "236195", LBIS.L["Legs"], "BIS") --Dreamwalker Kilt
    LBIS:AddItem(spec7, "236303", LBIS.L["Legs"], "Alt") --Leggings of Polarity
    LBIS:AddItem(spec7, "233714", LBIS.L["Legs"], "Alt") --Genesis Leggings
    LBIS:AddItem(spec7, "231247", LBIS.L["Feet"], "BIS") --Stormrage Sandals
    LBIS:AddItem(spec7, "236199", LBIS.L["Feet"], "BIS") --Dreamwalker Sandals
    LBIS:AddItem(spec7, "233716", LBIS.L["Feet"], "Alt") --Genesis Treads
    LBIS:AddItem(spec7, "231316", LBIS.L["Neck"], "BIS") --Pristine Enchanted South Seas Kelp
    LBIS:AddItem(spec7, "236345", LBIS.L["Neck"], "BIS") --Gem of Trapped Innocents
    LBIS:AddItem(spec7, "236261", LBIS.L["Neck"], "BIS") --Malice Stone Pendant
    LBIS:AddItem(spec7, "236256", LBIS.L["Neck"], "Alt") --Touch of Frost
    LBIS:AddItem(spec7, "234463", LBIS.L["Ring"], "BIS") --Wrath of Cenarius
    LBIS:AddItem(spec7, "236198", LBIS.L["Ring"], "BIS") --Band of the Dreamwalker
    LBIS:AddItem(spec7, "236273", LBIS.L["Ring"], "BIS") --Band of the Inevitable
    LBIS:AddItem(spec7, "236318", LBIS.L["Ring"], "Alt") --Seal of the Damned
    LBIS:AddItem(spec7, "237286", LBIS.L["Ring"], "Alt") --Band of Piety
    LBIS:AddItem(spec7, "234101", LBIS.L["Ring"], "Alt") --Ring of the Desert Winds
    LBIS:AddItem(spec7, "234803", LBIS.L["Ring"], "Alt") --Ring of the Fallen God
    LBIS:AddItem(spec7, "231280", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec7, "236351", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec7, "230810", LBIS.L["Trinket"], "Alt") --Neltharion's Tear
    LBIS:AddItem(spec7, "233991", LBIS.L["Trinket"], "Alt") --Tear of the Dreamer
    LBIS:AddItem(spec7, "236292", LBIS.L["Main Hand"], "BIS") --Midnight Haze
    LBIS:AddItem(spec7, "236297", LBIS.L["Main Hand"], "Alt") --The End of Dreams
    LBIS:AddItem(spec7, "235890", LBIS.L["Main Hand"], "Alt") --Shadow Weaver's Needle
    LBIS:AddItem(spec7, "231387", LBIS.L["Main Hand"], "Alt") --Stormwrath, Sanctified Shortblade of the Galefinder
    LBIS:AddItem(spec7, "234574", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec7, "234550", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec7, "236257", LBIS.L["Off Hand"], "BIS") --Gem of Nerubis
    LBIS:AddItem(spec7, "236328", LBIS.L["Off Hand"], "Alt") --Sapphiron's Left Eye
    LBIS:AddItem(spec7, "233616", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec7, "234076", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec7, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec7, "230841", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec7, "231005", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec7, "232390", LBIS.L["Ranged/Relic"], "BIS") --Idol of Celestial Focus
    LBIS:AddItem(spec7, "234474", LBIS.L["Ranged/Relic"], "Alt") --Idol of Sidereal Wrath
    LBIS:AddItem(spec7, "228180", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Swarm
end
if LBIS.IsSOD then
    LoadData();
end
