function LBIS:LoadShamanEnhancement()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "0", "https://www.wowhead.com/forever/guide/classes/shaman/enhancement/dps-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement"], "1", "https://www.wowhead.com/forever/guide/classes/shaman/enhancement/dps-talent-builds-pve")

    LBIS:AddEnchant(spec6, "22840", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "13948", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "13359", LBIS.L["Head"], "Alt") --Crown of Tyranny
    LBIS:AddItem(spec0, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec0, "18421", LBIS.L["Head"], "Alt") --Backwood Helm
    LBIS:AddItem(spec0, "20134", LBIS.L["Head"], "Alt") --Skyfury Helm
    LBIS:AddItem(spec0, "20680", LBIS.L["Shoulder"], "Alt") --Abyssal Mail Pauldrons
    LBIS:AddItem(spec0, "20203", LBIS.L["Shoulder"], "Alt") --Defiler's Mail Pauldrons
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec0, "14503", LBIS.L["Shoulder"], "Alt") --Death's Clutch
    LBIS:AddItem(spec0, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec0, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec0, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec0, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec0, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec0, "12603", LBIS.L["Chest"], "Alt") --Nightbrace Tunic
    LBIS:AddItem(spec0, "20684", LBIS.L["Wrist"], "Alt") --Abyssal Mail Armguards
    LBIS:AddItem(spec0, "19584", LBIS.L["Wrist"], "Alt") --Windtalker's Wristguards
    LBIS:AddItem(spec0, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec0, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec0, "13135", LBIS.L["Wrist"], "Alt") --Lordly Armguards
    LBIS:AddItem(spec0, "13211", LBIS.L["Wrist"], "Alt") --Slashclaw Bracers
    LBIS:AddItem(spec0, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec0, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec0, "20259", LBIS.L["Hands"], "Alt") --Shadow Panther Hide Gloves
    LBIS:AddItem(spec0, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec0, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec0, "14614", LBIS.L["Waist"], "Alt") --Bloodmail Belt
    LBIS:AddItem(spec0, "20150", LBIS.L["Waist"], "Alt") --Defiler's Chain Girdle
    LBIS:AddItem(spec0, "18393", LBIS.L["Waist"], "Alt") --Warpwood Binding
    LBIS:AddItem(spec0, "12634", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec0, "22673", LBIS.L["Legs"], "Alt") --Outrider's Chain Leggings
    LBIS:AddItem(spec0, "20668", LBIS.L["Legs"], "Alt") --Abyssal Mail Legguards
    LBIS:AddItem(spec0, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec0, "15052", LBIS.L["Legs"], "Alt") --Black Dragonscale Leggings
    LBIS:AddItem(spec0, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec0, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec0, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec0, "21182", LBIS.L["Ring"], "Alt") --Band of Earthen Might
    LBIS:AddItem(spec0, "21189", LBIS.L["Ring"], "Alt") --Might of Cenarius
    LBIS:AddItem(spec0, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "12798", LBIS.L["Main Hand"], "Alt") --Annihilator
    LBIS:AddItem(spec0, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec0, "12590", LBIS.L["Main Hand"], "Alt") --Felstriker
    LBIS:AddItem(spec0, "19103", LBIS.L["Main Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec0, "19921", LBIS.L["Main Hand"], "Alt") --Zulian Hacker
    LBIS:AddItem(spec0, "18737", LBIS.L["Main Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec0, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec0, "16998", LBIS.L["Off Hand"], "Alt") --Sacred Protector
    LBIS:AddItem(spec0, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec0, "18756", LBIS.L["Off Hand"], "Alt") --Dreadguard's Protector
    LBIS:AddItem(spec0, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec0, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec0, "19169", LBIS.L["Two Hand"], "Alt") --Nightfall
    LBIS:AddItem(spec0, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec0, "18538", LBIS.L["Two Hand"], "Alt") --Treant's Bane
    LBIS:AddItem(spec0, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec0, "13372", LBIS.L["Two Hand"], "Alt") --Slavedriver's Cane
    LBIS:AddItem(spec0, "22395", LBIS.L["Ranged"], "Alt") --Totem of Rage
    LBIS:AddItem(spec0, "22345", LBIS.L["Ranged"], "Alt") --Totem of Rebirth

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
end
