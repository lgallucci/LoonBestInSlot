local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Balance"], "8")

    LBIS:AddEnchant(spec6, "22844", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29467", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec0, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec0, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec0, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec0, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec0, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec0, "18385", LBIS.L["Chest"], "BIS") --Robe of Everlasting Night
    LBIS:AddItem(spec0, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec0, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec0, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec0, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec0, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec0, "20171", LBIS.L["Waist"], "Alt") --Defiler's Lizardhide Girdle
    LBIS:AddItem(spec0, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec0, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec0, "11822", LBIS.L["Feet"], "BIS") --Omnicast Boots
    LBIS:AddItem(spec0, "12103", LBIS.L["Neck"], "BIS") --Star of Mystaria
    LBIS:AddItem(spec0, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec0, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec0, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "18534", LBIS.L["Main Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec0, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec0, "10796", LBIS.L["Off Hand"], "BIS") --Drakestone
    LBIS:AddItem(spec0, "23197", LBIS.L["Ranged"], "BIS") --Idol of the Moon

    LBIS:AddItem(spec1, "18727", LBIS.L["Head"], "BIS") --Crimson Felt Hat
    LBIS:AddItem(spec1, "10250", LBIS.L["Head"], "Alt") --Master's Hat
    LBIS:AddItem(spec1, "15999", LBIS.L["Head"], "Alt") --Spellpower Goggles Xtreme Plus
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "BIS") --Burial Shawl
    LBIS:AddItem(spec1, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec1, "14335", LBIS.L["Shoulder"], "Alt") --Eternal Spaulders
    LBIS:AddItem(spec1, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec1, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec1, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec1, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec1, "10249", LBIS.L["Back"], "Alt") --Master's Cloak
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec1, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec1, "10246", LBIS.L["Chest"], "Alt") --Master's Vest
    LBIS:AddItem(spec1, "18263", LBIS.L["Wrist"], "BIS") --Flarecore Wraps
    LBIS:AddItem(spec1, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec1, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec1, "10248", LBIS.L["Wrist"], "Alt") --Master's Bracers
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec1, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec1, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec1, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec1, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec1, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec1, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "BIS") --Omnicast Boots
    LBIS:AddItem(spec1, "10247", LBIS.L["Feet"], "Alt") --Master's Boots
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec1, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec1, "15856", LBIS.L["Neck"], "Alt") --Archlight Talisman
    LBIS:AddItem(spec1, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec1, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec1, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec1, "18878", LBIS.L["Main Hand"], "BIS") --Sorcerous Dagger
    LBIS:AddItem(spec1, "15247", LBIS.L["Main Hand"], "Alt") --Bloodstrike Dagger
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "10796", LBIS.L["Off Hand"], "BIS") --Drakestone
    LBIS:AddItem(spec1, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec1, "15278", LBIS.L["Two Hand"], "Alt") --Solstice Staff
    LBIS:AddItem(spec1, "13289", LBIS.L["Ranged/Relic"], "BIS") --Egan's Blaster

    LBIS:AddItem(spec2, "18727", LBIS.L["Head"], "BIS") --Crimson Felt Hat
    LBIS:AddItem(spec2, "10250", LBIS.L["Head"], "Alt") --Master's Hat
    LBIS:AddItem(spec2, "15999", LBIS.L["Head"], "Alt") --Spellpower Goggles Xtreme Plus
    LBIS:AddItem(spec2, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec2, "23308", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dragonhide Headguard
    LBIS:AddItem(spec2, "23253", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec2, "18526", LBIS.L["Head"], "Alt") --Crown of the Ogre King
    LBIS:AddItem(spec2, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "BIS") --Burial Shawl
    LBIS:AddItem(spec2, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec2, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec2, "18528", LBIS.L["Shoulder"], "Alt") --Cyclone Spaulders
    LBIS:AddItem(spec2, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec2, "14335", LBIS.L["Shoulder"], "Alt") --Eternal Spaulders
    LBIS:AddItem(spec2, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec2, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec2, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec2, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec2, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec2, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec2, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec2, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec2, "10249", LBIS.L["Back"], "Alt") --Master's Cloak
    LBIS:AddItem(spec2, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec2, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec2, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec2, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec2, "23294", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "22877", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec2, "10246", LBIS.L["Chest"], "Alt") --Master's Vest
    LBIS:AddItem(spec2, "19595", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec2, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec2, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec2, "10248", LBIS.L["Wrist"], "Alt") --Master's Bracers
    LBIS:AddItem(spec2, "18337", LBIS.L["Wrist"], "Alt") --Orphic Bracers
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec2, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec2, "18387", LBIS.L["Hands"], "Alt") --Brightspark Gloves
    LBIS:AddItem(spec2, "18368", LBIS.L["Hands"], "Alt") --Gordok's Gloves
    LBIS:AddItem(spec2, "23280", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec2, "22863", LBIS.L["Hands"], "Alt") --Blood Guard's Dragonhide Grips
    LBIS:AddItem(spec2, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec2, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec2, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec2, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec2, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec2, "18475", LBIS.L["Waist"], "Alt") --Oddly Magical Belt
    LBIS:AddItem(spec2, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec2, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec2, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec2, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec2, "18545", LBIS.L["Legs"], "Alt") --Leggings of Arcane Supremacy
    LBIS:AddItem(spec2, "22752", LBIS.L["Legs"], "Alt") --Sentinel's Silk Leggings
    LBIS:AddItem(spec2, "22747", LBIS.L["Legs"], "Alt") --Outrider's Silk Leggings
    LBIS:AddItem(spec2, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec2, "22878", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec2, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "10247", LBIS.L["Feet"], "Alt") --Master's Boots
    LBIS:AddItem(spec2, "23281", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec2, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec2, "22149", LBIS.L["Neck"], "Alt") --Beads of Ogre Mojo
    LBIS:AddItem(spec2, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec2, "15856", LBIS.L["Neck"], "Alt") --Archlight Talisman
    LBIS:AddItem(spec2, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec2, "18543", LBIS.L["Ring"], "Alt") --Ring of Entropy
    LBIS:AddItem(spec2, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec2, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec2, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "18470", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "17070", LBIS.L["Main Hand"], "BIS") --Fang of the Mystics
    LBIS:AddItem(spec2, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec2, "15247", LBIS.L["Main Hand"], "Alt") --Bloodstrike Dagger
    LBIS:AddItem(spec2, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec2, "10796", LBIS.L["Off Hand"], "BIS") --Drakestone
    LBIS:AddItem(spec2, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec2, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec2, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec2, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec2, "15278", LBIS.L["Two Hand"], "Alt") --Solstice Staff
    LBIS:AddItem(spec2, "13289", LBIS.L["Ranged/Relic"], "BIS") --Egan's Blaster

    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec3, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec3, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec3, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec3, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec3, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec3, "16449", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec3, "16551", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec3, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec3, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec3, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec3, "18528", LBIS.L["Shoulder"], "Alt") --Cyclone Spaulders
    LBIS:AddItem(spec3, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec3, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec3, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec3, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec3, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec3, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec3, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec3, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec3, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec3, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec3, "1716", LBIS.L["Chest"], "Alt") --Robe of the Magi
    LBIS:AddItem(spec3, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec3, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec3, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec3, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec3, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec3, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec3, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec3, "13258", LBIS.L["Hands"], "BIS") --Slaghide Gauntlets
    LBIS:AddItem(spec3, "19390", LBIS.L["Hands"], "Alt") --Taut Dragonhide Gloves
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec3, "12464", LBIS.L["Hands"], "Alt") --Bloodfire Talons
    LBIS:AddItem(spec3, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec3, "19388", LBIS.L["Waist"], "BIS") --Angelista's Grasp
    LBIS:AddItem(spec3, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec3, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec3, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec3, "18475", LBIS.L["Waist"], "Alt") --Oddly Magical Belt
    LBIS:AddItem(spec3, "4329", LBIS.L["Waist"], "Alt") --Star Belt
    LBIS:AddItem(spec3, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec3, "16828", LBIS.L["Waist"], "Alt") --Cenarion Belt
    LBIS:AddItem(spec3, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec3, "18545", LBIS.L["Legs"], "BIS") --Leggings of Arcane Supremacy
    LBIS:AddItem(spec3, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec3, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec3, "11823", LBIS.L["Legs"], "Alt") --Luminary Kilt
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec3, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec3, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec3, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "22403", LBIS.L["Neck"], "BIS") --Nacreous Shell Necklace
    LBIS:AddItem(spec3, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec3, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec3, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec3, "14558", LBIS.L["Neck"], "Alt") --Lady Maye's Pendant
    LBIS:AddItem(spec3, "1443", LBIS.L["Neck"], "Alt") --Jeweled Amulet of Cainwyn
    LBIS:AddItem(spec3, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec3, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec3, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec3, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec3, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec3, "18543", LBIS.L["Ring"], "Alt") --Ring of Entropy
    LBIS:AddItem(spec3, "18403", LBIS.L["Ring"], "Alt") --Dragonslayer's Signet
    LBIS:AddItem(spec3, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec3, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec3, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec3, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec3, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec3, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec3, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec3, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec3, "19308", LBIS.L["Off Hand"], "BIS") --Tome of Arcane Domination
    LBIS:AddItem(spec3, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec3, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec3, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec3, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec3, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec3, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec3, "19142", LBIS.L["Off Hand"], "Alt") --Fire Runed Grimoire
    LBIS:AddItem(spec3, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec3, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec3, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec3, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec3, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec3, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec3, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec3, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec3, "20220", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec3, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec3, "23455", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Demolisher
    LBIS:AddItem(spec3, "23465", LBIS.L["Two Hand"], "Alt") --High Warlord's Destroyer
    LBIS:AddItem(spec3, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec3, "22458", LBIS.L["Two Hand"], "Alt") --Moonshadow Stave
    LBIS:AddItem(spec3, "18082", LBIS.L["Two Hand"], "Alt") --Zum'rah's Vexing Cane
    LBIS:AddItem(spec3, "10844", LBIS.L["Two Hand"], "Alt") --Spire of Hakkar
    LBIS:AddItem(spec3, "13289", LBIS.L["Ranged/Relic"], "BIS") --Egan's Blaster

    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec4, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec4, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec4, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec4, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec4, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec4, "16449", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec4, "16551", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec4, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec4, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec4, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec4, "18528", LBIS.L["Shoulder"], "Alt") --Cyclone Spaulders
    LBIS:AddItem(spec4, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec4, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec4, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec4, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec4, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec4, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec4, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec4, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec4, "1716", LBIS.L["Chest"], "Alt") --Robe of the Magi
    LBIS:AddItem(spec4, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec4, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec4, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec4, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec4, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec4, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec4, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec4, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec4, "19929", LBIS.L["Hands"], "BIS") --Bloodtinged Gloves
    LBIS:AddItem(spec4, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec4, "19390", LBIS.L["Hands"], "Alt") --Taut Dragonhide Gloves
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec4, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec4, "12464", LBIS.L["Hands"], "Alt") --Bloodfire Talons
    LBIS:AddItem(spec4, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec4, "19388", LBIS.L["Waist"], "BIS") --Angelista's Grasp
    LBIS:AddItem(spec4, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec4, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec4, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec4, "18475", LBIS.L["Waist"], "Alt") --Oddly Magical Belt
    LBIS:AddItem(spec4, "4329", LBIS.L["Waist"], "Alt") --Star Belt
    LBIS:AddItem(spec4, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec4, "16828", LBIS.L["Waist"], "Alt") --Cenarion Belt
    LBIS:AddItem(spec4, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec4, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec4, "18545", LBIS.L["Legs"], "Alt") --Leggings of Arcane Supremacy
    LBIS:AddItem(spec4, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec4, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec4, "11823", LBIS.L["Legs"], "Alt") --Luminary Kilt
    LBIS:AddItem(spec4, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec4, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec4, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "22403", LBIS.L["Neck"], "BIS") --Nacreous Shell Necklace
    LBIS:AddItem(spec4, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec4, "14558", LBIS.L["Neck"], "Alt") --Lady Maye's Pendant
    LBIS:AddItem(spec4, "1443", LBIS.L["Neck"], "Alt") --Jeweled Amulet of Cainwyn
    LBIS:AddItem(spec4, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec4, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec4, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec4, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec4, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec4, "18543", LBIS.L["Ring"], "Alt") --Ring of Entropy
    LBIS:AddItem(spec4, "18403", LBIS.L["Ring"], "Alt") --Dragonslayer's Signet
    LBIS:AddItem(spec4, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec4, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec4, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec4, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec4, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec4, "19308", LBIS.L["Off Hand"], "BIS") --Tome of Arcane Domination
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec4, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec4, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec4, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec4, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec4, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec4, "19142", LBIS.L["Off Hand"], "Alt") --Fire Runed Grimoire
    LBIS:AddItem(spec4, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec4, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec4, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec4, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec4, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec4, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec4, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec4, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec4, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec4, "20220", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec4, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec4, "23455", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Demolisher
    LBIS:AddItem(spec4, "23465", LBIS.L["Two Hand"], "Alt") --High Warlord's Destroyer
    LBIS:AddItem(spec4, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec4, "22458", LBIS.L["Two Hand"], "Alt") --Moonshadow Stave
    LBIS:AddItem(spec4, "18082", LBIS.L["Two Hand"], "Alt") --Zum'rah's Vexing Cane
    LBIS:AddItem(spec4, "10844", LBIS.L["Two Hand"], "Alt") --Spire of Hakkar
    LBIS:AddItem(spec4, "23197", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Moon

    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec5, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec5, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec5, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec5, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec5, "16449", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dragonhide Spaulders
    LBIS:AddItem(spec5, "16551", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Epaulets
    LBIS:AddItem(spec5, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec5, "23254", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec5, "23309", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec5, "18528", LBIS.L["Shoulder"], "Alt") --Cyclone Spaulders
    LBIS:AddItem(spec5, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec5, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec5, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec5, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec5, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec5, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec5, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec5, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec5, "1716", LBIS.L["Chest"], "Alt") --Robe of the Magi
    LBIS:AddItem(spec5, "16452", LBIS.L["Chest"], "Alt") --Field Marshal's Dragonhide Breastplate
    LBIS:AddItem(spec5, "16549", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Hauberk
    LBIS:AddItem(spec5, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec5, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec5, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec5, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec5, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec5, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec5, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec5, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec5, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec5, "19390", LBIS.L["Hands"], "Alt") --Taut Dragonhide Gloves
    LBIS:AddItem(spec5, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec5, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec5, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec5, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec5, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec5, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec5, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec5, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec5, "18545", LBIS.L["Legs"], "Alt") --Leggings of Arcane Supremacy
    LBIS:AddItem(spec5, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec5, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec5, "11823", LBIS.L["Legs"], "Alt") --Luminary Kilt
    LBIS:AddItem(spec5, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec5, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec5, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec5, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec5, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec5, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec5, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec5, "14558", LBIS.L["Neck"], "Alt") --Lady Maye's Pendant
    LBIS:AddItem(spec5, "1443", LBIS.L["Neck"], "Alt") --Jeweled Amulet of Cainwyn
    LBIS:AddItem(spec5, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec5, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec5, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec5, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec5, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec5, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec5, "18543", LBIS.L["Ring"], "Alt") --Ring of Entropy
    LBIS:AddItem(spec5, "18403", LBIS.L["Ring"], "Alt") --Dragonslayer's Signet
    LBIS:AddItem(spec5, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec5, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec5, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec5, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec5, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec5, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec5, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec5, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec5, "21597", LBIS.L["Off Hand"], "BIS") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec5, "19308", LBIS.L["Off Hand"], "Alt") --Tome of Arcane Domination
    LBIS:AddItem(spec5, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec5, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec5, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec5, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec5, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec5, "21273", LBIS.L["Two Hand"], "BIS") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec5, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec5, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec5, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec5, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec5, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec5, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec5, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec5, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec5, "20220", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec5, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec5, "23455", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Demolisher
    LBIS:AddItem(spec5, "23465", LBIS.L["Two Hand"], "Alt") --High Warlord's Destroyer
    LBIS:AddItem(spec5, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec5, "22458", LBIS.L["Two Hand"], "Alt") --Moonshadow Stave
    LBIS:AddItem(spec5, "18082", LBIS.L["Two Hand"], "Alt") --Zum'rah's Vexing Cane
    LBIS:AddItem(spec5, "10844", LBIS.L["Two Hand"], "Alt") --Spire of Hakkar
    LBIS:AddItem(spec5, "23197", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Moon

    LBIS:AddItem(spec6, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec6, "23035", LBIS.L["Head"], "BIS") --Preceptor's Hat
    LBIS:AddItem(spec6, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec6, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec6, "22983", LBIS.L["Shoulder"], "BIS") --Rime Covered Mantle
    LBIS:AddItem(spec6, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec6, "20686", LBIS.L["Shoulder"], "Alt") --Abyssal Cloth Amice
    LBIS:AddItem(spec6, "23050", LBIS.L["Back"], "BIS") --Cloak of the Necropolis
    LBIS:AddItem(spec6, "22731", LBIS.L["Back"], "Alt") --Cloak of the Devoured
    LBIS:AddItem(spec6, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "23017", LBIS.L["Back"], "Alt") --Veil of Eclipse
    LBIS:AddItem(spec6, "21838", LBIS.L["Chest"], "BIS") --Garb of Royal Ascension
    LBIS:AddItem(spec6, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec6, "23220", LBIS.L["Chest"], "BIS") --Crystal Webbed Robe
    LBIS:AddItem(spec6, "23085", LBIS.L["Chest"], "Alt") --Robe of Undead Cleansing
    LBIS:AddItem(spec6, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec6, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec6, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec6, "21611", LBIS.L["Wrist"], "Alt") --Burrower Bracers
    LBIS:AddItem(spec6, "23021", LBIS.L["Wrist"], "Alt") --The Soul Harvester's Bindings
    LBIS:AddItem(spec6, "23091", LBIS.L["Wrist"], "Alt") --Bracers of Undead Cleansing
    LBIS:AddItem(spec6, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "23084", LBIS.L["Hands"], "Alt") --Gloves of Undead Cleansing
    LBIS:AddItem(spec6, "21689", LBIS.L["Hands"], "Alt") --Gloves of Ebru
    LBIS:AddItem(spec6, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec6, "13258", LBIS.L["Hands"], "Alt") --Slaghide Gauntlets
    LBIS:AddItem(spec6, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec6, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec6, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec6, "23070", LBIS.L["Legs"], "BIS") --Leggings of Polarity
    LBIS:AddItem(spec6, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec6, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec6, "21600", LBIS.L["Feet"], "Alt") --Boots of Epiphany
    LBIS:AddItem(spec6, "20634", LBIS.L["Feet"], "Alt") --Boots of Fright
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "23057", LBIS.L["Neck"], "BIS") --Gem of Trapped Innocents
    LBIS:AddItem(spec6, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "22943", LBIS.L["Neck"], "Alt") --Malice Stone Pendant
    LBIS:AddItem(spec6, "19613", LBIS.L["Neck"], "Alt") --Pristine Enchanted South Seas Kelp
    LBIS:AddItem(spec6, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec6, "23031", LBIS.L["Ring"], "BIS") --Band of the Inevitable
    LBIS:AddItem(spec6, "23025", LBIS.L["Ring"], "Alt") --Seal of the Damned
    LBIS:AddItem(spec6, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec6, "21836", LBIS.L["Ring"], "Alt") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec6, "23207", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "23046", LBIS.L["Trinket"], "BIS") --The Restrained Essence of Sapphiron
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "19812", LBIS.L["Trinket"], "Alt") --Rune of the Dawn
    LBIS:AddItem(spec6, "23001", LBIS.L["Trinket"], "Alt") --Eye of Diminution
    LBIS:AddItem(spec6, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "22988", LBIS.L["Main Hand"], "BIS") --The End of Dreams
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "22803", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "23049", LBIS.L["Off Hand"], "BIS") --Sapphiron's Left Eye
    LBIS:AddItem(spec6, "21597", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec6, "21471", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec6, "22800", LBIS.L["Two Hand"], "BIS") --Brimstone Staff
    LBIS:AddItem(spec6, "22799", LBIS.L["Two Hand"], "Alt") --Soulseeker
    LBIS:AddItem(spec6, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec6, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
end
if not LBIS.IsSOD then
    LoadData();
end
