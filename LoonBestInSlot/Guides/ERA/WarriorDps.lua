local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["DPS"], "8")

    LBIS:AddEnchant(spec6, "15397", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "25084", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand/Off Hand"]) --
    LBIS:AddEnchant(spec6, "12460", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec0, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec0, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec0, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec0, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "20683", LBIS.L["Shoulder"], "Alt") --Abyssal Plate Epaulets
    LBIS:AddItem(spec0, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec0, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec0, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec0, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec0, "18374", LBIS.L["Shoulder"], "Alt") --Flamescarred Shoulders
    LBIS:AddItem(spec0, "10390", LBIS.L["Shoulder"], "Alt") --Hyperion Pauldrons
    LBIS:AddItem(spec0, "14981", LBIS.L["Shoulder"], "Alt") --Exalted Epaulets
    LBIS:AddItem(spec0, "10383", LBIS.L["Shoulder"], "Alt") --Commander's Pauldrons
    LBIS:AddItem(spec0, "21187", LBIS.L["Back"], "Alt") --Earthweave Cloak
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec0, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec0, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec0, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec0, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec0, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec0, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec0, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec0, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec0, "21184", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec0, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec0, "20687", LBIS.L["Wrist"], "Alt") --Abyssal Plate Vambraces
    LBIS:AddItem(spec0, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec0, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec0, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec0, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec0, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec0, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec0, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec0, "22868", LBIS.L["Hands"], "Alt") --Blood Guard's Plate Gauntlets
    LBIS:AddItem(spec0, "13162", LBIS.L["Hands"], "Alt") --Reiver Claws
    LBIS:AddItem(spec0, "20207", LBIS.L["Waist"], "Alt") --Defiler's Plate Girdle
    LBIS:AddItem(spec0, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec0, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec0, "13502", LBIS.L["Waist"], "Alt") --Handcrafted Mastersmith Girdle
    LBIS:AddItem(spec0, "22385", LBIS.L["Legs"], "Alt") --Titanic Leggings
    LBIS:AddItem(spec0, "22651", LBIS.L["Legs"], "Alt") --Outrider's Plate Legguards
    LBIS:AddItem(spec0, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec0, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec0, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec0, "20671", LBIS.L["Legs"], "Alt") --Abyssal Plate Legplates
    LBIS:AddItem(spec0, "15052", LBIS.L["Legs"], "Alt") --Black Dragonscale Leggings
    LBIS:AddItem(spec0, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec0, "16732", LBIS.L["Legs"], "Alt") --Legplates of Valor
    LBIS:AddItem(spec0, "13498", LBIS.L["Legs"], "Alt") --Handcrafted Mastersmith Leggings
    LBIS:AddItem(spec0, "20210", LBIS.L["Feet"], "Alt") --Defiler's Plate Greaves
    LBIS:AddItem(spec0, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec0, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec0, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec0, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec0, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec0, "21182", LBIS.L["Ring"], "Alt") --Band of Earthen Might
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec0, "13217", LBIS.L["Ring"], "Alt") --Band of the Penitent
    LBIS:AddItem(spec0, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec0, "20130", LBIS.L["Trinket"], "Alt") --Diamond Flask
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "19289", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Maelstrom
    LBIS:AddItem(spec0, "11684", LBIS.L["Main Hand/Off Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec0, "19170", LBIS.L["Main Hand/Off Hand"], "Alt") --Ebon Hand
    LBIS:AddItem(spec0, "12590", LBIS.L["Main Hand/Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec0, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec0, "19921", LBIS.L["Main Hand/Off Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec0, "12940", LBIS.L["Main Hand/Off Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "12939", LBIS.L["Main Hand/Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "811", LBIS.L["Main Hand/Off Hand"], "Alt") --Axe of the Deep Woods
    LBIS:AddItem(spec0, "871", LBIS.L["Main Hand/Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec0, "18348", LBIS.L["Main Hand/Off Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec0, "13015", LBIS.L["Main Hand/Off Hand"], "Alt") --Serathil
    LBIS:AddItem(spec0, "12535", LBIS.L["Main Hand/Off Hand"], "Alt") --Doomforged Straightedge
    LBIS:AddItem(spec0, "15806", LBIS.L["Main Hand/Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec0, "19169", LBIS.L["Two Hand"], "Alt") --Nightfall
    LBIS:AddItem(spec0, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec0, "18538", LBIS.L["Two Hand"], "Alt") --Treant's Bane
    LBIS:AddItem(spec0, "12592", LBIS.L["Two Hand"], "Alt") --Blackblade of Shahram
    LBIS:AddItem(spec0, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec0, "18520", LBIS.L["Two Hand"], "Alt") --Barbarous Blade
    LBIS:AddItem(spec0, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator
    LBIS:AddItem(spec0, "13348", LBIS.L["Two Hand"], "Alt") --Demonshear
    LBIS:AddItem(spec0, "19107", LBIS.L["Ranged"], "Alt") --Bloodseeker
    LBIS:AddItem(spec0, "18323", LBIS.L["Ranged"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec0, "12653", LBIS.L["Ranged"], "Alt") --Riphook
    LBIS:AddItem(spec0, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow

    LBIS:AddItem(spec1, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec1, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec1, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec1, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "BIS") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec1, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec1, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec1, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec1, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec1, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec1, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "17075", LBIS.L["Main Hand"], "BIS") --Vis'kag the Bloodletter
    LBIS:AddItem(spec1, "17068", LBIS.L["Main Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec1, "18832", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec1, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec1, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec1, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec1, "18816", LBIS.L["Off Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec1, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec1, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec1, "12535", LBIS.L["Off Hand"], "Alt") --Doomforged Straightedge
    LBIS:AddItem(spec1, "17076", LBIS.L["Two Hand"], "BIS") --Bonereaver's Edge
    LBIS:AddItem(spec1, "12592", LBIS.L["Two Hand"], "Alt") --Blackblade of Shahram
    LBIS:AddItem(spec1, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec1, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator
    LBIS:AddItem(spec1, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec1, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow

    LBIS:AddItem(spec2, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec2, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec2, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec2, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec2, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "23315", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec2, "23243", LBIS.L["Shoulder"], "BIS") --Champion's Plate Shoulders
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec2, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec2, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec2, "16868", LBIS.L["Shoulder"], "Alt") --Pauldrons of Might
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec2, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec2, "19084", LBIS.L["Back"], "Alt") --Stormpike Soldier's Cloak
    LBIS:AddItem(spec2, "19083", LBIS.L["Back"], "Alt") --Frostwolf Legionnaire's Cloak
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec2, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec2, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec2, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec2, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec2, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec2, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec2, "19578", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec2, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec2, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec2, "18533", LBIS.L["Wrist"], "Alt") --Gordok Bracers of Power
    LBIS:AddItem(spec2, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec2, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec2, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec2, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec2, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec2, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec2, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec2, "19087", LBIS.L["Waist"], "Alt") --Frostwolf Plate Belt
    LBIS:AddItem(spec2, "19091", LBIS.L["Waist"], "Alt") --Stormpike Plate Girdle
    LBIS:AddItem(spec2, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec2, "23301", LBIS.L["Legs"], "BIS") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec2, "22873", LBIS.L["Legs"], "BIS") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec2, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec2, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec2, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec2, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec2, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec2, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec2, "13070", LBIS.L["Feet"], "Alt") --Sapphiron's Scale Boots
    LBIS:AddItem(spec2, "11731", LBIS.L["Feet"], "Alt") --Savage Gladiator Greaves
    LBIS:AddItem(spec2, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec2, "18832", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Brutality Blade
    LBIS:AddItem(spec2, "17068", LBIS.L["Main Hand/Off Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec2, "17075", LBIS.L["Main Hand/Off Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec2, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec2, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec2, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec2, "19104", LBIS.L["Main Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec2, "2244", LBIS.L["Main Hand"], "Alt") --Krol Blade
    LBIS:AddItem(spec2, "17705", LBIS.L["Main Hand"], "Alt") --Thrash Blade
    LBIS:AddItem(spec2, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec2, "811", LBIS.L["Main Hand"], "Alt") --Axe of the Deep Woods
    LBIS:AddItem(spec2, "13286", LBIS.L["Main Hand"], "Alt") --Rivenspike
    LBIS:AddItem(spec2, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec2, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec2, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec2, "18737", LBIS.L["Off Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec2, "871", LBIS.L["Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec2, "13015", LBIS.L["Off Hand"], "Alt") --Serathil
    LBIS:AddItem(spec2, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec2, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec2, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec2, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec2, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec2, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook

    LBIS:AddItem(spec3, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec3, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec3, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec3, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec3, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec3, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec3, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec3, "16480", LBIS.L["Shoulder"], "BIS") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec3, "16544", LBIS.L["Shoulder"], "BIS") --Warlord's Plate Shoulders
    LBIS:AddItem(spec3, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec3, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec3, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec3, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec3, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec3, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec3, "19398", LBIS.L["Back"], "BIS") --Cloak of Firemaw
    LBIS:AddItem(spec3, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "19084", LBIS.L["Back"], "Alt") --Stormpike Soldier's Cloak
    LBIS:AddItem(spec3, "19083", LBIS.L["Back"], "Alt") --Frostwolf Legionnaire's Cloak
    LBIS:AddItem(spec3, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec3, "19405", LBIS.L["Chest"], "BIS") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec3, "16477", LBIS.L["Chest"], "Alt") --Field Marshal's Plate Armor
    LBIS:AddItem(spec3, "16541", LBIS.L["Chest"], "Alt") --Warlord's Plate Armor
    LBIS:AddItem(spec3, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec3, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec3, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec3, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec3, "19578", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec3, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec3, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec3, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec3, "18533", LBIS.L["Wrist"], "Alt") --Gordok Bracers of Power
    LBIS:AddItem(spec3, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec3, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec3, "16484", LBIS.L["Hands"], "Alt") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec3, "16548", LBIS.L["Hands"], "Alt") --General's Plate Gauntlets
    LBIS:AddItem(spec3, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec3, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec3, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec3, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec3, "18366", LBIS.L["Hands"], "Alt") --Gordok's Handguards
    LBIS:AddItem(spec3, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec3, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec3, "20041", LBIS.L["Waist"], "Alt") --Highlander's Plate Girdle
    LBIS:AddItem(spec3, "20204", LBIS.L["Waist"], "Alt") --Defiler's Plate Girdle
    LBIS:AddItem(spec3, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec3, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec3, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec3, "16479", LBIS.L["Legs"], "BIS") --Marshal's Plate Legguards
    LBIS:AddItem(spec3, "16543", LBIS.L["Legs"], "BIS") --General's Plate Leggings
    LBIS:AddItem(spec3, "23301", LBIS.L["Legs"], "Alt") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec3, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec3, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec3, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec3, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec3, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec3, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec3, "16483", LBIS.L["Feet"], "Alt") --Marshal's Plate Boots
    LBIS:AddItem(spec3, "16545", LBIS.L["Feet"], "Alt") --General's Plate Boots
    LBIS:AddItem(spec3, "19381", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec3, "20048", LBIS.L["Feet"], "Alt") --Highlander's Plate Greaves
    LBIS:AddItem(spec3, "20208", LBIS.L["Feet"], "Alt") --Defiler's Plate Greaves
    LBIS:AddItem(spec3, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec3, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec3, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec3, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec3, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec3, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec3, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec3, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec3, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec3, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec3, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec3, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec3, "18828", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Cleaver
    LBIS:AddItem(spec3, "19363", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec3, "19352", LBIS.L["Main Hand/Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec3, "17075", LBIS.L["Main Hand/Off Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec3, "18832", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec3, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec3, "19335", LBIS.L["Main Hand"], "Alt") --Spineshatter
    LBIS:AddItem(spec3, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec3, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec3, "17068", LBIS.L["Main Hand/Off Hand"], "Alt") --Deathbringer
    LBIS:AddItem(spec3, "19362", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec3, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec3, "23456", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec3, "19351", LBIS.L["Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec3, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec3, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec3, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec3, "18737", LBIS.L["Off Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec3, "871", LBIS.L["Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec3, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec3, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec3, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec3, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec3, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec3, "19350", LBIS.L["Ranged/Relic"], "Alt") --Heartstriker
    LBIS:AddItem(spec3, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook

    LBIS:AddItem(spec4, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec4, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec4, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec4, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec4, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec4, "19945", LBIS.L["Head"], "Alt") --Lizardscale Eyepatch
    LBIS:AddItem(spec4, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec4, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec4, "16480", LBIS.L["Shoulder"], "BIS") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec4, "16544", LBIS.L["Shoulder"], "BIS") --Warlord's Plate Shoulders
    LBIS:AddItem(spec4, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec4, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec4, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec4, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec4, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec4, "19878", LBIS.L["Shoulder"], "Alt") --Bloodsoaked Pauldrons
    LBIS:AddItem(spec4, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec4, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec4, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec4, "19398", LBIS.L["Back"], "BIS") --Cloak of Firemaw
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec4, "19084", LBIS.L["Back"], "Alt") --Stormpike Soldier's Cloak
    LBIS:AddItem(spec4, "19083", LBIS.L["Back"], "Alt") --Frostwolf Legionnaire's Cloak
    LBIS:AddItem(spec4, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "19405", LBIS.L["Chest"], "BIS") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec4, "16477", LBIS.L["Chest"], "Alt") --Field Marshal's Plate Armor
    LBIS:AddItem(spec4, "16541", LBIS.L["Chest"], "Alt") --Warlord's Plate Armor
    LBIS:AddItem(spec4, "21997", LBIS.L["Chest"], "Alt") --Breastplate of Heroism
    LBIS:AddItem(spec4, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec4, "19904", LBIS.L["Chest"], "Alt") --Runed Bloodstained Hauberk
    LBIS:AddItem(spec4, "19822", LBIS.L["Chest"], "Alt") --Zandalar Vindicator's Breastplate
    LBIS:AddItem(spec4, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec4, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec4, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec4, "19578", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec4, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec4, "19824", LBIS.L["Wrist"], "Alt") --Zandalar Vindicator's Armguards
    LBIS:AddItem(spec4, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec4, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec4, "18533", LBIS.L["Wrist"], "Alt") --Gordok Bracers of Power
    LBIS:AddItem(spec4, "22714", LBIS.L["Hands"], "BIS") --Sacrificial Gauntlets
    LBIS:AddItem(spec4, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec4, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec4, "16484", LBIS.L["Hands"], "Alt") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec4, "16548", LBIS.L["Hands"], "Alt") --General's Plate Gauntlets
    LBIS:AddItem(spec4, "21998", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec4, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec4, "20259", LBIS.L["Hands"], "Alt") --Shadow Panther Hide Gloves
    LBIS:AddItem(spec4, "19869", LBIS.L["Hands"], "Alt") --Blooddrenched Grips
    LBIS:AddItem(spec4, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec4, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec4, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec4, "19823", LBIS.L["Waist"], "Alt") --Zandalar Vindicator's Belt
    LBIS:AddItem(spec4, "20216", LBIS.L["Waist"], "Alt") --Belt of Preserved Heads
    LBIS:AddItem(spec4, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec4, "20041", LBIS.L["Waist"], "Alt") --Highlander's Plate Girdle
    LBIS:AddItem(spec4, "20204", LBIS.L["Waist"], "Alt") --Defiler's Plate Girdle
    LBIS:AddItem(spec4, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec4, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec4, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec4, "16479", LBIS.L["Legs"], "BIS") --Marshal's Plate Legguards
    LBIS:AddItem(spec4, "16543", LBIS.L["Legs"], "BIS") --General's Plate Leggings
    LBIS:AddItem(spec4, "23301", LBIS.L["Legs"], "Alt") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec4, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec4, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec4, "19855", LBIS.L["Legs"], "Alt") --Bloodsoaked Legplates
    LBIS:AddItem(spec4, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec4, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec4, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec4, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec4, "16483", LBIS.L["Feet"], "Alt") --Marshal's Plate Boots
    LBIS:AddItem(spec4, "16545", LBIS.L["Feet"], "Alt") --General's Plate Boots
    LBIS:AddItem(spec4, "19381", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec4, "21995", LBIS.L["Feet"], "Alt") --Boots of Heroism
    LBIS:AddItem(spec4, "20048", LBIS.L["Feet"], "Alt") --Highlander's Plate Greaves
    LBIS:AddItem(spec4, "20208", LBIS.L["Feet"], "Alt") --Defiler's Plate Greaves
    LBIS:AddItem(spec4, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec4, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec4, "19856", LBIS.L["Neck"], "BIS") --The Eye of Hakkar
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec4, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec4, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec4, "19898", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec4, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec4, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec4, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec4, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec4, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec4, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec4, "18828", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Cleaver
    LBIS:AddItem(spec4, "19363", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec4, "19352", LBIS.L["Main Hand/Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec4, "17075", LBIS.L["Main Hand/Off Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec4, "18832", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec4, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec4, "19335", LBIS.L["Main Hand"], "Alt") --Spineshatter
    LBIS:AddItem(spec4, "20577", LBIS.L["Main Hand"], "Alt") --Nightmare Blade
    LBIS:AddItem(spec4, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec4, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec4, "17068", LBIS.L["Main Hand/Off Hand"], "Alt") --Deathbringer
    LBIS:AddItem(spec4, "19921", LBIS.L["Main Hand/Off Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec4, "19362", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec4, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec4, "23456", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec4, "19351", LBIS.L["Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec4, "19866", LBIS.L["Off Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec4, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec4, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec4, "19852", LBIS.L["Off Hand"], "Alt") --Ancient Hakkari Manslayer
    LBIS:AddItem(spec4, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec4, "18737", LBIS.L["Off Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec4, "871", LBIS.L["Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec4, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec4, "19853", LBIS.L["Ranged/Relic"], "Alt") --Gurubashi Dwarf Destroyer
    LBIS:AddItem(spec4, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec4, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec4, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec4, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec4, "19350", LBIS.L["Ranged/Relic"], "Alt") --Heartstriker
    LBIS:AddItem(spec4, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook

    LBIS:AddItem(spec5, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec5, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec5, "21329", LBIS.L["Head"], "Alt") --Conqueror's Crown
    LBIS:AddItem(spec5, "21455", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec5, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec5, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec5, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec5, "19945", LBIS.L["Head"], "Alt") --Lizardscale Eyepatch
    LBIS:AddItem(spec5, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec5, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec5, "21330", LBIS.L["Shoulder"], "BIS") --Conqueror's Spaulders
    LBIS:AddItem(spec5, "21665", LBIS.L["Shoulder"], "BIS") --Mantle of Wicked Revenge
    LBIS:AddItem(spec5, "16480", LBIS.L["Shoulder"], "Alt") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec5, "16544", LBIS.L["Shoulder"], "Alt") --Warlord's Plate Shoulders
    LBIS:AddItem(spec5, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec5, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec5, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec5, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec5, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec5, "20683", LBIS.L["Shoulder"], "Alt") --Abyssal Plate Epaulets
    LBIS:AddItem(spec5, "21474", LBIS.L["Shoulder"], "Alt") --Chitinous Shoulderguards
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "21701", LBIS.L["Back"], "BIS") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec5, "21394", LBIS.L["Back"], "BIS") --Drape of Unyielding Strength
    LBIS:AddItem(spec5, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec5, "19398", LBIS.L["Back"], "Alt") --Cloak of Firemaw
    LBIS:AddItem(spec5, "21621", LBIS.L["Back"], "Alt") --Cloak of the Golden Hive
    LBIS:AddItem(spec5, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "21814", LBIS.L["Chest"], "BIS") --Breastplate of Annihilation
    LBIS:AddItem(spec5, "21331", LBIS.L["Chest"], "Alt") --Conqueror's Breastplate
    LBIS:AddItem(spec5, "21680", LBIS.L["Chest"], "Alt") --Vest of Swift Execution
    LBIS:AddItem(spec5, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec5, "19405", LBIS.L["Chest"], "Alt") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec5, "16477", LBIS.L["Chest"], "Alt") --Field Marshal's Plate Armor
    LBIS:AddItem(spec5, "16541", LBIS.L["Chest"], "Alt") --Warlord's Plate Armor
    LBIS:AddItem(spec5, "21997", LBIS.L["Chest"], "Alt") --Breastplate of Heroism
    LBIS:AddItem(spec5, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec5, "21618", LBIS.L["Wrist"], "BIS") --Hive Defiler Wristguards
    LBIS:AddItem(spec5, "21602", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec5, "21457", LBIS.L["Wrist"], "Alt") --Bracers of Brutality
    LBIS:AddItem(spec5, "21184", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec5, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec5, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec5, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec5, "14551", LBIS.L["Hands"], "BIS") --Edgemaster's Handguards
    LBIS:AddItem(spec5, "21672", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec5, "22714", LBIS.L["Hands"], "Alt") --Sacrificial Gauntlets
    LBIS:AddItem(spec5, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec5, "16484", LBIS.L["Hands"], "Alt") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec5, "16548", LBIS.L["Hands"], "Alt") --General's Plate Gauntlets
    LBIS:AddItem(spec5, "21998", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec5, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec5, "21586", LBIS.L["Waist"], "Alt") --Belt of Never-ending Agony
    LBIS:AddItem(spec5, "21692", LBIS.L["Waist"], "Alt") --Triad Girdle
    LBIS:AddItem(spec5, "19823", LBIS.L["Waist"], "Alt") --Zandalar Vindicator's Belt
    LBIS:AddItem(spec5, "21332", LBIS.L["Legs"], "BIS") --Conqueror's Legguards
    LBIS:AddItem(spec5, "22385", LBIS.L["Legs"], "BIS") --Titanic Leggings
    LBIS:AddItem(spec5, "16479", LBIS.L["Legs"], "Alt") --Marshal's Plate Legguards
    LBIS:AddItem(spec5, "16543", LBIS.L["Legs"], "Alt") --General's Plate Leggings
    LBIS:AddItem(spec5, "21651", LBIS.L["Legs"], "Alt") --Scaled Sand Reaver Leggings
    LBIS:AddItem(spec5, "21495", LBIS.L["Legs"], "Alt") --Legplates of the Qiraji Command
    LBIS:AddItem(spec5, "20627", LBIS.L["Legs"], "Alt") --Dark Heart Pants
    LBIS:AddItem(spec5, "20671", LBIS.L["Legs"], "Alt") --Abyssal Plate Legplates
    LBIS:AddItem(spec5, "23301", LBIS.L["Legs"], "Alt") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec5, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec5, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec5, "21493", LBIS.L["Feet"], "Alt") --Boots of the Vanguard
    LBIS:AddItem(spec5, "21688", LBIS.L["Feet"], "Alt") --Boots of the Fallen Hero
    LBIS:AddItem(spec5, "16483", LBIS.L["Feet"], "Alt") --Marshal's Plate Boots
    LBIS:AddItem(spec5, "16545", LBIS.L["Feet"], "Alt") --General's Plate Boots
    LBIS:AddItem(spec5, "21490", LBIS.L["Feet"], "Alt") --Slime Kickers
    LBIS:AddItem(spec5, "21333", LBIS.L["Feet"], "Alt") --Conqueror's Greaves
    LBIS:AddItem(spec5, "19381", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec5, "21995", LBIS.L["Feet"], "Alt") --Boots of Heroism
    LBIS:AddItem(spec5, "21664", LBIS.L["Neck"], "BIS") --Barbed Choker
    LBIS:AddItem(spec5, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "21809", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "21677", LBIS.L["Ring"], "BIS") --Ring of the Qiraji Fury
    LBIS:AddItem(spec5, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "21182", LBIS.L["Ring"], "Alt") --Band of Earthen Might
    LBIS:AddItem(spec5, "21393", LBIS.L["Ring"], "Alt") --Signet of Unyielding Strength
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "23570", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS") --Earthstrike
    LBIS:AddItem(spec5, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec5, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec5, "21670", LBIS.L["Trinket"], "Alt") --Badge of the Swarmguard
    LBIS:AddItem(spec5, "21647", LBIS.L["Trinket"], "Alt") --Fetish of the Sand Reaver
    LBIS:AddItem(spec5, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec5, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec5, "19352", LBIS.L["Main Hand/Off Hand"], "BIS") --Chromatically Tempered Sword
    LBIS:AddItem(spec5, "18828", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Cleaver
    LBIS:AddItem(spec5, "21242", LBIS.L["Main Hand/Off Hand"], "BIS") --Blessed Qiraji War Axe
    LBIS:AddItem(spec5, "19363", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec5, "21650", LBIS.L["Main Hand/Off Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec5, "21520", LBIS.L["Main Hand/Off Hand"], "Alt") --Ravencrest's Legacy
    LBIS:AddItem(spec5, "21268", LBIS.L["Main Hand/Off Hand"], "Alt") --Blessed Qiraji War Hammer
    LBIS:AddItem(spec5, "18832", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "21715", LBIS.L["Main Hand/Off Hand"], "Alt") --Sand Polished Hammer
    LBIS:AddItem(spec5, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec5, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec5, "17068", LBIS.L["Main Hand/Off Hand"], "Alt") --Deathbringer
    LBIS:AddItem(spec5, "19362", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec5, "19921", LBIS.L["Main Hand/Off Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec5, "21392", LBIS.L["Main Hand/Off Hand"], "Alt") --Sickle of Unyielding Strength
    LBIS:AddItem(spec5, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec5, "23456", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec5, "19351", LBIS.L["Off Hand"], "BIS") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec5, "21837", LBIS.L["Off Hand"], "Alt") --Anubisath Warhammer
    LBIS:AddItem(spec5, "19866", LBIS.L["Off Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "23557", LBIS.L["Ranged/Relic"], "BIS") --Larvae of the Great Worm
    LBIS:AddItem(spec5, "21459", LBIS.L["Ranged/Relic"], "Alt") --Crossbow of Imminent Doom
    LBIS:AddItem(spec5, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec5, "19853", LBIS.L["Ranged/Relic"], "Alt") --Gurubashi Dwarf Destroyer
    LBIS:AddItem(spec5, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec5, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher

    LBIS:AddItem(spec6, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec6, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec6, "21329", LBIS.L["Head"], "Alt") --Conqueror's Crown
    LBIS:AddItem(spec6, "21455", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec6, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec6, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec6, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec6, "19945", LBIS.L["Head"], "Alt") --Lizardscale Eyepatch
    LBIS:AddItem(spec6, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec6, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec6, "21330", LBIS.L["Shoulder"], "BIS") --Conqueror's Spaulders
    LBIS:AddItem(spec6, "21665", LBIS.L["Shoulder"], "BIS") --Mantle of Wicked Revenge
    LBIS:AddItem(spec6, "16480", LBIS.L["Shoulder"], "Alt") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec6, "16544", LBIS.L["Shoulder"], "Alt") --Warlord's Plate Shoulders
    LBIS:AddItem(spec6, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec6, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec6, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec6, "23045", LBIS.L["Back"], "BIS") --Shroud of Dominion
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "Alt") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "19436", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "21394", LBIS.L["Back"], "Alt") --Drape of Unyielding Strength
    LBIS:AddItem(spec6, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec6, "23000", LBIS.L["Chest"], "BIS") --Plated Abomination Ribcage
    LBIS:AddItem(spec6, "23226", LBIS.L["Chest"], "BIS") --Ghoul Skin Tunic
    LBIS:AddItem(spec6, "21814", LBIS.L["Chest"], "Alt") --Breastplate of Annihilation
    LBIS:AddItem(spec6, "21331", LBIS.L["Chest"], "Alt") --Conqueror's Breastplate
    LBIS:AddItem(spec6, "21680", LBIS.L["Chest"], "Alt") --Vest of Swift Execution
    LBIS:AddItem(spec6, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec6, "22936", LBIS.L["Wrist"], "BIS") --Wristguards of Vengeance
    LBIS:AddItem(spec6, "21618", LBIS.L["Wrist"], "BIS") --Hive Defiler Wristguards
    LBIS:AddItem(spec6, "21602", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "21457", LBIS.L["Wrist"], "Alt") --Bracers of Brutality
    LBIS:AddItem(spec6, "21184", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec6, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec6, "14551", LBIS.L["Hands"], "BIS") --Edgemaster's Handguards
    LBIS:AddItem(spec6, "21672", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec6, "22714", LBIS.L["Hands"], "Alt") --Sacrificial Gauntlets
    LBIS:AddItem(spec6, "23219", LBIS.L["Waist"], "BIS") --Girdle of the Mentor
    LBIS:AddItem(spec6, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec6, "21586", LBIS.L["Waist"], "Alt") --Belt of Never-ending Agony
    LBIS:AddItem(spec6, "21692", LBIS.L["Waist"], "Alt") --Triad Girdle
    LBIS:AddItem(spec6, "19823", LBIS.L["Waist"], "Alt") --Zandalar Vindicator's Belt
    LBIS:AddItem(spec6, "23068", LBIS.L["Legs"], "BIS") --Legplates of Carnage
    LBIS:AddItem(spec6, "23071", LBIS.L["Legs"], "Alt") --Leggings of Apocalypse
    LBIS:AddItem(spec6, "21332", LBIS.L["Legs"], "Alt") --Conqueror's Legguards
    LBIS:AddItem(spec6, "22385", LBIS.L["Legs"], "Alt") --Titanic Leggings
    LBIS:AddItem(spec6, "16479", LBIS.L["Legs"], "Alt") --Marshal's Plate Legguards
    LBIS:AddItem(spec6, "16543", LBIS.L["Legs"], "Alt") --General's Plate Leggings
    LBIS:AddItem(spec6, "21651", LBIS.L["Legs"], "Alt") --Scaled Sand Reaver Leggings
    LBIS:AddItem(spec6, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec6, "21493", LBIS.L["Feet"], "Alt") --Boots of the Vanguard
    LBIS:AddItem(spec6, "21688", LBIS.L["Feet"], "Alt") --Boots of the Fallen Hero
    LBIS:AddItem(spec6, "16483", LBIS.L["Feet"], "Alt") --Marshal's Plate Boots
    LBIS:AddItem(spec6, "16545", LBIS.L["Feet"], "Alt") --General's Plate Boots
    LBIS:AddItem(spec6, "21490", LBIS.L["Feet"], "Alt") --Slime Kickers
    LBIS:AddItem(spec6, "23053", LBIS.L["Neck"], "BIS") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec6, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "21809", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec6, "23038", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec6, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec6, "21677", LBIS.L["Ring"], "BIS") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec6, "21182", LBIS.L["Ring"], "Alt") --Band of Earthen Might
    LBIS:AddItem(spec6, "21393", LBIS.L["Ring"], "Alt") --Signet of Unyielding Strength
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec6, "23206", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "23041", LBIS.L["Trinket"], "BIS") --Slayer's Crest
    LBIS:AddItem(spec6, "20130", LBIS.L["Trinket"], "Alt") --Diamond Flask
    LBIS:AddItem(spec6, "23570", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec6, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec6, "21670", LBIS.L["Trinket"], "Alt") --Badge of the Swarmguard
    LBIS:AddItem(spec6, "21647", LBIS.L["Trinket"], "Alt") --Fetish of the Sand Reaver
    LBIS:AddItem(spec6, "23054", LBIS.L["Main Hand"], "BIS") --Gressil, Dawn of Ruin
    LBIS:AddItem(spec6, "23577", LBIS.L["Main Hand/Off Hand"], "BIS") --The Hungering Cold
    LBIS:AddItem(spec6, "22816", LBIS.L["Main Hand"], "BIS") --Hatchet of Sundered Bone
    LBIS:AddItem(spec6, "22808", LBIS.L["Main Hand/Off Hand"], "Alt") --The Castigator
    LBIS:AddItem(spec6, "17112", LBIS.L["Main Hand"], "Alt") --Empyrean Demolisher
    LBIS:AddItem(spec6, "23221", LBIS.L["Main Hand/Off Hand"], "Alt") --Misplaced Servo Arm
    LBIS:AddItem(spec6, "23014", LBIS.L["Main Hand/Off Hand"], "Alt") --Iblis, Blade of the Fallen Seraph
    LBIS:AddItem(spec6, "12584", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Longsword
    LBIS:AddItem(spec6, "19352", LBIS.L["Main Hand/Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec6, "21650", LBIS.L["Main Hand/Off Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec6, "18828", LBIS.L["Main Hand/Off Hand"], "Alt") --High Warlord's Cleaver
    LBIS:AddItem(spec6, "21242", LBIS.L["Main Hand/Off Hand"], "Alt") --Blessed Qiraji War Axe
    LBIS:AddItem(spec6, "19363", LBIS.L["Main Hand/Off Hand"], "Alt") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec6, "17068", LBIS.L["Main Hand"], "Alt") --Deathbringer
    LBIS:AddItem(spec6, "23456", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec6, "19351", LBIS.L["Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec6, "21837", LBIS.L["Off Hand"], "Alt") --Anubisath Warhammer
    LBIS:AddItem(spec6, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec6, "19362", LBIS.L["Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec6, "19921", LBIS.L["Off Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec6, "21392", LBIS.L["Off Hand"], "Alt") --Sickle of Unyielding Strength
    LBIS:AddItem(spec6, "22812", LBIS.L["Ranged/Relic"], "BIS") --Nerubian Slavemaker
    LBIS:AddItem(spec6, "22811", LBIS.L["Ranged/Relic"], "BIS") --Soulstring
    LBIS:AddItem(spec6, "23557", LBIS.L["Ranged/Relic"], "BIS") --Larvae of the Great Worm
    LBIS:AddItem(spec6, "21459", LBIS.L["Ranged/Relic"], "Alt") --Crossbow of Imminent Doom
    LBIS:AddItem(spec6, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec6, "19853", LBIS.L["Ranged/Relic"], "Alt") --Gurubashi Dwarf Destroyer
    LBIS:AddItem(spec6, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec6, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec6, "22656", LBIS.L["Ranged/Relic"], "Alt") --The Purifier
end
if not LBIS.IsSOD then
    LoadData();
end
