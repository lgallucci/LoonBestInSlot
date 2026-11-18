function LBIS:LoadWarriorFury()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Fury"], "0", "https://www.wowhead.com/forever/guide/classes/warrior/dps-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Fury"], "1", "https://www.wowhead.com/forever/guide/classes/warrior/dps-talent-builds-pve")

    LBIS:AddEnchant(spec0, "15397", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "25084", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "20034", LBIS.L["Main Hand~Off Hand"]) --
    LBIS:AddEnchant(spec0, "12460", LBIS.L["Ranged"]) --

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
    LBIS:AddItem(spec0, "11684", LBIS.L["Main Hand~Off Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec0, "19170", LBIS.L["Main Hand~Off Hand"], "Alt") --Ebon Hand
    LBIS:AddItem(spec0, "12590", LBIS.L["Main Hand~Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec0, "19103", LBIS.L["Main Hand~Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec0, "19921", LBIS.L["Main Hand~Off Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec0, "12940", LBIS.L["Main Hand~Off Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "12939", LBIS.L["Main Hand~Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "811", LBIS.L["Main Hand~Off Hand"], "Alt") --Axe of the Deep Woods
    LBIS:AddItem(spec0, "871", LBIS.L["Main Hand~Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec0, "18348", LBIS.L["Main Hand~Off Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec0, "13015", LBIS.L["Main Hand~Off Hand"], "Alt") --Serathil
    LBIS:AddItem(spec0, "12535", LBIS.L["Main Hand~Off Hand"], "Alt") --Doomforged Straightedge
    LBIS:AddItem(spec0, "15806", LBIS.L["Main Hand~Off Hand"], "Alt") --Mirah's Song
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
    LBIS:AddItem(spec1, "17069", LBIS.L["Ranged"], "BIS") --Striker's Mark
    LBIS:AddItem(spec1, "17072", LBIS.L["Ranged"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
end
