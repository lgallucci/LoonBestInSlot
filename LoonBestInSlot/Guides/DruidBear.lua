function LBIS:LoadDruidBear()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "0", "https://www.wowhead.com/forever/guide/classes/druid/feral/tank-overview-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "1", "https://www.wowhead.com/forever/guide/classes/druid/feral/tank-overview-pve")
    
    LBIS:AddEnchant(spec6, "15402", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29480", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "25086", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "7218", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "14539", LBIS.L["Head"], "Alt") --Bone Ring Helm
    LBIS:AddItem(spec0, "19058", LBIS.L["Shoulder"], "Alt") --Golden Mantle of the Dawn
    LBIS:AddItem(spec0, "10783", LBIS.L["Shoulder"], "Alt") --Atal'ai Spaulders
    LBIS:AddItem(spec0, "12551", LBIS.L["Back"], "Alt") --Stoneshield Cloak
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "15064", LBIS.L["Chest"], "Alt") --Warbear Harness
    LBIS:AddItem(spec0, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec0, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec0, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec0, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec0, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec0, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec0, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec0, "11821", LBIS.L["Legs"], "Alt") --Warstrife Leggings
    LBIS:AddItem(spec0, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec0, "18716", LBIS.L["Feet"], "Alt") --Ash Covered Boots
    LBIS:AddItem(spec0, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec0, "20186", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec0, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec0, "13966", LBIS.L["Trinket"], "Alt") --Mark of Tyranny
    LBIS:AddItem(spec0, "11811", LBIS.L["Trinket"], "Alt") --Smoking Heart of the Mountain
    LBIS:AddItem(spec0, "9449", LBIS.L["Main Hand"], "Alt") --Manual Crowd Pummeler
    LBIS:AddItem(spec0, "943", LBIS.L["Main Hand"], "Alt") --Warden Staff
    LBIS:AddItem(spec0, "18531", LBIS.L["Main Hand"], "Alt") --Unyielding Maul
    LBIS:AddItem(spec0, "23198", LBIS.L["Ranged"], "BIS") --Idol of Brutality

    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "BIS") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "14539", LBIS.L["Head"], "Alt") --Bone Ring Helm
    LBIS:AddItem(spec1, "19139", LBIS.L["Shoulder"], "BIS") --Fireguard Shoulders
    LBIS:AddItem(spec1, "10783", LBIS.L["Shoulder"], "Alt") --Atal'ai Spaulders
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12551", LBIS.L["Back"], "BIS") --Stoneshield Cloak
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec1, "12757", LBIS.L["Chest"], "BIS") --Breastplate of Bloodthirst
    LBIS:AddItem(spec1, "15064", LBIS.L["Chest"], "Alt") --Warbear Harness
    LBIS:AddItem(spec1, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "BIS") --Blackmist Armguards
    LBIS:AddItem(spec1, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec1, "13258", LBIS.L["Hands"], "BIS") --Slaghide Gauntlets
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "19163", LBIS.L["Waist"], "BIS") --Molten Belt
    LBIS:AddItem(spec1, "19149", LBIS.L["Waist"], "Alt") --Lava Belt
    LBIS:AddItem(spec1, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec1, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec1, "11821", LBIS.L["Legs"], "BIS") --Warstrife Leggings
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec1, "18716", LBIS.L["Feet"], "BIS") --Ash Covered Boots
    LBIS:AddItem(spec1, "14641", LBIS.L["Feet"], "Alt") --Cadaverous Walkers
    LBIS:AddItem(spec1, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "17065", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec1, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec1, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec1, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec1, "18879", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec1, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec1, "12544", LBIS.L["Ring"], "Alt") --Thrall's Resolve
    LBIS:AddItem(spec1, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec1, "11811", LBIS.L["Trinket"], "BIS") --Smoking Heart of the Mountain
    LBIS:AddItem(spec1, "13966", LBIS.L["Trinket"], "Alt") --Mark of Tyranny
    LBIS:AddItem(spec1, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "868", LBIS.L["Main Hand"], "BIS") --Ardent Custodian
    LBIS:AddItem(spec1, "11805", LBIS.L["Main Hand"], "Alt") --Rubidium Hammer
    LBIS:AddItem(spec1, "18044", LBIS.L["Main Hand"], "Alt") --Hurley's Tankard
    LBIS:AddItem(spec1, "13385", LBIS.L["Off Hand"], "BIS") --Tome of Knowledge
    LBIS:AddItem(spec1, "943", LBIS.L["Two Hand"], "BIS") --Warden Staff
    LBIS:AddItem(spec1, "9449", LBIS.L["Two Hand"], "Alt") --Manual Crowd Pummeler
end
