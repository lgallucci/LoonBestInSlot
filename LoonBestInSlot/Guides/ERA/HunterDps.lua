local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["DPS"], "8")

    LBIS:AddEnchant(spec6, "24162", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "7779", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "27837", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec6, "22779", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec0, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec0, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec0, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec0, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec0, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec0, "16674", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec0, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec0, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec0, "16681", LBIS.L["Wrist"], "Alt") --Beaststalker's Bindings
    LBIS:AddItem(spec0, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec0, "13255", LBIS.L["Hands"], "Alt") --Trueaim Gauntlets
    LBIS:AddItem(spec0, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec0, "16680", LBIS.L["Waist"], "Alt") --Beaststalker's Belt
    LBIS:AddItem(spec0, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec0, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec0, "15052", LBIS.L["Legs"], "Alt") --Black Dragonscale Leggings
    LBIS:AddItem(spec0, "16678", LBIS.L["Legs"], "Alt") --Beaststalker's Pants
    LBIS:AddItem(spec0, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec0, "16675", LBIS.L["Feet"], "Alt") --Beaststalker's Boots
    LBIS:AddItem(spec0, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec0, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "18520", LBIS.L["Main Hand"], "Alt") --Barbarous Blade
    LBIS:AddItem(spec0, "18725", LBIS.L["Main Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec0, "13052", LBIS.L["Main Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec0, "18738", LBIS.L["Ranged"], "Alt") --Carapace Spine Crossbow
    LBIS:AddItem(spec0, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
    LBIS:AddItem(spec0, "18680", LBIS.L["Ranged"], "Alt") --Ancient Bone Bow
    LBIS:AddItem(spec0, "2099", LBIS.L["Ranged"], "Alt") --Dwarven Hand Cannon
    LBIS:AddItem(spec0, "2662", LBIS.L["Ranged"], "Alt") --Ribbly's Quiver
    LBIS:AddItem(spec0, "12654", LBIS.L["Ranged"], "Alt") --Doomshot
    LBIS:AddItem(spec0, "15997", LBIS.L["Ranged"], "Alt") --Thorium Shells
    LBIS:AddItem(spec0, "18042", LBIS.L["Ranged"], "Alt") --Thorium Headed Arrow

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

    LBIS:AddItem(spec4, "16465", LBIS.L["Head"], "BIS") --Field Marshal's Chain Helm
    LBIS:AddItem(spec4, "16566", LBIS.L["Head"], "BIS") --Warlord's Chain Helmet
    LBIS:AddItem(spec4, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec4, "23251", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec4, "16939", LBIS.L["Head"], "Alt") --Dragonstalker's Helm
    LBIS:AddItem(spec4, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec4, "22013", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec4, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec4, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec4, "16468", LBIS.L["Shoulder"], "BIS") --Field Marshal's Chain Spaulders
    LBIS:AddItem(spec4, "16568", LBIS.L["Shoulder"], "BIS") --Warlord's Chain Shoulders
    LBIS:AddItem(spec4, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec4, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec4, "16937", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Spaulders
    LBIS:AddItem(spec4, "16848", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec4, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec4, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "BIS") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "BIS") --Deathguard's Cloak
    LBIS:AddItem(spec4, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "19436", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec4, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec4, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec4, "16466", LBIS.L["Chest"], "BIS") --Field Marshal's Chain Breastplate
    LBIS:AddItem(spec4, "16565", LBIS.L["Chest"], "BIS") --Warlord's Chain Chestpiece
    LBIS:AddItem(spec4, "16942", LBIS.L["Chest"], "Alt") --Dragonstalker's Breastplate
    LBIS:AddItem(spec4, "16845", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec4, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec4, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec4, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec4, "16935", LBIS.L["Wrist"], "Alt") --Dragonstalker's Bracers
    LBIS:AddItem(spec4, "16850", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec4, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "22011", LBIS.L["Wrist"], "Alt") --Beastmaster's Bindings
    LBIS:AddItem(spec4, "16463", LBIS.L["Hands"], "BIS") --Marshal's Chain Grips
    LBIS:AddItem(spec4, "16571", LBIS.L["Hands"], "BIS") --General's Chain Gloves
    LBIS:AddItem(spec4, "16940", LBIS.L["Hands"], "Alt") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec4, "16852", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec4, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec4, "22015", LBIS.L["Hands"], "Alt") --Beastmaster's Gloves
    LBIS:AddItem(spec4, "13395", LBIS.L["Hands"], "Alt") --Skul's Fingerbone Claws
    LBIS:AddItem(spec4, "16851", LBIS.L["Waist"], "BIS") --Giantstalker's Belt
    LBIS:AddItem(spec4, "16936", LBIS.L["Waist"], "Alt") --Dragonstalker's Belt
    LBIS:AddItem(spec4, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec4, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec4, "22232", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec4, "16467", LBIS.L["Legs"], "BIS") --Marshal's Chain Legguards
    LBIS:AddItem(spec4, "16567", LBIS.L["Legs"], "BIS") --General's Chain Legguards
    LBIS:AddItem(spec4, "16938", LBIS.L["Legs"], "Alt") --Dragonstalker's Legguards
    LBIS:AddItem(spec4, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec4, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec4, "12963", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec4, "22017", LBIS.L["Legs"], "Alt") --Beastmaster's Pants
    LBIS:AddItem(spec4, "16462", LBIS.L["Feet"], "BIS") --Marshal's Chain Boots
    LBIS:AddItem(spec4, "16569", LBIS.L["Feet"], "BIS") --General's Chain Sabatons
    LBIS:AddItem(spec4, "16941", LBIS.L["Feet"], "Alt") --Dragonstalker's Greaves
    LBIS:AddItem(spec4, "16849", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec4, "22061", LBIS.L["Feet"], "Alt") --Beastmaster's Boots
    LBIS:AddItem(spec4, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec4, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec4, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec4, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec4, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec4, "23570", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec4, "21180", LBIS.L["Trinket"], "BIS") --Earthstrike
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec4, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec4, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec4, "16345", LBIS.L["Main Hand"], "BIS") --High Warlord's Blade
    LBIS:AddItem(spec4, "18832", LBIS.L["Main Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec4, "18805", LBIS.L["Main Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec4, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec4, "12939", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec4, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec4, "18520", LBIS.L["Two Hand"], "BIS") --Barbarous Blade
    LBIS:AddItem(spec4, "19364", LBIS.L["Two Hand"], "BIS") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec4, "18715", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec4, "13052", LBIS.L["Two Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec4, "18725", LBIS.L["Two Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec4, "19361", LBIS.L["Ranged/Relic"], "BIS") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec4, "18713", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec4, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec4, "13040", LBIS.L["Ranged/Relic"], "Alt") --Heartseeking Crossbow
    LBIS:AddItem(spec4, "2099", LBIS.L["Ranged/Relic"], "Alt") --Dwarven Hand Cannon
    LBIS:AddItem(spec4, "18738", LBIS.L["Ranged/Relic"], "Alt") --Carapace Spine Crossbow

    LBIS:AddItem(spec5, "16465", LBIS.L["Head"], "BIS") --Field Marshal's Chain Helm
    LBIS:AddItem(spec5, "16566", LBIS.L["Head"], "BIS") --Warlord's Chain Helmet
    LBIS:AddItem(spec5, "16939", LBIS.L["Head"], "BIS") --Dragonstalker's Helm
    LBIS:AddItem(spec5, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec5, "23251", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec5, "21366", LBIS.L["Head"], "Alt") --Striker's Diadem
    LBIS:AddItem(spec5, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec5, "19875", LBIS.L["Head"], "Alt") --Bloodstained Coif
    LBIS:AddItem(spec5, "22013", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec5, "22718", LBIS.L["Head"], "Alt") --Blooddrenched Mask
    LBIS:AddItem(spec5, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec5, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec5, "16468", LBIS.L["Shoulder"], "BIS") --Field Marshal's Chain Spaulders
    LBIS:AddItem(spec5, "16568", LBIS.L["Shoulder"], "BIS") --Warlord's Chain Shoulders
    LBIS:AddItem(spec5, "16937", LBIS.L["Shoulder"], "BIS") --Dragonstalker's Spaulders
    LBIS:AddItem(spec5, "21665", LBIS.L["Shoulder"], "Alt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec5, "21474", LBIS.L["Shoulder"], "Alt") --Chitinous Shoulderguards
    LBIS:AddItem(spec5, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec5, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec5, "16848", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec5, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec5, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec5, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec5, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "19436", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "19907", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec5, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec5, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec5, "16565", LBIS.L["Chest"], "BIS") --Warlord's Chain Chestpiece
    LBIS:AddItem(spec5, "16466", LBIS.L["Chest"], "BIS") --Field Marshal's Chain Breastplate
    LBIS:AddItem(spec5, "16942", LBIS.L["Chest"], "BIS") --Dragonstalker's Breastplate
    LBIS:AddItem(spec5, "21370", LBIS.L["Chest"], "Alt") --Striker's Hauberk
    LBIS:AddItem(spec5, "16845", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec5, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec5, "19904", LBIS.L["Chest"], "Alt") --Runed Bloodstained Hauberk
    LBIS:AddItem(spec5, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec5, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec5, "16935", LBIS.L["Wrist"], "BIS") --Dragonstalker's Bracers
    LBIS:AddItem(spec5, "16850", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec5, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec5, "19833", LBIS.L["Wrist"], "Alt") --Zandalar Predator's Bracers
    LBIS:AddItem(spec5, "22011", LBIS.L["Wrist"], "Alt") --Beastmaster's Bindings
    LBIS:AddItem(spec5, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec5, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec5, "16463", LBIS.L["Hands"], "BIS") --Marshal's Chain Grips
    LBIS:AddItem(spec5, "16571", LBIS.L["Hands"], "BIS") --General's Chain Gloves
    LBIS:AddItem(spec5, "16940", LBIS.L["Hands"], "BIS") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec5, "21599", LBIS.L["Hands"], "Alt") --Vek'lor's Gloves of Devastation
    LBIS:AddItem(spec5, "22715", LBIS.L["Hands"], "Alt") --Gloves of the Tormented
    LBIS:AddItem(spec5, "16852", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec5, "22015", LBIS.L["Hands"], "Alt") --Beastmaster's Gloves
    LBIS:AddItem(spec5, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec5, "13395", LBIS.L["Hands"], "Alt") --Skul's Fingerbone Claws
    LBIS:AddItem(spec5, "16936", LBIS.L["Waist"], "BIS") --Dragonstalker's Belt
    LBIS:AddItem(spec5, "21463", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec5, "16851", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec5, "19832", LBIS.L["Waist"], "Alt") --Zandalar Predator's Belt
    LBIS:AddItem(spec5, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec5, "22232", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec5, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec5, "16467", LBIS.L["Legs"], "BIS") --Marshal's Chain Legguards
    LBIS:AddItem(spec5, "16567", LBIS.L["Legs"], "BIS") --General's Chain Legguards
    LBIS:AddItem(spec5, "16938", LBIS.L["Legs"], "BIS") --Dragonstalker's Legguards
    LBIS:AddItem(spec5, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec5, "19887", LBIS.L["Legs"], "Alt") --Bloodstained Legplates
    LBIS:AddItem(spec5, "22017", LBIS.L["Legs"], "Alt") --Beastmaster's Pants
    LBIS:AddItem(spec5, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec5, "12963", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec5, "16462", LBIS.L["Feet"], "BIS") --Marshal's Chain Boots
    LBIS:AddItem(spec5, "16569", LBIS.L["Feet"], "BIS") --General's Chain Sabatons
    LBIS:AddItem(spec5, "16941", LBIS.L["Feet"], "BIS") --Dragonstalker's Greaves
    LBIS:AddItem(spec5, "16849", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec5, "22061", LBIS.L["Feet"], "Alt") --Beastmaster's Boots
    LBIS:AddItem(spec5, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec5, "19919", LBIS.L["Feet"], "Alt") --Bloodstained Greaves
    LBIS:AddItem(spec5, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec5, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec5, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec5, "21596", LBIS.L["Ring"], "BIS") --Ring of the Godslayer
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19925", LBIS.L["Ring"], "Alt") --Band of Jin
    LBIS:AddItem(spec5, "19898", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec5, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec5, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec5, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec5, "23570", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec5, "19953", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Beasts
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS") --Earthstrike
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec5, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec5, "21673", LBIS.L["Main Hand"], "BIS") --Silithid Claw
    LBIS:AddItem(spec5, "19859", LBIS.L["Main Hand"], "BIS") --Fang of the Faceless
    LBIS:AddItem(spec5, "19865", LBIS.L["Main Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "12584", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Longsword
    LBIS:AddItem(spec5, "16345", LBIS.L["Main Hand"], "Alt") --High Warlord's Blade
    LBIS:AddItem(spec5, "18832", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "18805", LBIS.L["Main Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec5, "19866", LBIS.L["Main Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec5, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec5, "10761", LBIS.L["Main Hand"], "Alt") --Coldrage Dagger
    LBIS:AddItem(spec5, "13984", LBIS.L["Main Hand"], "Alt") --Darrowspike
    LBIS:AddItem(spec5, "18520", LBIS.L["Two Hand"], "BIS") --Barbarous Blade
    LBIS:AddItem(spec5, "21635", LBIS.L["Two Hand"], "BIS") --Barb of the Sand Reaver
    LBIS:AddItem(spec5, "19364", LBIS.L["Two Hand"], "Alt") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec5, "19854", LBIS.L["Two Hand"], "Alt") --Zin'rokh, Destroyer of Worlds
    LBIS:AddItem(spec5, "18715", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec5, "18725", LBIS.L["Two Hand"], "Alt") --Peacemaker
    LBIS:AddItem(spec5, "13052", LBIS.L["Two Hand"], "Alt") --Warmonger
    LBIS:AddItem(spec5, "19361", LBIS.L["Ranged/Relic"], "BIS") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec5, "23557", LBIS.L["Ranged/Relic"], "Alt") --Larvae of the Great Worm
    LBIS:AddItem(spec5, "18713", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec5, "21459", LBIS.L["Ranged/Relic"], "Alt") --Crossbow of Imminent Doom
    LBIS:AddItem(spec5, "22347", LBIS.L["Ranged/Relic"], "Alt") --Fahrad's Reloading Repeater
    LBIS:AddItem(spec5, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec5, "13040", LBIS.L["Ranged/Relic"], "Alt") --Heartseeking Crossbow
    LBIS:AddItem(spec5, "2099", LBIS.L["Ranged/Relic"], "Alt") --Dwarven Hand Cannon
    LBIS:AddItem(spec5, "18738", LBIS.L["Ranged/Relic"], "Alt") --Carapace Spine Crossbow

    LBIS:AddItem(spec6, "22438", LBIS.L["Head"], "BIS") --Cryptstalker Headpiece
    LBIS:AddItem(spec6, "16465", LBIS.L["Head"], "BIS") --Field Marshal's Chain Helm
    LBIS:AddItem(spec6, "16566", LBIS.L["Head"], "BIS") --Warlord's Chain Helmet
    LBIS:AddItem(spec6, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec6, "23251", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec6, "21366", LBIS.L["Head"], "Alt") --Striker's Diadem
    LBIS:AddItem(spec6, "16846", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec6, "19875", LBIS.L["Head"], "Alt") --Bloodstained Coif
    LBIS:AddItem(spec6, "22013", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec6, "22718", LBIS.L["Head"], "Alt") --Blooddrenched Mask
    LBIS:AddItem(spec6, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec6, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec6, "22439", LBIS.L["Shoulder"], "BIS") --Cryptstalker Spaulders
    LBIS:AddItem(spec6, "16468", LBIS.L["Shoulder"], "Alt") --Field Marshal's Chain Spaulders
    LBIS:AddItem(spec6, "16568", LBIS.L["Shoulder"], "Alt") --Warlord's Chain Shoulders
    LBIS:AddItem(spec6, "16937", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Spaulders
    LBIS:AddItem(spec6, "21665", LBIS.L["Shoulder"], "Alt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec6, "21474", LBIS.L["Shoulder"], "Alt") --Chitinous Shoulderguards
    LBIS:AddItem(spec6, "21699", LBIS.L["Shoulder"], "Alt") --Barrage Shoulders
    LBIS:AddItem(spec6, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec6, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec6, "16848", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec6, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec6, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec6, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "23045", LBIS.L["Back"], "BIS") --Shroud of Dominion
    LBIS:AddItem(spec6, "21403", LBIS.L["Back"], "Alt") --Cloak of the Unseen Path
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "21187", LBIS.L["Back"], "Alt") --Earthweave Cloak
    LBIS:AddItem(spec6, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec6, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec6, "19436", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec6, "19907", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec6, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec6, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec6, "22436", LBIS.L["Chest"], "BIS") --Cryptstalker Tunic
    LBIS:AddItem(spec6, "21370", LBIS.L["Chest"], "Alt") --Striker's Hauberk
    LBIS:AddItem(spec6, "16942", LBIS.L["Chest"], "Alt") --Dragonstalker's Breastplate
    LBIS:AddItem(spec6, "16466", LBIS.L["Chest"], "Alt") --Field Marshal's Chain Breastplate
    LBIS:AddItem(spec6, "16565", LBIS.L["Chest"], "Alt") --Warlord's Chain Chestpiece
    LBIS:AddItem(spec6, "22874", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec6, "22443", LBIS.L["Wrist"], "BIS") --Cryptstalker Wristguards
    LBIS:AddItem(spec6, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec6, "16935", LBIS.L["Wrist"], "Alt") --Dragonstalker's Bracers
    LBIS:AddItem(spec6, "16850", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec6, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec6, "22011", LBIS.L["Wrist"], "Alt") --Beastmaster's Bindings
    LBIS:AddItem(spec6, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec6, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec6, "16571", LBIS.L["Hands"], "BIS") --General's Chain Gloves
    LBIS:AddItem(spec6, "16463", LBIS.L["Hands"], "BIS") --Marshal's Chain Grips
    LBIS:AddItem(spec6, "22441", LBIS.L["Hands"], "Alt") --Cryptstalker Handguards
    LBIS:AddItem(spec6, "21599", LBIS.L["Hands"], "Alt") --Vek'lor's Gloves of Devastation
    LBIS:AddItem(spec6, "16940", LBIS.L["Hands"], "Alt") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec6, "16852", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec6, "22715", LBIS.L["Hands"], "Alt") --Gloves of the Tormented
    LBIS:AddItem(spec6, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec6, "22442", LBIS.L["Waist"], "BIS") --Cryptstalker Girdle
    LBIS:AddItem(spec6, "21463", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec6, "16936", LBIS.L["Waist"], "Alt") --Dragonstalker's Belt
    LBIS:AddItem(spec6, "16851", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec6, "19832", LBIS.L["Waist"], "Alt") --Zandalar Predator's Belt
    LBIS:AddItem(spec6, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec6, "22232", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec6, "23071", LBIS.L["Legs"], "BIS") --Leggings of Apocalypse
    LBIS:AddItem(spec6, "22437", LBIS.L["Legs"], "BIS") --Cryptstalker Legguards
    LBIS:AddItem(spec6, "22673", LBIS.L["Legs"], "Alt") --Outrider's Chain Leggings
    LBIS:AddItem(spec6, "22748", LBIS.L["Legs"], "Alt") --Sentinel's Chain Leggings
    LBIS:AddItem(spec6, "16467", LBIS.L["Legs"], "Alt") --Marshal's Chain Legguards
    LBIS:AddItem(spec6, "16567", LBIS.L["Legs"], "Alt") --General's Chain Legguards
    LBIS:AddItem(spec6, "16938", LBIS.L["Legs"], "Alt") --Dragonstalker's Legguards
    LBIS:AddItem(spec6, "21368", LBIS.L["Legs"], "Alt") --Striker's Leggings
    LBIS:AddItem(spec6, "16847", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec6, "19887", LBIS.L["Legs"], "Alt") --Bloodstained Legplates
    LBIS:AddItem(spec6, "22017", LBIS.L["Legs"], "Alt") --Beastmaster's Pants
    LBIS:AddItem(spec6, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec6, "22440", LBIS.L["Feet"], "BIS") --Cryptstalker Boots
    LBIS:AddItem(spec6, "16462", LBIS.L["Feet"], "Alt") --Marshal's Chain Boots
    LBIS:AddItem(spec6, "16569", LBIS.L["Feet"], "Alt") --General's Chain Sabatons
    LBIS:AddItem(spec6, "21365", LBIS.L["Feet"], "Alt") --Striker's Footguards
    LBIS:AddItem(spec6, "16941", LBIS.L["Feet"], "Alt") --Dragonstalker's Greaves
    LBIS:AddItem(spec6, "16849", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec6, "22061", LBIS.L["Feet"], "Alt") --Beastmaster's Boots
    LBIS:AddItem(spec6, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec6, "19919", LBIS.L["Feet"], "Alt") --Bloodstained Greaves
    LBIS:AddItem(spec6, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec6, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "23053", LBIS.L["Neck"], "Alt") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec6, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec6, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec6, "23038", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec6, "22961", LBIS.L["Ring"], "BIS") --Band of Reanimation
    LBIS:AddItem(spec6, "23067", LBIS.L["Ring"], "BIS") --Ring of the Cryptstalker
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "21596", LBIS.L["Ring"], "Alt") --Ring of the Godslayer
    LBIS:AddItem(spec6, "21677", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "19925", LBIS.L["Ring"], "Alt") --Band of Jin
    LBIS:AddItem(spec6, "19898", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec6, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec6, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec6, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec6, "23206", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "19953", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Beasts
    LBIS:AddItem(spec6, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "Alt") --Kiss of the Spider
    LBIS:AddItem(spec6, "23570", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec6, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec6, "13209", LBIS.L["Trinket"], "Alt") --Seal of the Dawn
    LBIS:AddItem(spec6, "22802", LBIS.L["Main Hand/Off Hand"], "BIS") --Kingsfall
    LBIS:AddItem(spec6, "23044", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Harbinger of Doom
    LBIS:AddItem(spec6, "23014", LBIS.L["Main Hand/Off Hand"], "Alt") --Iblis, Blade of the Fallen Seraph
    LBIS:AddItem(spec6, "21244", LBIS.L["Main Hand/Off Hand"], "Alt") --Blessed Qiraji Pugio
    LBIS:AddItem(spec6, "22816", LBIS.L["Main Hand/Off Hand"], "Alt") --Hatchet of Sundered Bone
    LBIS:AddItem(spec6, "23242", LBIS.L["Off Hand"], "BIS") --Claw of the Frost Wyrm
    LBIS:AddItem(spec6, "23039", LBIS.L["Two Hand"], "BIS") --The Eye of Nerub
    LBIS:AddItem(spec6, "22815", LBIS.L["Two Hand"], "Alt") --Severance
    LBIS:AddItem(spec6, "21635", LBIS.L["Two Hand"], "Alt") --Barb of the Sand Reaver
    LBIS:AddItem(spec6, "22691", LBIS.L["Two Hand"], "Alt") --Corrupted Ashbringer
    LBIS:AddItem(spec6, "19962", LBIS.L["Two Hand"], "Alt") --Gri'lek's Carver
    LBIS:AddItem(spec6, "22813", LBIS.L["Two Hand"], "Alt") --Claymore of Unholy Might
    LBIS:AddItem(spec6, "22812", LBIS.L["Ranged/Relic"], "BIS") --Nerubian Slavemaker
    LBIS:AddItem(spec6, "19361", LBIS.L["Ranged/Relic"], "Alt") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec6, "22811", LBIS.L["Ranged/Relic"], "Alt") --Soulstring
    LBIS:AddItem(spec6, "23557", LBIS.L["Ranged/Relic"], "Alt") --Larvae of the Great Worm
    LBIS:AddItem(spec6, "18855", LBIS.L["Ranged/Relic"], "Alt") --Grand Marshal's Hand Cannon
    LBIS:AddItem(spec6, "18860", LBIS.L["Ranged/Relic"], "Alt") --High Warlord's Street Sweeper
    LBIS:AddItem(spec6, "18836", LBIS.L["Ranged/Relic"], "Alt") --Grand Marshal's Repeater
    LBIS:AddItem(spec6, "18837", LBIS.L["Ranged/Relic"], "Alt") --High Warlord's Crossbow
end
if not LBIS.IsSOD then
    LoadData();
end
