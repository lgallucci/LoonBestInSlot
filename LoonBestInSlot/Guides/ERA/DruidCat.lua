local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Cat"], "7")

    LBIS:AddEnchant(spec2, "15402", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "20012", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "15402", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "20031", LBIS.L["Main Hand"]) --

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

    LBIS:AddItem(spec2, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec2, "23308", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec2, "23253", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec2, "18374", LBIS.L["Shoulder"], "Alt") --Flamescarred Shoulders
    LBIS:AddItem(spec2, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec2, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "17102", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec2, "23294", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "22877", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec2, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec2, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec2, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec2, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec2, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "BIS") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "23280", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec2, "22863", LBIS.L["Hands"], "Alt") --Blood Guard's Dragonhide Grips
    LBIS:AddItem(spec2, "13252", LBIS.L["Waist"], "BIS") --Cloudrunner Girdle
    LBIS:AddItem(spec2, "19093", LBIS.L["Waist"], "Alt") --Stormpike Leather Girdle
    LBIS:AddItem(spec2, "19089", LBIS.L["Waist"], "Alt") --Frostwolf Leather Belt
    LBIS:AddItem(spec2, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec2, "22750", LBIS.L["Legs"], "Alt") --Sentinel's Lizardhide Pants
    LBIS:AddItem(spec2, "22741", LBIS.L["Legs"], "Alt") --Outrider's Lizardhide Pants
    LBIS:AddItem(spec2, "22749", LBIS.L["Legs"], "Alt") --Sentinel's Leather Pants
    LBIS:AddItem(spec2, "22740", LBIS.L["Legs"], "Alt") --Outrider's Leather Pants
    LBIS:AddItem(spec2, "22878", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec2, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec2, "23281", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec2, "12553", LBIS.L["Feet"], "Alt") --Swiftwalker Boots
    LBIS:AddItem(spec2, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec2, "17111", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec2, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec2, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec2, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "18805", LBIS.L["Main Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec2, "4091", LBIS.L["Main Hand"], "Alt") --Widowmaker
    LBIS:AddItem(spec2, "13368", LBIS.L["Main Hand"], "Alt") --Bonescraper
    LBIS:AddItem(spec2, "19104", LBIS.L["Main Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec2, "19546", LBIS.L["Main Hand"], "Alt") --Sentinel's Blade
    LBIS:AddItem(spec2, "19542", LBIS.L["Main Hand"], "Alt") --Scout's Blade
    LBIS:AddItem(spec2, "18044", LBIS.L["Main Hand"], "Alt") --Hurley's Tankard
    LBIS:AddItem(spec2, "13385", LBIS.L["Off Hand"], "BIS") --Tome of Knowledge
    LBIS:AddItem(spec2, "9449", LBIS.L["Two Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec2, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec2, "18420", LBIS.L["Two Hand"], "Alt") --Bonecrusher
    LBIS:AddItem(spec2, "13167", LBIS.L["Two Hand"], "Alt") --Fist of Omokk
    LBIS:AddItem(spec2, "18481", LBIS.L["Two Hand"], "Alt") --Skullcracking Mace
end
if not LBIS.IsSOD then
    LoadData();
end
