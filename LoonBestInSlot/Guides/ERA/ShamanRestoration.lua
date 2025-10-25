local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "8")

    LBIS:AddEnchant(spec6, "24163", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29475", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22750", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec6, "13933", LBIS.L["Off Hand"]) --

    LBIS:AddItem(spec0, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec0, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec0, "18308", LBIS.L["Head"], "Alt") --Clever Hat
    LBIS:AddItem(spec0, "12752", LBIS.L["Head"], "Alt") --Cap of the Scarlet Savant
    LBIS:AddItem(spec0, "13216", LBIS.L["Head"], "Alt") --Crown of the Penitent
    LBIS:AddItem(spec0, "22234", LBIS.L["Shoulder"], "Alt") --Mantle of Lost Hope
    LBIS:AddItem(spec0, "20680", LBIS.L["Shoulder"], "Alt") --Abyssal Mail Pauldrons
    LBIS:AddItem(spec0, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec0, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec0, "18757", LBIS.L["Shoulder"], "Alt") --Diabolic Mantle
    LBIS:AddItem(spec0, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec0, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec0, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec0, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec0, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec0, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec0, "18532", LBIS.L["Chest"], "Alt") --Mindsurge Robe
    LBIS:AddItem(spec0, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec0, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec0, "20684", LBIS.L["Wrist"], "Alt") --Abyssal Mail Armguards
    LBIS:AddItem(spec0, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec0, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec0, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec0, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec0, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec0, "13244", LBIS.L["Hands"], "Alt") --Gilded Gauntlets
    LBIS:AddItem(spec0, "19162", LBIS.L["Waist"], "Alt") --Corehound Belt
    LBIS:AddItem(spec0, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec0, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec0, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec0, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec0, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec0, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec0, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec0, "22275", LBIS.L["Feet"], "Alt") --Firemoss Boots
    LBIS:AddItem(spec0, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec0, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec0, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec0, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec0, "20685", LBIS.L["Neck"], "Alt") --Wavefront Necklace
    LBIS:AddItem(spec0, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec0, "19096", LBIS.L["Neck"], "Alt") --Frostwolf Advisor's Pendant
    LBIS:AddItem(spec0, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec0, "1443", LBIS.L["Neck"], "Alt") --Jeweled Amulet of Cainwyn
    LBIS:AddItem(spec0, "22681", LBIS.L["Ring"], "Alt") --Band of Piety
    LBIS:AddItem(spec0, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec0, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec0, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec0, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec0, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec0, "18314", LBIS.L["Ring"], "Alt") --Ring of Demonic Guile
    LBIS:AddItem(spec0, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec0, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec0, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec0, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec0, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec0, "18491", LBIS.L["Main Hand"], "Alt") --Lorespinner
    LBIS:AddItem(spec0, "20648", LBIS.L["Main Hand"], "Alt") --Cold Forged Hammer
    LBIS:AddItem(spec0, "21185", LBIS.L["Off Hand"], "Alt") --Earthcalm Orb
    LBIS:AddItem(spec0, "22319", LBIS.L["Off Hand"], "Alt") --Tome of Divine Right
    LBIS:AddItem(spec0, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec0, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec0, "18536", LBIS.L["Off Hand"], "Alt") --Milli's Lexicon
    LBIS:AddItem(spec0, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec0, "21188", LBIS.L["Two Hand"], "Alt") --Fist of Cenarius
    LBIS:AddItem(spec0, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec0, "20654", LBIS.L["Two Hand"], "Alt") --Amethyst War Staff
    LBIS:AddItem(spec0, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec0, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec0, "23200", LBIS.L["Ranged"], "Alt") --Totem of Sustaining
    LBIS:AddItem(spec0, "22345", LBIS.L["Ranged"], "Alt") --Totem of Rebirth

    LBIS:AddItem(spec1, "16947", LBIS.L["Head"], "BIS") --Helmet of Ten Storms
    LBIS:AddItem(spec1, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec1, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec1, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec1, "16844", LBIS.L["Shoulder"], "Alt") --Earthfury Epaulets
    LBIS:AddItem(spec1, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec1, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec1, "19121", LBIS.L["Back"], "BIS") --Deep Woodlands Cloak
    LBIS:AddItem(spec1, "16841", LBIS.L["Chest"], "BIS") --Earthfury Vestments
    LBIS:AddItem(spec1, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec1, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec1, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec1, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec1, "13107", LBIS.L["Wrist"], "Alt") --Magiskull Cuffs
    LBIS:AddItem(spec1, "16839", LBIS.L["Hands"], "BIS") --Earthfury Gauntlets
    LBIS:AddItem(spec1, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec1, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec1, "16838", LBIS.L["Waist"], "Alt") --Earthfury Belt
    LBIS:AddItem(spec1, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec1, "16843", LBIS.L["Legs"], "BIS") --Earthfury Legguards
    LBIS:AddItem(spec1, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec1, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec1, "16837", LBIS.L["Feet"], "BIS") --Earthfury Boots
    LBIS:AddItem(spec1, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec1, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec1, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec1, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec1, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec1, "13143", LBIS.L["Ring"], "Alt") --Mark of the Dragon Lord
    LBIS:AddItem(spec1, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec1, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec1, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "17106", LBIS.L["Off Hand"], "BIS") --Malistar's Defender
    LBIS:AddItem(spec1, "11932", LBIS.L["Two Hand"], "BIS") --Guiding Stave of Wisdom
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance

    LBIS:AddItem(spec2, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec2, "18870", LBIS.L["Head"], "Alt") --Helm of the Lifegiver
    LBIS:AddItem(spec2, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec2, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec2, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec2, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec2, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec2, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec2, "16844", LBIS.L["Shoulder"], "Alt") --Earthfury Epaulets
    LBIS:AddItem(spec2, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec2, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec2, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec2, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec2, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec2, "19530", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec2, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec2, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec2, "16841", LBIS.L["Chest"], "Alt") --Earthfury Vestments
    LBIS:AddItem(spec2, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec2, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec2, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec2, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec2, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec2, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec2, "18527", LBIS.L["Hands"], "BIS") --Harmonious Gauntlets
    LBIS:AddItem(spec2, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec2, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec2, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec2, "14553", LBIS.L["Waist"], "BIS") --Sash of Mercy
    LBIS:AddItem(spec2, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec2, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec2, "16838", LBIS.L["Waist"], "Alt") --Earthfury Belt
    LBIS:AddItem(spec2, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec2, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec2, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec2, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec2, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec2, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec2, "16843", LBIS.L["Legs"], "Alt") --Earthfury Legguards
    LBIS:AddItem(spec2, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec2, "13954", LBIS.L["Feet"], "BIS") --Verdant Footpads
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec2, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec2, "16837", LBIS.L["Feet"], "Alt") --Earthfury Boots
    LBIS:AddItem(spec2, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec2, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec2, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec2, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec2, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec2, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec2, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec2, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec2, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec2, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec2, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec2, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec2, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec2, "11932", LBIS.L["Two Hand"], "BIS") --Guiding Stave of Wisdom
    LBIS:AddItem(spec2, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance

    LBIS:AddItem(spec3, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec3, "18870", LBIS.L["Head"], "Alt") --Helm of the Lifegiver
    LBIS:AddItem(spec3, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec3, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec3, "18490", LBIS.L["Head"], "Alt") --Insightful Hood
    LBIS:AddItem(spec3, "12960", LBIS.L["Head"], "Alt") --Tribal War Feathers
    LBIS:AddItem(spec3, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec3, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec3, "16844", LBIS.L["Shoulder"], "Alt") --Earthfury Epaulets
    LBIS:AddItem(spec3, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec3, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec3, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec3, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec3, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec3, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec3, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec3, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec3, "16841", LBIS.L["Chest"], "Alt") --Earthfury Vestments
    LBIS:AddItem(spec3, "16950", LBIS.L["Chest"], "Alt") --Breastplate of Ten Storms
    LBIS:AddItem(spec3, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec3, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec3, "16943", LBIS.L["Wrist"], "BIS") --Bracers of Ten Storms
    LBIS:AddItem(spec3, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec3, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec3, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec3, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec3, "16948", LBIS.L["Hands"], "BIS") --Gauntlets of Ten Storms
    LBIS:AddItem(spec3, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec3, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec3, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec3, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec3, "16944", LBIS.L["Waist"], "BIS") --Belt of Ten Storms
    LBIS:AddItem(spec3, "19162", LBIS.L["Waist"], "Alt") --Corehound Belt
    LBIS:AddItem(spec3, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec3, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec3, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec3, "16838", LBIS.L["Waist"], "Alt") --Earthfury Belt
    LBIS:AddItem(spec3, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec3, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec3, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec3, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec3, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec3, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec3, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec3, "16843", LBIS.L["Legs"], "Alt") --Earthfury Legguards
    LBIS:AddItem(spec3, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec3, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec3, "13954", LBIS.L["Feet"], "BIS") --Verdant Footpads
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec3, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec3, "16573", LBIS.L["Feet"], "Alt") --General's Mail Boots
    LBIS:AddItem(spec3, "16837", LBIS.L["Feet"], "Alt") --Earthfury Boots
    LBIS:AddItem(spec3, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec3, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec3, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec3, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec3, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec3, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec3, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec3, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec3, "18395", LBIS.L["Ring"], "Alt") --Emerald Flame Ring
    LBIS:AddItem(spec3, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec3, "19344", LBIS.L["Trinket"], "BIS") --Natural Alignment Crystal
    LBIS:AddItem(spec3, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec3, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec3, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "23464", LBIS.L["Main Hand"], "BIS") --High Warlord's Battle Mace
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec3, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec3, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec3, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec3, "19348", LBIS.L["Off Hand"], "Alt") --Red Dragonscale Protector
    LBIS:AddItem(spec3, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec3, "23469", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Mending
    LBIS:AddItem(spec3, "11928", LBIS.L["Off Hand"], "Alt") --Thaurissan's Royal Scepter
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "BIS") --High Warlord's War Staff
    LBIS:AddItem(spec3, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec3, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec3, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance

    LBIS:AddItem(spec4, "19132", LBIS.L["Head"], "BIS") --Crystal Adorned Crown
    LBIS:AddItem(spec4, "16947", LBIS.L["Head"], "BIS") --Helmet of Ten Storms
    LBIS:AddItem(spec4, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec4, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec4, "18810", LBIS.L["Shoulder"], "BIS") --Wild Growth Spaulders
    LBIS:AddItem(spec4, "16844", LBIS.L["Shoulder"], "BIS") --Earthfury Epaulets
    LBIS:AddItem(spec4, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec4, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec4, "19430", LBIS.L["Back"], "BIS") --Shroud of Pure Thought
    LBIS:AddItem(spec4, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec4, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec4, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec4, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec4, "13346", LBIS.L["Chest"], "BIS") --Robes of the Exalted
    LBIS:AddItem(spec4, "16841", LBIS.L["Chest"], "BIS") --Earthfury Vestments
    LBIS:AddItem(spec4, "18532", LBIS.L["Chest"], "Alt") --Mindsurge Robe
    LBIS:AddItem(spec4, "16943", LBIS.L["Wrist"], "BIS") --Bracers of Ten Storms
    LBIS:AddItem(spec4, "13969", LBIS.L["Wrist"], "BIS") --Loomguard Armbraces
    LBIS:AddItem(spec4, "16840", LBIS.L["Wrist"], "BIS") --Earthfury Bracers
    LBIS:AddItem(spec4, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec4, "18263", LBIS.L["Wrist"], "Alt") --Flarecore Wraps
    LBIS:AddItem(spec4, "16948", LBIS.L["Hands"], "BIS") --Gauntlets of Ten Storms
    LBIS:AddItem(spec4, "18527", LBIS.L["Hands"], "BIS") --Harmonious Gauntlets
    LBIS:AddItem(spec4, "16839", LBIS.L["Hands"], "BIS") --Earthfury Gauntlets
    LBIS:AddItem(spec4, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec4, "19162", LBIS.L["Waist"], "BIS") --Corehound Belt
    LBIS:AddItem(spec4, "16944", LBIS.L["Waist"], "BIS") --Belt of Ten Storms
    LBIS:AddItem(spec4, "16838", LBIS.L["Waist"], "BIS") --Earthfury Belt
    LBIS:AddItem(spec4, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec4, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec4, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec4, "19385", LBIS.L["Legs"], "BIS") --Empowered Leggings
    LBIS:AddItem(spec4, "18875", LBIS.L["Legs"], "BIS") --Salamander Scale Pants
    LBIS:AddItem(spec4, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec4, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec4, "16843", LBIS.L["Legs"], "Alt") --Earthfury Legguards
    LBIS:AddItem(spec4, "19437", LBIS.L["Feet"], "BIS") --Boots of Pure Thought
    LBIS:AddItem(spec4, "16949", LBIS.L["Feet"], "BIS") --Greaves of Ten Storms
    LBIS:AddItem(spec4, "16573", LBIS.L["Feet"], "BIS") --General's Mail Boots
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "16837", LBIS.L["Feet"], "Alt") --Earthfury Boots
    LBIS:AddItem(spec4, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec4, "19391", LBIS.L["Feet"], "Alt") --Shimmering Geta
    LBIS:AddItem(spec4, "19885", LBIS.L["Neck"], "BIS") --Jin'do's Evil Eye
    LBIS:AddItem(spec4, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec4, "19371", LBIS.L["Neck"], "Alt") --Pendant of the Fallen Dragon
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec4, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec4, "19140", LBIS.L["Ring"], "BIS") --Cauterizing Band
    LBIS:AddItem(spec4, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec4, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec4, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec4, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec4, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec4, "19344", LBIS.L["Trinket"], "Alt") --Natural Alignment Crystal
    LBIS:AddItem(spec4, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec4, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec4, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec4, "18491", LBIS.L["Main Hand"], "Alt") --Lorespinner
    LBIS:AddItem(spec4, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec4, "19348", LBIS.L["Off Hand"], "BIS") --Red Dragonscale Protector
    LBIS:AddItem(spec4, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec4, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec4, "18536", LBIS.L["Off Hand"], "Alt") --Milli's Lexicon

    LBIS:AddItem(spec5, "21372", LBIS.L["Head"], "BIS") --Stormcaller's Diadem
    LBIS:AddItem(spec5, "19132", LBIS.L["Head"], "Alt") --Crystal Adorned Crown
    LBIS:AddItem(spec5, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec5, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec5, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec5, "21669", LBIS.L["Head"], "Alt") --Creeping Vine Helm
    LBIS:AddItem(spec5, "16842", LBIS.L["Head"], "Alt") --Earthfury Helmet
    LBIS:AddItem(spec5, "21376", LBIS.L["Shoulder"], "BIS") --Stormcaller's Pauldrons
    LBIS:AddItem(spec5, "18810", LBIS.L["Shoulder"], "Alt") --Wild Growth Spaulders
    LBIS:AddItem(spec5, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec5, "16844", LBIS.L["Shoulder"], "Alt") --Earthfury Epaulets
    LBIS:AddItem(spec5, "22234", LBIS.L["Shoulder"], "Alt") --Mantle of Lost Hope
    LBIS:AddItem(spec5, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec5, "21583", LBIS.L["Back"], "BIS") --Cloak of Clarity
    LBIS:AddItem(spec5, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec5, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec5, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec5, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec5, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec5, "21374", LBIS.L["Chest"], "BIS") --Stormcaller's Hauberk
    LBIS:AddItem(spec5, "21663", LBIS.L["Chest"], "Alt") --Robes of the Guardian Saint
    LBIS:AddItem(spec5, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec5, "16841", LBIS.L["Chest"], "Alt") --Earthfury Vestments
    LBIS:AddItem(spec5, "16950", LBIS.L["Chest"], "Alt") --Breastplate of Ten Storms
    LBIS:AddItem(spec5, "16943", LBIS.L["Wrist"], "BIS") --Bracers of Ten Storms
    LBIS:AddItem(spec5, "21604", LBIS.L["Wrist"], "Alt") --Bracelets of Royal Redemption
    LBIS:AddItem(spec5, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec5, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec5, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec5, "16948", LBIS.L["Hands"], "BIS") --Gauntlets of Ten Storms
    LBIS:AddItem(spec5, "21617", LBIS.L["Hands"], "Alt") --Wasphide Gauntlets
    LBIS:AddItem(spec5, "21462", LBIS.L["Hands"], "Alt") --Gloves of Dark Wisdom
    LBIS:AddItem(spec5, "21619", LBIS.L["Hands"], "Alt") --Gloves of the Messiah
    LBIS:AddItem(spec5, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec5, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec5, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec5, "16944", LBIS.L["Waist"], "BIS") --Belt of Ten Storms
    LBIS:AddItem(spec5, "21582", LBIS.L["Waist"], "Alt") --Grasp of the Old God
    LBIS:AddItem(spec5, "19162", LBIS.L["Waist"], "Alt") --Corehound Belt
    LBIS:AddItem(spec5, "16838", LBIS.L["Waist"], "Alt") --Earthfury Belt
    LBIS:AddItem(spec5, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec5, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec5, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec5, "14553", LBIS.L["Waist"], "Alt") --Sash of Mercy
    LBIS:AddItem(spec5, "21375", LBIS.L["Legs"], "BIS") --Stormcaller's Leggings
    LBIS:AddItem(spec5, "19385", LBIS.L["Legs"], "Alt") --Empowered Leggings
    LBIS:AddItem(spec5, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec5, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec5, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec5, "16843", LBIS.L["Legs"], "Alt") --Earthfury Legguards
    LBIS:AddItem(spec5, "21373", LBIS.L["Feet"], "BIS") --Stormcaller's Footguards
    LBIS:AddItem(spec5, "16573", LBIS.L["Feet"], "BIS") --General's Mail Boots
    LBIS:AddItem(spec5, "19437", LBIS.L["Feet"], "Alt") --Boots of Pure Thought
    LBIS:AddItem(spec5, "16949", LBIS.L["Feet"], "Alt") --Greaves of Ten Storms
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "16837", LBIS.L["Feet"], "Alt") --Earthfury Boots
    LBIS:AddItem(spec5, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec5, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec5, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec5, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec5, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec5, "19371", LBIS.L["Neck"], "Alt") --Pendant of the Fallen Dragon
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "13141", LBIS.L["Neck"], "Alt") --Tooth of Gnarr
    LBIS:AddItem(spec5, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec5, "21620", LBIS.L["Ring"], "BIS") --Ring of the Martyr
    LBIS:AddItem(spec5, "19140", LBIS.L["Ring"], "Alt") --Cauterizing Band
    LBIS:AddItem(spec5, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec5, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec5, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec5, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec5, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec5, "17064", LBIS.L["Trinket"], "BIS") --Shard of the Scale
    LBIS:AddItem(spec5, "19344", LBIS.L["Trinket"], "BIS") --Natural Alignment Crystal
    LBIS:AddItem(spec5, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec5, "20636", LBIS.L["Trinket"], "Alt") --Hibernation Crystal
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec5, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec5, "21839", LBIS.L["Main Hand"], "BIS") --Scepter of the False Prophet
    LBIS:AddItem(spec5, "21275", LBIS.L["Main Hand"], "BIS") --Blessed Qiraji Augur Staff
    LBIS:AddItem(spec5, "23454", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Warhammer
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec5, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
    LBIS:AddItem(spec5, "18491", LBIS.L["Main Hand"], "Alt") --Lorespinner
    LBIS:AddItem(spec5, "22406", LBIS.L["Main Hand"], "Alt") --Redemption
    LBIS:AddItem(spec5, "21666", LBIS.L["Off Hand"], "BIS") --Sartura's Might
    LBIS:AddItem(spec5, "19312", LBIS.L["Off Hand"], "Alt") --Lei of the Lifegiver
    LBIS:AddItem(spec5, "21610", LBIS.L["Off Hand"], "Alt") --Wormscale Blocker
    LBIS:AddItem(spec5, "19348", LBIS.L["Off Hand"], "Alt") --Red Dragonscale Protector
    LBIS:AddItem(spec5, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec5, "18523", LBIS.L["Off Hand"], "Alt") --Brightly Glowing Stone
    LBIS:AddItem(spec5, "18536", LBIS.L["Off Hand"], "Alt") --Milli's Lexicon
    LBIS:AddItem(spec5, "22396", LBIS.L["Ranged/Relic"], "BIS") --Totem of Life
    LBIS:AddItem(spec5, "23200", LBIS.L["Ranged/Relic"], "Alt") --Totem of Sustaining
    LBIS:AddItem(spec5, "22345", LBIS.L["Ranged/Relic"], "Alt") --Totem of Rebirth

    LBIS:AddItem(spec6, "22466", LBIS.L["Head"], "BIS") --Earthshatter Headpiece
    LBIS:AddItem(spec6, "21372", LBIS.L["Head"], "BIS") --Stormcaller's Diadem
    LBIS:AddItem(spec6, "16842", LBIS.L["Head"], "BIS") --Earthfury Helmet
    LBIS:AddItem(spec6, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec6, "19132", LBIS.L["Head"], "Alt") --Crystal Adorned Crown
    LBIS:AddItem(spec6, "21615", LBIS.L["Head"], "Alt") --Don Rigoberto's Lost Hat
    LBIS:AddItem(spec6, "20628", LBIS.L["Head"], "Alt") --Deviate Growth Cap
    LBIS:AddItem(spec6, "21669", LBIS.L["Head"], "Alt") --Creeping Vine Helm
    LBIS:AddItem(spec6, "22720", LBIS.L["Head"], "Alt") --Zulian Headdress
    LBIS:AddItem(spec6, "18870", LBIS.L["Head"], "Alt") --Helm of the Lifegiver
    LBIS:AddItem(spec6, "22467", LBIS.L["Shoulder"], "BIS") --Earthshatter Spaulders
    LBIS:AddItem(spec6, "21376", LBIS.L["Shoulder"], "BIS") --Stormcaller's Pauldrons
    LBIS:AddItem(spec6, "16844", LBIS.L["Shoulder"], "BIS") --Earthfury Epaulets
    LBIS:AddItem(spec6, "18810", LBIS.L["Shoulder"], "Alt") --Wild Growth Spaulders
    LBIS:AddItem(spec6, "21694", LBIS.L["Shoulder"], "Alt") --Ternary Mantle
    LBIS:AddItem(spec6, "23664", LBIS.L["Shoulder"], "Alt") --Pauldrons of Elemental Fury
    LBIS:AddItem(spec6, "15061", LBIS.L["Shoulder"], "Alt") --Living Shoulders
    LBIS:AddItem(spec6, "22234", LBIS.L["Shoulder"], "Alt") --Mantle of Lost Hope
    LBIS:AddItem(spec6, "14548", LBIS.L["Shoulder"], "Alt") --Royal Cap Spaulders
    LBIS:AddItem(spec6, "21583", LBIS.L["Back"], "BIS") --Cloak of Clarity
    LBIS:AddItem(spec6, "22960", LBIS.L["Back"], "BIS") --Cloak of Suturing
    LBIS:AddItem(spec6, "19430", LBIS.L["Back"], "Alt") --Shroud of Pure Thought
    LBIS:AddItem(spec6, "18510", LBIS.L["Back"], "Alt") --Hide of the Wild
    LBIS:AddItem(spec6, "18208", LBIS.L["Back"], "Alt") --Drape of Benediction
    LBIS:AddItem(spec6, "19870", LBIS.L["Back"], "Alt") --Hakkari Loa Cloak
    LBIS:AddItem(spec6, "18389", LBIS.L["Back"], "Alt") --Cloak of the Cosmos
    LBIS:AddItem(spec6, "19526", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec6, "22464", LBIS.L["Chest"], "BIS") --Earthshatter Tunic
    LBIS:AddItem(spec6, "21374", LBIS.L["Chest"], "BIS") --Stormcaller's Hauberk
    LBIS:AddItem(spec6, "16841", LBIS.L["Chest"], "BIS") --Earthfury Vestments
    LBIS:AddItem(spec6, "21663", LBIS.L["Chest"], "Alt") --Robes of the Guardian Saint
    LBIS:AddItem(spec6, "13346", LBIS.L["Chest"], "Alt") --Robes of the Exalted
    LBIS:AddItem(spec6, "15047", LBIS.L["Chest"], "Alt") --Red Dragonscale Breastplate
    LBIS:AddItem(spec6, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec6, "16943", LBIS.L["Wrist"], "BIS") --Bracers of Ten Storms
    LBIS:AddItem(spec6, "16840", LBIS.L["Wrist"], "BIS") --Earthfury Bracers
    LBIS:AddItem(spec6, "21604", LBIS.L["Wrist"], "Alt") --Bracelets of Royal Redemption
    LBIS:AddItem(spec6, "22471", LBIS.L["Wrist"], "Alt") --Earthshatter Wristguards
    LBIS:AddItem(spec6, "13969", LBIS.L["Wrist"], "Alt") --Loomguard Armbraces
    LBIS:AddItem(spec6, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec6, "18525", LBIS.L["Wrist"], "Alt") --Bracers of Prosperity
    LBIS:AddItem(spec6, "13208", LBIS.L["Wrist"], "Alt") --Bleak Howler Armguards
    LBIS:AddItem(spec6, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec6, "16948", LBIS.L["Hands"], "BIS") --Gauntlets of Ten Storms
    LBIS:AddItem(spec6, "16839", LBIS.L["Hands"], "BIS") --Earthfury Gauntlets
    LBIS:AddItem(spec6, "22469", LBIS.L["Hands"], "Alt") --Earthshatter Handguards
    LBIS:AddItem(spec6, "21617", LBIS.L["Hands"], "Alt") --Wasphide Gauntlets
    LBIS:AddItem(spec6, "18527", LBIS.L["Hands"], "Alt") --Harmonious Gauntlets
    LBIS:AddItem(spec6, "21462", LBIS.L["Hands"], "Alt") --Gloves of Dark Wisdom
    LBIS:AddItem(spec6, "21619", LBIS.L["Hands"], "Alt") --Gloves of the Messiah
    LBIS:AddItem(spec6, "18309", LBIS.L["Hands"], "Alt") --Gloves of Restoration
    LBIS:AddItem(spec6, "12554", LBIS.L["Hands"], "Alt") --Hands of the Exalted Herald
    LBIS:AddItem(spec6, "21582", LBIS.L["Waist"], "BIS") --Grasp of the Old God
    LBIS:AddItem(spec6, "16944", LBIS.L["Waist"], "BIS") --Belt of Ten Storms
    LBIS:AddItem(spec6, "16838", LBIS.L["Waist"], "BIS") --Earthfury Belt
    LBIS:AddItem(spec6, "22470", LBIS.L["Waist"], "Alt") --Earthshatter Girdle
    LBIS:AddItem(spec6, "19162", LBIS.L["Waist"], "Alt") --Corehound Belt
    LBIS:AddItem(spec6, "21609", LBIS.L["Waist"], "Alt") --Regenerating Belt of Vek'nilash
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec6, "18391", LBIS.L["Waist"], "Alt") --Eyestalk Cord
    LBIS:AddItem(spec6, "22465", LBIS.L["Legs"], "BIS") --Earthshatter Legguards
    LBIS:AddItem(spec6, "21375", LBIS.L["Legs"], "BIS") --Stormcaller's Leggings
    LBIS:AddItem(spec6, "16843", LBIS.L["Legs"], "BIS") --Earthfury Legguards
    LBIS:AddItem(spec6, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec6, "19385", LBIS.L["Legs"], "Alt") --Empowered Leggings
    LBIS:AddItem(spec6, "18875", LBIS.L["Legs"], "Alt") --Salamander Scale Pants
    LBIS:AddItem(spec6, "18386", LBIS.L["Legs"], "Alt") --Padre's Trousers
    LBIS:AddItem(spec6, "18682", LBIS.L["Legs"], "Alt") --Ghoul Skin Leggings
    LBIS:AddItem(spec6, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec6, "19899", LBIS.L["Legs"], "Alt") --Ritualistic Legguards
    LBIS:AddItem(spec6, "16949", LBIS.L["Feet"], "BIS") --Greaves of Ten Storms
    LBIS:AddItem(spec6, "21373", LBIS.L["Feet"], "BIS") --Stormcaller's Footguards
    LBIS:AddItem(spec6, "16837", LBIS.L["Feet"], "BIS") --Earthfury Boots
    LBIS:AddItem(spec6, "22468", LBIS.L["Feet"], "Alt") --Earthshatter Boots
    LBIS:AddItem(spec6, "19437", LBIS.L["Feet"], "Alt") --Boots of Pure Thought
    LBIS:AddItem(spec6, "21810", LBIS.L["Feet"], "Alt") --Treads of the Wandering Nomad
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec6, "22247", LBIS.L["Feet"], "Alt") --Faith Healer's Boots
    LBIS:AddItem(spec6, "21712", LBIS.L["Neck"], "BIS") --Amulet of the Fallen God
    LBIS:AddItem(spec6, "21507", LBIS.L["Neck"], "Alt") --Amulet of the Shifting Sands
    LBIS:AddItem(spec6, "23036", LBIS.L["Neck"], "Alt") --Necklace of Necropsy
    LBIS:AddItem(spec6, "19885", LBIS.L["Neck"], "Alt") --Jin'do's Evil Eye
    LBIS:AddItem(spec6, "18723", LBIS.L["Neck"], "Alt") --Animated Chain Necklace
    LBIS:AddItem(spec6, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec6, "22327", LBIS.L["Neck"], "Alt") --Amulet of the Redeemed
    LBIS:AddItem(spec6, "21620", LBIS.L["Ring"], "BIS") --Ring of the Martyr
    LBIS:AddItem(spec6, "23065", LBIS.L["Ring"], "BIS") --Ring of the Earthshatterer
    LBIS:AddItem(spec6, "19382", LBIS.L["Ring"], "BIS") --Pure Elementium Band
    LBIS:AddItem(spec6, "22939", LBIS.L["Ring"], "BIS") --Band of Unanswered Prayers
    LBIS:AddItem(spec6, "19140", LBIS.L["Ring"], "Alt") --Cauterizing Band
    LBIS:AddItem(spec6, "19863", LBIS.L["Ring"], "Alt") --Primalist's Seal
    LBIS:AddItem(spec6, "19920", LBIS.L["Ring"], "Alt") --Primalist's Band
    LBIS:AddItem(spec6, "13178", LBIS.L["Ring"], "Alt") --Rosewine Circle
    LBIS:AddItem(spec6, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec6, "22334", LBIS.L["Ring"], "Alt") --Band of Mending
    LBIS:AddItem(spec6, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec6, "23047", LBIS.L["Trinket"], "BIS") --Eye of the Dead
    LBIS:AddItem(spec6, "19395", LBIS.L["Trinket"], "BIS") --Rejuvenating Gem
    LBIS:AddItem(spec6, "20636", LBIS.L["Trinket"], "Alt") --Hibernation Crystal
    LBIS:AddItem(spec6, "19344", LBIS.L["Trinket"], "Alt") --Natural Alignment Crystal
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "21625", LBIS.L["Trinket"], "Alt") --Scarab Brooch
    LBIS:AddItem(spec6, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec6, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec6, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec6, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec6, "23056", LBIS.L["Main Hand"], "BIS") --Hammer of the Twisting Nether
    LBIS:AddItem(spec6, "21839", LBIS.L["Main Hand"], "Alt") --Scepter of the False Prophet
    LBIS:AddItem(spec6, "22942", LBIS.L["Main Hand"], "Alt") --The Widow's Embrace
    LBIS:AddItem(spec6, "23464", LBIS.L["Main Hand"], "Alt") --High Warlord's Battle Mace
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "19890", LBIS.L["Main Hand"], "Alt") --Jin'do's Hexxer
    LBIS:AddItem(spec6, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec6, "11923", LBIS.L["Main Hand"], "Alt") --The Hammer of Grace
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
    LBIS:AddItem(spec6, "22801", LBIS.L["Two Hand"], "BIS") --Spire of Twilight
    LBIS:AddItem(spec6, "21275", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Augur Staff
    LBIS:AddItem(spec6, "20581", LBIS.L["Two Hand"], "Alt") --Staff of Rampant Growth
    LBIS:AddItem(spec6, "22406", LBIS.L["Two Hand"], "Alt") --Redemption
    LBIS:AddItem(spec6, "11932", LBIS.L["Two Hand"], "Alt") --Guiding Stave of Wisdom
    LBIS:AddItem(spec6, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk
    LBIS:AddItem(spec6, "22394", LBIS.L["Two Hand"], "Alt") --Staff of Metanoia
    LBIS:AddItem(spec6, "22396", LBIS.L["Ranged/Relic"], "BIS") --Totem of Life
    LBIS:AddItem(spec6, "23200", LBIS.L["Ranged/Relic"], "Alt") --Totem of Sustaining
    LBIS:AddItem(spec6, "23005", LBIS.L["Ranged/Relic"], "Alt") --Totem of Flowing Water
    LBIS:AddItem(spec6, "22345", LBIS.L["Ranged/Relic"], "Alt") --Totem of Rebirth
end
if not LBIS.IsSOD then
    LoadData();
end
