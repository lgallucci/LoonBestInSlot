local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Dps"], "7")

    LBIS:AddEnchant(spec2, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec1, "16795", LBIS.L["Head"], "BIS") --Arcanist Crown
    LBIS:AddItem(spec1, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec1, "14332", LBIS.L["Head"], "Alt") --Eternal Crown
    LBIS:AddItem(spec1, "11782", LBIS.L["Shoulder"], "BIS") --Boreal Mantle
    LBIS:AddItem(spec1, "14335", LBIS.L["Shoulder"], "Alt") --Eternal Spaulders
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "13386", LBIS.L["Back"], "BIS") --Archivist Cape
    LBIS:AddItem(spec1, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec1, "10249", LBIS.L["Back"], "Alt") --Master's Cloak
    LBIS:AddItem(spec1, "14152", LBIS.L["Chest"], "BIS") --Robe of the Archmage
    LBIS:AddItem(spec1, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec1, "10246", LBIS.L["Chest"], "Alt") --Master's Vest
    LBIS:AddItem(spec1, "16799", LBIS.L["Wrist"], "BIS") --Arcanist Bindings
    LBIS:AddItem(spec1, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec1, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec1, "10248", LBIS.L["Wrist"], "Alt") --Master's Bracers
    LBIS:AddItem(spec1, "16801", LBIS.L["Hands"], "BIS") --Arcanist Gloves
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec1, "13870", LBIS.L["Hands"], "Alt") --Frostweave Gloves
    LBIS:AddItem(spec1, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec1, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec1, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec1, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec1, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "BIS") --Skyshroud Leggings
    LBIS:AddItem(spec1, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec1, "13871", LBIS.L["Legs"], "Alt") --Frostweave Pants
    LBIS:AddItem(spec1, "10247", LBIS.L["Feet"], "BIS") --Master's Boots
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec1, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec1, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec1, "942", LBIS.L["Ring"], "Alt") --Freezing Band
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec1, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec1, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec1, "15247", LBIS.L["Main Hand"], "Alt") --Bloodstrike Dagger
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "10796", LBIS.L["Off Hand"], "BIS") --Drakestone
    LBIS:AddItem(spec1, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec1, "15278", LBIS.L["Two Hand"], "Alt") --Solstice Staff
    LBIS:AddItem(spec1, "15283", LBIS.L["Ranged/Relic"], "BIS") --Lunar Wand
    LBIS:AddItem(spec1, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec1, "7514", LBIS.L["Ranged/Relic"], "Alt") --Icefury Wand

    LBIS:AddItem(spec2, "16795", LBIS.L["Head"], "BIS") --Arcanist Crown
    LBIS:AddItem(spec2, "23318", LBIS.L["Head"], "Alt") --Lieutenant Commander's Silk Cowl
    LBIS:AddItem(spec2, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec2, "14332", LBIS.L["Head"], "Alt") --Eternal Crown
    LBIS:AddItem(spec2, "16415", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Silk Spaulders
    LBIS:AddItem(spec2, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec2, "14335", LBIS.L["Shoulder"], "Alt") --Eternal Spaulders
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec2, "13386", LBIS.L["Back"], "BIS") --Archivist Cape
    LBIS:AddItem(spec2, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec2, "10249", LBIS.L["Back"], "Alt") --Master's Cloak
    LBIS:AddItem(spec2, "14152", LBIS.L["Chest"], "BIS") --Robe of the Archmage
    LBIS:AddItem(spec2, "23305", LBIS.L["Chest"], "Alt") --Knight-Captain's Silk Tunic
    LBIS:AddItem(spec2, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec2, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec2, "10246", LBIS.L["Chest"], "Alt") --Master's Vest
    LBIS:AddItem(spec2, "16799", LBIS.L["Wrist"], "BIS") --Arcanist Bindings
    LBIS:AddItem(spec2, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec2, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "10248", LBIS.L["Wrist"], "Alt") --Master's Bracers
    LBIS:AddItem(spec2, "16801", LBIS.L["Hands"], "BIS") --Arcanist Gloves
    LBIS:AddItem(spec2, "23290", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Silk Handwraps
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec2, "13870", LBIS.L["Hands"], "Alt") --Frostweave Gloves
    LBIS:AddItem(spec2, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec2, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec2, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec2, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec2, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec2, "16915", LBIS.L["Legs"], "BIS") --Netherwind Pants
    LBIS:AddItem(spec2, "23304", LBIS.L["Legs"], "Alt") --Knight-Captain's Silk Legguards
    LBIS:AddItem(spec2, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec2, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec2, "13871", LBIS.L["Legs"], "Alt") --Frostweave Pants
    LBIS:AddItem(spec2, "23291", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec2, "10247", LBIS.L["Feet"], "Alt") --Master's Boots
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec2, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec2, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec2, "942", LBIS.L["Ring"], "Alt") --Freezing Band
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec2, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec2, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec2, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec2, "228382", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec2, "15247", LBIS.L["Main Hand"], "Alt") --Bloodstrike Dagger
    LBIS:AddItem(spec2, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec2, "19310", LBIS.L["Off Hand"], "BIS") --Tome of the Ice Lord
    LBIS:AddItem(spec2, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec2, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec2, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec2, "228484", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec2, "15278", LBIS.L["Two Hand"], "Alt") --Solstice Staff
    LBIS:AddItem(spec2, "19130", LBIS.L["Ranged/Relic"], "BIS") --Cold Snap
    LBIS:AddItem(spec2, "19108", LBIS.L["Ranged/Relic"], "Alt") --Wand of Biting Cold
    LBIS:AddItem(spec2, "15283", LBIS.L["Ranged/Relic"], "Alt") --Lunar Wand
    LBIS:AddItem(spec2, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec2, "7514", LBIS.L["Ranged/Relic"], "Alt") --Icefury Wand
end
if not LBIS.IsSOD then
    LoadData();
end
