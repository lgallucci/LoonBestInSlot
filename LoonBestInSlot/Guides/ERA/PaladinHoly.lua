local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Holy"], "8")

    LBIS:AddEnchant(spec6, "24160", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "24420", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22750", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec6, "13933", LBIS.L["Off Hand"]) --

    LBIS:AddItem(spec0, "18490", LBIS.L["Head"], "BIS") --Insightful Hood
    LBIS:AddItem(spec0, "18681", LBIS.L["Shoulder"], "BIS") --Burial Shawl
    LBIS:AddItem(spec0, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec0, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec0, "18459", LBIS.L["Wrist"], "BIS") --Gallant's Wristguards
    LBIS:AddItem(spec0, "18527", LBIS.L["Hands"], "BIS") --Harmonious Gauntlets
    LBIS:AddItem(spec0, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec0, "18386", LBIS.L["Legs"], "BIS") --Padre's Trousers
    LBIS:AddItem(spec0, "16472", LBIS.L["Feet"], "BIS") --Marshal's Lamellar Boots
    LBIS:AddItem(spec0, "18723", LBIS.L["Neck"], "BIS") --Animated Chain Necklace
    LBIS:AddItem(spec0, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec0, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec0, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec0, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec0, "23201", LBIS.L["Ranged"], "BIS") --Libram of Divinity

    LBIS:AddItem(spec1, "16955", LBIS.L["Head"], "BIS") --Judgement Crown
    LBIS:AddItem(spec1, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec1, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec1, "18720", LBIS.L["Shoulder"], "Alt") --Shroud of the Nathrezim
    LBIS:AddItem(spec1, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec1, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec1, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec1, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec1, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec1, "13107", LBIS.L["Wrist"], "Alt") --Magiskull Cuffs
    LBIS:AddItem(spec1, "12554", LBIS.L["Hands"], "BIS") --Hands of the Exalted Herald
    LBIS:AddItem(spec1, "13244", LBIS.L["Hands"], "Alt") --Gilded Gauntlets
    LBIS:AddItem(spec1, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec1, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec1, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec1, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec1, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec1, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec1, "13954", LBIS.L["Feet"], "BIS") --Verdant Footpads
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec1, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec1, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec1, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec1, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec1, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec1, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec1, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec1, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec1, "17106", LBIS.L["Off Hand"], "BIS") --Malistar's Defender
    LBIS:AddItem(spec1, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter

    LBIS:AddItem(spec2, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec2, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec2, "16955", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec2, "16854", LBIS.L["Head"], "Alt") --Lawbringer Helm
    LBIS:AddItem(spec2, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec2, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec2, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec2, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec2, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec2, "16856", LBIS.L["Shoulder"], "Alt") --Lawbringer Spaulders
    LBIS:AddItem(spec2, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec2, "18208", LBIS.L["Back"], "BIS") --Drape of Benediction
    LBIS:AddItem(spec2, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec2, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec2, "15047", LBIS.L["Chest"], "BIS") --Red Dragonscale Breastplate
    LBIS:AddItem(spec2, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec2, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec2, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec2, "16853", LBIS.L["Chest"], "Alt") --Lawbringer Chestguard
    LBIS:AddItem(spec2, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec2, "18459", LBIS.L["Wrist"], "Alt") --Gallant's Wristguards
    LBIS:AddItem(spec2, "18527", LBIS.L["Hands"], "BIS") --Harmonious Gauntlets
    LBIS:AddItem(spec2, "18309", LBIS.L["Hands"], "BIS") --Gloves of Restoration
    LBIS:AddItem(spec2, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec2, "13244", LBIS.L["Hands"], "Alt") --Gilded Gauntlets
    LBIS:AddItem(spec2, "14553", LBIS.L["Waist"], "BIS") --Sash of Mercy
    LBIS:AddItem(spec2, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec2, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec2, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec2, "18386", LBIS.L["Legs"], "BIS") --Padre's Trousers
    LBIS:AddItem(spec2, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec2, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec2, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec2, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec2, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec2, "16058", LBIS.L["Ring"], "BIS") --Fordring's Seal
    LBIS:AddItem(spec2, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec2, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec2, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec2, "18637", LBIS.L["Trinket"], "BIS") --Major Recombobulator
    LBIS:AddItem(spec2, "11819", LBIS.L["Trinket"], "BIS") --Second Wind
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "BIS") --Mindtap Talisman
    LBIS:AddItem(spec2, "18472", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec2, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec2, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec2, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec2, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter

    LBIS:AddItem(spec3, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec3, "16955", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec3, "16854", LBIS.L["Head"], "Alt") --Lawbringer Helm
    LBIS:AddItem(spec3, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec3, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec3, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec3, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec3, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec3, "16856", LBIS.L["Shoulder"], "Alt") --Lawbringer Spaulders
    LBIS:AddItem(spec3, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec3, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec3, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec3, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec3, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec3, "15047", LBIS.L["Chest"], "BIS") --Red Dragonscale Breastplate
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec3, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec3, "16958", LBIS.L["Chest"], "Alt") --Judgement Breastplate
    LBIS:AddItem(spec3, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec3, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec3, "18459", LBIS.L["Wrist"], "Alt") --Gallant's Wristguards
    LBIS:AddItem(spec3, "18527", LBIS.L["Hands"], "BIS") --Harmonious Gauntlets
    LBIS:AddItem(spec3, "18309", LBIS.L["Hands"], "BIS") --Gloves of Restoration
    LBIS:AddItem(spec3, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec3, "13244", LBIS.L["Hands"], "Alt") --Gilded Gauntlets
    LBIS:AddItem(spec3, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec3, "14553", LBIS.L["Waist"], "BIS") --Sash of Mercy
    LBIS:AddItem(spec3, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec3, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec3, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec3, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec3, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec3, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec3, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec3, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec3, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec3, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec3, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec3, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec3, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec3, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec3, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec3, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec3, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec3, "18637", LBIS.L["Trinket"], "BIS") --Major Recombobulator
    LBIS:AddItem(spec3, "11819", LBIS.L["Trinket"], "BIS") --Second Wind
    LBIS:AddItem(spec3, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec3, "18371", LBIS.L["Trinket"], "BIS") --Mindtap Talisman
    LBIS:AddItem(spec3, "19343", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "Alt") --Neltharion's Tear
    LBIS:AddItem(spec3, "19288", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Blue Dragon
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "18472", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec3, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec3, "19348", LBIS.L["Off Hand"], "Alt") --Red Dragonscale Protector
    LBIS:AddItem(spec3, "23453", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Restoration
    LBIS:AddItem(spec3, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec3, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter

    LBIS:AddItem(spec4, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec4, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec4, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec4, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec4, "12633", LBIS.L["Head"], "Alt") --Whitesoul Helm
    LBIS:AddItem(spec4, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec4, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec4, "19928", LBIS.L["Shoulder"], "Alt") --Animist's Spaulders
    LBIS:AddItem(spec4, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec4, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec4, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec4, "16476", LBIS.L["Shoulder"], "Alt") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec4, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec4, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec4, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec4, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec4, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec4, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec4, "16473", LBIS.L["Chest"], "Alt") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec4, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec4, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec4, "18459", LBIS.L["Wrist"], "Alt") --Gallant's Wristguards
    LBIS:AddItem(spec4, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec4, "20264", LBIS.L["Hands"], "BIS") --Peacekeeper Gauntlets
    LBIS:AddItem(spec4, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec4, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec4, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec4, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec4, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec4, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec4, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec4, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec4, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec4, "20638", LBIS.L["Legs"], "Alt") --Leggings of the Demented Mind
    LBIS:AddItem(spec4, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec4, "20266", LBIS.L["Legs"], "Alt") --Peacekeeper Leggings
    LBIS:AddItem(spec4, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec4, "20634", LBIS.L["Feet"], "Alt") --Boots of Fright
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec4, "19892", LBIS.L["Feet"], "Alt") --Animist's Boots
    LBIS:AddItem(spec4, "20629", LBIS.L["Feet"], "Alt") --Malignant Footguards
    LBIS:AddItem(spec4, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec4, "20265", LBIS.L["Feet"], "Alt") --Peacekeeper Boots
    LBIS:AddItem(spec4, "18318", LBIS.L["Feet"], "Alt") --Merciful Greaves
    LBIS:AddItem(spec4, "19885", LBIS.L["Neck"], "BIS") --Jin'do's Evil Eye
    LBIS:AddItem(spec4, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec4, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec4, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec4, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec4, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec4, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec4, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec4, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec4, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec4, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec4, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec4, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec4, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec4, "19343", LBIS.L["Trinket"], "BIS") --Scrolls of Blinding Light
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec4, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec4, "18637", LBIS.L["Trinket"], "Alt") --Major Recombobulator
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec4, "18472", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec4, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec4, "22713", LBIS.L["Main Hand"], "Alt") --Zulian Scepter of Rites
    LBIS:AddItem(spec4, "22315", LBIS.L["Main Hand"], "Alt") --Hammer of Revitalization
    LBIS:AddItem(spec4, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec4, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec4, "19348", LBIS.L["Off Hand"], "BIS") --Red Dragonscale Protector
    LBIS:AddItem(spec4, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec4, "19922", LBIS.L["Off Hand"], "Alt") --Arlokk's Hoodoo Stick
    LBIS:AddItem(spec4, "22319", LBIS.L["Off Hand"], "Alt") --Tome of Divine Right
    LBIS:AddItem(spec4, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter

    LBIS:AddItem(spec5, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec5, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec5, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec5, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec5, "12633", LBIS.L["Head"], "Alt") --Whitesoul Helm
    LBIS:AddItem(spec5, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec5, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec5, "21683", LBIS.L["Shoulder"], "Alt") --Mantle of the Desert Crusade
    LBIS:AddItem(spec5, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec5, "19928", LBIS.L["Shoulder"], "Alt") --Animist's Spaulders
    LBIS:AddItem(spec5, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec5, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec5, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec5, "16476", LBIS.L["Shoulder"], "Alt") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec5, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec5, "21583", LBIS.L["Back"], "BIS") --Cloak of Clarity
    LBIS:AddItem(spec5, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec5, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec5, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec5, "21663", LBIS.L["Chest"], "BIS") --Robes of the Guardian Saint
    LBIS:AddItem(spec5, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec5, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec5, "16473", LBIS.L["Chest"], "Alt") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec5, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec5, "21604", LBIS.L["Wrist"], "BIS") --Bracelets of Royal Redemption
    LBIS:AddItem(spec5, "18459", LBIS.L["Wrist"], "Alt") --Gallant's Wristguards
    LBIS:AddItem(spec5, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec5, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec5, "20264", LBIS.L["Hands"], "BIS") --Peacekeeper Gauntlets
    LBIS:AddItem(spec5, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec5, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec5, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec5, "21582", LBIS.L["Waist"], "Alt") --Grasp of the Old God
    LBIS:AddItem(spec5, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec5, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec5, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec5, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec5, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec5, "21667", LBIS.L["Legs"], "Alt") --Legplates of Blazing Light
    LBIS:AddItem(spec5, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec5, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec5, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec5, "20266", LBIS.L["Legs"], "Alt") --Peacekeeper Leggings
    LBIS:AddItem(spec5, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec5, "21810", LBIS.L["Feet"], "Alt") --Treads of the Wandering Nomad
    LBIS:AddItem(spec5, "20634", LBIS.L["Feet"], "Alt") --Boots of Fright
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec5, "19892", LBIS.L["Feet"], "Alt") --Animist's Boots
    LBIS:AddItem(spec5, "20629", LBIS.L["Feet"], "Alt") --Malignant Footguards
    LBIS:AddItem(spec5, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec5, "20265", LBIS.L["Feet"], "Alt") --Peacekeeper Boots
    LBIS:AddItem(spec5, "18318", LBIS.L["Feet"], "Alt") --Merciful Greaves
    LBIS:AddItem(spec5, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec5, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec5, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec5, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec5, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec5, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
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
    LBIS:AddItem(spec5, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec5, "21625", LBIS.L["Trinket"], "BIS") --Scarab Brooch
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec5, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec5, "19343", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec5, "18637", LBIS.L["Trinket"], "Alt") --Major Recombobulator
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec5, "18472", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "21839", LBIS.L["Main Hand"], "BIS") --Scepter of the False Prophet
    LBIS:AddItem(spec5, "23454", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Warhammer
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec5, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec5, "21466", LBIS.L["Main Hand"], "Alt") --Stinger of Ayamiss
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec5, "22713", LBIS.L["Main Hand"], "Alt") --Zulian Scepter of Rites
    LBIS:AddItem(spec5, "22315", LBIS.L["Main Hand"], "Alt") --Hammer of Revitalization
    LBIS:AddItem(spec5, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec5, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec5, "21610", LBIS.L["Off Hand"], "BIS") --Wormscale Blocker
    LBIS:AddItem(spec5, "21666", LBIS.L["Off Hand"], "Alt") --Sartura's Might
    LBIS:AddItem(spec5, "19348", LBIS.L["Off Hand"], "Alt") --Red Dragonscale Protector
    LBIS:AddItem(spec5, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec5, "22319", LBIS.L["Off Hand"], "Alt") --Tome of Divine Right
    LBIS:AddItem(spec5, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec5, "23201", LBIS.L["Ranged/Relic"], "BIS") --Libram of Divinity
    LBIS:AddItem(spec5, "22402", LBIS.L["Ranged/Relic"], "Alt") --Libram of Grace
    LBIS:AddItem(spec5, "22401", LBIS.L["Ranged/Relic"], "Alt") --Libram of Hope
    LBIS:AddItem(spec5, "22400", LBIS.L["Ranged/Relic"], "Alt") --Libram of Truth

    LBIS:AddItem(spec6, "22428", LBIS.L["Head"], "BIS") --Redemption Headpiece
    LBIS:AddItem(spec6, "19132", LBIS.L["Head"], "Alt") --Crystal Adorned Crown
    LBIS:AddItem(spec6, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec6, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec6, "21669", LBIS.L["Head"], "Alt") --Creeping Vine Helm
    LBIS:AddItem(spec6, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec6, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec6, "12633", LBIS.L["Head"], "Alt") --Whitesoul Helm
    LBIS:AddItem(spec6, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec6, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec6, "22429", LBIS.L["Shoulder"], "Alt") --Redemption Spaulders
    LBIS:AddItem(spec6, "21683", LBIS.L["Shoulder"], "Alt") --Mantle of the Desert Crusade
    LBIS:AddItem(spec6, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec6, "19928", LBIS.L["Shoulder"], "Alt") --Animist's Spaulders
    LBIS:AddItem(spec6, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec6, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec6, "22234", LBIS.L["Shoulder"], "Alt") --Mantle of Lost Hope
    LBIS:AddItem(spec6, "22405", LBIS.L["Shoulder"], "Alt") --Mantle of the Scarlet Crusade
    LBIS:AddItem(spec6, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec6, "22960", LBIS.L["Back"], "BIS") --Cloak of Suturing
    LBIS:AddItem(spec6, "21583", LBIS.L["Back"], "Alt") --Cloak of Clarity
    LBIS:AddItem(spec6, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec6, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec6, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec6, "19870", LBIS.L["Back"], "Alt") --Hakkari Loa Cloak
    LBIS:AddItem(spec6, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec6, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec6, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec6, "22425", LBIS.L["Chest"], "BIS") --Redemption Tunic
    LBIS:AddItem(spec6, "21663", LBIS.L["Chest"], "Alt") --Robes of the Guardian Saint
    LBIS:AddItem(spec6, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec6, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec6, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec6, "21604", LBIS.L["Wrist"], "BIS") --Bracelets of Royal Redemption
    LBIS:AddItem(spec6, "22424", LBIS.L["Wrist"], "Alt") --Redemption Wristguards
    LBIS:AddItem(spec6, "18459", LBIS.L["Wrist"], "Alt") --Gallant's Wristguards
    LBIS:AddItem(spec6, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec6, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec6, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec6, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec6, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec6, "20264", LBIS.L["Hands"], "BIS") --Peacekeeper Gauntlets
    LBIS:AddItem(spec6, "22426", LBIS.L["Hands"], "Alt") --Redemption Handguards
    LBIS:AddItem(spec6, "21617", LBIS.L["Hands"], "Alt") --Wasphide Gauntlets
    LBIS:AddItem(spec6, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec6, "21462", LBIS.L["Hands"], "Alt") --Gloves of Dark Wisdom
    LBIS:AddItem(spec6, "21619", LBIS.L["Hands"], "Alt") --Gloves of the Messiah
    LBIS:AddItem(spec6, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec6, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec6, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec6, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec6, "22431", LBIS.L["Waist"], "Alt") --Redemption Girdle
    LBIS:AddItem(spec6, "21582", LBIS.L["Waist"], "Alt") --Grasp of the Old God
    LBIS:AddItem(spec6, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec6, "18702", LBIS.L["Waist"], "Alt") --Belt of the Ordained
    LBIS:AddItem(spec6, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "21606", LBIS.L["Waist"], "Alt") --Belt of the Fallen Emperor
    LBIS:AddItem(spec6, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec6, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec6, "21667", LBIS.L["Legs"], "BIS") --Legplates of Blazing Light
    LBIS:AddItem(spec6, "22427", LBIS.L["Legs"], "Alt") --Redemption Legguards
    LBIS:AddItem(spec6, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec6, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec6, "20266", LBIS.L["Legs"], "Alt") --Peacekeeper Leggings
    LBIS:AddItem(spec6, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec6, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec6, "19899", LBIS.L["Legs"], "Alt") --Ritualistic Legguards
    LBIS:AddItem(spec6, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec6, "22430", LBIS.L["Feet"], "BIS") --Redemption Boots
    LBIS:AddItem(spec6, "21704", LBIS.L["Feet"], "Alt") --Boots of the Redeemed Prophecy
    LBIS:AddItem(spec6, "21810", LBIS.L["Feet"], "Alt") --Treads of the Wandering Nomad
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec6, "20265", LBIS.L["Feet"], "Alt") --Peacekeeper Boots
    LBIS:AddItem(spec6, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec6, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec6, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec6, "23036", LBIS.L["Neck"], "Alt") --Necklace of Necropsy
    LBIS:AddItem(spec6, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec6, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec6, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec6, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec6, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec6, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec6, "22939", LBIS.L["Ring"], "BIS") --Band of Unanswered Prayers
    LBIS:AddItem(spec6, "21620", LBIS.L["Ring"], "BIS") --Ring of the Martyr
    LBIS:AddItem(spec6, "19140", LBIS.L["Ring"], "Alt") --Cauterizing Band
    LBIS:AddItem(spec6, "23066", LBIS.L["Ring"], "Alt") --Ring of Redemption
    LBIS:AddItem(spec6, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec6, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec6, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec6, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec6, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec6, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec6, "23047", LBIS.L["Trinket"], "BIS") --Eye of the Dead
    LBIS:AddItem(spec6, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec6, "21625", LBIS.L["Trinket"], "Alt") --Scarab Brooch
    LBIS:AddItem(spec6, "19343", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec6, "20636", LBIS.L["Trinket"], "Alt") --Hibernation Crystal
    LBIS:AddItem(spec6, "18637", LBIS.L["Trinket"], "Alt") --Major Recombobulator
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec6, "18472", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "23056", LBIS.L["Main Hand"], "BIS") --Hammer of the Twisting Nether
    LBIS:AddItem(spec6, "21839", LBIS.L["Main Hand"], "Alt") --Scepter of the False Prophet
    LBIS:AddItem(spec6, "22942", LBIS.L["Main Hand"], "Alt") --The Widow's Embrace
    LBIS:AddItem(spec6, "23464", LBIS.L["Main Hand"], "Alt") --High Warlord's Battle Mace
    LBIS:AddItem(spec6, "23454", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Warhammer
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec6, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec6, "21466", LBIS.L["Main Hand"], "Alt") --Stinger of Ayamiss
    LBIS:AddItem(spec6, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec6, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec6, "22713", LBIS.L["Main Hand"], "Alt") --Zulian Scepter of Rites
    LBIS:AddItem(spec6, "22315", LBIS.L["Main Hand"], "Alt") --Hammer of Revitalization
    LBIS:AddItem(spec6, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec6, "22819", LBIS.L["Off Hand"], "BIS") --Shield of Condemnation
    LBIS:AddItem(spec6, "23048", LBIS.L["Off Hand"], "Alt") --Sapphiron's Right Eye
    LBIS:AddItem(spec6, "21666", LBIS.L["Off Hand"], "Alt") --Sartura's Might
    LBIS:AddItem(spec6, "23029", LBIS.L["Off Hand"], "Alt") --Noth's Frigid Heart
    LBIS:AddItem(spec6, "19312", LBIS.L["Off Hand"], "Alt") --Lei of the Lifegiver
    LBIS:AddItem(spec6, "21610", LBIS.L["Off Hand"], "Alt") --Wormscale Blocker
    LBIS:AddItem(spec6, "23075", LBIS.L["Off Hand"], "Alt") --Death's Bargain
    LBIS:AddItem(spec6, "19348", LBIS.L["Off Hand"], "Alt") --Red Dragonscale Protector
    LBIS:AddItem(spec6, "22319", LBIS.L["Off Hand"], "Alt") --Tome of Divine Right
    LBIS:AddItem(spec6, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec6, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec6, "23006", LBIS.L["Ranged/Relic"], "BIS") --Libram of Light
    LBIS:AddItem(spec6, "23201", LBIS.L["Ranged/Relic"], "Alt") --Libram of Divinity
    LBIS:AddItem(spec6, "22402", LBIS.L["Ranged/Relic"], "Alt") --Libram of Grace
end
if not LBIS.IsSOD then
    LoadData();
end
