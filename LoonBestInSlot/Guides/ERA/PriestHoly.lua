local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "8")

    LBIS:AddEnchant(spec4, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec4, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec4, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec4, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec4, "20009", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec4, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec4, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec4, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec4, "22750", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec4, "24167", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec4, "24420", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec4, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec4, "24167", LBIS.L["Legs"]) --

    LBIS:AddItem(spec1, "16921", LBIS.L["Head"], "BIS") --Halo of Transcendence
    LBIS:AddItem(spec1, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec1, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec1, "16816", LBIS.L["Shoulder"], "BIS") --Mantle of Prophecy
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec1, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec1, "11623", LBIS.L["Back"], "BIS") --Spritecaster Cape
    LBIS:AddItem(spec1, "14154", LBIS.L["Chest"], "BIS") --Truefaith Vestments
    LBIS:AddItem(spec1, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec1, "16815", LBIS.L["Chest"], "Alt") --Robes of Prophecy
    LBIS:AddItem(spec1, "16819", LBIS.L["Wrist"], "BIS") --Vambraces of Prophecy
    LBIS:AddItem(spec1, "13107", LBIS.L["Wrist"], "Alt") --Magiskull Cuffs
    LBIS:AddItem(spec1, "16697", LBIS.L["Wrist"], "Alt") --Devout Bracers
    LBIS:AddItem(spec1, "16812", LBIS.L["Hands"], "BIS") --Gloves of Prophecy
    LBIS:AddItem(spec1, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec1, "16692", LBIS.L["Hands"], "Alt") --Devout Gloves
    LBIS:AddItem(spec1, "16817", LBIS.L["Waist"], "BIS") --Girdle of Prophecy
    LBIS:AddItem(spec1, "12589", LBIS.L["Waist"], "Alt") --Dustfeather Sash
    LBIS:AddItem(spec1, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec1, "16922", LBIS.L["Legs"], "BIS") --Leggings of Transcendence
    LBIS:AddItem(spec1, "16814", LBIS.L["Legs"], "Alt") --Pants of Prophecy
    LBIS:AddItem(spec1, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "BIS") --Omnicast Boots
    LBIS:AddItem(spec1, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec1, "13101", LBIS.L["Feet"], "Alt") --Wolfrunner Shoes
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec1, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec1, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec1, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec1, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec1, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec1, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec1, "11923", LBIS.L["Main Hand"], "BIS") --The Hammer of Grace
    LBIS:AddItem(spec1, "11928", LBIS.L["Off Hand"], "BIS") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec1, "18608", LBIS.L["Two Hand"], "BIS") --Benediction
    LBIS:AddItem(spec1, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec1, "13938", LBIS.L["Ranged/Relic"], "BIS") --Bonecreeper Stylus
    LBIS:AddItem(spec1, "16997", LBIS.L["Ranged/Relic"], "Alt") --Stormrager

    LBIS:AddItem(spec2, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec2, "16921", LBIS.L["Head"], "Alt") --Halo of Transcendence
    LBIS:AddItem(spec2, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec2, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec2, "16816", LBIS.L["Shoulder"], "BIS") --Mantle of Prophecy
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec2, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec2, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec2, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec2, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec2, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec2, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec2, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec2, "14154", LBIS.L["Chest"], "BIS") --Truefaith Vestments
    LBIS:AddItem(spec2, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec2, "16815", LBIS.L["Chest"], "Alt") --Robes of Prophecy
    LBIS:AddItem(spec2, "16819", LBIS.L["Wrist"], "BIS") --Vambraces of Prophecy
    LBIS:AddItem(spec2, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "16812", LBIS.L["Hands"], "BIS") --Gloves of Prophecy
    LBIS:AddItem(spec2, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec2, "16692", LBIS.L["Hands"], "Alt") --Devout Gloves
    LBIS:AddItem(spec2, "18327", LBIS.L["Waist"], "BIS") --Whipvine Cord
    LBIS:AddItem(spec2, "16817", LBIS.L["Waist"], "Alt") --Girdle of Prophecy
    LBIS:AddItem(spec2, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec2, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec2, "12589", LBIS.L["Waist"], "Alt") --Dustfeather Sash
    LBIS:AddItem(spec2, "16922", LBIS.L["Legs"], "BIS") --Leggings of Transcendence
    LBIS:AddItem(spec2, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec2, "16814", LBIS.L["Legs"], "Alt") --Pants of Prophecy
    LBIS:AddItem(spec2, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec2, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec2, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec2, "13101", LBIS.L["Feet"], "Alt") --Wolfrunner Shoes
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec2, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec2, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec2, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec2, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec2, "18469", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec2, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "11923", LBIS.L["Main Hand"], "BIS") --The Hammer of Grace
    LBIS:AddItem(spec2, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec2, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec2, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec2, "18608", LBIS.L["Two Hand"], "BIS") --Benediction
    LBIS:AddItem(spec2, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec2, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec2, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec2, "16997", LBIS.L["Ranged/Relic"], "Alt") --Stormrager

    LBIS:AddItem(spec3, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec3, "16921", LBIS.L["Head"], "Alt") --Halo of Transcendence
    LBIS:AddItem(spec3, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec3, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec3, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec3, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec3, "16924", LBIS.L["Shoulder"], "BIS") --Pauldrons of Transcendence
    LBIS:AddItem(spec3, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec3, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec3, "16816", LBIS.L["Shoulder"], "Alt") --Mantle of Prophecy
    LBIS:AddItem(spec3, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec3, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec3, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec3, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec3, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec3, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec3, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec3, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec3, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec3, "14154", LBIS.L["Chest"], "BIS") --Truefaith Vestments
    LBIS:AddItem(spec3, "16923", LBIS.L["Chest"], "Alt") --Robes of Transcendence
    LBIS:AddItem(spec3, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec3, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec3, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec3, "16815", LBIS.L["Chest"], "Alt") --Robes of Prophecy
    LBIS:AddItem(spec3, "16926", LBIS.L["Wrist"], "BIS") --Bindings of Transcendence
    LBIS:AddItem(spec3, "16819", LBIS.L["Wrist"], "Alt") --Vambraces of Prophecy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec3, "16920", LBIS.L["Hands"], "BIS") --Handguards of Transcendence
    LBIS:AddItem(spec3, "16812", LBIS.L["Hands"], "BIS") --Gloves of Prophecy
    LBIS:AddItem(spec3, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec3, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec3, "16692", LBIS.L["Hands"], "Alt") --Devout Gloves
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec3, "16925", LBIS.L["Waist"], "BIS") --Belt of Transcendence
    LBIS:AddItem(spec3, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec3, "16817", LBIS.L["Waist"], "Alt") --Girdle of Prophecy
    LBIS:AddItem(spec3, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec3, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec3, "12589", LBIS.L["Waist"], "Alt") --Dustfeather Sash
    LBIS:AddItem(spec3, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec3, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec3, "16922", LBIS.L["Legs"], "Alt") --Leggings of Transcendence
    LBIS:AddItem(spec3, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec3, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec3, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec3, "16814", LBIS.L["Legs"], "Alt") --Pants of Prophecy
    LBIS:AddItem(spec3, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec3, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec3, "16919", LBIS.L["Feet"], "Alt") --Boots of Transcendence
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec3, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec3, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec3, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec3, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec3, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec3, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec3, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec3, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec3, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec3, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec3, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec3, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec3, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec3, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec3, "19288", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec3, "18469", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "19990", LBIS.L["Trinket"], "Alt") --Blessed Prayer Beads
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec3, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec3, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec3, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec3, "23464", LBIS.L["Main Hand"], "BIS") --High Warlord's Battle Mace
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec3, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec3, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec3, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec3, "23469", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Mending
    LBIS:AddItem(spec3, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec3, "18608", LBIS.L["Two Hand"], "BIS") --Benediction
    LBIS:AddItem(spec3, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec3, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec3, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec3, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec3, "16997", LBIS.L["Ranged/Relic"], "Alt") --Stormrager

    LBIS:AddItem(spec4, "16921", LBIS.L["Head"], "BIS") --Halo of Transcendence
    LBIS:AddItem(spec4, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec4, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec4, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec4, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec4, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec4, "23261", LBIS.L["Head"], "Alt") --Champion's Satin Hood
    LBIS:AddItem(spec4, "23316", LBIS.L["Head"], "Alt") --Lieutenant Commander's Satin Hood
    LBIS:AddItem(spec4, "22080", LBIS.L["Head"], "Alt") --Virtuous Crown
    LBIS:AddItem(spec4, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec4, "16924", LBIS.L["Shoulder"], "BIS") --Pauldrons of Transcendence
    LBIS:AddItem(spec4, "19841", LBIS.L["Shoulder"], "BIS") --Zandalar Confessor's Mantle
    LBIS:AddItem(spec4, "23262", LBIS.L["Shoulder"], "Alt") --Champion's Satin Mantle
    LBIS:AddItem(spec4, "23317", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Satin Mantle
    LBIS:AddItem(spec4, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec4, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec4, "16816", LBIS.L["Shoulder"], "Alt") --Mantle of Prophecy
    LBIS:AddItem(spec4, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec4, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec4, "18208", LBIS.L["Back"], "BIS") --Drape of Benediction
    LBIS:AddItem(spec4, "19870", LBIS.L["Back"], "Alt") --Hakkari Loa Cloak
    LBIS:AddItem(spec4, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec4, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec4, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec4, "16923", LBIS.L["Chest"], "BIS") --Robes of Transcendence
    LBIS:AddItem(spec4, "14154", LBIS.L["Chest"], "Alt") --Truefaith Vestments
    LBIS:AddItem(spec4, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec4, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec4, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec4, "22083", LBIS.L["Chest"], "Alt") --Virtuous Robe
    LBIS:AddItem(spec4, "16815", LBIS.L["Chest"], "Alt") --Robes of Prophecy
    LBIS:AddItem(spec4, "22885", LBIS.L["Chest"], "Alt") --Legionnaire's Satin Tunic
    LBIS:AddItem(spec4, "23303", LBIS.L["Chest"], "Alt") --Knight-Captain's Satin Tunic
    LBIS:AddItem(spec4, "16926", LBIS.L["Wrist"], "BIS") --Bindings of Transcendence
    LBIS:AddItem(spec4, "19843", LBIS.L["Wrist"], "Alt") --Zandalar Confessor's Wraps
    LBIS:AddItem(spec4, "16819", LBIS.L["Wrist"], "Alt") --Vambraces of Prophecy
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "22079", LBIS.L["Wrist"], "Alt") --Virtuous Bracers
    LBIS:AddItem(spec4, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec4, "16920", LBIS.L["Hands"], "BIS") --Handguards of Transcendence
    LBIS:AddItem(spec4, "16812", LBIS.L["Hands"], "Alt") --Gloves of Prophecy
    LBIS:AddItem(spec4, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec4, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec4, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec4, "22081", LBIS.L["Hands"], "Alt") --Virtuous Gloves
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec4, "22869", LBIS.L["Hands"], "Alt") --Blood Guard's Satin Handwraps
    LBIS:AddItem(spec4, "23288", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Satin Handwraps
    LBIS:AddItem(spec4, "16925", LBIS.L["Waist"], "BIS") --Belt of Transcendence
    LBIS:AddItem(spec4, "19842", LBIS.L["Waist"], "BIS") --Zandalar Confessor's Bindings
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec4, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec4, "16817", LBIS.L["Waist"], "Alt") --Girdle of Prophecy
    LBIS:AddItem(spec4, "22078", LBIS.L["Waist"], "Alt") --Virtuous Belt
    LBIS:AddItem(spec4, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec4, "16922", LBIS.L["Legs"], "BIS") --Leggings of Transcendence
    LBIS:AddItem(spec4, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec4, "16814", LBIS.L["Legs"], "Alt") --Pants of Prophecy
    LBIS:AddItem(spec4, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec4, "19899", LBIS.L["Legs"], "Alt") --Ritualistic Legguards
    LBIS:AddItem(spec4, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec4, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec4, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec4, "22085", LBIS.L["Legs"], "Alt") --Virtuous Skirt
    LBIS:AddItem(spec4, "22882", LBIS.L["Legs"], "Alt") --Legionnaire's Satin Legguards
    LBIS:AddItem(spec4, "23302", LBIS.L["Legs"], "Alt") --Knight-Captain's Satin Legguards
    LBIS:AddItem(spec4, "16919", LBIS.L["Feet"], "BIS") --Boots of Transcendence
    LBIS:AddItem(spec4, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec4, "22084", LBIS.L["Feet"], "Alt") --Virtuous Sandals
    LBIS:AddItem(spec4, "16811", LBIS.L["Feet"], "Alt") --Boots of Prophecy
    LBIS:AddItem(spec4, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec4, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec4, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec4, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec4, "19885", LBIS.L["Neck"], "BIS") --Jin'do's Evil Eye
    LBIS:AddItem(spec4, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec4, "19371", LBIS.L["Neck"], "Alt") --Pendant of the Fallen Dragon
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec4, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec4, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec4, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec4, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec4, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec4, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec4, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec4, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "20636", LBIS.L["Trinket"], "BIS") --Hibernation Crystal
    LBIS:AddItem(spec4, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec4, "19288", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "18469", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec4, "19990", LBIS.L["Trinket"], "Alt") --Blessed Prayer Beads
    LBIS:AddItem(spec4, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec4, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec4, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec4, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "23464", LBIS.L["Main Hand"], "BIS") --High Warlord's Battle Mace
    LBIS:AddItem(spec4, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec4, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec4, "22319", LBIS.L["Off Hand"], "BIS") --Tome of Divine Right
    LBIS:AddItem(spec4, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec4, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec4, "18608", LBIS.L["Two Hand"], "BIS") --Benediction
    LBIS:AddItem(spec4, "20581", LBIS.L["Two Hand"], "Alt") --Staff of Rampant Growth
    LBIS:AddItem(spec4, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk
    LBIS:AddItem(spec4, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec4, "22394", LBIS.L["Two Hand"], "Alt") --Staff of Metanoia
    LBIS:AddItem(spec4, "19435", LBIS.L["Ranged/Relic"], "Alt") --Essence Gatherer
    LBIS:AddItem(spec4, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec4, "18483", LBIS.L["Ranged/Relic"], "Alt") --Mana Channeling Wand
end
if not LBIS.IsSOD then
    LoadData();
end
