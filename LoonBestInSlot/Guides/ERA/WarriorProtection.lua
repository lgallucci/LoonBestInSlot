local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "7")

    LBIS:AddEnchant(spec3, "15389", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "20013", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "15389", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "20034", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec3, "12460", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec1, "16963", LBIS.L["Head"], "BIS") --Helm of Wrath
    LBIS:AddItem(spec1, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec1, "16866", LBIS.L["Head"], "Alt") --Helm of Might
    LBIS:AddItem(spec1, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec1, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec1, "16868", LBIS.L["Shoulder"], "BIS") --Pauldrons of Might
    LBIS:AddItem(spec1, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec1, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec1, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec1, "17102", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec1, "17107", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "16865", LBIS.L["Chest"], "Alt") --Breastplate of Might
    LBIS:AddItem(spec1, "12895", LBIS.L["Chest"], "Alt") --Breastplate of the Chromatic Flight
    LBIS:AddItem(spec1, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec1, "16861", LBIS.L["Wrist"], "BIS") --Bracers of Might
    LBIS:AddItem(spec1, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec1, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec1, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec1, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec1, "16863", LBIS.L["Hands"], "BIS") --Gauntlets of Might
    LBIS:AddItem(spec1, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec1, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec1, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec1, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec1, "16864", LBIS.L["Waist"], "Alt") --Belt of Might
    LBIS:AddItem(spec1, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec1, "13502", LBIS.L["Waist"], "Alt") --Handcrafted Mastersmith Girdle
    LBIS:AddItem(spec1, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec1, "16962", LBIS.L["Legs"], "BIS") --Legplates of Wrath
    LBIS:AddItem(spec1, "16867", LBIS.L["Legs"], "Alt") --Legplates of Might
    LBIS:AddItem(spec1, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec1, "12935", LBIS.L["Legs"], "Alt") --Warmaster Legguards
    LBIS:AddItem(spec1, "16862", LBIS.L["Feet"], "BIS") --Sabatons of Might
    LBIS:AddItem(spec1, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec1, "13259", LBIS.L["Feet"], "Alt") --Ribsteel Footguards
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "17065", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec1, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec1, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec1, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13373", LBIS.L["Ring"], "Alt") --Band of Flesh
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "18203", LBIS.L["Main Hand"], "BIS") --Eskhandar's Right Claw
    LBIS:AddItem(spec1, "15806", LBIS.L["Main Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec1, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec1, "13015", LBIS.L["Main Hand"], "Alt") --Serathil
    LBIS:AddItem(spec1, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec1, "17066", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec1, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec1, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec1, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec1, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec1, "12535", LBIS.L["Off Hand"], "Alt") --Doomforged Straightedge
    LBIS:AddItem(spec1, "13529", LBIS.L["Off Hand"], "Alt") --Husk of Nerub'enkan
    LBIS:AddItem(spec1, "12590", LBIS.L["Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec1, "17072", LBIS.L["Ranged/Relic"], "BIS") --Blastershot Launcher
    LBIS:AddItem(spec1, "16996", LBIS.L["Ranged/Relic"], "Alt") --Gorewood Bow
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec1, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook

    LBIS:AddItem(spec2, "23314", LBIS.L["Head"], "BIS") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec2, "23244", LBIS.L["Head"], "BIS") --Champion's Plate Helm
    LBIS:AddItem(spec2, "18817", LBIS.L["Head"], "BIS") --Crown of Destruction
    LBIS:AddItem(spec2, "12640", LBIS.L["Head"], "Alt Thrt") --Lionheart Helm
    LBIS:AddItem(spec2, "16963", LBIS.L["Head"], "Alt Mit") --Helm of Wrath
    LBIS:AddItem(spec2, "16866", LBIS.L["Head"], "Alt") --Helm of Might
    LBIS:AddItem(spec2, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec2, "16731", LBIS.L["Head"], "Alt") --Helm of Valor
    LBIS:AddItem(spec2, "23315", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec2, "23243", LBIS.L["Shoulder"], "BIS") --Champion's Plate Shoulders
    LBIS:AddItem(spec2, "16868", LBIS.L["Shoulder"], "Alt") --Pauldrons of Might
    LBIS:AddItem(spec2, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec2, "18204", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec2, "17107", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec2, "19084", LBIS.L["Back"], "Alt") --Stormpike Soldier's Cloak
    LBIS:AddItem(spec2, "19083", LBIS.L["Back"], "Alt") --Frostwolf Legionnaire's Cloak
    LBIS:AddItem(spec2, "12895", LBIS.L["Chest"], "BIS") --Breastplate of the Chromatic Flight
    LBIS:AddItem(spec2, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec2, "23300", LBIS.L["Chest"], "BIS") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec2, "22872", LBIS.L["Chest"], "BIS") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec2, "16865", LBIS.L["Chest"], "Alt") --Breastplate of Might
    LBIS:AddItem(spec2, "16730", LBIS.L["Chest"], "Alt") --Breastplate of Valor
    LBIS:AddItem(spec2, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec2, "19578", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec2, "16861", LBIS.L["Wrist"], "Alt Mit") --Bracers of Might
    LBIS:AddItem(spec2, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec2, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec2, "18533", LBIS.L["Wrist"], "Alt") --Gordok Bracers of Power
    LBIS:AddItem(spec2, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec2, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec2, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec2, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec2, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec2, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec2, "13162", LBIS.L["Hands"], "Alt") --Reiver Claws
    LBIS:AddItem(spec2, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec2, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec2, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec2, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec2, "16864", LBIS.L["Waist"], "Alt") --Belt of Might
    LBIS:AddItem(spec2, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec2, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec2, "19087", LBIS.L["Waist"], "Alt") --Frostwolf Plate Belt
    LBIS:AddItem(spec2, "19091", LBIS.L["Waist"], "Alt") --Stormpike Plate Girdle
    LBIS:AddItem(spec2, "23301", LBIS.L["Legs"], "BIS") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec2, "22873", LBIS.L["Legs"], "BIS") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec2, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec2, "16962", LBIS.L["Legs"], "Alt Mit") --Legplates of Wrath
    LBIS:AddItem(spec2, "16867", LBIS.L["Legs"], "Alt Mit") --Legplates of Might
    LBIS:AddItem(spec2, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec2, "16732", LBIS.L["Legs"], "Alt") --Legplates of Valor
    LBIS:AddItem(spec2, "16862", LBIS.L["Feet"], "BIS") --Sabatons of Might
    LBIS:AddItem(spec2, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec2, "23287", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Plate Greaves
    LBIS:AddItem(spec2, "22858", LBIS.L["Feet"], "Alt") --Blood Guard's Plate Greaves
    LBIS:AddItem(spec2, "13070", LBIS.L["Feet"], "Alt") --Sapphiron's Scale Boots
    LBIS:AddItem(spec2, "13259", LBIS.L["Feet"], "Alt") --Ribsteel Footguards
    LBIS:AddItem(spec2, "11731", LBIS.L["Feet"], "Alt") --Savage Gladiator Greaves
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "18205", LBIS.L["Neck"], "Alt Mit") --Eskhandar's Collar
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec2, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec2, "18522", LBIS.L["Ring"], "Alt") --Band of the Ogre King
    LBIS:AddItem(spec2, "13373", LBIS.L["Ring"], "Alt") --Band of Flesh
    LBIS:AddItem(spec2, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "11684", LBIS.L["Main Hand"], "BIS") --Ironfoe
    LBIS:AddItem(spec2, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec2, "12590", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Felstriker
    LBIS:AddItem(spec2, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec2, "19168", LBIS.L["Main Hand/Off Hand"], "Alt") --Blackguard
    LBIS:AddItem(spec2, "15806", LBIS.L["Main Hand/Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec2, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec2, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec2, "19324", LBIS.L["Main Hand/Off Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec2, "17071", LBIS.L["Main Hand/Off Hand"], "Alt") --Gutgore Ripper
    LBIS:AddItem(spec2, "6660", LBIS.L["Main Hand"], "Alt") --Julie's Dagger
    LBIS:AddItem(spec2, "18832", LBIS.L["Off Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec2, "18168", LBIS.L["Off Hand"], "BIS") --Force Reactive Disk
    LBIS:AddItem(spec2, "17106", LBIS.L["Off Hand"], "BIS") --Malistar's Defender
    LBIS:AddItem(spec2, "19104", LBIS.L["Off Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec2, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec2, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec2, "18756", LBIS.L["Off Hand"], "Alt") --Dreadguard's Protector
    LBIS:AddItem(spec2, "1979", LBIS.L["Off Hand"], "Alt") --Wall of the Dead
    LBIS:AddItem(spec2, "1203", LBIS.L["Off Hand"], "Alt") --Aegis of Stormwind
    LBIS:AddItem(spec2, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec2, "17072", LBIS.L["Ranged/Relic"], "BIS") --Blastershot Launcher
    LBIS:AddItem(spec2, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec2, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec2, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec2, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec2, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook

    LBIS:AddItem(spec3, "16478", LBIS.L["Head"], "BIS") --Field Marshal's Plate Helm
    LBIS:AddItem(spec3, "16542", LBIS.L["Head"], "BIS") --Warlord's Plate Headpiece
    LBIS:AddItem(spec3, "19372", LBIS.L["Head"], "BIS") --Helm of Endless Rage
    LBIS:AddItem(spec3, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec3, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec3, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec3, "12640", LBIS.L["Head"], "Alt Thrt") --Lionheart Helm
    LBIS:AddItem(spec3, "16963", LBIS.L["Head"], "Alt Mit") --Helm of Wrath
    LBIS:AddItem(spec3, "16866", LBIS.L["Head"], "Alt") --Helm of Might
    LBIS:AddItem(spec3, "16480", LBIS.L["Shoulder"], "BIS") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec3, "16544", LBIS.L["Shoulder"], "BIS") --Warlord's Plate Shoulders
    LBIS:AddItem(spec3, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec3, "16961", LBIS.L["Shoulder"], "BIS Mit") --Pauldrons of Wrath
    LBIS:AddItem(spec3, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec3, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec3, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec3, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec3, "16868", LBIS.L["Shoulder"], "Alt") --Pauldrons of Might
    LBIS:AddItem(spec3, "19398", LBIS.L["Back"], "BIS") --Cloak of Firemaw
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec3, "19386", LBIS.L["Back"], "BIS Mit") --Elementium Threaded Cloak
    LBIS:AddItem(spec3, "17107", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec3, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec3, "18204", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec3, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec3, "16477", LBIS.L["Chest"], "BIS") --Field Marshal's Plate Armor
    LBIS:AddItem(spec3, "16541", LBIS.L["Chest"], "BIS") --Warlord's Plate Armor
    LBIS:AddItem(spec3, "16966", LBIS.L["Chest"], "Alt") --Breastplate of Wrath
    LBIS:AddItem(spec3, "12895", LBIS.L["Chest"], "Alt") --Breastplate of the Chromatic Flight
    LBIS:AddItem(spec3, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec3, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec3, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec3, "16865", LBIS.L["Chest"], "Alt") --Breastplate of Might
    LBIS:AddItem(spec3, "16959", LBIS.L["Wrist"], "BIS") --Bracelets of Wrath
    LBIS:AddItem(spec3, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec3, "16861", LBIS.L["Wrist"], "Alt") --Bracers of Might
    LBIS:AddItem(spec3, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec3, "16484", LBIS.L["Hands"], "BIS") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec3, "16548", LBIS.L["Hands"], "BIS") --General's Plate Gauntlets
    LBIS:AddItem(spec3, "16964", LBIS.L["Hands"], "BIS Mit") --Gauntlets of Wrath
    LBIS:AddItem(spec3, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec3, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec3, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec3, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec3, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec3, "13162", LBIS.L["Hands"], "Alt") --Reiver Claws
    LBIS:AddItem(spec3, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec3, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec3, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec3, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec3, "16960", LBIS.L["Waist"], "Alt") --Waistband of Wrath
    LBIS:AddItem(spec3, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec3, "16864", LBIS.L["Waist"], "Alt") --Belt of Might
    LBIS:AddItem(spec3, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec3, "16479", LBIS.L["Legs"], "BIS") --Marshal's Plate Legguards
    LBIS:AddItem(spec3, "16543", LBIS.L["Legs"], "BIS") --General's Plate Leggings
    LBIS:AddItem(spec3, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec3, "23301", LBIS.L["Legs"], "Alt") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec3, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec3, "16962", LBIS.L["Legs"], "Alt Mit") --Legplates of Wrath
    LBIS:AddItem(spec3, "16867", LBIS.L["Legs"], "Alt Mit") --Legplates of Might
    LBIS:AddItem(spec3, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec3, "16545", LBIS.L["Feet"], "BIS") --General's Plate Boots
    LBIS:AddItem(spec3, "16483", LBIS.L["Feet"], "BIS") --Marshal's Plate Boots
    LBIS:AddItem(spec3, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec3, "16965", LBIS.L["Feet"], "Alt") --Sabatons of Wrath
    LBIS:AddItem(spec3, "16862", LBIS.L["Feet"], "Alt") --Sabatons of Might
    LBIS:AddItem(spec3, "23287", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Plate Greaves
    LBIS:AddItem(spec3, "22858", LBIS.L["Feet"], "Alt") --Blood Guard's Plate Greaves
    LBIS:AddItem(spec3, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec3, "17065", LBIS.L["Neck"], "BIS Mit") --Medallion of Steadfast Might
    LBIS:AddItem(spec3, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec3, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec3, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec3, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec3, "19376", LBIS.L["Ring"], "BIS") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec3, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec3, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec3, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec3, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec3, "19019", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec3, "23456", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec3, "23467", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Quickblade
    LBIS:AddItem(spec3, "19351", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec3, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec3, "18840", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Razor
    LBIS:AddItem(spec3, "18838", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Dirk
    LBIS:AddItem(spec3, "19346", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Dragonfang Blade
    LBIS:AddItem(spec3, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec3, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec3, "19168", LBIS.L["Main Hand/Off Hand"], "Alt") --Blackguard
    LBIS:AddItem(spec3, "15806", LBIS.L["Main Hand/Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec3, "12590", LBIS.L["Main Hand/Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec3, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec3, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec3, "19324", LBIS.L["Main Hand/Off Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec3, "17071", LBIS.L["Main Hand/Off Hand"], "Alt") --Gutgore Ripper
    LBIS:AddItem(spec3, "6660", LBIS.L["Main Hand"], "Alt") --Julie's Dagger
    LBIS:AddItem(spec3, "18826", LBIS.L["Off Hand"], "BIS") --High Warlord's Shield Wall
    LBIS:AddItem(spec3, "18825", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Aegis
    LBIS:AddItem(spec3, "19349", LBIS.L["Off Hand"], "BIS") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec3, "18168", LBIS.L["Off Hand"], "BIS") --Force Reactive Disk
    LBIS:AddItem(spec3, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec3, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec3, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec3, "19104", LBIS.L["Off Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec3, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec3, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec3, "19368", LBIS.L["Ranged/Relic"], "BIS") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec3, "19350", LBIS.L["Ranged/Relic"], "BIS") --Heartstriker
    LBIS:AddItem(spec3, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec3, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec3, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec3, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec3, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
end
if not LBIS.IsSOD then
    LoadData();
end
