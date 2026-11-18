function LBIS:LoadShamanRestoration()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "0", "https://www.wowhead.com/forever/guide/classes/shaman/healer-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Restoration"], "1", "https://www.wowhead.com/forever/guide/classes/shaman/healer-talent-builds-pve")

    LBIS:AddEnchant(spec0, "24163", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29475", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "22750", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec0, "13933", LBIS.L["Off Hand"]) --

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
end
