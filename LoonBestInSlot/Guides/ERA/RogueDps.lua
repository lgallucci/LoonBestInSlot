local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["DPS"], "8")

    LBIS:AddEnchant(spec6, "24161", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand/Off Hand"]) --
    LBIS:AddEnchant(spec6, "12460", LBIS.L["Ranged/Relic"]) --

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

    LBIS:AddItem(spec3, "16908", LBIS.L["Head"], "BIS") --Bloodfang Hood
    LBIS:AddItem(spec3, "16561", LBIS.L["Head"], "BIS") --Warlord's Leather Helm
    LBIS:AddItem(spec3, "16455", LBIS.L["Head"], "BIS") --Field Marshal's Leather Mask
    LBIS:AddItem(spec3, "16821", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec3, "23257", LBIS.L["Head"], "Alt") --Champion's Leather Helm
    LBIS:AddItem(spec3, "23312", LBIS.L["Head"], "Alt") --Lieutenant Commander's Leather Helm
    LBIS:AddItem(spec3, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec3, "19984", LBIS.L["Head"], "Alt") --Ebon Mask
    LBIS:AddItem(spec3, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec3, "16832", LBIS.L["Shoulder"], "BIS") --Bloodfang Spaulders
    LBIS:AddItem(spec3, "16823", LBIS.L["Shoulder"], "BIS") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec3, "16562", LBIS.L["Shoulder"], "BIS") --Warlord's Leather Spaulders
    LBIS:AddItem(spec3, "16457", LBIS.L["Shoulder"], "BIS") --Field Marshal's Leather Epaulets
    LBIS:AddItem(spec3, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec3, "23258", LBIS.L["Shoulder"], "Alt") --Champion's Leather Shoulders
    LBIS:AddItem(spec3, "23313", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Leather Shoulders
    LBIS:AddItem(spec3, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec3, "19398", LBIS.L["Back"], "BIS") --Cloak of Firemaw
    LBIS:AddItem(spec3, "20068", LBIS.L["Back"], "BIS") --Deathguard's Cloak
    LBIS:AddItem(spec3, "20073", LBIS.L["Back"], "BIS") --Cloak of the Honor Guard
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec3, "18204", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec3, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec3, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec3, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec3, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec3, "16905", LBIS.L["Chest"], "BIS") --Bloodfang Chestpiece
    LBIS:AddItem(spec3, "16563", LBIS.L["Chest"], "BIS") --Warlord's Leather Breastplate
    LBIS:AddItem(spec3, "16453", LBIS.L["Chest"], "BIS") --Field Marshal's Leather Chestpiece
    LBIS:AddItem(spec3, "16820", LBIS.L["Chest"], "Alt") --Nightslayer Chestpiece
    LBIS:AddItem(spec3, "22879", LBIS.L["Chest"], "Alt") --Legionnaire's Leather Chestpiece
    LBIS:AddItem(spec3, "23298", LBIS.L["Chest"], "Alt") --Knight-Captain's Leather Chestpiece
    LBIS:AddItem(spec3, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec3, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec3, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec3, "16911", LBIS.L["Wrist"], "BIS") --Bloodfang Bracers
    LBIS:AddItem(spec3, "16825", LBIS.L["Wrist"], "Alt") --Nightslayer Bracelets
    LBIS:AddItem(spec3, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec3, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec3, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec3, "16907", LBIS.L["Hands"], "BIS") --Bloodfang Gloves
    LBIS:AddItem(spec3, "18823", LBIS.L["Hands"], "BIS") --Aged Core Leather Gloves
    LBIS:AddItem(spec3, "16560", LBIS.L["Hands"], "BIS") --General's Leather Mitts
    LBIS:AddItem(spec3, "16454", LBIS.L["Hands"], "BIS") --Marshal's Leather Handgrips
    LBIS:AddItem(spec3, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec3, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec3, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec3, "22864", LBIS.L["Hands"], "Alt") --Blood Guard's Leather Grips
    LBIS:AddItem(spec3, "23284", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Leather Grips
    LBIS:AddItem(spec3, "18377", LBIS.L["Hands"], "Alt") --Quickdraw Gloves
    LBIS:AddItem(spec3, "16910", LBIS.L["Waist"], "BIS") --Bloodfang Belt
    LBIS:AddItem(spec3, "16827", LBIS.L["Waist"], "Alt") --Nightslayer Belt
    LBIS:AddItem(spec3, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec3, "14636", LBIS.L["Waist"], "Alt") --Cadaverous Belt
    LBIS:AddItem(spec3, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec3, "16909", LBIS.L["Legs"], "BIS") --Bloodfang Pants
    LBIS:AddItem(spec3, "16564", LBIS.L["Legs"], "BIS") --General's Leather Legguards
    LBIS:AddItem(spec3, "16456", LBIS.L["Legs"], "BIS") --Marshal's Leather Leggings
    LBIS:AddItem(spec3, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec3, "16508", LBIS.L["Legs"], "Alt") --Legionnaire's Leather Leggings
    LBIS:AddItem(spec3, "16419", LBIS.L["Legs"], "Alt") --Knight-Captain's Leather Legguards
    LBIS:AddItem(spec3, "16906", LBIS.L["Feet"], "BIS") --Bloodfang Boots
    LBIS:AddItem(spec3, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec3, "16558", LBIS.L["Feet"], "BIS") --General's Leather Treads
    LBIS:AddItem(spec3, "16446", LBIS.L["Feet"], "BIS") --Marshal's Leather Footguards
    LBIS:AddItem(spec3, "16824", LBIS.L["Feet"], "Alt") --Nightslayer Boots
    LBIS:AddItem(spec3, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec3, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec3, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec3, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec3, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec3, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec3, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec3, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec3, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec3, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "18465", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "16345", LBIS.L["Main Hand"], "BIS") --High Warlord's Blade
    LBIS:AddItem(spec3, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec3, "18840", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --High Warlord's Razor
    LBIS:AddItem(spec3, "18838", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Grand Marshal's Dirk
    LBIS:AddItem(spec3, "19352", LBIS.L["Main Hand"], "BIS") --Chromatically Tempered Sword
    LBIS:AddItem(spec3, "18816", LBIS.L["Main Hand"], "BIS") --Perdition's Blade
    LBIS:AddItem(spec3, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec3, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec3, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec3, "12783", LBIS.L["Main Hand"], "Alt") --Heartseeker
    LBIS:AddItem(spec3, "2244", LBIS.L["Main Hand"], "Alt") --Krol Blade
    LBIS:AddItem(spec3, "23467", LBIS.L["Off Hand"], "BIS") --High Warlord's Quickblade
    LBIS:AddItem(spec3, "23456", LBIS.L["Off Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec3, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec3, "19351", LBIS.L["Off Hand"], "BIS") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec3, "18832", LBIS.L["Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec3, "14555", LBIS.L["Off Hand"], "Alt") --Alcor's Sunrazor
    LBIS:AddItem(spec3, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec3, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec3, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec3, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec3, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec3, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec3, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick

    LBIS:AddItem(spec4, "22005", LBIS.L["Head"], "BIS") --Darkmantle Cap
    LBIS:AddItem(spec4, "16707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec4, "16908", LBIS.L["Head"], "Alt") --Bloodfang Hood
    LBIS:AddItem(spec4, "16821", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec4, "22008", LBIS.L["Shoulder"], "BIS") --Darkmantle Spaulders
    LBIS:AddItem(spec4, "16823", LBIS.L["Shoulder"], "Alt") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec4, "19835", LBIS.L["Shoulder"], "Alt") --Zandalar Madcap's Mantle
    LBIS:AddItem(spec4, "16832", LBIS.L["Shoulder"], "Alt") --Bloodfang Spaulders
    LBIS:AddItem(spec4, "16708", LBIS.L["Shoulder"], "Alt") --Shadowcraft Spaulders
    LBIS:AddItem(spec4, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec4, "19398", LBIS.L["Back"], "Alt") --Cloak of Firemaw
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec4, "16905", LBIS.L["Chest"], "BIS") --Bloodfang Chestpiece
    LBIS:AddItem(spec4, "22009", LBIS.L["Chest"], "Alt") --Darkmantle Tunic
    LBIS:AddItem(spec4, "16820", LBIS.L["Chest"], "Alt") --Nightslayer Chestpiece
    LBIS:AddItem(spec4, "16721", LBIS.L["Chest"], "Alt") --Shadowcraft Tunic
    LBIS:AddItem(spec4, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec4, "22004", LBIS.L["Wrist"], "BIS") --Darkmantle Bracers
    LBIS:AddItem(spec4, "16911", LBIS.L["Wrist"], "Alt") --Bloodfang Bracers
    LBIS:AddItem(spec4, "16710", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec4, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "18823", LBIS.L["Hands"], "BIS") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "22006", LBIS.L["Hands"], "BIS") --Darkmantle Gloves
    LBIS:AddItem(spec4, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec4, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec4, "16907", LBIS.L["Hands"], "Alt") --Bloodfang Gloves
    LBIS:AddItem(spec4, "16910", LBIS.L["Waist"], "BIS") --Bloodfang Belt
    LBIS:AddItem(spec4, "16827", LBIS.L["Waist"], "Alt") --Nightslayer Belt
    LBIS:AddItem(spec4, "22002", LBIS.L["Waist"], "Alt") --Darkmantle Belt
    LBIS:AddItem(spec4, "16713", LBIS.L["Waist"], "Alt") --Shadowcraft Belt
    LBIS:AddItem(spec4, "20216", LBIS.L["Waist"], "Alt") --Belt of Preserved Heads
    LBIS:AddItem(spec4, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec4, "16909", LBIS.L["Legs"], "BIS") --Bloodfang Pants
    LBIS:AddItem(spec4, "16456", LBIS.L["Legs"], "Alt") --Marshal's Leather Leggings
    LBIS:AddItem(spec4, "16564", LBIS.L["Legs"], "Alt") --General's Leather Legguards
    LBIS:AddItem(spec4, "22007", LBIS.L["Legs"], "Alt") --Darkmantle Pants
    LBIS:AddItem(spec4, "16822", LBIS.L["Legs"], "Alt") --Nightslayer Pants
    LBIS:AddItem(spec4, "22003", LBIS.L["Feet"], "BIS") --Darkmantle Boots
    LBIS:AddItem(spec4, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec4, "19906", LBIS.L["Feet"], "Alt") --Blooddrenched Footpads
    LBIS:AddItem(spec4, "16824", LBIS.L["Feet"], "Alt") --Nightslayer Boots
    LBIS:AddItem(spec4, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec4, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "19432", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec4, "19954", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Trickery
    LBIS:AddItem(spec4, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "18465", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "18838", LBIS.L["Main Hand/Off Hand"], "BIS") --Grand Marshal's Dirk
    LBIS:AddItem(spec4, "18840", LBIS.L["Main Hand/Off Hand"], "BIS") --High Warlord's Razor
    LBIS:AddItem(spec4, "16345", LBIS.L["Main Hand"], "BIS") --High Warlord's Blade
    LBIS:AddItem(spec4, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec4, "19019", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec4, "18816", LBIS.L["Main Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec4, "19346", LBIS.L["Main Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec4, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec4, "12590", LBIS.L["Main Hand/Off Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec4, "17071", LBIS.L["Main Hand"], "Alt") --Gutgore Ripper
    LBIS:AddItem(spec4, "19324", LBIS.L["Main Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec4, "19352", LBIS.L["Main Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec4, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec4, "18832", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec4, "6622", LBIS.L["Main Hand"], "Alt") --Sword of Zeal
    LBIS:AddItem(spec4, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec4, "23467", LBIS.L["Off Hand"], "Alt") --High Warlord's Quickblade
    LBIS:AddItem(spec4, "23456", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec4, "19351", LBIS.L["Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec4, "19866", LBIS.L["Off Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec4, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec4, "19368", LBIS.L["Ranged/Relic"], "Alt") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec4, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec4, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec4, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec4, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher

    LBIS:AddItem(spec5, "21360", LBIS.L["Head"], "BIS") --Deathdealer's Helm
    LBIS:AddItem(spec5, "22005", LBIS.L["Head"], "Alt") --Darkmantle Cap
    LBIS:AddItem(spec5, "16908", LBIS.L["Head"], "Alt") --Bloodfang Hood
    LBIS:AddItem(spec5, "16455", LBIS.L["Head"], "Alt") --Field Marshal's Leather Mask
    LBIS:AddItem(spec5, "16561", LBIS.L["Head"], "Alt") --Warlord's Leather Helm
    LBIS:AddItem(spec5, "16821", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec5, "21361", LBIS.L["Shoulder"], "BIS") --Deathdealer's Spaulders
    LBIS:AddItem(spec5, "22008", LBIS.L["Shoulder"], "Alt") --Darkmantle Spaulders
    LBIS:AddItem(spec5, "16823", LBIS.L["Shoulder"], "Alt") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec5, "21665", LBIS.L["Shoulder"], "Alt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec5, "19835", LBIS.L["Shoulder"], "Alt") --Zandalar Madcap's Mantle
    LBIS:AddItem(spec5, "23313", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Leather Shoulders
    LBIS:AddItem(spec5, "23258", LBIS.L["Shoulder"], "Alt") --Champion's Leather Shoulders
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "21701", LBIS.L["Back"], "BIS") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec5, "21406", LBIS.L["Back"], "Alt") --Cloak of Veiled Shadows
    LBIS:AddItem(spec5, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec5, "21187", LBIS.L["Back"], "Alt") --Earthweave Cloak
    LBIS:AddItem(spec5, "21364", LBIS.L["Chest"], "BIS") --Deathdealer's Vest
    LBIS:AddItem(spec5, "16905", LBIS.L["Chest"], "Alt") --Bloodfang Chestpiece
    LBIS:AddItem(spec5, "21680", LBIS.L["Chest"], "Alt") --Vest of Swift Execution
    LBIS:AddItem(spec5, "22009", LBIS.L["Chest"], "Alt") --Darkmantle Tunic
    LBIS:AddItem(spec5, "16453", LBIS.L["Chest"], "Alt") --Field Marshal's Leather Chestpiece
    LBIS:AddItem(spec5, "16563", LBIS.L["Chest"], "Alt") --Warlord's Leather Breastplate
    LBIS:AddItem(spec5, "16820", LBIS.L["Chest"], "Alt") --Nightslayer Chestpiece
    LBIS:AddItem(spec5, "21602", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec5, "16911", LBIS.L["Wrist"], "BIS") --Bloodfang Bracers
    LBIS:AddItem(spec5, "22004", LBIS.L["Wrist"], "Alt") --Darkmantle Bracers
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec5, "21672", LBIS.L["Hands"], "BIS") --Gloves of Enforcement
    LBIS:AddItem(spec5, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec5, "22006", LBIS.L["Hands"], "Alt") --Darkmantle Gloves
    LBIS:AddItem(spec5, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec5, "16454", LBIS.L["Hands"], "Alt") --Marshal's Leather Handgrips
    LBIS:AddItem(spec5, "16560", LBIS.L["Hands"], "Alt") --General's Leather Mitts
    LBIS:AddItem(spec5, "21586", LBIS.L["Waist"], "BIS") --Belt of Never-ending Agony
    LBIS:AddItem(spec5, "16910", LBIS.L["Waist"], "Alt") --Bloodfang Belt
    LBIS:AddItem(spec5, "16827", LBIS.L["Waist"], "Alt") --Nightslayer Belt
    LBIS:AddItem(spec5, "20216", LBIS.L["Waist"], "Alt") --Belt of Preserved Heads
    LBIS:AddItem(spec5, "22002", LBIS.L["Waist"], "Alt") --Darkmantle Belt
    LBIS:AddItem(spec5, "21362", LBIS.L["Legs"], "BIS") --Deathdealer's Leggings
    LBIS:AddItem(spec5, "16456", LBIS.L["Legs"], "BIS") --Marshal's Leather Leggings
    LBIS:AddItem(spec5, "16564", LBIS.L["Legs"], "BIS") --General's Leather Legguards
    LBIS:AddItem(spec5, "16909", LBIS.L["Legs"], "Alt") --Bloodfang Pants
    LBIS:AddItem(spec5, "16822", LBIS.L["Legs"], "Alt") --Nightslayer Pants
    LBIS:AddItem(spec5, "22007", LBIS.L["Legs"], "Alt") --Darkmantle Pants
    LBIS:AddItem(spec5, "21359", LBIS.L["Feet"], "BIS") --Deathdealer's Boots
    LBIS:AddItem(spec5, "22003", LBIS.L["Feet"], "Alt") --Darkmantle Boots
    LBIS:AddItem(spec5, "19381", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec5, "21493", LBIS.L["Feet"], "Alt") --Boots of the Vanguard
    LBIS:AddItem(spec5, "19906", LBIS.L["Feet"], "Alt") --Blooddrenched Footpads
    LBIS:AddItem(spec5, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec5, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec5, "21809", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec5, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "21677", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec5, "19432", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec5, "23570", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS") --Earthstrike
    LBIS:AddItem(spec5, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "19954", LBIS.L["Trinket"], "Alt") --Renataki's Charm of Trickery
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec5, "18465", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "12584", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Longsword
    LBIS:AddItem(spec5, "16345", LBIS.L["Main Hand"], "BIS") --High Warlord's Blade
    LBIS:AddItem(spec5, "21126", LBIS.L["Main Hand"], "BIS") --Death's Sting
    LBIS:AddItem(spec5, "21244", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Blessed Qiraji Pugio
    LBIS:AddItem(spec5, "21650", LBIS.L["Main Hand/Off Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec5, "19352", LBIS.L["Main Hand/Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec5, "20577", LBIS.L["Main Hand"], "Alt") --Nightmare Blade
    LBIS:AddItem(spec5, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec5, "18832", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "18838", LBIS.L["Main Hand/Off Hand"], "Alt") --Grand Marshal's Dirk
    LBIS:AddItem(spec5, "18840", LBIS.L["Main Hand/Off Hand"], "Alt") --High Warlord's Razor
    LBIS:AddItem(spec5, "18816", LBIS.L["Main Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec5, "21522", LBIS.L["Main Hand/Off Hand"], "Alt") --Shadowsong's Sorrow
    LBIS:AddItem(spec5, "19346", LBIS.L["Main Hand/Off Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec5, "21404", LBIS.L["Main Hand/Off Hand"], "Alt") --Dagger of Veiled Shadows
    LBIS:AddItem(spec5, "19859", LBIS.L["Main Hand/Off Hand"], "Alt") --Fang of the Faceless
    LBIS:AddItem(spec5, "18805", LBIS.L["Main Hand/Off Hand"], "Alt") --Core Hound Tooth
    LBIS:AddItem(spec5, "19019", LBIS.L["Off Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec5, "19351", LBIS.L["Off Hand"], "BIS") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec5, "23467", LBIS.L["Off Hand"], "Alt") --High Warlord's Quickblade
    LBIS:AddItem(spec5, "23456", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec5, "21520", LBIS.L["Off Hand"], "Alt") --Ravencrest's Legacy
    LBIS:AddItem(spec5, "19866", LBIS.L["Off Hand"], "Alt") --Warblade of the Hakkari
    LBIS:AddItem(spec5, "21616", LBIS.L["Ranged/Relic"], "BIS") --Huhuran's Stinger
    LBIS:AddItem(spec5, "21459", LBIS.L["Ranged/Relic"], "BIS") --Crossbow of Imminent Doom
    LBIS:AddItem(spec5, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec5, "23557", LBIS.L["Ranged/Relic"], "BIS") --Larvae of the Great Worm
    LBIS:AddItem(spec5, "19368", LBIS.L["Ranged/Relic"], "Alt") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec5, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec5, "22347", LBIS.L["Ranged/Relic"], "Alt") --Fahrad's Reloading Repeater
    LBIS:AddItem(spec5, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec5, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow

    LBIS:AddItem(spec6, "22478", LBIS.L["Head"], "BIS") --Bonescythe Helmet
    LBIS:AddItem(spec6, "21360", LBIS.L["Head"], "Alt") --Deathdealer's Helm
    LBIS:AddItem(spec6, "22005", LBIS.L["Head"], "Alt") --Darkmantle Cap
    LBIS:AddItem(spec6, "16908", LBIS.L["Head"], "Alt") --Bloodfang Hood
    LBIS:AddItem(spec6, "16455", LBIS.L["Head"], "Alt") --Field Marshal's Leather Mask
    LBIS:AddItem(spec6, "16561", LBIS.L["Head"], "Alt") --Warlord's Leather Helm
    LBIS:AddItem(spec6, "22479", LBIS.L["Shoulder"], "BIS") --Bonescythe Pauldrons
    LBIS:AddItem(spec6, "21361", LBIS.L["Shoulder"], "BIS") --Deathdealer's Spaulders
    LBIS:AddItem(spec6, "22008", LBIS.L["Shoulder"], "Alt") --Darkmantle Spaulders
    LBIS:AddItem(spec6, "16823", LBIS.L["Shoulder"], "Alt") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec6, "21665", LBIS.L["Shoulder"], "Alt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "23045", LBIS.L["Back"], "BIS") --Shroud of Dominion
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "BIS") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "21406", LBIS.L["Back"], "Alt") --Cloak of Veiled Shadows
    LBIS:AddItem(spec6, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec6, "21187", LBIS.L["Back"], "Alt") --Earthweave Cloak
    LBIS:AddItem(spec6, "21364", LBIS.L["Chest"], "BIS") --Deathdealer's Vest
    LBIS:AddItem(spec6, "22476", LBIS.L["Chest"], "BIS") --Bonescythe Breastplate
    LBIS:AddItem(spec6, "16905", LBIS.L["Chest"], "Alt") --Bloodfang Chestpiece
    LBIS:AddItem(spec6, "21680", LBIS.L["Chest"], "Alt") --Vest of Swift Execution
    LBIS:AddItem(spec6, "22009", LBIS.L["Chest"], "Alt") --Darkmantle Tunic
    LBIS:AddItem(spec6, "22483", LBIS.L["Wrist"], "BIS") --Bonescythe Bracers
    LBIS:AddItem(spec6, "21602", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "16911", LBIS.L["Wrist"], "BIS") --Bloodfang Bracers
    LBIS:AddItem(spec6, "22004", LBIS.L["Wrist"], "Alt") --Darkmantle Bracers
    LBIS:AddItem(spec6, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec6, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec6, "22481", LBIS.L["Hands"], "BIS") --Bonescythe Gauntlets
    LBIS:AddItem(spec6, "21672", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec6, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec6, "22006", LBIS.L["Hands"], "Alt") --Darkmantle Gloves
    LBIS:AddItem(spec6, "16826", LBIS.L["Hands"], "Alt") --Nightslayer Gloves
    LBIS:AddItem(spec6, "16454", LBIS.L["Hands"], "Alt") --Marshal's Leather Handgrips
    LBIS:AddItem(spec6, "16560", LBIS.L["Hands"], "Alt") --General's Leather Mitts
    LBIS:AddItem(spec6, "22482", LBIS.L["Waist"], "BIS") --Bonescythe Waistguard
    LBIS:AddItem(spec6, "21586", LBIS.L["Waist"], "BIS") --Belt of Never-ending Agony
    LBIS:AddItem(spec6, "16910", LBIS.L["Waist"], "Alt") --Bloodfang Belt
    LBIS:AddItem(spec6, "16827", LBIS.L["Waist"], "Alt") --Nightslayer Belt
    LBIS:AddItem(spec6, "20216", LBIS.L["Waist"], "Alt") --Belt of Preserved Heads
    LBIS:AddItem(spec6, "22002", LBIS.L["Waist"], "Alt") --Darkmantle Belt
    LBIS:AddItem(spec6, "22477", LBIS.L["Legs"], "BIS") --Bonescythe Legplates
    LBIS:AddItem(spec6, "23071", LBIS.L["Legs"], "Alt") --Leggings of Apocalypse
    LBIS:AddItem(spec6, "21362", LBIS.L["Legs"], "Alt") --Deathdealer's Leggings
    LBIS:AddItem(spec6, "16456", LBIS.L["Legs"], "Alt") --Marshal's Leather Leggings
    LBIS:AddItem(spec6, "16564", LBIS.L["Legs"], "Alt") --General's Leather Legguards
    LBIS:AddItem(spec6, "16909", LBIS.L["Legs"], "Alt") --Bloodfang Pants
    LBIS:AddItem(spec6, "22480", LBIS.L["Feet"], "BIS") --Bonescythe Sabatons
    LBIS:AddItem(spec6, "21359", LBIS.L["Feet"], "Alt") --Deathdealer's Boots
    LBIS:AddItem(spec6, "22003", LBIS.L["Feet"], "Alt") --Darkmantle Boots
    LBIS:AddItem(spec6, "19381", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec6, "21493", LBIS.L["Feet"], "Alt") --Boots of the Vanguard
    LBIS:AddItem(spec6, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec6, "21809", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec6, "23060", LBIS.L["Ring"], "BIS") --Bonescythe Ring
    LBIS:AddItem(spec6, "23038", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "22961", LBIS.L["Ring"], "Alt") --Band of Reanimation
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec6, "23041", LBIS.L["Trinket"], "BIS") --Slayer's Crest
    LBIS:AddItem(spec6, "23206", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "23570", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec6, "19954", LBIS.L["Trinket"], "Alt") --Renataki's Charm of Trickery
    LBIS:AddItem(spec6, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec6, "23054", LBIS.L["Main Hand"], "BIS") --Gressil, Dawn of Ruin
    LBIS:AddItem(spec6, "22802", LBIS.L["Main Hand"], "BIS") --Kingsfall
    LBIS:AddItem(spec6, "21126", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Death's Sting
    LBIS:AddItem(spec6, "12584", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Longsword
    LBIS:AddItem(spec6, "16345", LBIS.L["Main Hand"], "Alt") --High Warlord's Blade
    LBIS:AddItem(spec6, "21650", LBIS.L["Main Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec6, "19352", LBIS.L["Main Hand/Off Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec6, "20577", LBIS.L["Main Hand"], "Alt") --Nightmare Blade
    LBIS:AddItem(spec6, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec6, "18832", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec6, "22804", LBIS.L["Main Hand/Off Hand"], "Alt") --Maexxna's Fang
    LBIS:AddItem(spec6, "23044", LBIS.L["Main Hand/Off Hand"], "Alt") --Harbinger of Doom
    LBIS:AddItem(spec6, "18838", LBIS.L["Main Hand/Off Hand"], "Alt") --Grand Marshal's Dirk
    LBIS:AddItem(spec6, "18840", LBIS.L["Main Hand/Off Hand"], "Alt") --High Warlord's Razor
    LBIS:AddItem(spec6, "21244", LBIS.L["Main Hand/Off Hand"], "Alt") --Blessed Qiraji Pugio
    LBIS:AddItem(spec6, "23014", LBIS.L["Off Hand"], "BIS") --Iblis, Blade of the Fallen Seraph
    LBIS:AddItem(spec6, "23577", LBIS.L["Off Hand"], "BIS") --The Hungering Cold
    LBIS:AddItem(spec6, "19351", LBIS.L["Off Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec6, "19019", LBIS.L["Off Hand"], "Alt") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec6, "22806", LBIS.L["Off Hand"], "Alt") --Widow's Remorse
    LBIS:AddItem(spec6, "23467", LBIS.L["Off Hand"], "Alt") --High Warlord's Quickblade
    LBIS:AddItem(spec6, "23456", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec6, "22812", LBIS.L["Ranged/Relic"], "BIS") --Nerubian Slavemaker
    LBIS:AddItem(spec6, "21616", LBIS.L["Ranged/Relic"], "BIS") --Huhuran's Stinger
    LBIS:AddItem(spec6, "22811", LBIS.L["Ranged/Relic"], "BIS") --Soulstring
    LBIS:AddItem(spec6, "21459", LBIS.L["Ranged/Relic"], "BIS") --Crossbow of Imminent Doom
    LBIS:AddItem(spec6, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec6, "23557", LBIS.L["Ranged/Relic"], "BIS") --Larvae of the Great Worm
    LBIS:AddItem(spec6, "19368", LBIS.L["Ranged/Relic"], "Alt") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec6, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec6, "22347", LBIS.L["Ranged/Relic"], "Alt") --Fahrad's Reloading Repeater
    LBIS:AddItem(spec6, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec6, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
end
if not LBIS.IsSOD then
    LoadData();
end
