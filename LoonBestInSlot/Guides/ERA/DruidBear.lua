local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "8")

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

    LBIS:AddItem(spec2, "23308", LBIS.L["Head"], "BIS") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec2, "23253", LBIS.L["Head"], "BIS") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "14539", LBIS.L["Head"], "Alt") --Bone Ring Helm
    LBIS:AddItem(spec2, "16707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec2, "23309", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec2, "23254", LBIS.L["Shoulder"], "BIS") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec2, "19139", LBIS.L["Shoulder"], "Alt") --Fireguard Shoulders
    LBIS:AddItem(spec2, "10783", LBIS.L["Shoulder"], "Alt") --Atal'ai Spaulders of the Monkey
    LBIS:AddItem(spec2, "18374", LBIS.L["Shoulder"], "Alt") --Flamescarred Shoulders
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec2, "17107", LBIS.L["Back"], "BIS") --Dragon's Blood Cape
    LBIS:AddItem(spec2, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec2, "16342", LBIS.L["Back"], "Alt") --Sergeant's Cape
    LBIS:AddItem(spec2, "18461", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "12551", LBIS.L["Back"], "Alt") --Stoneshield Cloak
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec2, "22877", LBIS.L["Chest"], "BIS") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "23294", LBIS.L["Chest"], "BIS") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec2, "15064", LBIS.L["Chest"], "Alt") --Warbear Harness
    LBIS:AddItem(spec2, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec2, "12966", LBIS.L["Wrist"], "BIS") --Blackmist Armguards
    LBIS:AddItem(spec2, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec2, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec2, "13258", LBIS.L["Hands"], "BIS") --Slaghide Gauntlets of the Monkey
    LBIS:AddItem(spec2, "23280", LBIS.L["Hands"], "BIS") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec2, "22863", LBIS.L["Hands"], "BIS") --Blood Guard's Dragonhide Grips
    LBIS:AddItem(spec2, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec2, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "14502", LBIS.L["Waist"], "BIS") --Frostbite Girdle
    LBIS:AddItem(spec2, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec2, "19093", LBIS.L["Waist"], "Alt") --Stormpike Leather Girdle
    LBIS:AddItem(spec2, "19089", LBIS.L["Waist"], "Alt") --Frostwolf Leather Belt
    LBIS:AddItem(spec2, "23295", LBIS.L["Legs"], "BIS") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec2, "22878", LBIS.L["Legs"], "BIS") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec2, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec2, "14638", LBIS.L["Legs"], "Alt") --Cadaverous Leggings
    LBIS:AddItem(spec2, "11821", LBIS.L["Legs"], "Alt") --Warstrife Leggings
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec2, "23281", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec2, "22852", LBIS.L["Feet"], "BIS") --Blood Guard's Dragonhide Treads
    LBIS:AddItem(spec2, "18716", LBIS.L["Feet"], "Alt") --Ash Covered Boots
    LBIS:AddItem(spec2, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec2, "14641", LBIS.L["Feet"], "Alt") --Cadaverous Walkers
    LBIS:AddItem(spec2, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec2, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "17065", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec2, "17111", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec2, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec2, "19097", LBIS.L["Neck"], "Alt") --Stormpike Soldier's Pendant
    LBIS:AddItem(spec2, "19095", LBIS.L["Neck"], "Alt") --Frostwolf Legionnaire's Pendant
    LBIS:AddItem(spec2, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec2, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec2, "18879", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec2, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec2, "12544", LBIS.L["Ring"], "Alt") --Thrall's Resolve
    LBIS:AddItem(spec2, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec2, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec2, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec2, "11811", LBIS.L["Trinket"], "BIS") --Smoking Heart of the Mountain
    LBIS:AddItem(spec2, "13966", LBIS.L["Trinket"], "BIS") --Mark of Tyranny
    LBIS:AddItem(spec2, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18376", LBIS.L["Main Hand"], "BIS") --Timeworn Mace
    LBIS:AddItem(spec2, "11805", LBIS.L["Main Hand"], "Alt") --Rubidium Hammer
    LBIS:AddItem(spec2, "868", LBIS.L["Main Hand"], "Alt") --Ardent Custodian
    LBIS:AddItem(spec2, "18044", LBIS.L["Main Hand"], "Alt") --Hurley's Tankard
    LBIS:AddItem(spec2, "13385", LBIS.L["Off Hand"], "BIS") --Tome of Knowledge
    LBIS:AddItem(spec2, "9449", LBIS.L["Two Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec2, "18531", LBIS.L["Two Hand"], "BIS Mit") --Unyielding Maul
    LBIS:AddItem(spec2, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec2, "18420", LBIS.L["Two Hand"], "Alt") --Bonecrusher
    LBIS:AddItem(spec2, "943", LBIS.L["Two Hand"], "Alt") --Warden Staff

    LBIS:AddItem(spec3, "16550", LBIS.L["Head"], "BIS") --Warlord's Dragonhide Helmet
    LBIS:AddItem(spec3, "16451", LBIS.L["Head"], "BIS") --Field Marshal's Dragonhide Helmet
    LBIS:AddItem(spec3, "23308", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec3, "23253", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec3, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec3, "14539", LBIS.L["Head"], "Alt") --Bone Ring Helm
    LBIS:AddItem(spec3, "16707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec3, "20175", LBIS.L["Shoulder"], "BIS") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec3, "20059", LBIS.L["Shoulder"], "BIS") --Highlander's Leather Shoulders
    LBIS:AddItem(spec3, "16551", LBIS.L["Shoulder"], "BIS") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec3, "16449", LBIS.L["Shoulder"], "BIS") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec3, "19389", LBIS.L["Shoulder"], "Alt") --Taut Dragonhide Shoulderpads
    LBIS:AddItem(spec3, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec3, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec3, "19139", LBIS.L["Shoulder"], "Alt") --Fireguard Shoulders
    LBIS:AddItem(spec3, "10783", LBIS.L["Shoulder"], "Alt") --Atal'ai Spaulders of the Monkey
    LBIS:AddItem(spec3, "18374", LBIS.L["Shoulder"], "Alt") --Flamescarred Shoulders
    LBIS:AddItem(spec3, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec3, "19386", LBIS.L["Back"], "BIS") --Elementium Threaded Cloak
    LBIS:AddItem(spec3, "17107", LBIS.L["Back"], "BIS") --Dragon's Blood Cape
    LBIS:AddItem(spec3, "17102", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec3, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec3, "16342", LBIS.L["Back"], "Alt") --Sergeant's Cape
    LBIS:AddItem(spec3, "18461", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec3, "12551", LBIS.L["Back"], "Alt") --Stoneshield Cloak
    LBIS:AddItem(spec3, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec3, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec3, "19405", LBIS.L["Chest"], "BIS") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec3, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec3, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec3, "23294", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec3, "22877", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec3, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec3, "15064", LBIS.L["Chest"], "Alt") --Warbear Harness
    LBIS:AddItem(spec3, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec3, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec3, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec3, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec3, "13258", LBIS.L["Hands"], "BIS") --Slaghide Gauntlets of the Monkey
    LBIS:AddItem(spec3, "16555", LBIS.L["Hands"], "BIS") --General's Dragonhide Gloves
    LBIS:AddItem(spec3, "16448", LBIS.L["Hands"], "BIS") --Marshal's Dragonhide Gauntlets
    LBIS:AddItem(spec3, "23280", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec3, "22863", LBIS.L["Hands"], "Alt") --Blood Guard's Dragonhide Grips
    LBIS:AddItem(spec3, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec3, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec3, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec3, "19163", LBIS.L["Waist"], "BIS") --Molten Belt
    LBIS:AddItem(spec3, "19149", LBIS.L["Waist"], "BIS") --Lava Belt
    LBIS:AddItem(spec3, "14502", LBIS.L["Waist"], "Alt") --Frostbite Girdle
    LBIS:AddItem(spec3, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec3, "19093", LBIS.L["Waist"], "Alt") --Stormpike Leather Girdle
    LBIS:AddItem(spec3, "19089", LBIS.L["Waist"], "Alt") --Frostwolf Leather Belt
    LBIS:AddItem(spec3, "16552", LBIS.L["Legs"], "BIS") --General's Dragonhide Leggings
    LBIS:AddItem(spec3, "16450", LBIS.L["Legs"], "BIS") --Marshal's Dragonhide Legguards
    LBIS:AddItem(spec3, "22878", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec3, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec3, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec3, "14638", LBIS.L["Legs"], "Alt") --Cadaverous Leggings
    LBIS:AddItem(spec3, "11821", LBIS.L["Legs"], "Alt") --Warstrife Leggings
    LBIS:AddItem(spec3, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec3, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec3, "16554", LBIS.L["Feet"], "Alt") --General's Dragonhide Boots
    LBIS:AddItem(spec3, "16459", LBIS.L["Feet"], "Alt") --Marshal's Dragonhide Boots
    LBIS:AddItem(spec3, "23281", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec3, "22852", LBIS.L["Feet"], "Alt") --Blood Guard's Dragonhide Treads
    LBIS:AddItem(spec3, "18716", LBIS.L["Feet"], "Alt") --Ash Covered Boots
    LBIS:AddItem(spec3, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec3, "14641", LBIS.L["Feet"], "Alt") --Cadaverous Walkers
    LBIS:AddItem(spec3, "18506", LBIS.L["Feet"], "Alt") --Mongoose Boots
    LBIS:AddItem(spec3, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec3, "19383", LBIS.L["Neck"], "BIS") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec3, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "17065", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec3, "17111", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec3, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec3, "19097", LBIS.L["Neck"], "Alt") --Stormpike Soldier's Pendant
    LBIS:AddItem(spec3, "19095", LBIS.L["Neck"], "Alt") --Frostwolf Legionnaire's Pendant
    LBIS:AddItem(spec3, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec3, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec3, "19376", LBIS.L["Ring"], "BIS") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec3, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec3, "18879", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec3, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec3, "12544", LBIS.L["Ring"], "Alt") --Thrall's Resolve
    LBIS:AddItem(spec3, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec3, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec3, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec3, "11811", LBIS.L["Trinket"], "BIS") --Smoking Heart of the Mountain
    LBIS:AddItem(spec3, "13966", LBIS.L["Trinket"], "BIS") --Mark of Tyranny
    LBIS:AddItem(spec3, "17774", LBIS.L["Trinket"], "BIS") --Mark of the Chosen
    LBIS:AddItem(spec3, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "18376", LBIS.L["Main Hand"], "BIS") --Timeworn Mace
    LBIS:AddItem(spec3, "11805", LBIS.L["Main Hand"], "Alt") --Rubidium Hammer
    LBIS:AddItem(spec3, "868", LBIS.L["Main Hand"], "Alt") --Ardent Custodian
    LBIS:AddItem(spec3, "18044", LBIS.L["Main Hand"], "Alt") --Hurley's Tankard
    LBIS:AddItem(spec3, "13385", LBIS.L["Off Hand"], "BIS") --Tome of Knowledge
    LBIS:AddItem(spec3, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec3, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec3, "9449", LBIS.L["Two Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec3, "18868", LBIS.L["Two Hand"], "BIS") --High Warlord's Pulverizer
    LBIS:AddItem(spec3, "18867", LBIS.L["Two Hand"], "BIS") --Grand Marshal's Battle Hammer
    LBIS:AddItem(spec3, "18531", LBIS.L["Two Hand"], "BIS Mit") --Unyielding Maul
    LBIS:AddItem(spec3, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec3, "18420", LBIS.L["Two Hand"], "Alt") --Bonecrusher
    LBIS:AddItem(spec3, "943", LBIS.L["Two Hand"], "Alt") --Warden Staff

    LBIS:AddItem(spec4, "16451", LBIS.L["Head"], "BIS") --Field Marshal's Dragonhide Helmet
    LBIS:AddItem(spec4, "16550", LBIS.L["Head"], "BIS") --Warlord's Dragonhide Helmet
    LBIS:AddItem(spec4, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec4, "23308", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec4, "23253", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec4, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec4, "16707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec4, "18698", LBIS.L["Head"], "Alt") --Tattered Leather Hood
    LBIS:AddItem(spec4, "20059", LBIS.L["Shoulder"], "BIS") --Highlander's Leather Shoulders
    LBIS:AddItem(spec4, "20194", LBIS.L["Shoulder"], "BIS") --Defiler's Leather Shoulders
    LBIS:AddItem(spec4, "19389", LBIS.L["Shoulder"], "Alt") --Taut Dragonhide Shoulderpads
    LBIS:AddItem(spec4, "16551", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec4, "16449", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec4, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec4, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec4, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec4, "17107", LBIS.L["Back"], "BIS Mit") --Dragon's Blood Cape
    LBIS:AddItem(spec4, "19398", LBIS.L["Back"], "Alt Thrt") --Cloak of Firemaw
    LBIS:AddItem(spec4, "19386", LBIS.L["Back"], "Alt") --Elementium Threaded Cloak
    LBIS:AddItem(spec4, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec4, "19405", LBIS.L["Chest"], "BIS") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec4, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec4, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec4, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec4, "23294", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "22877", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "19439", LBIS.L["Chest"], "Alt") --Interlaced Shadow Jerkin
    LBIS:AddItem(spec4, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "22204", LBIS.L["Wrist"], "Alt") --Wristguards of Renown
    LBIS:AddItem(spec4, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec4, "16555", LBIS.L["Hands"], "BIS") --General's Dragonhide Gloves
    LBIS:AddItem(spec4, "16448", LBIS.L["Hands"], "BIS") --Marshal's Dragonhide Gauntlets
    LBIS:AddItem(spec4, "15063", LBIS.L["Hands"], "Alt Thrt") --Devilsaur Gauntlets
    LBIS:AddItem(spec4, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec4, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec4, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "19396", LBIS.L["Waist"], "BIS") --Taut Dragonhide Belt
    LBIS:AddItem(spec4, "20045", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec4, "20190", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec4, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec4, "13252", LBIS.L["Waist"], "Alt Thrt") --Cloudrunner Girdle
    LBIS:AddItem(spec4, "19149", LBIS.L["Waist"], "Alt") --Lava Belt
    LBIS:AddItem(spec4, "19093", LBIS.L["Waist"], "Alt") --Stormpike Leather Girdle
    LBIS:AddItem(spec4, "19089", LBIS.L["Waist"], "Alt") --Frostwolf Leather Belt
    LBIS:AddItem(spec4, "16450", LBIS.L["Legs"], "BIS") --Marshal's Dragonhide Legguards
    LBIS:AddItem(spec4, "16552", LBIS.L["Legs"], "BIS") --General's Dragonhide Leggings
    LBIS:AddItem(spec4, "22749", LBIS.L["Legs"], "Alt") --Sentinel's Leather Pants
    LBIS:AddItem(spec4, "22740", LBIS.L["Legs"], "Alt") --Outrider's Leather Pants
    LBIS:AddItem(spec4, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec4, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec4, "22878", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec4, "20665", LBIS.L["Legs"], "Alt") --Abyssal Leather Leggings
    LBIS:AddItem(spec4, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec4, "20052", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec4, "20186", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec4, "16459", LBIS.L["Feet"], "Alt") --Marshal's Dragonhide Boots
    LBIS:AddItem(spec4, "16554", LBIS.L["Feet"], "Alt") --General's Dragonhide Boots
    LBIS:AddItem(spec4, "22472", LBIS.L["Feet"], "Alt") --Boots of Ferocity
    LBIS:AddItem(spec4, "13210", LBIS.L["Feet"], "Alt Thrt") --Pads of the Dread Wolf
    LBIS:AddItem(spec4, "14641", LBIS.L["Feet"], "Alt") --Cadaverous Walkers
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "19377", LBIS.L["Neck"], "Alt Thrt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec4, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec4, "22150", LBIS.L["Neck"], "Alt Thrt") --Beads of Ogre Might
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec4, "19376", LBIS.L["Ring"], "Alt Mit") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec4, "18879", LBIS.L["Ring"], "Alt Mit") --Heavy Dark Iron Ring
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "BIS Thrt") --Drake Fang Talisman
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "BIS Thrt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "13966", LBIS.L["Trinket"], "BIS Mit") --Mark of Tyranny
    LBIS:AddItem(spec4, "17774", LBIS.L["Trinket"], "BIS") --Mark of the Chosen
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt Thrt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "11811", LBIS.L["Trinket"], "Alt Mit") --Smoking Heart of the Mountain
    LBIS:AddItem(spec4, "10418", LBIS.L["Trinket"], "Alt") --Glimmering Mithril Insignia
    LBIS:AddItem(spec4, "18863", LBIS.L["Trinket"], "Alt") --Insignia of the Alliance
    LBIS:AddItem(spec4, "18853", LBIS.L["Trinket"], "Alt") --Insignia of the Horde
    LBIS:AddItem(spec4, "9449", LBIS.L["Main Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec4, "18867", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Battle Hammer
    LBIS:AddItem(spec4, "18868", LBIS.L["Main Hand"], "Alt") --High Warlord's Pulverizer
    LBIS:AddItem(spec4, "19358", LBIS.L["Main Hand"], "Alt Thrt") --Draconic Maul
    LBIS:AddItem(spec4, "18531", LBIS.L["Main Hand"], "Alt") --Unyielding Maul
    LBIS:AddItem(spec4, "19323", LBIS.L["Main Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec4, "19357", LBIS.L["Main Hand"], "Alt") --Herald of Woe

    LBIS:AddItem(spec5, "16451", LBIS.L["Head"], "BIS") --Field Marshal's Dragonhide Helmet
    LBIS:AddItem(spec5, "16550", LBIS.L["Head"], "BIS") --Warlord's Dragonhide Helmet
    LBIS:AddItem(spec5, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec5, "21455", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec5, "23308", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec5, "23253", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec5, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec5, "16707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec5, "18698", LBIS.L["Head"], "Alt") --Tattered Leather Hood
    LBIS:AddItem(spec5, "20059", LBIS.L["Shoulder"], "BIS Mit") --Highlander's Leather Shoulders
    LBIS:AddItem(spec5, "20194", LBIS.L["Shoulder"], "BIS Mit") --Defiler's Leather Shoulders
    LBIS:AddItem(spec5, "21665", LBIS.L["Shoulder"], "BIS Thrt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec5, "19389", LBIS.L["Shoulder"], "Alt") --Taut Dragonhide Shoulderpads
    LBIS:AddItem(spec5, "16449", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec5, "16551", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec5, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec5, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec5, "10783", LBIS.L["Shoulder"], "Alt") --Atal'ai Spaulders
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "17107", LBIS.L["Back"], "BIS Mit") --Dragon's Blood Cape
    LBIS:AddItem(spec5, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec5, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec5, "19398", LBIS.L["Back"], "Alt Thrt") --Cloak of Firemaw
    LBIS:AddItem(spec5, "19386", LBIS.L["Back"], "Alt") --Elementium Threaded Cloak
    LBIS:AddItem(spec5, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec5, "21680", LBIS.L["Chest"], "BIS Thrt") --Vest of Swift Execution
    LBIS:AddItem(spec5, "19405", LBIS.L["Chest"], "BIS Mit") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec5, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec5, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec5, "12757", LBIS.L["Chest"], "Alt") --Breastplate of Bloodthirst
    LBIS:AddItem(spec5, "23294", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "22877", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "19439", LBIS.L["Chest"], "Alt") --Interlaced Shadow Jerkin
    LBIS:AddItem(spec5, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec5, "21602", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec5, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec5, "22204", LBIS.L["Wrist"], "Alt") --Wristguards of Renown
    LBIS:AddItem(spec5, "18700", LBIS.L["Wrist"], "Alt") --Malefic Bracers
    LBIS:AddItem(spec5, "21605", LBIS.L["Hands"], "BIS") --Gloves of the Hidden Temple
    LBIS:AddItem(spec5, "16448", LBIS.L["Hands"], "BIS") --Marshal's Dragonhide Gauntlets
    LBIS:AddItem(spec5, "16555", LBIS.L["Hands"], "BIS") --General's Dragonhide Gloves
    LBIS:AddItem(spec5, "21672", LBIS.L["Hands"], "Alt Thrt") --Gloves of Enforcement
    LBIS:AddItem(spec5, "15063", LBIS.L["Hands"], "Alt Thrt") --Devilsaur Gauntlets
    LBIS:AddItem(spec5, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec5, "18544", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec5, "18823", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec5, "21586", LBIS.L["Waist"], "BIS") --Belt of Never-ending Agony
    LBIS:AddItem(spec5, "19396", LBIS.L["Waist"], "BIS") --Taut Dragonhide Belt
    LBIS:AddItem(spec5, "20045", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec5, "20190", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec5, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec5, "13252", LBIS.L["Waist"], "Alt Thrt") --Cloudrunner Girdle
    LBIS:AddItem(spec5, "19149", LBIS.L["Waist"], "Alt") --Lava Belt
    LBIS:AddItem(spec5, "19093", LBIS.L["Waist"], "Alt") --Stormpike Leather Girdle
    LBIS:AddItem(spec5, "19089", LBIS.L["Waist"], "Alt") --Frostwolf Leather Belt
    LBIS:AddItem(spec5, "16450", LBIS.L["Legs"], "BIS") --Marshal's Dragonhide Legguards
    LBIS:AddItem(spec5, "16552", LBIS.L["Legs"], "BIS") --General's Dragonhide Leggings
    LBIS:AddItem(spec5, "22749", LBIS.L["Legs"], "Alt") --Sentinel's Leather Pants
    LBIS:AddItem(spec5, "22740", LBIS.L["Legs"], "Alt") --Outrider's Leather Pants
    LBIS:AddItem(spec5, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec5, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec5, "22878", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec5, "20665", LBIS.L["Legs"], "Alt") --Abyssal Leather Leggings
    LBIS:AddItem(spec5, "21493", LBIS.L["Feet"], "BIS") --Boots of the Vanguard
    LBIS:AddItem(spec5, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec5, "20052", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec5, "20186", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec5, "16459", LBIS.L["Feet"], "Alt") --Marshal's Dragonhide Boots
    LBIS:AddItem(spec5, "16554", LBIS.L["Feet"], "Alt") --General's Dragonhide Boots
    LBIS:AddItem(spec5, "22472", LBIS.L["Feet"], "Alt") --Boots of Ferocity
    LBIS:AddItem(spec5, "13210", LBIS.L["Feet"], "Alt Thrt") --Pads of the Dread Wolf
    LBIS:AddItem(spec5, "14641", LBIS.L["Feet"], "Alt") --Cadaverous Walkers
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19377", LBIS.L["Neck"], "Alt Thrt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec5, "22150", LBIS.L["Neck"], "Alt Thrt") --Beads of Ogre Might
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "18205", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "19384", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec5, "19376", LBIS.L["Ring"], "Alt Mit") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec5, "18879", LBIS.L["Ring"], "Alt Mit") --Heavy Dark Iron Ring
    LBIS:AddItem(spec5, "19406", LBIS.L["Trinket"], "BIS Thrt") --Drake Fang Talisman
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS Thrt") --Earthstrike
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "BIS Thrt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "13966", LBIS.L["Trinket"], "BIS Mit") --Mark of Tyranny
    LBIS:AddItem(spec5, "17774", LBIS.L["Trinket"], "BIS") --Mark of the Chosen
    LBIS:AddItem(spec5, "19120", LBIS.L["Trinket"], "Alt Thrt") --Rune of the Guard Captain
    LBIS:AddItem(spec5, "11811", LBIS.L["Trinket"], "Alt Mit") --Smoking Heart of the Mountain
    LBIS:AddItem(spec5, "10418", LBIS.L["Trinket"], "Alt") --Glimmering Mithril Insignia
    LBIS:AddItem(spec5, "18863", LBIS.L["Trinket"], "Alt") --Insignia of the Alliance
    LBIS:AddItem(spec5, "18853", LBIS.L["Trinket"], "Alt") --Insignia of the Horde
    LBIS:AddItem(spec5, "9449", LBIS.L["Main Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec5, "21268", LBIS.L["Main Hand"], "Alt") --Blessed Qiraji War Hammer
    LBIS:AddItem(spec5, "20580", LBIS.L["Main Hand"], "Alt") --Hammer of Bestial Fury
    LBIS:AddItem(spec5, "19358", LBIS.L["Main Hand"], "Alt Thrt") --Draconic Maul
    LBIS:AddItem(spec5, "18531", LBIS.L["Main Hand"], "Alt") --Unyielding Maul
    LBIS:AddItem(spec5, "19323", LBIS.L["Main Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec5, "19357", LBIS.L["Main Hand"], "Alt") --Herald of Woe
    LBIS:AddItem(spec5, "23198", LBIS.L["Ranged/Relic"], "BIS") --Idol of Brutality

    LBIS:AddItem(spec6, "16451", LBIS.L["Head"], "BIS") --Field Marshal's Dragonhide Helmet
    LBIS:AddItem(spec6, "16550", LBIS.L["Head"], "BIS") --Warlord's Dragonhide Helmet
    LBIS:AddItem(spec6, "8345", LBIS.L["Head"], "BIS") --Wolfshead Helm
    LBIS:AddItem(spec6, "21455", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec6, "21665", LBIS.L["Shoulder"], "BIS") --Mantle of Wicked Revenge
    LBIS:AddItem(spec6, "21474", LBIS.L["Shoulder"], "Alt") --Chitinous Shoulderguards
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "Alt") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "23045", LBIS.L["Back"], "Alt") --Shroud of Dominion
    LBIS:AddItem(spec6, "18541", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec6, "23226", LBIS.L["Chest"], "BIS") --Ghoul Skin Tunic
    LBIS:AddItem(spec6, "21680", LBIS.L["Chest"], "Alt") --Vest of Swift Execution
    LBIS:AddItem(spec6, "21602", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec6, "16448", LBIS.L["Hands"], "BIS") --Marshal's Dragonhide Gauntlets
    LBIS:AddItem(spec6, "16555", LBIS.L["Hands"], "BIS") --General's Dragonhide Gloves
    LBIS:AddItem(spec6, "21672", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec6, "21605", LBIS.L["Hands"], "Alt") --Gloves of the Hidden Temple
    LBIS:AddItem(spec6, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec6, "21586", LBIS.L["Waist"], "BIS") --Belt of Never-ending Agony
    LBIS:AddItem(spec6, "20216", LBIS.L["Waist"], "Alt") --Belt of Preserved Heads
    LBIS:AddItem(spec6, "23071", LBIS.L["Legs"], "BIS") --Leggings of Apocalypse
    LBIS:AddItem(spec6, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec6, "21493", LBIS.L["Feet"], "BIS") --Boots of the Vanguard
    LBIS:AddItem(spec6, "19381", LBIS.L["Feet"], "BIS") --Boots of the Shadow Flame
    LBIS:AddItem(spec6, "23053", LBIS.L["Neck"], "BIS") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec6, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "23038", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec6, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec6, "21677", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "19432", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec6, "23041", LBIS.L["Trinket"], "BIS") --Slayer's Crest
    LBIS:AddItem(spec6, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "9449", LBIS.L["Main Hand"], "BIS") --Manual Crowd Pummeler
    LBIS:AddItem(spec6, "22632", LBIS.L["Main Hand"], "BIS") --Atiesh, Greatstaff of the Guardian
    LBIS:AddItem(spec6, "21268", LBIS.L["Main Hand"], "Alt") --Blessed Qiraji War Hammer
    LBIS:AddItem(spec6, "20580", LBIS.L["Main Hand"], "Alt") --Hammer of Bestial Fury
    LBIS:AddItem(spec6, "23198", LBIS.L["Ranged/Relic"], "BIS") --Idol of Brutality
end
if not LBIS.IsSOD then
    LoadData();
end
