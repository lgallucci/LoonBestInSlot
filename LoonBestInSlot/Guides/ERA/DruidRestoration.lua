local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Restoration"], "8")

    LBIS:AddEnchant(spec6, "24168", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29475", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22750", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec0, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec0, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec0, "15061", LBIS.L["Shoulder"], "BIS") --Living Shoulders
    LBIS:AddItem(spec0, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec0, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec0, "20427", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec0, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec0, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec0, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec0, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec0, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec0, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec0, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec0, "20171", LBIS.L["Waist"], "Alt") --Defiler's Lizardhide Girdle
    LBIS:AddItem(spec0, "18386", LBIS.L["Legs"], "BIS") --Padre's Trousers
    LBIS:AddItem(spec0, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec0, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec0, "18723", LBIS.L["Neck"], "BIS") --Animated Chain Necklace
    LBIS:AddItem(spec0, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec0, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec0, "18470", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec0, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec0, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "11923", LBIS.L["Main Hand"], "BIS") --The Hammer of Grace
    LBIS:AddItem(spec0, "18523", LBIS.L["Off Hand"], "BIS") --Brightly Glowing Stone
    LBIS:AddItem(spec0, "22398", LBIS.L["Ranged"], "BIS") --Idol of Rejuvenation

    LBIS:AddItem(spec1, "16900", LBIS.L["Head"], "BIS") --Stormrage Cover
    LBIS:AddItem(spec1, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec1, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec1, "16836", LBIS.L["Shoulder"], "Alt") --Cenarion Spaulders
    LBIS:AddItem(spec1, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "11623", LBIS.L["Back"], "BIS") --Spritecaster Cape
    LBIS:AddItem(spec1, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec1, "16833", LBIS.L["Chest"], "Alt") --Cenarion Vestments
    LBIS:AddItem(spec1, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec1, "13208", LBIS.L["Wrist"], "BIS") --Bleak Howler Armguards
    LBIS:AddItem(spec1, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec1, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec1, "13107", LBIS.L["Wrist"], "Alt") --Magiskull Cuffs
    LBIS:AddItem(spec1, "12554", LBIS.L["Hands"], "BIS") --Hands of the Exalted Herald
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec1, "16831", LBIS.L["Hands"], "Alt") --Cenarion Gloves
    LBIS:AddItem(spec1, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec1, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec1, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec1, "16901", LBIS.L["Legs"], "Alt") --Stormrage Legguards
    LBIS:AddItem(spec1, "16835", LBIS.L["Legs"], "Alt") --Cenarion Leggings
    LBIS:AddItem(spec1, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec1, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec1, "13954", LBIS.L["Feet"], "BIS") --Verdant Footpads
    LBIS:AddItem(spec1, "16829", LBIS.L["Feet"], "Alt") --Cenarion Boots
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec1, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec1, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec1, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec1, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "17710", LBIS.L["Main Hand"], "Alt") --Charstone Dirk
    LBIS:AddItem(spec1, "11928", LBIS.L["Off Hand"], "BIS") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec1, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom

    LBIS:AddItem(spec2, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec2, "16900", LBIS.L["Head"], "Alt") --Stormrage Cover
    LBIS:AddItem(spec2, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec2, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec2, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec2, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec2, "16836", LBIS.L["Shoulder"], "Alt") --Cenarion Spaulders
    LBIS:AddItem(spec2, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec2, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec2, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec2, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec2, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec2, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec2, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec2, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec2, "16833", LBIS.L["Chest"], "Alt") --Cenarion Vestments
    LBIS:AddItem(spec2, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec2, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec2, "18525", LBIS.L["Wrist"], "BIS") --Bracers of Prosperity
    LBIS:AddItem(spec2, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec2, "18309", LBIS.L["Hands"], "BIS") --Gloves of Restoration
    LBIS:AddItem(spec2, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec2, "16831", LBIS.L["Hands"], "Alt") --Cenarion Gloves
    LBIS:AddItem(spec2, "14553", LBIS.L["Waist"], "BIS") --Sash of Mercy
    LBIS:AddItem(spec2, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec2, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec2, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec2, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec2, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec2, "16901", LBIS.L["Legs"], "Alt") --Stormrage Legguards
    LBIS:AddItem(spec2, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec2, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec2, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec2, "16835", LBIS.L["Legs"], "Alt") --Cenarion Leggings
    LBIS:AddItem(spec2, "13954", LBIS.L["Feet"], "BIS") --Verdant Footpads
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec2, "16829", LBIS.L["Feet"], "Alt") --Cenarion Boots
    LBIS:AddItem(spec2, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec2, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec2, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec2, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec2, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec2, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec2, "18470", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec2, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec2, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec2, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec2, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec2, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec2, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec2, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec2, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec2, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom

    LBIS:AddItem(spec3, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec3, "16900", LBIS.L["Head"], "Alt") --Stormrage Cover
    LBIS:AddItem(spec3, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec3, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec3, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec3, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec3, "16902", LBIS.L["Shoulder"], "Alt") --Stormrage Pauldrons
    LBIS:AddItem(spec3, "16836", LBIS.L["Shoulder"], "Alt") --Cenarion Spaulders
    LBIS:AddItem(spec3, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec3, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec3, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec3, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec3, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec3, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec3, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec3, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec3, "16897", LBIS.L["Chest"], "BIS") --Stormrage Chestguard
    LBIS:AddItem(spec3, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec3, "22272", LBIS.L["Chest"], "Alt") --Forest's Embrace
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec3, "16833", LBIS.L["Chest"], "Alt") --Cenarion Vestments
    LBIS:AddItem(spec3, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec3, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec3, "16904", LBIS.L["Wrist"], "BIS") --Stormrage Bracers
    LBIS:AddItem(spec3, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec3, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec3, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec3, "16830", LBIS.L["Wrist"], "Alt") --Cenarion Bracers
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "16899", LBIS.L["Hands"], "BIS") --Stormrage Handguards
    LBIS:AddItem(spec3, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec3, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "16831", LBIS.L["Hands"], "Alt") --Cenarion Gloves
    LBIS:AddItem(spec3, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec3, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec3, "16903", LBIS.L["Waist"], "Alt") --Stormrage Belt
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec3, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec3, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec3, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec3, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec3, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec3, "16901", LBIS.L["Legs"], "Alt") --Stormrage Legguards
    LBIS:AddItem(spec3, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec3, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec3, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec3, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec3, "16835", LBIS.L["Legs"], "Alt") --Cenarion Leggings
    LBIS:AddItem(spec3, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec3, "16898", LBIS.L["Feet"], "Alt") --Stormrage Boots
    LBIS:AddItem(spec3, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec3, "16829", LBIS.L["Feet"], "Alt") --Cenarion Boots
    LBIS:AddItem(spec3, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec3, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec3, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec3, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec3, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec3, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec3, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec3, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec3, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec3, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec3, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec3, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec3, "18470", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "19288", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec3, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec3, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec3, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec3, "23464", LBIS.L["Main Hand"], "BIS") --High Warlord's Battle Mace
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec3, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec3, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec3, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec3, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec3, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec3, "23469", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Mending
    LBIS:AddItem(spec3, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "BIS") --High Warlord's War Staff
    LBIS:AddItem(spec3, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec3, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec3, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom

    LBIS:AddItem(spec4, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec4, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec4, "16900", LBIS.L["Head"], "Alt") --Stormrage Cover
    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec4, "16902", LBIS.L["Shoulder"], "Alt") --Stormrage Pauldrons
    LBIS:AddItem(spec4, "16836", LBIS.L["Shoulder"], "Alt") --Cenarion Spaulders
    LBIS:AddItem(spec4, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec4, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec4, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec4, "16897", LBIS.L["Chest"], "Alt") --Stormrage Chestguard
    LBIS:AddItem(spec4, "22272", LBIS.L["Chest"], "Alt") --Forest's Embrace
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec4, "16904", LBIS.L["Wrist"], "BIS") --Stormrage Bracers
    LBIS:AddItem(spec4, "19840", LBIS.L["Wrist"], "Alt") --Zandalar Haruspex's Bracers
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec4, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec4, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec4, "16899", LBIS.L["Hands"], "BIS") --Stormrage Handguards
    LBIS:AddItem(spec4, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec4, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec4, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec4, "16903", LBIS.L["Waist"], "Alt") --Stormrage Belt
    LBIS:AddItem(spec4, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec4, "16901", LBIS.L["Legs"], "Alt") --Stormrage Legguards
    LBIS:AddItem(spec4, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec4, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec4, "16835", LBIS.L["Legs"], "Alt") --Cenarion Leggings
    LBIS:AddItem(spec4, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec4, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec4, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec4, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "16829", LBIS.L["Feet"], "Alt") --Cenarion Boots
    LBIS:AddItem(spec4, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec4, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec4, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec4, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec4, "19885", LBIS.L["Neck"], "BIS") --Jin'do's Evil Eye
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec4, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec4, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec4, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec4, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec4, "20636", LBIS.L["Trinket"], "BIS") --Hibernation Crystal
    LBIS:AddItem(spec4, "19955", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "18470", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "19288", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "Alt") --Neltharion's Tear
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec4, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec4, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec4, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec4, "23464", LBIS.L["Main Hand"], "BIS") --High Warlord's Battle Mace
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec4, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec4, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec4, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec4, "23469", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Mending
    LBIS:AddItem(spec4, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec4, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec4, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec4, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec4, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec4, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec4, "20220", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec4, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec4, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk

    LBIS:AddItem(spec5, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec5, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec5, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec5, "21669", LBIS.L["Head"], "Alt") --Creeping Vine Helm
    LBIS:AddItem(spec5, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec5, "16900", LBIS.L["Head"], "Alt") --Stormrage Cover
    LBIS:AddItem(spec5, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec5, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec5, "19928", LBIS.L["Shoulder"], "Alt") --Animist's Spaulders
    LBIS:AddItem(spec5, "16902", LBIS.L["Shoulder"], "Alt") --Stormrage Pauldrons
    LBIS:AddItem(spec5, "16836", LBIS.L["Shoulder"], "Alt") --Cenarion Spaulders
    LBIS:AddItem(spec5, "12103", LBIS.L["Shoulder"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec5, "21583", LBIS.L["Back"], "BIS") --Cloak of Clarity
    LBIS:AddItem(spec5, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec5, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec5, "19870", LBIS.L["Back"], "Alt") --Hakkari Loa Cloak
    LBIS:AddItem(spec5, "22330", LBIS.L["Back"], "Alt") --Shroud of Arcane Mastery
    LBIS:AddItem(spec5, "21663", LBIS.L["Chest"], "BIS") --Robes of the Guardian Saint
    LBIS:AddItem(spec5, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec5, "16897", LBIS.L["Chest"], "Alt") --Stormrage Chestguard
    LBIS:AddItem(spec5, "22272", LBIS.L["Chest"], "Alt") --Forest's Embrace
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec5, "21604", LBIS.L["Wrist"], "BIS") --Bracelets of Royal Redemption
    LBIS:AddItem(spec5, "16904", LBIS.L["Wrist"], "BIS") --Stormrage Bracers
    LBIS:AddItem(spec5, "19840", LBIS.L["Wrist"], "Alt") --Zandalar Haruspex's Bracers
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec5, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "21617", LBIS.L["Hands"], "BIS") --Wasphide Gauntlets
    LBIS:AddItem(spec5, "16899", LBIS.L["Hands"], "BIS") --Stormrage Handguards
    LBIS:AddItem(spec5, "21462", LBIS.L["Hands"], "Alt") --Gloves of Dark Wisdom
    LBIS:AddItem(spec5, "21619", LBIS.L["Hands"], "Alt") --Gloves of the Messiah
    LBIS:AddItem(spec5, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec5, "21582", LBIS.L["Waist"], "BIS") --Grasp of the Old God
    LBIS:AddItem(spec5, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec5, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec5, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec5, "16903", LBIS.L["Waist"], "Alt") --Stormrage Belt
    LBIS:AddItem(spec5, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec5, "16901", LBIS.L["Legs"], "Alt") --Stormrage Legguards
    LBIS:AddItem(spec5, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec5, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec5, "16835", LBIS.L["Legs"], "Alt") --Cenarion Leggings
    LBIS:AddItem(spec5, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec5, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec5, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec5, "16898", LBIS.L["Feet"], "Alt") --Stormrage Boots
    LBIS:AddItem(spec5, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "16829", LBIS.L["Feet"], "Alt") --Cenarion Boots
    LBIS:AddItem(spec5, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec5, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec5, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec5, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec5, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec5, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec5, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec5, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec5, "21620", LBIS.L["Ring"], "BIS") --Ring of the Martyr
    LBIS:AddItem(spec5, "19140", LBIS.L["Ring"], "Alt") --Cauterizing Band
    LBIS:AddItem(spec5, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec5, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec5, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec5, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec5, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec5, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec5, "20636", LBIS.L["Trinket"], "BIS") --Hibernation Crystal
    LBIS:AddItem(spec5, "19955", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "18470", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "19288", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "Alt") --Neltharion's Tear
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec5, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec5, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec5, "21839", LBIS.L["Main Hand"], "BIS") --Scepter of the False Prophet
    LBIS:AddItem(spec5, "23454", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Warhammer
    LBIS:AddItem(spec5, "23464", LBIS.L["Main Hand"], "Alt") --High Warlord's Battle Mace
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec5, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec5, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec5, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec5, "21666", LBIS.L["Off Hand"], "BIS") --Sartura's Might
    LBIS:AddItem(spec5, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec5, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec5, "23469", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Mending
    LBIS:AddItem(spec5, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec5, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec5, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec5, "21275", LBIS.L["Two Hand"], "BIS") --Blessed Qiraji Augur Staff
    LBIS:AddItem(spec5, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec5, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec5, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec5, "22406", LBIS.L["Two Hand"], "Alt") --Redemption
    LBIS:AddItem(spec5, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec5, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk
    LBIS:AddItem(spec5, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec5, "22399", LBIS.L["Ranged/Relic"], "BIS") --Idol of Health
    LBIS:AddItem(spec5, "22398", LBIS.L["Ranged/Relic"], "BIS") --Idol of Rejuvenation

    LBIS:AddItem(spec6, "16900", LBIS.L["Head"], "BIS") --Stormrage Cover
    LBIS:AddItem(spec6, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec6, "22490", LBIS.L["Head"], "BIS") --Dreamwalker Headpiece
    LBIS:AddItem(spec6, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec6, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec6, "21669", LBIS.L["Head"], "Alt") --Creeping Vine Helm
    LBIS:AddItem(spec6, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec6, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec6, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec6, "16902", LBIS.L["Shoulder"], "BIS") --Stormrage Pauldrons
    LBIS:AddItem(spec6, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec6, "22491", LBIS.L["Shoulder"], "BIS") --Dreamwalker Spaulders
    LBIS:AddItem(spec6, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec6, "19928", LBIS.L["Shoulder"], "Alt") --Animist's Spaulders
    LBIS:AddItem(spec6, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec6, "22234", LBIS.L["Shoulder"], "Alt") --Mantle of Lost Hope
    LBIS:AddItem(spec6, "22405", LBIS.L["Shoulder"], "Alt") --Mantle of the Scarlet Crusade
    LBIS:AddItem(spec6, "22960", LBIS.L["Back"], "BIS") --Cloak of Suturing
    LBIS:AddItem(spec6, "21583", LBIS.L["Back"], "Alt") --Cloak of Clarity
    LBIS:AddItem(spec6, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec6, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec6, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec6, "19870", LBIS.L["Back"], "Alt") --Hakkari Loa Cloak
    LBIS:AddItem(spec6, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec6, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec6, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec6, "22330", LBIS.L["Back"], "Alt") --Shroud of Arcane Mastery
    LBIS:AddItem(spec6, "16897", LBIS.L["Chest"], "BIS") --Stormrage Chestguard
    LBIS:AddItem(spec6, "22488", LBIS.L["Chest"], "BIS") --Dreamwalker Tunic
    LBIS:AddItem(spec6, "21663", LBIS.L["Chest"], "Alt") --Robes of the Guardian Saint
    LBIS:AddItem(spec6, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec6, "22272", LBIS.L["Chest"], "Alt") --Forest's Embrace
    LBIS:AddItem(spec6, "16904", LBIS.L["Wrist"], "BIS") --Stormrage Bracers
    LBIS:AddItem(spec6, "22495", LBIS.L["Wrist"], "BIS") --Dreamwalker Wristguards
    LBIS:AddItem(spec6, "21604", LBIS.L["Wrist"], "Alt") --Bracelets of Royal Redemption
    LBIS:AddItem(spec6, "19840", LBIS.L["Wrist"], "Alt") --Zandalar Haruspex's Bracers
    LBIS:AddItem(spec6, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec6, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec6, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec6, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec6, "16899", LBIS.L["Hands"], "BIS") --Stormrage Handguards
    LBIS:AddItem(spec6, "22493", LBIS.L["Hands"], "BIS") --Dreamwalker Handguards
    LBIS:AddItem(spec6, "21617", LBIS.L["Hands"], "Alt") --Wasphide Gauntlets
    LBIS:AddItem(spec6, "21462", LBIS.L["Hands"], "Alt") --Gloves of Dark Wisdom
    LBIS:AddItem(spec6, "21619", LBIS.L["Hands"], "Alt") --Gloves of the Messiah
    LBIS:AddItem(spec6, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec6, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec6, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec6, "16903", LBIS.L["Waist"], "BIS") --Stormrage Belt
    LBIS:AddItem(spec6, "22494", LBIS.L["Waist"], "BIS") --Dreamwalker Girdle
    LBIS:AddItem(spec6, "19162", LBIS.L["Waist"], "Alt") --Corehound Belt
    LBIS:AddItem(spec6, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec6, "21582", LBIS.L["Waist"], "Alt") --Grasp of the Old God
    LBIS:AddItem(spec6, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec6, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec6, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec6, "16901", LBIS.L["Legs"], "BIS") --Stormrage Legguards
    LBIS:AddItem(spec6, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec6, "22489", LBIS.L["Legs"], "BIS") --Dreamwalker Legguards
    LBIS:AddItem(spec6, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec6, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec6, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec6, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec6, "19899", LBIS.L["Legs"], "Alt") --Ritualistic Legguards
    LBIS:AddItem(spec6, "16898", LBIS.L["Feet"], "BIS") --Stormrage Boots
    LBIS:AddItem(spec6, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec6, "22492", LBIS.L["Feet"], "BIS") --Dreamwalker Boots
    LBIS:AddItem(spec6, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec6, "21810", LBIS.L["Feet"], "Alt") --Treads of the Wandering Nomad
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec6, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec6, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec6, "23036", LBIS.L["Neck"], "BIS") --Necklace of Necropsy
    LBIS:AddItem(spec6, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec6, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec6, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec6, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec6, "19371", LBIS.L["Neck"], "Alt") --Pendant of the Fallen Dragon
    LBIS:AddItem(spec6, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec6, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec6, "22939", LBIS.L["Ring"], "BIS") --Band of Unanswered Prayers
    LBIS:AddItem(spec6, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec6, "21620", LBIS.L["Ring"], "BIS") --Ring of the Martyr
    LBIS:AddItem(spec6, "19140", LBIS.L["Ring"], "Alt") --Cauterizing Band
    LBIS:AddItem(spec6, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec6, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec6, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec6, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec6, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec6, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec6, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec6, "19955", LBIS.L["Trinket"], "BIS") --Wushoolay's Charm of Nature
    LBIS:AddItem(spec6, "23047", LBIS.L["Trinket"], "BIS") --Eye of the Dead
    LBIS:AddItem(spec6, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec6, "20636", LBIS.L["Trinket"], "BIS") --Hibernation Crystal
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "18469", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec6, "21625", LBIS.L["Trinket"], "Alt") --Scarab Brooch
    LBIS:AddItem(spec6, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec6, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec6, "23056", LBIS.L["Main Hand"], "BIS") --Hammer of the Twisting Nether
    LBIS:AddItem(spec6, "21839", LBIS.L["Main Hand"], "Alt") --Scepter of the False Prophet
    LBIS:AddItem(spec6, "22942", LBIS.L["Main Hand"], "Alt") --The Widow's Embrace
    LBIS:AddItem(spec6, "23464", LBIS.L["Main Hand"], "Alt") --High Warlord's Battle Mace
    LBIS:AddItem(spec6, "23454", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Warhammer
    LBIS:AddItem(spec6, "21523", LBIS.L["Main Hand"], "Alt") --Fang of Korialstrasz
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec6, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec6, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec6, "23048", LBIS.L["Off Hand"], "BIS") --Sapphiron's Right Eye
    LBIS:AddItem(spec6, "23029", LBIS.L["Off Hand"], "Alt") --Noth's Frigid Heart
    LBIS:AddItem(spec6, "21666", LBIS.L["Off Hand"], "Alt") --Sartura's Might
    LBIS:AddItem(spec6, "19312", LBIS.L["Off Hand"], "Alt") --Lei of the Lifegiver
    LBIS:AddItem(spec6, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec6, "22319", LBIS.L["Off Hand"], "Alt") --Tome of Divine Right
    LBIS:AddItem(spec6, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec6, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec6, "22632", LBIS.L["Two Hand"], "BIS") --Atiesh, Greatstaff of the Guardian
    LBIS:AddItem(spec6, "22801", LBIS.L["Two Hand"], "BIS") --Spire of Twilight
    LBIS:AddItem(spec6, "21275", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Augur Staff
    LBIS:AddItem(spec6, "20581", LBIS.L["Two Hand"], "Alt") --Staff of Rampant Growth
    LBIS:AddItem(spec6, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk
    LBIS:AddItem(spec6, "22406", LBIS.L["Two Hand"], "Alt") --Redemption
    LBIS:AddItem(spec6, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec6, "22394", LBIS.L["Two Hand"], "Alt") --Staff of Metanoia
    LBIS:AddItem(spec6, "22399", LBIS.L["Ranged/Relic"], "BIS") --Idol of Health
    LBIS:AddItem(spec6, "22398", LBIS.L["Ranged/Relic"], "BIS") --Idol of Rejuvenation
    LBIS:AddItem(spec6, "23004", LBIS.L["Ranged/Relic"], "Alt") --Idol of Longevity
end
if not LBIS.IsSOD then
    LoadData();
end
