function LBIS:LoadWarriorProtection()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "0", "https://www.wowhead.com/forever/guide/classes/warrior/protection/tank-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "1", "https://www.wowhead.com/forever/guide/classes/warrior/protection/tank-talent-builds-pve")

    LBIS:AddEnchant(spec0, "24149", LBIS.L["Head"].."~"..LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec0, "29480", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "25086", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25072", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec0, "23800", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec0, "3975", LBIS.L["Ranged"]) --
    LBIS:AddEnchant(spec0, "12460", LBIS.L["Ranged"]) --

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
    LBIS:AddItem(spec1, "17072", LBIS.L["Ranged"], "BIS") --Blastershot Launcher
    LBIS:AddItem(spec1, "16996", LBIS.L["Ranged"], "Alt") --Gorewood Bow
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
    LBIS:AddItem(spec1, "12653", LBIS.L["Ranged"], "Alt") --Riphook
end
