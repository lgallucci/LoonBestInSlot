local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Dps"], "7")

    LBIS:AddEnchant(spec2, "15402", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "20012", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "15402", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec2, "12460", LBIS.L["Ranged/Relic"]) --

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
    LBIS:AddItem(spec1, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec1, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick

    LBIS:AddItem(spec2, "16908", LBIS.L["Head"], "BIS") --Bloodfang Hood
    LBIS:AddItem(spec2, "16821", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec2, "23257", LBIS.L["Head"], "Alt") --Champion's Leather Helm
    LBIS:AddItem(spec2, "23312", LBIS.L["Head"], "Alt") --Lieutenant Commander's Leather Helm
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "19984", LBIS.L["Head"], "Alt") --Ebon Mask
    LBIS:AddItem(spec2, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec2, "16823", LBIS.L["Shoulder"], "BIS") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec2, "23258", LBIS.L["Shoulder"], "Alt") --Champion's Leather Shoulders
    LBIS:AddItem(spec2, "23313", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Leather Shoulders
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec2, "16820", LBIS.L["Chest"], "BIS") --Nightslayer Chestpiece
    LBIS:AddItem(spec2, "22879", LBIS.L["Chest"], "Alt") --Legionnaire's Leather Chestpiece
    LBIS:AddItem(spec2, "23298", LBIS.L["Chest"], "Alt") --Knight-Captain's Leather Chestpiece
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec2, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec2, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec2, "16825", LBIS.L["Wrist"], "BIS") --Nightslayer Bracelets
    LBIS:AddItem(spec2, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec2, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec2, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec2, "18823", LBIS.L["Hands"], "BIS") --Aged Core Leather Gloves
    LBIS:AddItem(spec2, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec2, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "22864", LBIS.L["Hands"], "Alt") --Blood Guard's Leather Grips
    LBIS:AddItem(spec2, "23284", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Leather Grips
    LBIS:AddItem(spec2, "18377", LBIS.L["Hands"], "Alt") --Quickdraw Gloves
    LBIS:AddItem(spec2, "16827", LBIS.L["Waist"], "BIS") --Nightslayer Belt
    LBIS:AddItem(spec2, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec2, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec2, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec2, "16909", LBIS.L["Legs"], "BIS") --Bloodfang Pants
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec2, "16508", LBIS.L["Legs"], "Alt") --Legionnaire's Leather Leggings
    LBIS:AddItem(spec2, "16419", LBIS.L["Legs"], "Alt") --Knight-Captain's Leather Legguards
    LBIS:AddItem(spec2, "16824", LBIS.L["Feet"], "BIS") --Nightslayer Boots
    LBIS:AddItem(spec2, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec2, "22856", LBIS.L["Feet"], "Alt") --Blood Guard's Leather Walkers
    LBIS:AddItem(spec2, "23285", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Leather Walkers
    LBIS:AddItem(spec2, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec2, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "18465", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "17075", LBIS.L["Main Hand"], "BIS") --Vis'kag the Bloodletter
    LBIS:AddItem(spec2, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec2, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec2, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec2, "2244", LBIS.L["Main Hand"], "Alt") --Krol Blade
    LBIS:AddItem(spec2, "12783", LBIS.L["Main Hand"], "Alt") --Heartseeker
    LBIS:AddItem(spec2, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec2, "18832", LBIS.L["Off Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec2, "14555", LBIS.L["Off Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec2, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec2, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec2, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec2, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec2, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec2, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec2, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
end
if not LBIS.IsSOD then
    LoadData();
end
