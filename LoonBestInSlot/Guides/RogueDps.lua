function LBIS:LoadRogueDps()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "0", "https://www.wowhead.com/forever/guide/classes/rogue/dps-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "1", "https://www.wowhead.com/forever/guide/classes/rogue/dps-talent-builds-pve")

    LBIS:AddEnchant(spec0, "24161", LBIS.L["Head"].."~"..LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec0, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "20034", LBIS.L["Main Hand~Off Hand"]) --
    LBIS:AddEnchant(spec0, "12460", LBIS.L["Ranged"]) --

    LBIS:AddItem(spec0, "13404", LBIS.L["Head"], "BIS") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec0, "16710", LBIS.L["Wrist"], "BIS") --Shadowcraft Bracers
    LBIS:AddItem(spec0, "16712", LBIS.L["Hands"], "BIS") --Shadowcraft Gloves
    LBIS:AddItem(spec0, "16713", LBIS.L["Waist"], "BIS") --Shadowcraft Belt
    LBIS:AddItem(spec0, "16709", LBIS.L["Legs"], "BIS") --Shadowcraft Pants
    LBIS:AddItem(spec0, "16711", LBIS.L["Feet"], "BIS") --Shadowcraft Boots
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "BIS") --Mark of Fordring
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "12939", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "12783", LBIS.L["Main Hand"], "Alt") --Heartseeker
    LBIS:AddItem(spec0, "14555", LBIS.L["Main Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec0, "12651", LBIS.L["Ranged"], "BIS") --Blackcrow

    LBIS:AddItem(spec1, "16908", LBIS.L["Head"], "BIS") --Bloodfang Hood
    LBIS:AddItem(spec1, "16821", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "19984", LBIS.L["Head"], "Alt") --Ebon Mask
    LBIS:AddItem(spec1, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec1, "16823", LBIS.L["Shoulder"], "BIS") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec1, "16820", LBIS.L["Chest"], "BIS") --Nightslayer Chestpiece
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec1, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec1, "16825", LBIS.L["Wrist"], "BIS") --Nightslayer Bracelets
    LBIS:AddItem(spec1, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec1, "18823", LBIS.L["Hands"], "BIS") --Aged Core Leather Gloves
    LBIS:AddItem(spec1, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "16827", LBIS.L["Waist"], "BIS") --Nightslayer Belt
    LBIS:AddItem(spec1, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec1, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec1, "16909", LBIS.L["Legs"], "BIS") --Bloodfang Pants
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec1, "16824", LBIS.L["Feet"], "BIS") --Nightslayer Boots
    LBIS:AddItem(spec1, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec1, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec1, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec1, "17075", LBIS.L["Main Hand"], "BIS") --Vis'kag the Bloodletter
    LBIS:AddItem(spec1, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec1, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec1, "2244", LBIS.L["Main Hand"], "Alt") --Krol Blade
    LBIS:AddItem(spec1, "12783", LBIS.L["Main Hand"], "Alt") --Heartseeker
    LBIS:AddItem(spec1, "18832", LBIS.L["Off Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec1, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec1, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec1, "14555", LBIS.L["Off Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec1, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec1, "17069", LBIS.L["Ranged"], "BIS") --Striker's Mark
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged"], "Alt") --Blackcrow
    LBIS:AddItem(spec1, "2100", LBIS.L["Ranged"], "Alt") --Precisely Calibrated Boomstick
end
