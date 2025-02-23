local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "7")

    LBIS:AddEnchant(spec2, "15389", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "20013", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "15389", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec2, "12460", LBIS.L["Ranged/Relic"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
