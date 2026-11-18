function LBIS:LoadHunterBeastMastery()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["BeastMastery"], "0", "https://www.wowhead.com/forever/guide/classes/hunter/dps-overview-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["BeastMastery"], "1", "https://www.wowhead.com/forever/guide/classes/hunter/dps-overview-pve")

    LBIS:AddEnchant(spec0, "24162", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "7779", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "27837", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec0, "22779", LBIS.L["Ranged"]) --

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
    LBIS:AddItem(spec1, "18713", LBIS.L["Ranged"], "BIS") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec1, "2099", LBIS.L["Ranged"], "Alt") --Dwarven Hand Cannon
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
end
