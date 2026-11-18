function LBIS:LoadPriestHoly()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "0", "https://www.wowhead.com/forever/guide/classes/priest/healer-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Holy"], "1", "https://www.wowhead.com/forever/guide/classes/priest/healer-talent-builds-pve")

    LBIS:AddEnchant(spec0, "24167", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29475", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "23802", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25079", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "22750", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "13102", LBIS.L["Head"], "BIS") --Cassandra's Grace
    LBIS:AddItem(spec0, "18681", LBIS.L["Shoulder"], "BIS") --Burial Shawl
    LBIS:AddItem(spec0, "18510", LBIS.L["Back"], "BIS") --Hide of the Wild
    LBIS:AddItem(spec0, "14154", LBIS.L["Chest"], "BIS") --Truefaith Vestments
    LBIS:AddItem(spec0, "11766", LBIS.L["Wrist"], "BIS") --Flameweave Cuffs
    LBIS:AddItem(spec0, "10787", LBIS.L["Hands"], "BIS") --Atal'ai Gloves
    LBIS:AddItem(spec0, "18327", LBIS.L["Waist"], "BIS") --Whipvine Cord
    LBIS:AddItem(spec0, "11841", LBIS.L["Legs"], "BIS") --Senior Designer's Pantaloons
    LBIS:AddItem(spec0, "18507", LBIS.L["Feet"], "BIS") --Boots of the Full Moon
    LBIS:AddItem(spec0, "18723", LBIS.L["Neck"], "BIS") --Animated Chain Necklace
    LBIS:AddItem(spec0, "16058", LBIS.L["Ring"], "Alt") --Fordring's Seal
    LBIS:AddItem(spec0, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec0, "22268", LBIS.L["Trinket"], "BIS") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "23454", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Warhammer
    LBIS:AddItem(spec0, "19312", LBIS.L["Off Hand"], "BIS") --Lei of the Lifegiver
    LBIS:AddItem(spec0, "16997", LBIS.L["Ranged"], "BIS") --Stormrager

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
    LBIS:AddItem(spec1, "13938", LBIS.L["Ranged"], "BIS") --Bonecreeper Stylus
    LBIS:AddItem(spec1, "16997", LBIS.L["Ranged"], "Alt") --Stormrager
end
