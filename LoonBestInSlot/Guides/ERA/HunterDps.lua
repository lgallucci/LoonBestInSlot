local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "7")

    LBIS:AddEnchant(spec3, "15402", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "7779", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "20012", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "15402", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "20030", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "12460", LBIS.L["Ranged/Relic"]) --
    LBIS:AddEnchant(spec3, "22779", LBIS.L["Ranged/Relic"]) --
    LBIS:AddEnchant(spec3, "23800", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "23800", LBIS.L["Off Hand"]) --

    LBIS:AddItem(spec1, "16939", LBIS.L["Head"], "BIS") --Dragonstalker's Helm
    LBIS:AddItem(spec1, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec1, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec1, "16848", LBIS.L["Shoulder"], "BIS") --Giantstalker's Epaulets
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec1, "17102", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec1, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec1, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec1, "16845", LBIS.L["Chest"], "BIS") --Giantstalker's Breastplate
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec1, "16850", LBIS.L["Wrist"], "BIS") --Giantstalker's Bracers
    LBIS:AddItem(spec1, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec1, "16710", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec1, "16852", LBIS.L["Hands"], "BIS") --Giantstalker's Gloves
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "16676", LBIS.L["Hands"], "Alt") --Beaststalker's Gloves
    LBIS:AddItem(spec1, "13395", LBIS.L["Hands"], "Alt") --Skul's Fingerbone Claws
    LBIS:AddItem(spec1, "16851", LBIS.L["Waist"], "BIS") --Giantstalker's Belt
    LBIS:AddItem(spec1, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec1, "16713", LBIS.L["Waist"], "Alt") --Shadowcraft Belt
    LBIS:AddItem(spec1, "16938", LBIS.L["Legs"], "BIS") --Dragonstalker's Legguards
    LBIS:AddItem(spec1, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec1, "12963", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec1, "16849", LBIS.L["Feet"], "BIS") --Giantstalker's Boots
    LBIS:AddItem(spec1, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec1, "16675", LBIS.L["Feet"], "Alt") --Beaststalker's Boots
    LBIS:AddItem(spec1, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "12940", LBIS.L["Main Hand"], "BIS") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec1, "12939", LBIS.L["Main Hand"], "BIS") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec1, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec1, "18832", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec1, "18805", LBIS.L["Main Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec1, "18715", LBIS.L["Two Hand"], "BIS") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec1, "18725", LBIS.L["Two Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec1, "13052", LBIS.L["Two Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec1, "18713", LBIS.L["Ranged/Relic"], "BIS") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec1, "2099", LBIS.L["Ranged/Relic"], "Alt") --Dwarven Hand Cannon
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow

    LBIS:AddItem(spec2, "23306", LBIS.L["Head"], "BIS") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec2, "23251", LBIS.L["Head"], "BIS") --Champion's Chain Helm
    LBIS:AddItem(spec2, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec2, "16939", LBIS.L["Head"], "Alt") --Dragonstalker's Helm
    LBIS:AddItem(spec2, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec2, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec2, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "16848", LBIS.L["Shoulder"], "BIS") --Giantstalker's Epaulets
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec2, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec2, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec2, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec2, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec2, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec2, "23292", LBIS.L["Chest"], "BIS") --Knight-Captain's Chain Hauberk
    LBIS:AddItem(spec2, "22874", LBIS.L["Chest"], "BIS") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec2, "16845", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec2, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec2, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec2, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec2, "16850", LBIS.L["Wrist"], "BIS") --Giantstalker's Bracers
    LBIS:AddItem(spec2, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec2, "16710", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec2, "16852", LBIS.L["Hands"], "BIS") --Giantstalker's Gloves
    LBIS:AddItem(spec2, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec2, "16676", LBIS.L["Hands"], "Alt") --Beaststalker's Gloves
    LBIS:AddItem(spec2, "13395", LBIS.L["Hands"], "Alt") --Skul's Fingerbone Claws
    LBIS:AddItem(spec2, "16851", LBIS.L["Waist"], "BIS") --Giantstalker's Belt
    LBIS:AddItem(spec2, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec2, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec2, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec2, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec2, "16938", LBIS.L["Legs"], "BIS") --Dragonstalker's Legguards
    LBIS:AddItem(spec2, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec2, "23293", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legguards
    LBIS:AddItem(spec2, "22875", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legguards
    LBIS:AddItem(spec2, "18736", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec2, "12903", LBIS.L["Legs"], "Alt") --Legguards of the Chromatic Defier
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec2, "12963", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec2, "16849", LBIS.L["Feet"], "BIS") --Giantstalker's Boots
    LBIS:AddItem(spec2, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec2, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec2, "16675", LBIS.L["Feet"], "Alt") --Beaststalker's Boots
    LBIS:AddItem(spec2, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "18701", LBIS.L["Ring"], "Alt") --Innervating Band
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec2, "18473", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "18832", LBIS.L["Main Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec2, "18805", LBIS.L["Main Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec2, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec2, "12774", LBIS.L["Main Hand"], "Alt") --Dawn's Edge
    LBIS:AddItem(spec2, "13036", LBIS.L["Main Hand"], "Alt") --Assassination Blade
    LBIS:AddItem(spec2, "12939", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec2, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec2, "18520", LBIS.L["Two Hand"], "BIS") --Barbarous Blade
    LBIS:AddItem(spec2, "18725", LBIS.L["Two Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec2, "13052", LBIS.L["Two Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec2, "18715", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec2, "18713", LBIS.L["Ranged/Relic"], "BIS") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec2, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec2, "18738", LBIS.L["Ranged/Relic"], "Alt") --Carapace Spine Crossbow
    LBIS:AddItem(spec2, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec2, "13040", LBIS.L["Ranged/Relic"], "Alt") --Heartseeking Crossbow

    LBIS:AddItem(spec3, "16465", LBIS.L["Head"], "BIS") --Field Marshal's Chain Helm
    LBIS:AddItem(spec3, "16566", LBIS.L["Head"], "BIS") --Warlord's Chain Helmet
    LBIS:AddItem(spec3, "16939", LBIS.L["Head"], "BIS") --Dragonstalker's Helm
    LBIS:AddItem(spec3, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec3, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec3, "23251", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec3, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec3, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec3, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec3, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec3, "16937", LBIS.L["Shoulder"], "BIS") --Dragonstalker's Spaulders
    LBIS:AddItem(spec3, "16468", LBIS.L["Shoulder"], "BIS") --Field Marshal's Chain Spaulders
    LBIS:AddItem(spec3, "16568", LBIS.L["Shoulder"], "BIS") --Warlord's Chain Shoulders
    LBIS:AddItem(spec3, "16848", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec3, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec3, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec3, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec3, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec3, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec3, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec3, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec3, "19398", LBIS.L["Back"], "Alt") --Cloak of Firemaw
    LBIS:AddItem(spec3, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "16942", LBIS.L["Chest"], "BIS") --Dragonstalker's Breastplate
    LBIS:AddItem(spec3, "16466", LBIS.L["Chest"], "BIS") --Field Marshal's Chain Breastplate
    LBIS:AddItem(spec3, "16565", LBIS.L["Chest"], "BIS") --Warlord's Chain Chestpiece
    LBIS:AddItem(spec3, "16845", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec3, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec3, "23292", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Hauberk
    LBIS:AddItem(spec3, "22874", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec3, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec3, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec3, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec3, "16935", LBIS.L["Wrist"], "BIS") --Dragonstalker's Bracers
    LBIS:AddItem(spec3, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec3, "16850", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec3, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec3, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec3, "16710", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec3, "16940", LBIS.L["Hands"], "BIS") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec3, "16571", LBIS.L["Hands"], "BIS") --General's Chain Gloves
    LBIS:AddItem(spec3, "16463", LBIS.L["Hands"], "BIS") --Marshal's Chain Grips
    LBIS:AddItem(spec3, "16852", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec3, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec3, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec3, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec3, "16676", LBIS.L["Hands"], "Alt") --Beaststalker's Gloves
    LBIS:AddItem(spec3, "13395", LBIS.L["Hands"], "Alt") --Skul's Fingerbone Claws
    LBIS:AddItem(spec3, "16936", LBIS.L["Waist"], "BIS") --Dragonstalker's Belt
    LBIS:AddItem(spec3, "16851", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec3, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec3, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec3, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec3, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec3, "16467", LBIS.L["Legs"], "BIS") --Marshal's Chain Legguards
    LBIS:AddItem(spec3, "16567", LBIS.L["Legs"], "BIS") --General's Chain Legguards
    LBIS:AddItem(spec3, "16938", LBIS.L["Legs"], "BIS") --Dragonstalker's Legguards
    LBIS:AddItem(spec3, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec3, "23293", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legguards
    LBIS:AddItem(spec3, "22875", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legguards
    LBIS:AddItem(spec3, "18736", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec3, "12903", LBIS.L["Legs"], "Alt") --Legguards of the Chromatic Defier
    LBIS:AddItem(spec3, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec3, "12963", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec3, "16941", LBIS.L["Feet"], "BIS") --Dragonstalker's Greaves
    LBIS:AddItem(spec3, "16462", LBIS.L["Feet"], "BIS") --Marshal's Chain Boots
    LBIS:AddItem(spec3, "16569", LBIS.L["Feet"], "BIS") --General's Chain Sabatons
    LBIS:AddItem(spec3, "16849", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec3, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec3, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec3, "16675", LBIS.L["Feet"], "Alt") --Beaststalker's Boots
    LBIS:AddItem(spec3, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec3, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec3, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec3, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec3, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec3, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec3, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec3, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "18701", LBIS.L["Ring"], "Alt") --Innervating Band
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec3, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec3, "16345", LBIS.L["Main Hand"], "BIS") --High Warlord's Blade
    LBIS:AddItem(spec3, "18828", LBIS.L["Main Hand"], "BIS") --High Warlord's Cleaver
    LBIS:AddItem(spec3, "18832", LBIS.L["Main Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec3, "18805", LBIS.L["Main Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec3, "19362", LBIS.L["Main Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec3, "19363", LBIS.L["Main Hand"], "Alt") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec3, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec3, "12774", LBIS.L["Main Hand"], "Alt") --Dawn's Edge
    LBIS:AddItem(spec3, "13036", LBIS.L["Main Hand"], "Alt") --Assassination Blade
    LBIS:AddItem(spec3, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec3, "12939", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec3, "19364", LBIS.L["Two Hand"], "BIS") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec3, "18520", LBIS.L["Two Hand"], "Alt") --Barbarous Blade
    LBIS:AddItem(spec3, "18725", LBIS.L["Two Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec3, "13052", LBIS.L["Two Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec3, "18715", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec3, "19361", LBIS.L["Ranged/Relic"], "BIS") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec3, "18713", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec3, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec3, "18738", LBIS.L["Ranged/Relic"], "Alt") --Carapace Spine Crossbow
    LBIS:AddItem(spec3, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec3, "13040", LBIS.L["Ranged/Relic"], "Alt") --Heartseeking Crossbow
end
if not LBIS.IsSOD then
    LoadData();
end
