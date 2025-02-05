local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Bear"], "7")

    LBIS:AddEnchant(spec2, "22840", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "20015", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20026", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20011", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "13948", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "22840", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "7218", LBIS.L["Main Hand"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
