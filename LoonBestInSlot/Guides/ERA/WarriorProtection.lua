local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "8")

    LBIS:AddEnchant(spec6, "24149", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29480", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "25086", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25072", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec6, "23800", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec6, "3975", LBIS.L["Ranged/Relic"]) --
    LBIS:AddEnchant(spec6, "12460", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec0, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec0, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec0, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec0, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec0, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec0, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec0, "20683", LBIS.L["Shoulder"], "Alt") --Abyssal Plate Epaulets
    LBIS:AddItem(spec0, "19695", LBIS.L["Shoulder"], "Alt") --Darksoul Shoulders
    LBIS:AddItem(spec0, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec0, "18493", LBIS.L["Shoulder"], "Alt") --Bulky Iron Spaulders
    LBIS:AddItem(spec0, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec0, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec0, "21187", LBIS.L["Back"], "Alt") --Earthweave Cloak
    LBIS:AddItem(spec0, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec0, "18511", LBIS.L["Back"], "Alt") --Shifting Cloak
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec0, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "18503", LBIS.L["Chest"], "Alt") --Kromcrush's Chestplate
    LBIS:AddItem(spec0, "19693", LBIS.L["Chest"], "Alt") --Darksoul Breastplate
    LBIS:AddItem(spec0, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec0, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec0, "21184", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec0, "20687", LBIS.L["Wrist"], "Alt") --Abyssal Plate Vambraces
    LBIS:AddItem(spec0, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec0, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec0, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec0, "18754", LBIS.L["Wrist"], "Alt") --Fel Hardened Bracers
    LBIS:AddItem(spec0, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec0, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec0, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec0, "22868", LBIS.L["Hands"], "Alt") --Blood Guard's Plate Gauntlets
    LBIS:AddItem(spec0, "13162", LBIS.L["Hands"], "Alt") --Reiver Claws
    LBIS:AddItem(spec0, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec0, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec0, "20207", LBIS.L["Waist"], "Alt") --Defiler's Plate Girdle
    LBIS:AddItem(spec0, "13502", LBIS.L["Waist"], "Alt") --Handcrafted Mastersmith Girdle
    LBIS:AddItem(spec0, "19087", LBIS.L["Waist"], "Alt") --Frostwolf Plate Belt
    LBIS:AddItem(spec0, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec0, "22385", LBIS.L["Legs"], "Alt") --Titanic Leggings
    LBIS:AddItem(spec0, "22651", LBIS.L["Legs"], "Alt") --Outrider's Plate Legguards
    LBIS:AddItem(spec0, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec0, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec0, "19694", LBIS.L["Legs"], "Alt") --Darksoul Leggings
    LBIS:AddItem(spec0, "20671", LBIS.L["Legs"], "Alt") --Abyssal Plate Legplates
    LBIS:AddItem(spec0, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec0, "12935", LBIS.L["Legs"], "Alt") --Warmaster Legguards
    LBIS:AddItem(spec0, "16732", LBIS.L["Legs"], "Alt") --Legplates of Valor
    LBIS:AddItem(spec0, "20210", LBIS.L["Feet"], "Alt") --Defiler's Plate Greaves
    LBIS:AddItem(spec0, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec0, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec0, "16734", LBIS.L["Feet"], "Alt") --Boots of Valor
    LBIS:AddItem(spec0, "13259", LBIS.L["Feet"], "Alt") --Ribsteel Footguards
    LBIS:AddItem(spec0, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec0, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec0, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec0, "21182", LBIS.L["Ring"], "Alt") --Band of Earthen Might
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec0, "13373", LBIS.L["Ring"], "Alt") --Band of Flesh
    LBIS:AddItem(spec0, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec0, "20130", LBIS.L["Trinket"], "Alt") --Diamond Flask
    LBIS:AddItem(spec0, "17909", LBIS.L["Trinket"], "Alt") --Frostwolf Insignia Rank 6
    LBIS:AddItem(spec0, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec0, "18370", LBIS.L["Trinket"], "Alt") --Vigilance Charm
    LBIS:AddItem(spec0, "13515", LBIS.L["Trinket"], "Alt") --Ramstein's Lightning Bolts
    LBIS:AddItem(spec0, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec0, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec0, "19324", LBIS.L["Main Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec0, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec0, "19103", LBIS.L["Main Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec0, "12798", LBIS.L["Main Hand"], "Alt") --Annihilator
    LBIS:AddItem(spec0, "19921", LBIS.L["Main Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec0, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "15806", LBIS.L["Main Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec0, "811", LBIS.L["Main Hand"], "Alt") --Axe of the Deep Woods
    LBIS:AddItem(spec0, "871", LBIS.L["Main Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec0, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec0, "13952", LBIS.L["Main Hand"], "Alt") --Iceblade Hacker
    LBIS:AddItem(spec0, "13015", LBIS.L["Main Hand"], "Alt") --Serathil
    LBIS:AddItem(spec0, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec0, "13368", LBIS.L["Main Hand"], "Alt") --Bonescraper
    LBIS:AddItem(spec0, "18392", LBIS.L["Main Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec0, "13006", LBIS.L["Main Hand"], "Alt") --Mass of McGowan
    LBIS:AddItem(spec0, "12939", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec0, "20688", LBIS.L["Off Hand"], "Alt") --Earthen Guard
    LBIS:AddItem(spec0, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec0, "18756", LBIS.L["Off Hand"], "Alt") --Dreadguard's Protector
    LBIS:AddItem(spec0, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec0, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec0, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
    LBIS:AddItem(spec0, "20437", LBIS.L["Ranged"], "Alt") --Outrider's Bow
    LBIS:AddItem(spec0, "18323", LBIS.L["Ranged"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec0, "16996", LBIS.L["Ranged"], "Alt") --Gorewood Bow
    LBIS:AddItem(spec0, "18738", LBIS.L["Ranged"], "Alt") --Carapace Spine Crossbow
    LBIS:AddItem(spec0, "19107", LBIS.L["Ranged"], "Alt") --Bloodseeker

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

    LBIS:AddItem(spec4, "16478", LBIS.L["Head"], "BIS") --Field Marshal's Plate Helm
    LBIS:AddItem(spec4, "16542", LBIS.L["Head"], "BIS") --Warlord's Plate Headpiece
    LBIS:AddItem(spec4, "19372", LBIS.L["Head"], "BIS") --Helm of Endless Rage
    LBIS:AddItem(spec4, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec4, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec4, "20623", LBIS.L["Head"], "Alt") --Circlet of Restless Dreams
    LBIS:AddItem(spec4, "21999", LBIS.L["Head"], "Alt") --Helm of Heroism
    LBIS:AddItem(spec4, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec4, "12640", LBIS.L["Head"], "Alt Thrt") --Lionheart Helm
    LBIS:AddItem(spec4, "16963", LBIS.L["Head"], "Alt Mit") --Helm of Wrath
    LBIS:AddItem(spec4, "16480", LBIS.L["Shoulder"], "BIS") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec4, "16544", LBIS.L["Shoulder"], "BIS") --Warlord's Plate Shoulders
    LBIS:AddItem(spec4, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec4, "16961", LBIS.L["Shoulder"], "BIS Mit") --Pauldrons of Wrath
    LBIS:AddItem(spec4, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec4, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec4, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec4, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec4, "19878", LBIS.L["Shoulder"], "Alt") --Bloodsoaked Pauldrons
    LBIS:AddItem(spec4, "19398", LBIS.L["Back"], "BIS") --Cloak of Firemaw
    LBIS:AddItem(spec4, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec4, "19386", LBIS.L["Back"], "BIS Mit") --Elementium Threaded Cloak
    LBIS:AddItem(spec4, "17107", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec4, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec4, "22712", LBIS.L["Back"], "Alt") --Might of the Tribe
    LBIS:AddItem(spec4, "16477", LBIS.L["Chest"], "BIS") --Field Marshal's Plate Armor
    LBIS:AddItem(spec4, "16541", LBIS.L["Chest"], "BIS") --Warlord's Plate Armor
    LBIS:AddItem(spec4, "19822", LBIS.L["Chest"], "Alt") --Zandalar Vindicator's Breastplate
    LBIS:AddItem(spec4, "16966", LBIS.L["Chest"], "Alt") --Breastplate of Wrath
    LBIS:AddItem(spec4, "21997", LBIS.L["Chest"], "Alt") --Breastplate of Heroism
    LBIS:AddItem(spec4, "12895", LBIS.L["Chest"], "Alt") --Breastplate of the Chromatic Flight
    LBIS:AddItem(spec4, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec4, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec4, "16959", LBIS.L["Wrist"], "BIS") --Bracelets of Wrath
    LBIS:AddItem(spec4, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec4, "19824", LBIS.L["Wrist"], "Alt") --Zandalar Vindicator's Armguards
    LBIS:AddItem(spec4, "16861", LBIS.L["Wrist"], "Alt") --Bracers of Might
    LBIS:AddItem(spec4, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec4, "16484", LBIS.L["Hands"], "BIS") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec4, "16548", LBIS.L["Hands"], "BIS") --General's Plate Gauntlets
    LBIS:AddItem(spec4, "16964", LBIS.L["Hands"], "BIS Mit") --Gauntlets of Wrath
    LBIS:AddItem(spec4, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec4, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec4, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec4, "21998", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec4, "22714", LBIS.L["Hands"], "Alt") --Sacrificial Gauntlets
    LBIS:AddItem(spec4, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec4, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec4, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec4, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec4, "19823", LBIS.L["Waist"], "Alt") --Zandalar Vindicator's Belt
    LBIS:AddItem(spec4, "16960", LBIS.L["Waist"], "Alt") --Waistband of Wrath
    LBIS:AddItem(spec4, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec4, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec4, "16479", LBIS.L["Legs"], "BIS") --Marshal's Plate Legguards
    LBIS:AddItem(spec4, "16543", LBIS.L["Legs"], "BIS") --General's Plate Leggings
    LBIS:AddItem(spec4, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec4, "19855", LBIS.L["Legs"], "Alt") --Bloodsoaked Legplates
    LBIS:AddItem(spec4, "23301", LBIS.L["Legs"], "Alt") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec4, "22873", LBIS.L["Legs"], "Alt") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec4, "16962", LBIS.L["Legs"], "Alt Mit") --Legplates of Wrath
    LBIS:AddItem(spec4, "16867", LBIS.L["Legs"], "Alt Mit") --Legplates of Might
    LBIS:AddItem(spec4, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec4, "16483", LBIS.L["Feet"], "BIS") --Marshal's Plate Boots
    LBIS:AddItem(spec4, "16545", LBIS.L["Feet"], "BIS") --General's Plate Boots
    LBIS:AddItem(spec4, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec4, "16965", LBIS.L["Feet"], "Alt") --Sabatons of Wrath
    LBIS:AddItem(spec4, "21995", LBIS.L["Feet"], "Alt") --Boots of Heroism
    LBIS:AddItem(spec4, "23287", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Plate Greaves
    LBIS:AddItem(spec4, "22858", LBIS.L["Feet"], "Alt") --Blood Guard's Plate Greaves
    LBIS:AddItem(spec4, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "17065", LBIS.L["Neck"], "BIS Mit") --Medallion of Steadfast Might
    LBIS:AddItem(spec4, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec4, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "19577", LBIS.L["Neck"], "Alt") --Rage of Mugamba
    LBIS:AddItem(spec4, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec4, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec4, "19376", LBIS.L["Ring"], "BIS") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec4, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec4, "20624", LBIS.L["Ring"], "Alt") --Ring of the Unliving
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec4, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "19341", LBIS.L["Trinket"], "Alt") --Lifegiving Gem
    LBIS:AddItem(spec4, "19947", LBIS.L["Trinket"], "Alt") --Nat Pagle's Broken Reel
    LBIS:AddItem(spec4, "19019", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec4, "23467", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Quickblade
    LBIS:AddItem(spec4, "23456", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec4, "19865", LBIS.L["Main Hand"], "BIS") --Warblade of the Hakkari
    LBIS:AddItem(spec4, "19351", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec4, "18838", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Dirk
    LBIS:AddItem(spec4, "18840", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Razor
    LBIS:AddItem(spec4, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec4, "12590", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Felstriker
    LBIS:AddItem(spec4, "19346", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Dragonfang Blade
    LBIS:AddItem(spec4, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec4, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec4, "19168", LBIS.L["Main Hand/Off Hand"], "Alt") --Blackguard
    LBIS:AddItem(spec4, "15806", LBIS.L["Main Hand/Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec4, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec4, "20578", LBIS.L["Main Hand"], "Alt") --Emerald Dragonfang
    LBIS:AddItem(spec4, "19859", LBIS.L["Main Hand/Off Hand"], "Alt") --Fang of the Faceless
    LBIS:AddItem(spec4, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec4, "19324", LBIS.L["Main Hand/Off Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec4, "17071", LBIS.L["Main Hand/Off Hand"], "Alt") --Gutgore Ripper
    LBIS:AddItem(spec4, "6660", LBIS.L["Main Hand"], "Alt") --Julie's Dagger
    LBIS:AddItem(spec4, "18825", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Aegis
    LBIS:AddItem(spec4, "18826", LBIS.L["Off Hand"], "BIS") --High Warlord's Shield Wall
    LBIS:AddItem(spec4, "19866", LBIS.L["Off Hand"], "BIS") --Warblade of the Hakkari
    LBIS:AddItem(spec4, "19349", LBIS.L["Off Hand"], "BIS") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec4, "18168", LBIS.L["Off Hand"], "BIS") --Force Reactive Disk
    LBIS:AddItem(spec4, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec4, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec4, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec4, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec4, "19104", LBIS.L["Off Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec4, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec4, "19368", LBIS.L["Ranged/Relic"], "BIS") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec4, "19350", LBIS.L["Ranged/Relic"], "BIS") --Heartstriker
    LBIS:AddItem(spec4, "20599", LBIS.L["Ranged/Relic"], "Alt") --Polished Ironwood Crossbow
    LBIS:AddItem(spec4, "20038", LBIS.L["Ranged/Relic"], "Alt") --Mandokir's Sting
    LBIS:AddItem(spec4, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec4, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec4, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec4, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec4, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow

    LBIS:AddItem(spec5, "21329", LBIS.L["Head"], "BIS") --Conqueror's Crown
    LBIS:AddItem(spec5, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec5, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec5, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec5, "21460", LBIS.L["Head"], "Alt") --Helm of Domination
    LBIS:AddItem(spec5, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec5, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec5, "20623", LBIS.L["Head"], "Alt") --Circlet of Restless Dreams
    LBIS:AddItem(spec5, "21999", LBIS.L["Head"], "Alt") --Helm of Heroism
    LBIS:AddItem(spec5, "21330", LBIS.L["Shoulder"], "BIS") --Conqueror's Spaulders
    LBIS:AddItem(spec5, "16480", LBIS.L["Shoulder"], "BIS") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec5, "16544", LBIS.L["Shoulder"], "BIS") --Warlord's Plate Shoulders
    LBIS:AddItem(spec5, "21639", LBIS.L["Shoulder"], "BIS Mit") --Pauldrons of the Unrelenting
    LBIS:AddItem(spec5, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec5, "23315", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec5, "23243", LBIS.L["Shoulder"], "Alt") --Champion's Plate Shoulders
    LBIS:AddItem(spec5, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec5, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "21621", LBIS.L["Back"], "Alt") --Cloak of the Golden Hive
    LBIS:AddItem(spec5, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec5, "21394", LBIS.L["Back"], "Alt") --Drape of Unyielding Strength
    LBIS:AddItem(spec5, "19398", LBIS.L["Back"], "Alt") --Cloak of Firemaw
    LBIS:AddItem(spec5, "21331", LBIS.L["Chest"], "BIS") --Conqueror's Breastplate
    LBIS:AddItem(spec5, "16477", LBIS.L["Chest"], "Alt") --Field Marshal's Plate Armor
    LBIS:AddItem(spec5, "16541", LBIS.L["Chest"], "Alt") --Warlord's Plate Armor
    LBIS:AddItem(spec5, "21814", LBIS.L["Chest"], "Alt") --Breastplate of Annihilation
    LBIS:AddItem(spec5, "19822", LBIS.L["Chest"], "Alt") --Zandalar Vindicator's Breastplate
    LBIS:AddItem(spec5, "16966", LBIS.L["Chest"], "Alt") --Breastplate of Wrath
    LBIS:AddItem(spec5, "21997", LBIS.L["Chest"], "Alt") --Breastplate of Heroism
    LBIS:AddItem(spec5, "21457", LBIS.L["Wrist"], "BIS") --Bracers of Brutality
    LBIS:AddItem(spec5, "16959", LBIS.L["Wrist"], "BIS") --Bracelets of Wrath
    LBIS:AddItem(spec5, "21618", LBIS.L["Wrist"], "BIS") --Hive Defiler Wristguards
    LBIS:AddItem(spec5, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec5, "19824", LBIS.L["Wrist"], "Alt") --Zandalar Vindicator's Armguards
    LBIS:AddItem(spec5, "21184", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec5, "21602", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec5, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec5, "21674", LBIS.L["Hands"], "BIS") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec5, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec5, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec5, "16484", LBIS.L["Hands"], "Alt") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec5, "16548", LBIS.L["Hands"], "Alt") --General's Plate Gauntlets
    LBIS:AddItem(spec5, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec5, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec5, "21998", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec5, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec5, "21692", LBIS.L["Waist"], "BIS") --Triad Girdle
    LBIS:AddItem(spec5, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec5, "21598", LBIS.L["Waist"], "Alt") --Royal Qiraji Belt
    LBIS:AddItem(spec5, "21606", LBIS.L["Waist"], "Alt") --Belt of the Fallen Emperor
    LBIS:AddItem(spec5, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec5, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec5, "19823", LBIS.L["Waist"], "Alt") --Zandalar Vindicator's Belt
    LBIS:AddItem(spec5, "21332", LBIS.L["Legs"], "BIS") --Conqueror's Legguards
    LBIS:AddItem(spec5, "16479", LBIS.L["Legs"], "Alt") --Marshal's Plate Legguards
    LBIS:AddItem(spec5, "16543", LBIS.L["Legs"], "Alt") --General's Plate Leggings
    LBIS:AddItem(spec5, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec5, "19855", LBIS.L["Legs"], "Alt") --Bloodsoaked Legplates
    LBIS:AddItem(spec5, "21333", LBIS.L["Feet"], "BIS") --Conqueror's Greaves
    LBIS:AddItem(spec5, "16483", LBIS.L["Feet"], "BIS") --Marshal's Plate Boots
    LBIS:AddItem(spec5, "16545", LBIS.L["Feet"], "BIS") --General's Plate Boots
    LBIS:AddItem(spec5, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec5, "21688", LBIS.L["Feet"], "BIS") --Boots of the Fallen Hero
    LBIS:AddItem(spec5, "21706", LBIS.L["Feet"], "Alt") --Boots of the Unwavering Will
    LBIS:AddItem(spec5, "16965", LBIS.L["Feet"], "Alt") --Sabatons of Wrath
    LBIS:AddItem(spec5, "21490", LBIS.L["Feet"], "Alt") --Slime Kickers
    LBIS:AddItem(spec5, "21995", LBIS.L["Feet"], "Alt") --Boots of Heroism
    LBIS:AddItem(spec5, "21700", LBIS.L["Neck"], "BIS") --Pendant of the Qiraji Guardian
    LBIS:AddItem(spec5, "21664", LBIS.L["Neck"], "BIS") --Barbed Choker
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "21506", LBIS.L["Neck"], "Alt") --Pendant of the Shifting Sands
    LBIS:AddItem(spec5, "22732", LBIS.L["Neck"], "Alt") --Mark of C'Thun
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "21596", LBIS.L["Ring"], "BIS") --Ring of the Godslayer
    LBIS:AddItem(spec5, "21200", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "19376", LBIS.L["Ring"], "BIS") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "21677", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec5, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec5, "21393", LBIS.L["Ring"], "Alt") --Signet of Unyielding Strength
    LBIS:AddItem(spec5, "21601", LBIS.L["Ring"], "Alt") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS") --Earthstrike
    LBIS:AddItem(spec5, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "23570", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec5, "20130", LBIS.L["Trinket"], "Alt") --Diamond Flask
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec5, "19341", LBIS.L["Trinket"], "Alt") --Lifegiving Gem
    LBIS:AddItem(spec5, "19947", LBIS.L["Trinket"], "Alt") --Nat Pagle's Broken Reel
    LBIS:AddItem(spec5, "19019", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec5, "23456", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec5, "23467", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Quickblade
    LBIS:AddItem(spec5, "19865", LBIS.L["Main Hand"], "BIS") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "21126", LBIS.L["Main Hand"], "BIS") --Death's Sting
    LBIS:AddItem(spec5, "21244", LBIS.L["Main Hand/Off Hand"], "BIS") --Blessed Qiraji Pugio
    LBIS:AddItem(spec5, "21522", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Shadowsong's Sorrow
    LBIS:AddItem(spec5, "18840", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --High Warlord's Razor
    LBIS:AddItem(spec5, "18838", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Grand Marshal's Dirk
    LBIS:AddItem(spec5, "21520", LBIS.L["Main Hand/Off Hand"], "Alt") --Ravencrest's Legacy
    LBIS:AddItem(spec5, "19351", LBIS.L["Main Hand/Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec5, "19168", LBIS.L["Main Hand"], "Alt") --Blackguard
    LBIS:AddItem(spec5, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec5, "15806", LBIS.L["Main Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec5, "18816", LBIS.L["Main Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec5, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec5, "12590", LBIS.L["Main Hand/Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec5, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec5, "19346", LBIS.L["Main Hand/Off Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec5, "20578", LBIS.L["Main Hand"], "Alt") --Emerald Dragonfang
    LBIS:AddItem(spec5, "19859", LBIS.L["Main Hand/Off Hand"], "Alt") --Fang of the Faceless
    LBIS:AddItem(spec5, "21498", LBIS.L["Main Hand/Off Hand"], "Alt") --Qiraji Sacrificial Dagger
    LBIS:AddItem(spec5, "18826", LBIS.L["Off Hand"], "BIS") --High Warlord's Shield Wall
    LBIS:AddItem(spec5, "18825", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Aegis
    LBIS:AddItem(spec5, "19866", LBIS.L["Off Hand"], "BIS") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "18168", LBIS.L["Off Hand"], "BIS") --Force Reactive Disk
    LBIS:AddItem(spec5, "21269", LBIS.L["Off Hand"], "Alt") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec5, "19352", LBIS.L["Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec5, "19349", LBIS.L["Off Hand"], "Alt") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec5, "21485", LBIS.L["Off Hand"], "Alt") --Buru's Skull Fragment
    LBIS:AddItem(spec5, "21650", LBIS.L["Off Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec5, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec5, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "20688", LBIS.L["Off Hand"], "Alt") --Earthen Guard
    LBIS:AddItem(spec5, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec5, "20577", LBIS.L["Off Hand"], "Alt") --Nightmare Blade
    LBIS:AddItem(spec5, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec5, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec5, "21459", LBIS.L["Ranged/Relic"], "BIS") --Crossbow of Imminent Doom
    LBIS:AddItem(spec5, "19368", LBIS.L["Ranged/Relic"], "BIS") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec5, "19350", LBIS.L["Ranged/Relic"], "BIS") --Heartstriker
    LBIS:AddItem(spec5, "20038", LBIS.L["Ranged/Relic"], "Alt") --Mandokir's Sting
    LBIS:AddItem(spec5, "20599", LBIS.L["Ranged/Relic"], "Alt") --Polished Ironwood Crossbow
    LBIS:AddItem(spec5, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec5, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec5, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec5, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec5, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow

    LBIS:AddItem(spec6, "21329", LBIS.L["Head"], "BIS") --Conqueror's Crown
    LBIS:AddItem(spec6, "22418", LBIS.L["Head"], "BIS Mit") --Dreadnaught Helmet
    LBIS:AddItem(spec6, "16478", LBIS.L["Head"], "Alt") --Field Marshal's Plate Helm
    LBIS:AddItem(spec6, "16542", LBIS.L["Head"], "Alt") --Warlord's Plate Headpiece
    LBIS:AddItem(spec6, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec6, "21460", LBIS.L["Head"], "Alt") --Helm of Domination
    LBIS:AddItem(spec6, "21330", LBIS.L["Shoulder"], "BIS") --Conqueror's Spaulders
    LBIS:AddItem(spec6, "21639", LBIS.L["Shoulder"], "BIS Mit") --Pauldrons of the Unrelenting
    LBIS:AddItem(spec6, "16480", LBIS.L["Shoulder"], "Alt") --Field Marshal's Plate Shoulderguards
    LBIS:AddItem(spec6, "16544", LBIS.L["Shoulder"], "Alt") --Warlord's Plate Shoulders
    LBIS:AddItem(spec6, "22419", LBIS.L["Shoulder"], "Alt") --Dreadnaught Pauldrons
    LBIS:AddItem(spec6, "19394", LBIS.L["Shoulder"], "Alt") --Drake Talon Pauldrons
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "19386", LBIS.L["Back"], "BIS Mit") --Elementium Threaded Cloak
    LBIS:AddItem(spec6, "22938", LBIS.L["Back"], "BIS Mit") --Cryptfiend Silk Cloak
    LBIS:AddItem(spec6, "21621", LBIS.L["Back"], "Alt") --Cloak of the Golden Hive
    LBIS:AddItem(spec6, "23030", LBIS.L["Back"], "Alt") --Cloak of the Scourge
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "21394", LBIS.L["Back"], "Alt") --Drape of Unyielding Strength
    LBIS:AddItem(spec6, "21331", LBIS.L["Chest"], "BIS") --Conqueror's Breastplate
    LBIS:AddItem(spec6, "22416", LBIS.L["Chest"], "Alt") --Dreadnaught Breastplate
    LBIS:AddItem(spec6, "16477", LBIS.L["Chest"], "Alt") --Field Marshal's Plate Armor
    LBIS:AddItem(spec6, "16541", LBIS.L["Chest"], "Alt") --Warlord's Plate Armor
    LBIS:AddItem(spec6, "21814", LBIS.L["Chest"], "Alt") --Breastplate of Annihilation
    LBIS:AddItem(spec6, "19822", LBIS.L["Chest"], "Alt") --Zandalar Vindicator's Breastplate
    LBIS:AddItem(spec6, "22423", LBIS.L["Wrist"], "BIS") --Dreadnaught Bracers
    LBIS:AddItem(spec6, "21457", LBIS.L["Wrist"], "Alt") --Bracers of Brutality
    LBIS:AddItem(spec6, "16959", LBIS.L["Wrist"], "Alt") --Bracelets of Wrath
    LBIS:AddItem(spec6, "21618", LBIS.L["Wrist"], "Alt") --Hive Defiler Wristguards
    LBIS:AddItem(spec6, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec6, "19824", LBIS.L["Wrist"], "Alt") --Zandalar Vindicator's Armguards
    LBIS:AddItem(spec6, "21602", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec6, "21674", LBIS.L["Hands"], "BIS") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec6, "22421", LBIS.L["Hands"], "BIS Mit") --Dreadnaught Gauntlets
    LBIS:AddItem(spec6, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec6, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec6, "16484", LBIS.L["Hands"], "Alt") --Marshal's Plate Gauntlets
    LBIS:AddItem(spec6, "16548", LBIS.L["Hands"], "Alt") --General's Plate Gauntlets
    LBIS:AddItem(spec6, "23219", LBIS.L["Waist"], "BIS") --Girdle of the Mentor
    LBIS:AddItem(spec6, "21598", LBIS.L["Waist"], "BIS Mit") --Royal Qiraji Belt
    LBIS:AddItem(spec6, "22422", LBIS.L["Waist"], "BIS Mit") --Dreadnaught Waistguard
    LBIS:AddItem(spec6, "19137", LBIS.L["Waist"], "Alt") --Onslaught Girdle
    LBIS:AddItem(spec6, "21692", LBIS.L["Waist"], "Alt") --Triad Girdle
    LBIS:AddItem(spec6, "21332", LBIS.L["Legs"], "BIS") --Conqueror's Legguards
    LBIS:AddItem(spec6, "22417", LBIS.L["Legs"], "BIS Mit") --Dreadnaught Legplates
    LBIS:AddItem(spec6, "16479", LBIS.L["Legs"], "Alt") --Marshal's Plate Legguards
    LBIS:AddItem(spec6, "16543", LBIS.L["Legs"], "Alt") --General's Plate Leggings
    LBIS:AddItem(spec6, "22420", LBIS.L["Feet"], "BIS") --Dreadnaught Sabatons
    LBIS:AddItem(spec6, "21333", LBIS.L["Feet"], "Alt") --Conqueror's Greaves
    LBIS:AddItem(spec6, "16483", LBIS.L["Feet"], "Alt") --Marshal's Plate Boots
    LBIS:AddItem(spec6, "16545", LBIS.L["Feet"], "Alt") --General's Plate Boots
    LBIS:AddItem(spec6, "19387", LBIS.L["Feet"], "Alt") --Chromatic Boots
    LBIS:AddItem(spec6, "21688", LBIS.L["Feet"], "Alt") --Boots of the Fallen Hero
    LBIS:AddItem(spec6, "23023", LBIS.L["Neck"], "BIS") --Sadist's Collar
    LBIS:AddItem(spec6, "23053", LBIS.L["Neck"], "BIS") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec6, "22732", LBIS.L["Neck"], "BIS Mit") --Mark of C'Thun
    LBIS:AddItem(spec6, "21700", LBIS.L["Neck"], "Alt") --Pendant of the Qiraji Guardian
    LBIS:AddItem(spec6, "21506", LBIS.L["Neck"], "Alt") --Pendant of the Shifting Sands
    LBIS:AddItem(spec6, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec6, "21596", LBIS.L["Ring"], "BIS") --Ring of the Godslayer
    LBIS:AddItem(spec6, "19376", LBIS.L["Ring"], "BIS Mit") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec6, "23059", LBIS.L["Ring"], "Alt Mit") --Ring of the Dreadnaught
    LBIS:AddItem(spec6, "23018", LBIS.L["Ring"], "Alt Mit") --Signet of the Fallen Defender
    LBIS:AddItem(spec6, "21601", LBIS.L["Ring"], "Alt Mit") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec6, "21200", LBIS.L["Ring"], "Alt Mit") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec6, "23206", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec6, "23570", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec6, "20130", LBIS.L["Trinket"], "Alt") --Diamond Flask
    LBIS:AddItem(spec6, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec6, "19341", LBIS.L["Trinket"], "Alt") --Lifegiving Gem
    LBIS:AddItem(spec6, "19947", LBIS.L["Trinket"], "Alt") --Nat Pagle's Broken Reel
    LBIS:AddItem(spec6, "23577", LBIS.L["Main Hand/Off Hand"], "BIS") --The Hungering Cold
    LBIS:AddItem(spec6, "19019", LBIS.L["Main Hand/Off Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec6, "22802", LBIS.L["Main Hand"], "BIS") --Kingsfall
    LBIS:AddItem(spec6, "21126", LBIS.L["Main Hand/Off Hand"], "BIS") --Death's Sting
    LBIS:AddItem(spec6, "23044", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Harbinger of Doom
    LBIS:AddItem(spec6, "23014", LBIS.L["Main Hand/Off Hand"], "Alt") --Iblis, Blade of the Fallen Seraph
    LBIS:AddItem(spec6, "22806", LBIS.L["Main Hand/Off Hand"], "Alt") --Widow's Remorse
    LBIS:AddItem(spec6, "23456", LBIS.L["Main Hand/Off Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec6, "23467", LBIS.L["Main Hand/Off Hand"], "Alt") --High Warlord's Quickblade
    LBIS:AddItem(spec6, "19865", LBIS.L["Main Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec6, "21520", LBIS.L["Main Hand/Off Hand"], "Alt") --Ravencrest's Legacy
    LBIS:AddItem(spec6, "19351", LBIS.L["Main Hand/Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec6, "19168", LBIS.L["Main Hand"], "Alt") --Blackguard
    LBIS:AddItem(spec6, "22804", LBIS.L["Main Hand/Off Hand"], "Alt") --Maexxna's Fang
    LBIS:AddItem(spec6, "21244", LBIS.L["Main Hand/Off Hand"], "Alt") --Blessed Qiraji Pugio
    LBIS:AddItem(spec6, "21522", LBIS.L["Main Hand/Off Hand"], "Alt") --Shadowsong's Sorrow
    LBIS:AddItem(spec6, "18838", LBIS.L["Main Hand/Off Hand"], "Alt") --Grand Marshal's Dirk
    LBIS:AddItem(spec6, "18840", LBIS.L["Main Hand/Off Hand"], "Alt") --High Warlord's Razor
    LBIS:AddItem(spec6, "23043", LBIS.L["Off Hand"], "BIS") --The Face of Death
    LBIS:AddItem(spec6, "18825", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Aegis
    LBIS:AddItem(spec6, "18826", LBIS.L["Off Hand"], "Alt") --High Warlord's Shield Wall
    LBIS:AddItem(spec6, "22818", LBIS.L["Off Hand"], "Alt") --The Plague Bearer
    LBIS:AddItem(spec6, "21269", LBIS.L["Off Hand"], "Alt") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec6, "19349", LBIS.L["Off Hand"], "Alt") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec6, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec6, "19352", LBIS.L["Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec6, "21459", LBIS.L["Ranged/Relic"], "BIS") --Crossbow of Imminent Doom
    LBIS:AddItem(spec6, "22811", LBIS.L["Ranged/Relic"], "BIS") --Soulstring
    LBIS:AddItem(spec6, "22810", LBIS.L["Ranged/Relic"], "BIS") --Toxin Injector
    LBIS:AddItem(spec6, "19350", LBIS.L["Ranged/Relic"], "BIS") --Heartstriker
    LBIS:AddItem(spec6, "19368", LBIS.L["Ranged/Relic"], "Alt") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec6, "20038", LBIS.L["Ranged/Relic"], "Alt") --Mandokir's Sting
    LBIS:AddItem(spec6, "20599", LBIS.L["Ranged/Relic"], "Alt") --Polished Ironwood Crossbow
    LBIS:AddItem(spec6, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec6, "17069", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec6, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec6, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
end
if not LBIS.IsSOD then
    LoadData();
end
