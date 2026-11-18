function LBIS:LoadDruidCat()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "0", "https://www.wowhead.com/forever/guide/classes/druid/feral/dps-overview-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "1", "https://www.wowhead.com/forever/guide/classes/druid/feral/dps-overview-pve")

    LBIS:AddEnchant(spec0, "15402", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "13939", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "7218", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec0, "16710", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec0, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec0, "15063", LBIS.L["Hands"], "BIS") --Devilsaur Gauntlets
    LBIS:AddItem(spec0, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec0, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec0, "20190", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec0, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec0, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec0, "20186", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec0, "10725", LBIS.L["Trinket"], "Alt") --Gnomish Battle Chicken
    LBIS:AddItem(spec0, "9449", LBIS.L["Main Hand"], "Alt") --Manual Crowd Pummeler
    LBIS:AddItem(spec0, "18420", LBIS.L["Main Hand"], "Alt") --Bonecrusher
    LBIS:AddItem(spec0, "13167", LBIS.L["Main Hand"], "Alt") --Fist of Omokk
    LBIS:AddItem(spec0, "22397", LBIS.L["Ranged"], "BIS") --Idol of Ferocity

    LBIS:AddItem(spec1, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "17102", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec1, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec1, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec1, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec1, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "BIS") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "13252", LBIS.L["Waist"], "BIS") --Cloudrunner Girdle
    LBIS:AddItem(spec1, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec1, "12553", LBIS.L["Feet"], "BIS") --Swiftwalker Boots
    LBIS:AddItem(spec1, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec1, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "18805", LBIS.L["Main Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec1, "4091", LBIS.L["Main Hand"], "Alt") --Widowmaker
    LBIS:AddItem(spec1, "13368", LBIS.L["Main Hand"], "Alt") --Bonescraper
    LBIS:AddItem(spec1, "18044", LBIS.L["Main Hand"], "Alt") --Hurley's Tankard
    LBIS:AddItem(spec1, "13385", LBIS.L["Off Hand"], "BIS") --Tome of Knowledge
    LBIS:AddItem(spec1, "9449", LBIS.L["Two Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec1, "13167", LBIS.L["Two Hand"], "Alt") --Fist of Omokk
end
