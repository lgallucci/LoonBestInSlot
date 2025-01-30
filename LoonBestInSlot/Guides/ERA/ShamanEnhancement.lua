local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "7")

    LBIS:AddEnchant(spec2, "15397", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "23801", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "13948", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "15397", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Two Hand"]) --
    LBIS:AddEnchant(spec2, "20036", LBIS.L["Two Hand"]) --
    LBIS:AddEnchant(spec2, "20013", LBIS.L["Hands"]) --

    LBIS:AddItem(spec1, "18817", LBIS.L["Head"], "BIS") --Crown of Destruction
    LBIS:AddItem(spec1, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec1, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec1, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec1, "13135", LBIS.L["Wrist"], "Alt") --Lordly Armguards
    LBIS:AddItem(spec1, "19157", LBIS.L["Hands"], "BIS") --Chromatic Gauntlets
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "13252", LBIS.L["Waist"], "BIS") --Cloudrunner Girdle
    LBIS:AddItem(spec1, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec1, "14614", LBIS.L["Waist"], "Alt") --Bloodmail Belt
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec1, "15052", LBIS.L["Legs"], "Alt") --Black Dragonscale Leggings
    LBIS:AddItem(spec1, "19144", LBIS.L["Feet"], "BIS") --Sabatons of the Flamewalker
    LBIS:AddItem(spec1, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec1, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "12798", LBIS.L["Main Hand"], "BIS") --Annihilator
    LBIS:AddItem(spec1, "17068", LBIS.L["Main Hand"], "Alt") --Deathbringer
    LBIS:AddItem(spec1, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec1, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec1, "19169", LBIS.L["Two Hand"], "BIS") --Nightfall
    LBIS:AddItem(spec1, "17182", LBIS.L["Two Hand"], "Alt") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec1, "17104", LBIS.L["Two Hand"], "Alt") --Spinal Reaper
    LBIS:AddItem(spec1, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper

    LBIS:AddItem(spec2, "16521", LBIS.L["Head"], "BIS") --Champion's Mail Helm
    LBIS:AddItem(spec2, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec2, "16524", LBIS.L["Shoulder"], "BIS") --Champion's Mail Shoulders
    LBIS:AddItem(spec2, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec2, "18757", LBIS.L["Shoulder"], "Alt") --Diabolic Mantle
    LBIS:AddItem(spec2, "16844", LBIS.L["Shoulder"], "Alt") --Earthfury Epaulets
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec2, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec2, "15050", LBIS.L["Chest"], "BIS") --Black Dragonscale Breastplate
    LBIS:AddItem(spec2, "16522", LBIS.L["Chest"], "Alt") --Legionnaire's Mail Chestpiece
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec2, "13135", LBIS.L["Wrist"], "BIS") --Lordly Armguards
    LBIS:AddItem(spec2, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec2, "16519", LBIS.L["Hands"], "BIS") --Blood Guard's Mail Grips
    LBIS:AddItem(spec2, "18544", LBIS.L["Hands"], "BIS") --Doomhide Gauntlets
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "13244", LBIS.L["Hands"], "Alt") --Gilded Gauntlets
    LBIS:AddItem(spec2, "12634", LBIS.L["Waist"], "BIS") --Chiselbrand Girdle
    LBIS:AddItem(spec2, "14614", LBIS.L["Waist"], "Alt") --Bloodmail Belt
    LBIS:AddItem(spec2, "16838", LBIS.L["Waist"], "Alt") --Earthfury Belt
    LBIS:AddItem(spec2, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec2, "15052", LBIS.L["Legs"], "BIS") --Black Dragonscale Leggings
    LBIS:AddItem(spec2, "16523", LBIS.L["Legs"], "Alt") --Legionnaire's Mail Leggings
    LBIS:AddItem(spec2, "18872", LBIS.L["Legs"], "Alt") --Manastorm Leggings
    LBIS:AddItem(spec2, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec2, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec2, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec2, "16518", LBIS.L["Feet"], "Alt") --Blood Guard's Mail Walkers
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec2, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec2, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec2, "1443", LBIS.L["Neck"], "Alt") --Jeweled Amulet of Cainwyn
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec2, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec2, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec2, "18314", LBIS.L["Ring"], "Alt") --Ring of Demonic Guile
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "17068", LBIS.L["Main Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec2, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec2, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec2, "17104", LBIS.L["Two Hand"], "BIS") --Spinal Reaper
    LBIS:AddItem(spec2, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec2, "18803", LBIS.L["Two Hand"], "Alt") --Hyperthermically Insulated Lava Dredger
end
if not LBIS.IsSOD then
    LoadData();
end
