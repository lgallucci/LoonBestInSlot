local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["DPS"], "8")

    LBIS:AddEnchant(spec6, "24164", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29467", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "25084", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25078", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec0, "16533", LBIS.L["Head"], "Alt") --Warlord's Silk Cowl
    LBIS:AddItem(spec0, "23263", LBIS.L["Head"], "Alt") --Champion's Silk Cowl
    LBIS:AddItem(spec0, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec0, "10250", LBIS.L["Head"], "Alt") --Master's Hat
    LBIS:AddItem(spec0, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec0, "23264", LBIS.L["Shoulder"], "Alt") --Champion's Silk Mantle
    LBIS:AddItem(spec0, "16536", LBIS.L["Shoulder"], "Alt") --Warlord's Silk Amice
    LBIS:AddItem(spec0, "20686", LBIS.L["Shoulder"], "Alt") --Abyssal Cloth Amice
    LBIS:AddItem(spec0, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec0, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec0, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec0, "13007", LBIS.L["Back"], "Alt") --Mageflame Cloak
    LBIS:AddItem(spec0, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec0, "10249", LBIS.L["Back"], "Alt") --Master's Cloak
    LBIS:AddItem(spec0, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec0, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec0, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec0, "14152", LBIS.L["Chest"], "Alt") --Robe of the Archmage
    LBIS:AddItem(spec0, "16535", LBIS.L["Chest"], "Alt") --Warlord's Silk Raiment
    LBIS:AddItem(spec0, "21183", LBIS.L["Chest"], "Alt") --Earthpower Vest
    LBIS:AddItem(spec0, "22886", LBIS.L["Chest"], "Alt") --Legionnaire's Silk Tunic
    LBIS:AddItem(spec0, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec0, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec0, "21186", LBIS.L["Wrist"], "Alt") --Rockfury Bracers
    LBIS:AddItem(spec0, "19597", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec0, "11766", LBIS.L["Wrist"], "Alt") --Flameweave Cuffs
    LBIS:AddItem(spec0, "13409", LBIS.L["Wrist"], "Alt") --Tearfall Bracers
    LBIS:AddItem(spec0, "10248", LBIS.L["Wrist"], "Alt") --Master's Bracers
    LBIS:AddItem(spec0, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec0, "22870", LBIS.L["Hands"], "Alt") --Blood Guard's Silk Handwraps
    LBIS:AddItem(spec0, "18408", LBIS.L["Hands"], "Alt") --Inferno Gloves
    LBIS:AddItem(spec0, "16540", LBIS.L["Hands"], "Alt") --General's Silk Handguards
    LBIS:AddItem(spec0, "20716", LBIS.L["Hands"], "Alt") --Sandworm Skin Gloves
    LBIS:AddItem(spec0, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec0, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec0, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec0, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec0, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec0, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec0, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec0, "16534", LBIS.L["Legs"], "Alt") --General's Silk Trousers
    LBIS:AddItem(spec0, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec0, "22883", LBIS.L["Legs"], "Alt") --Legionnaire's Silk Legguards
    LBIS:AddItem(spec0, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec0, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec0, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec0, "16539", LBIS.L["Feet"], "Alt") --General's Silk Boots
    LBIS:AddItem(spec0, "22860", LBIS.L["Feet"], "Alt") --Blood Guard's Silk Walkers
    LBIS:AddItem(spec0, "13369", LBIS.L["Feet"], "Alt") --Fire Striders
    LBIS:AddItem(spec0, "10247", LBIS.L["Feet"], "Alt") --Master's Boots
    LBIS:AddItem(spec0, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec0, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec0, "18307", LBIS.L["Feet"], "Alt") --Riptide Shoes
    LBIS:AddItem(spec0, "22403", LBIS.L["Neck"], "Alt") --Diana's Pearl Necklace
    LBIS:AddItem(spec0, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec0, "20037", LBIS.L["Neck"], "Alt") --Arcane Crystal Pendant
    LBIS:AddItem(spec0, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec0, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec0, "21190", LBIS.L["Ring"], "Alt") --Wrath of Cenarius
    LBIS:AddItem(spec0, "12926", LBIS.L["Ring"], "Alt") --Flaming Band
    LBIS:AddItem(spec0, "20682", LBIS.L["Ring"], "Alt") --Elemental Focus Band
    LBIS:AddItem(spec0, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec0, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec0, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec0, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec0, "942", LBIS.L["Ring"], "Alt") --Freezing Band
    LBIS:AddItem(spec0, "22678", LBIS.L["Trinket"], "Alt") --Talisman of Ascendance
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec0, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec0, "22688", LBIS.L["Main Hand"], "Alt") --Verimonde's Last Resort
    LBIS:AddItem(spec0, "20720", LBIS.L["Main Hand"], "Alt") --Dark Whisper Blade
    LBIS:AddItem(spec0, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec0, "18396", LBIS.L["Main Hand"], "Alt") --Mind Carver
    LBIS:AddItem(spec0, "17780", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Darkness
    LBIS:AddItem(spec0, "17719", LBIS.L["Main Hand"], "Alt") --Inventor's Focal Sword
    LBIS:AddItem(spec0, "19311", LBIS.L["Off Hand"], "Alt") --Tome of Fiery Arcana
    LBIS:AddItem(spec0, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec0, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec0, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec0, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec0, "19310", LBIS.L["Off Hand"], "Alt") --Tome of the Ice Lord
    LBIS:AddItem(spec0, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec0, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec0, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec0, "20258", LBIS.L["Two Hand"], "Alt") --Zulian Ceremonial Staff
    LBIS:AddItem(spec0, "20654", LBIS.L["Two Hand"], "Alt") --Amethyst War Staff
    LBIS:AddItem(spec0, "944", LBIS.L["Two Hand"], "Alt") --Elemental Mage Staff
    LBIS:AddItem(spec0, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec0, "13938", LBIS.L["Ranged"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec0, "22408", LBIS.L["Ranged"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec0, "11748", LBIS.L["Ranged"], "Alt") --Pyric Caduceus
    LBIS:AddItem(spec0, "18301", LBIS.L["Ranged"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec0, "19108", LBIS.L["Ranged"], "Alt") --Wand of Biting Cold

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

    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "16795", LBIS.L["Head"], "Alt") --Arcanist Crown
    LBIS:AddItem(spec3, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec3, "23264", LBIS.L["Shoulder"], "BIS") --Champion's Silk Mantle
    LBIS:AddItem(spec3, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec3, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec3, "16917", LBIS.L["Shoulder"], "Alt") --Netherwind Mantle
    LBIS:AddItem(spec3, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec3, "13386", LBIS.L["Back"], "Alt") --Archivist Cape
    LBIS:AddItem(spec3, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec3, "14152", LBIS.L["Chest"], "BIS") --Robe of the Archmage
    LBIS:AddItem(spec3, "16916", LBIS.L["Chest"], "Alt") --Netherwind Robes
    LBIS:AddItem(spec3, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "16918", LBIS.L["Wrist"], "Alt") --Netherwind Bindings
    LBIS:AddItem(spec3, "16913", LBIS.L["Hands"], "BIS") --Netherwind Gloves
    LBIS:AddItem(spec3, "16391", LBIS.L["Hands"], "BIS") --Knight-Lieutenant's Silk Gloves
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec3, "16915", LBIS.L["Legs"], "BIS") --Netherwind Pants
    LBIS:AddItem(spec3, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec3, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec3, "23291", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec3, "19438", LBIS.L["Feet"], "BIS") --Ringo's Blizzard Boots
    LBIS:AddItem(spec3, "16800", LBIS.L["Feet"], "Alt") --Arcanist Boots
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec3, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec3, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec3, "942", LBIS.L["Ring"], "Alt") --Freezing Band
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec3, "19339", LBIS.L["Trinket"], "BIS") --Mind Quickening Gem
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec3, "19356", LBIS.L["Main Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec3, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec3, "19310", LBIS.L["Off Hand"], "BIS") --Tome of the Ice Lord
    LBIS:AddItem(spec3, "10796", LBIS.L["Off Hand"], "Alt") --Drakestone
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "19130", LBIS.L["Ranged/Relic"], "BIS") --Cold Snap
    LBIS:AddItem(spec3, "15283", LBIS.L["Ranged/Relic"], "Alt") --Lunar Wand
    LBIS:AddItem(spec3, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus

    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "16795", LBIS.L["Head"], "Alt") --Arcanist Crown
    LBIS:AddItem(spec4, "16441", LBIS.L["Head"], "Alt") --Field Marshal's Coronet
    LBIS:AddItem(spec4, "16533", LBIS.L["Head"], "Alt") --Warlord's Silk Cowl
    LBIS:AddItem(spec4, "23318", LBIS.L["Head"], "Alt") --Lieutenant Commander's Silk Cowl
    LBIS:AddItem(spec4, "23263", LBIS.L["Head"], "Alt") --Champion's Silk Cowl
    LBIS:AddItem(spec4, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec4, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec4, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec4, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec4, "23319", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Silk Mantle
    LBIS:AddItem(spec4, "23264", LBIS.L["Shoulder"], "Alt") --Champion's Silk Mantle
    LBIS:AddItem(spec4, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec4, "16444", LBIS.L["Shoulder"], "Alt") --Field Marshal's Silk Spaulders
    LBIS:AddItem(spec4, "16536", LBIS.L["Shoulder"], "Alt") --Warlord's Silk Amice
    LBIS:AddItem(spec4, "16917", LBIS.L["Shoulder"], "Alt") --Netherwind Mantle
    LBIS:AddItem(spec4, "16797", LBIS.L["Shoulder"], "Alt") --Arcanist Mantle
    LBIS:AddItem(spec4, "19845", LBIS.L["Shoulder"], "Alt") --Zandalar Illusionist's Mantle
    LBIS:AddItem(spec4, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec4, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec4, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec4, "22711", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec4, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec4, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec4, "20034", LBIS.L["Chest"], "Alt") --Zandalar Illusionist's Robe
    LBIS:AddItem(spec4, "14152", LBIS.L["Chest"], "Alt") --Robe of the Archmage
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec4, "16443", LBIS.L["Chest"], "Alt") --Field Marshal's Silk Vestments
    LBIS:AddItem(spec4, "16535", LBIS.L["Chest"], "Alt") --Warlord's Silk Raiment
    LBIS:AddItem(spec4, "23305", LBIS.L["Chest"], "Alt") --Knight-Captain's Silk Tunic
    LBIS:AddItem(spec4, "22886", LBIS.L["Chest"], "Alt") --Legionnaire's Silk Tunic
    LBIS:AddItem(spec4, "16916", LBIS.L["Chest"], "Alt") --Netherwind Robes
    LBIS:AddItem(spec4, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec4, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec4, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec4, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec4, "16798", LBIS.L["Chest"], "Alt") --Arcanist Robes
    LBIS:AddItem(spec4, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec4, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "16918", LBIS.L["Wrist"], "Alt") --Netherwind Bindings
    LBIS:AddItem(spec4, "19846", LBIS.L["Wrist"], "Alt") --Zandalar Illusionist's Wraps
    LBIS:AddItem(spec4, "16799", LBIS.L["Wrist"], "Alt") --Arcanist Bindings
    LBIS:AddItem(spec4, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec4, "16913", LBIS.L["Hands"], "BIS") --Netherwind Gloves
    LBIS:AddItem(spec4, "18808", LBIS.L["Hands"], "Alt") --Gloves of the Hypnotic Flame
    LBIS:AddItem(spec4, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec4, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec4, "16440", LBIS.L["Hands"], "Alt") --Marshal's Silk Gloves
    LBIS:AddItem(spec4, "16540", LBIS.L["Hands"], "Alt") --General's Silk Handguards
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec4, "22870", LBIS.L["Hands"], "Alt") --Blood Guard's Silk Handwraps
    LBIS:AddItem(spec4, "23290", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Silk Handwraps
    LBIS:AddItem(spec4, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec4, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec4, "16818", LBIS.L["Waist"], "Alt") --Netherwind Belt
    LBIS:AddItem(spec4, "20047", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec4, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec4, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec4, "16802", LBIS.L["Waist"], "Alt") --Arcanist Belt
    LBIS:AddItem(spec4, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec4, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec4, "16915", LBIS.L["Legs"], "Alt") --Netherwind Pants
    LBIS:AddItem(spec4, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec4, "23304", LBIS.L["Legs"], "Alt") --Knight-Captain's Silk Legguards
    LBIS:AddItem(spec4, "22883", LBIS.L["Legs"], "Alt") --Legionnaire's Silk Legguards
    LBIS:AddItem(spec4, "16534", LBIS.L["Legs"], "Alt") --General's Silk Trousers
    LBIS:AddItem(spec4, "16442", LBIS.L["Legs"], "Alt") --Marshal's Silk Leggings
    LBIS:AddItem(spec4, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec4, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec4, "19895", LBIS.L["Legs"], "Alt") --Bloodtinged Kilt
    LBIS:AddItem(spec4, "22747", LBIS.L["Legs"], "Alt") --Outrider's Silk Leggings
    LBIS:AddItem(spec4, "22752", LBIS.L["Legs"], "Alt") --Sentinel's Silk Leggings
    LBIS:AddItem(spec4, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec4, "19438", LBIS.L["Feet"], "Alt") --Ringo's Blizzard Boots
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec4, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec4, "23291", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec4, "22860", LBIS.L["Feet"], "Alt") --Blood Guard's Silk Walkers
    LBIS:AddItem(spec4, "16437", LBIS.L["Feet"], "Alt") --Marshal's Silk Footwraps
    LBIS:AddItem(spec4, "16539", LBIS.L["Feet"], "Alt") --General's Silk Boots
    LBIS:AddItem(spec4, "16912", LBIS.L["Feet"], "Alt") --Netherwind Boots
    LBIS:AddItem(spec4, "16800", LBIS.L["Feet"], "Alt") --Arcanist Boots
    LBIS:AddItem(spec4, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "20037", LBIS.L["Neck"], "Alt") --Arcane Crystal Pendant
    LBIS:AddItem(spec4, "19876", LBIS.L["Neck"], "Alt") --Soul Corrupter's Necklace
    LBIS:AddItem(spec4, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec4, "20632", LBIS.L["Ring"], "BIS") --Mindtear Band
    LBIS:AddItem(spec4, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec4, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec4, "19905", LBIS.L["Ring"], "Alt") --Zanzil's Band
    LBIS:AddItem(spec4, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec4, "942", LBIS.L["Ring"], "Alt") --Freezing Band
    LBIS:AddItem(spec4, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec4, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec4, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec4, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec4, "19339", LBIS.L["Trinket"], "BIS") --Mind Quickening Gem
    LBIS:AddItem(spec4, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec4, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "19864", LBIS.L["Main Hand"], "Alt") --Bloodcaller
    LBIS:AddItem(spec4, "19903", LBIS.L["Main Hand"], "Alt") --Fang of Venoxis
    LBIS:AddItem(spec4, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec4, "19964", LBIS.L["Main Hand"], "Alt") --Renataki's Soul Conduit
    LBIS:AddItem(spec4, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec4, "19310", LBIS.L["Off Hand"], "BIS") --Tome of the Ice Lord
    LBIS:AddItem(spec4, "19311", LBIS.L["Off Hand"], "BIS") --Tome of Fiery Arcana
    LBIS:AddItem(spec4, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "20582", LBIS.L["Off Hand"], "Alt") --Trance Stone
    LBIS:AddItem(spec4, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec4, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec4, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec4, "19130", LBIS.L["Ranged/Relic"], "BIS") --Cold Snap
    LBIS:AddItem(spec4, "19861", LBIS.L["Ranged/Relic"], "BIS") --Touch of Chaos
    LBIS:AddItem(spec4, "19108", LBIS.L["Ranged/Relic"], "Alt") --Wand of Biting Cold
    LBIS:AddItem(spec4, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec4, "10572", LBIS.L["Ranged/Relic"], "Alt") --Freezing Shard
    LBIS:AddItem(spec4, "7514", LBIS.L["Ranged/Relic"], "Alt") --Icefury Wand
    LBIS:AddItem(spec4, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec4, "19367", LBIS.L["Ranged/Relic"], "Alt") --Dragon's Touch

    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "16441", LBIS.L["Head"], "Alt") --Field Marshal's Coronet
    LBIS:AddItem(spec5, "16533", LBIS.L["Head"], "Alt") --Warlord's Silk Cowl
    LBIS:AddItem(spec5, "23318", LBIS.L["Head"], "Alt") --Lieutenant Commander's Silk Cowl
    LBIS:AddItem(spec5, "23263", LBIS.L["Head"], "Alt") --Champion's Silk Cowl
    LBIS:AddItem(spec5, "21347", LBIS.L["Head"], "Alt") --Enigma Circlet
    LBIS:AddItem(spec5, "16795", LBIS.L["Head"], "Alt") --Arcanist Crown
    LBIS:AddItem(spec5, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec5, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "23264", LBIS.L["Shoulder"], "BIS") --Champion's Silk Mantle
    LBIS:AddItem(spec5, "23319", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Silk Mantle
    LBIS:AddItem(spec5, "16444", LBIS.L["Shoulder"], "Alt") --Field Marshal's Silk Spaulders
    LBIS:AddItem(spec5, "16536", LBIS.L["Shoulder"], "Alt") --Warlord's Silk Amice
    LBIS:AddItem(spec5, "21345", LBIS.L["Shoulder"], "Alt") --Enigma Shoulderpads
    LBIS:AddItem(spec5, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec5, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec5, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec5, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec5, "21343", LBIS.L["Chest"], "BIS") --Enigma Robes
    LBIS:AddItem(spec5, "16443", LBIS.L["Chest"], "Alt") --Field Marshal's Silk Vestments
    LBIS:AddItem(spec5, "16535", LBIS.L["Chest"], "Alt") --Warlord's Silk Raiment
    LBIS:AddItem(spec5, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec5, "14152", LBIS.L["Chest"], "Alt") --Robe of the Archmage
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec5, "16916", LBIS.L["Chest"], "Alt") --Netherwind Robes
    LBIS:AddItem(spec5, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "16918", LBIS.L["Wrist"], "Alt") --Netherwind Bindings
    LBIS:AddItem(spec5, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec5, "16440", LBIS.L["Hands"], "Alt") --Marshal's Silk Gloves
    LBIS:AddItem(spec5, "16540", LBIS.L["Hands"], "Alt") --General's Silk Handguards
    LBIS:AddItem(spec5, "16913", LBIS.L["Hands"], "Alt") --Netherwind Gloves
    LBIS:AddItem(spec5, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec5, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec5, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "21461", LBIS.L["Legs"], "BIS") --Leggings of the Black Blizzard
    LBIS:AddItem(spec5, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec5, "21676", LBIS.L["Legs"], "Alt") --Leggings of the Festering Swarm
    LBIS:AddItem(spec5, "16442", LBIS.L["Legs"], "Alt") --Marshal's Silk Leggings
    LBIS:AddItem(spec5, "16534", LBIS.L["Legs"], "Alt") --General's Silk Trousers
    LBIS:AddItem(spec5, "16915", LBIS.L["Legs"], "Alt") --Netherwind Pants
    LBIS:AddItem(spec5, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec5, "21344", LBIS.L["Feet"], "BIS") --Enigma Boots
    LBIS:AddItem(spec5, "16437", LBIS.L["Feet"], "BIS") --Marshal's Silk Footwraps
    LBIS:AddItem(spec5, "16539", LBIS.L["Feet"], "BIS") --General's Silk Boots
    LBIS:AddItem(spec5, "23291", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec5, "22860", LBIS.L["Feet"], "Alt") --Blood Guard's Silk Walkers
    LBIS:AddItem(spec5, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec5, "16800", LBIS.L["Feet"], "Alt") --Arcanist Boots
    LBIS:AddItem(spec5, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec5, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec5, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec5, "21836", LBIS.L["Ring"], "BIS") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec5, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec5, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "19339", LBIS.L["Trinket"], "BIS") --Mind Quickening Gem
    LBIS:AddItem(spec5, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "21622", LBIS.L["Main Hand"], "BIS") --Sharpened Silithid Femur
    LBIS:AddItem(spec5, "21273", LBIS.L["Main Hand"], "BIS") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec5, "19356", LBIS.L["Main Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec5, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec5, "21597", LBIS.L["Off Hand"], "BIS") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec5, "19310", LBIS.L["Off Hand"], "Alt") --Tome of the Ice Lord
    LBIS:AddItem(spec5, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec5, "21603", LBIS.L["Ranged/Relic"], "BIS") --Wand of Qiraji Nobility
    LBIS:AddItem(spec5, "19130", LBIS.L["Ranged/Relic"], "BIS") --Cold Snap
    LBIS:AddItem(spec5, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus

    LBIS:AddItem(spec6, "22498", LBIS.L["Head"], "BIS") --Frostfire Circlet
    LBIS:AddItem(spec6, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec6, "23035", LBIS.L["Head"], "Alt") --Preceptor's Hat
    LBIS:AddItem(spec6, "21347", LBIS.L["Head"], "Alt") --Enigma Circlet
    LBIS:AddItem(spec6, "16441", LBIS.L["Head"], "Alt") --Field Marshal's Coronet
    LBIS:AddItem(spec6, "16533", LBIS.L["Head"], "Alt") --Warlord's Silk Cowl
    LBIS:AddItem(spec6, "23318", LBIS.L["Head"], "Alt") --Lieutenant Commander's Silk Cowl
    LBIS:AddItem(spec6, "23263", LBIS.L["Head"], "Alt") --Champion's Silk Cowl
    LBIS:AddItem(spec6, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec6, "16795", LBIS.L["Head"], "Alt") --Arcanist Crown
    LBIS:AddItem(spec6, "16914", LBIS.L["Head"], "Alt") --Netherwind Crown
    LBIS:AddItem(spec6, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec6, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec6, "22983", LBIS.L["Shoulder"], "BIS") --Rime Covered Mantle
    LBIS:AddItem(spec6, "22499", LBIS.L["Shoulder"], "Alt") --Frostfire Shoulderpads
    LBIS:AddItem(spec6, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec6, "21686", LBIS.L["Shoulder"], "Alt") --Mantle of Phrenic Power
    LBIS:AddItem(spec6, "21345", LBIS.L["Shoulder"], "Alt") --Enigma Shoulderpads
    LBIS:AddItem(spec6, "23319", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Silk Mantle
    LBIS:AddItem(spec6, "23264", LBIS.L["Shoulder"], "Alt") --Champion's Silk Mantle
    LBIS:AddItem(spec6, "16444", LBIS.L["Shoulder"], "Alt") --Field Marshal's Silk Spaulders
    LBIS:AddItem(spec6, "16536", LBIS.L["Shoulder"], "Alt") --Warlord's Silk Amice
    LBIS:AddItem(spec6, "16917", LBIS.L["Shoulder"], "Alt") --Netherwind Mantle
    LBIS:AddItem(spec6, "16797", LBIS.L["Shoulder"], "Alt") --Arcanist Mantle
    LBIS:AddItem(spec6, "19845", LBIS.L["Shoulder"], "Alt") --Zandalar Illusionist's Mantle
    LBIS:AddItem(spec6, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec6, "11782", LBIS.L["Shoulder"], "Alt") --Boreal Mantle
    LBIS:AddItem(spec6, "23050", LBIS.L["Back"], "BIS") --Cloak of the Necropolis
    LBIS:AddItem(spec6, "22731", LBIS.L["Back"], "Alt") --Cloak of the Devoured
    LBIS:AddItem(spec6, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "23017", LBIS.L["Back"], "Alt") --Veil of Eclipse
    LBIS:AddItem(spec6, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "22711", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec6, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec6, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec6, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec6, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec6, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec6, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec6, "22496", LBIS.L["Chest"], "BIS") --Frostfire Robe
    LBIS:AddItem(spec6, "23220", LBIS.L["Chest"], "Alt") --Crystal Webbed Robe
    LBIS:AddItem(spec6, "21343", LBIS.L["Chest"], "Alt") --Enigma Robes
    LBIS:AddItem(spec6, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec6, "20034", LBIS.L["Chest"], "Alt") --Zandalar Illusionist's Robe
    LBIS:AddItem(spec6, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec6, "16443", LBIS.L["Chest"], "Alt") --Field Marshal's Silk Vestments
    LBIS:AddItem(spec6, "16535", LBIS.L["Chest"], "Alt") --Warlord's Silk Raiment
    LBIS:AddItem(spec6, "23305", LBIS.L["Chest"], "Alt") --Knight-Captain's Silk Tunic
    LBIS:AddItem(spec6, "22886", LBIS.L["Chest"], "Alt") --Legionnaire's Silk Tunic
    LBIS:AddItem(spec6, "14152", LBIS.L["Chest"], "Alt") --Robe of the Archmage
    LBIS:AddItem(spec6, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec6, "16916", LBIS.L["Chest"], "Alt") --Netherwind Robes
    LBIS:AddItem(spec6, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec6, "16798", LBIS.L["Chest"], "Alt") --Arcanist Robes
    LBIS:AddItem(spec6, "14340", LBIS.L["Chest"], "Alt") --Freezing Lich Robes
    LBIS:AddItem(spec6, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec6, "23021", LBIS.L["Wrist"], "BIS") --The Soul Harvester's Bindings
    LBIS:AddItem(spec6, "21611", LBIS.L["Wrist"], "Alt") --Burrower Bracers
    LBIS:AddItem(spec6, "22503", LBIS.L["Wrist"], "Alt") --Frostfire Bindings
    LBIS:AddItem(spec6, "21186", LBIS.L["Wrist"], "Alt") --Rockfury Bracers
    LBIS:AddItem(spec6, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec6, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec6, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec6, "16918", LBIS.L["Wrist"], "Alt") --Netherwind Bindings
    LBIS:AddItem(spec6, "19846", LBIS.L["Wrist"], "Alt") --Zandalar Illusionist's Wraps
    LBIS:AddItem(spec6, "16799", LBIS.L["Wrist"], "Alt") --Arcanist Bindings
    LBIS:AddItem(spec6, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec6, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "22501", LBIS.L["Hands"], "Alt") --Frostfire Gloves
    LBIS:AddItem(spec6, "18808", LBIS.L["Hands"], "Alt") --Gloves of the Hypnotic Flame
    LBIS:AddItem(spec6, "18408", LBIS.L["Hands"], "Alt") --Inferno Gloves
    LBIS:AddItem(spec6, "16913", LBIS.L["Hands"], "Alt") --Netherwind Gloves
    LBIS:AddItem(spec6, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec6, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec6, "16440", LBIS.L["Hands"], "Alt") --Marshal's Silk Gloves
    LBIS:AddItem(spec6, "16540", LBIS.L["Hands"], "Alt") --General's Silk Handguards
    LBIS:AddItem(spec6, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec6, "23290", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Silk Handwraps
    LBIS:AddItem(spec6, "22870", LBIS.L["Hands"], "Alt") --Blood Guard's Silk Handwraps
    LBIS:AddItem(spec6, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "22502", LBIS.L["Waist"], "Alt") --Frostfire Belt
    LBIS:AddItem(spec6, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec6, "16818", LBIS.L["Waist"], "Alt") --Netherwind Belt
    LBIS:AddItem(spec6, "20047", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec6, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec6, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec6, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec6, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec6, "16802", LBIS.L["Waist"], "Alt") --Arcanist Belt
    LBIS:AddItem(spec6, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec6, "23070", LBIS.L["Legs"], "BIS") --Leggings of Polarity
    LBIS:AddItem(spec6, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec6, "21676", LBIS.L["Legs"], "Alt") --Leggings of the Festering Swarm
    LBIS:AddItem(spec6, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "22497", LBIS.L["Legs"], "Alt") --Frostfire Leggings
    LBIS:AddItem(spec6, "21346", LBIS.L["Legs"], "Alt") --Enigma Leggings
    LBIS:AddItem(spec6, "16915", LBIS.L["Legs"], "Alt") --Netherwind Pants
    LBIS:AddItem(spec6, "23304", LBIS.L["Legs"], "Alt") --Knight-Captain's Silk Legguards
    LBIS:AddItem(spec6, "22883", LBIS.L["Legs"], "Alt") --Legionnaire's Silk Legguards
    LBIS:AddItem(spec6, "16534", LBIS.L["Legs"], "Alt") --General's Silk Trousers
    LBIS:AddItem(spec6, "16442", LBIS.L["Legs"], "Alt") --Marshal's Silk Leggings
    LBIS:AddItem(spec6, "16796", LBIS.L["Legs"], "Alt") --Arcanist Leggings
    LBIS:AddItem(spec6, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec6, "19895", LBIS.L["Legs"], "Alt") --Bloodtinged Kilt
    LBIS:AddItem(spec6, "22747", LBIS.L["Legs"], "Alt") --Outrider's Silk Leggings
    LBIS:AddItem(spec6, "22752", LBIS.L["Legs"], "Alt") --Sentinel's Silk Leggings
    LBIS:AddItem(spec6, "22500", LBIS.L["Feet"], "BIS") --Frostfire Sandals
    LBIS:AddItem(spec6, "21600", LBIS.L["Feet"], "Alt") --Boots of Epiphany
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "21344", LBIS.L["Feet"], "Alt") --Enigma Boots
    LBIS:AddItem(spec6, "16912", LBIS.L["Feet"], "Alt") --Netherwind Boots
    LBIS:AddItem(spec6, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec6, "23291", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec6, "22860", LBIS.L["Feet"], "Alt") --Blood Guard's Silk Walkers
    LBIS:AddItem(spec6, "16437", LBIS.L["Feet"], "Alt") --Marshal's Silk Footwraps
    LBIS:AddItem(spec6, "16539", LBIS.L["Feet"], "Alt") --General's Silk Boots
    LBIS:AddItem(spec6, "16800", LBIS.L["Feet"], "Alt") --Arcanist Boots
    LBIS:AddItem(spec6, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec6, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "23057", LBIS.L["Neck"], "BIS") --Gem of Trapped Innocents
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "22943", LBIS.L["Neck"], "Alt") --Malice Stone Pendant
    LBIS:AddItem(spec6, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec6, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec6, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec6, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec6, "20037", LBIS.L["Neck"], "Alt") --Arcane Crystal Pendant
    LBIS:AddItem(spec6, "19876", LBIS.L["Neck"], "Alt") --Soul Corrupter's Necklace
    LBIS:AddItem(spec6, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec6, "23237", LBIS.L["Ring"], "BIS") --Ring of the Eternal Flame
    LBIS:AddItem(spec6, "23062", LBIS.L["Ring"], "BIS") --Frostfire Ring
    LBIS:AddItem(spec6, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec6, "23031", LBIS.L["Ring"], "Alt") --Band of the Inevitable
    LBIS:AddItem(spec6, "21836", LBIS.L["Ring"], "Alt") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec6, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec6, "20632", LBIS.L["Ring"], "Alt") --Mindtear Band
    LBIS:AddItem(spec6, "23025", LBIS.L["Ring"], "Alt") --Seal of the Damned
    LBIS:AddItem(spec6, "21210", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec6, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec6, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec6, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "23046", LBIS.L["Trinket"], "BIS") --The Restrained Essence of Sapphiron
    LBIS:AddItem(spec6, "23207", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "19339", LBIS.L["Trinket"], "BIS") --Mind Quickening Gem
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec6, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec6, "22807", LBIS.L["Main Hand"], "BIS") --Wraith Blade
    LBIS:AddItem(spec6, "22803", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec6, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec6, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec6, "21622", LBIS.L["Main Hand"], "Alt") --Sharpened Silithid Femur
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec6, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec6, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec6, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec6, "19864", LBIS.L["Main Hand"], "Alt") --Bloodcaller
    LBIS:AddItem(spec6, "19903", LBIS.L["Main Hand"], "Alt") --Fang of Venoxis
    LBIS:AddItem(spec6, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec6, "19964", LBIS.L["Main Hand"], "Alt") --Renataki's Soul Conduit
    LBIS:AddItem(spec6, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec6, "23049", LBIS.L["Off Hand"], "BIS") --Sapphiron's Left Eye
    LBIS:AddItem(spec6, "19311", LBIS.L["Off Hand"], "BIS") --Tome of Fiery Arcana
    LBIS:AddItem(spec6, "21597", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "21471", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec6, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec6, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "20582", LBIS.L["Off Hand"], "Alt") --Trance Stone
    LBIS:AddItem(spec6, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec6, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec6, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec6, "22589", LBIS.L["Two Hand"], "BIS") --Atiesh, Greatstaff of the Guardian
    LBIS:AddItem(spec6, "22799", LBIS.L["Two Hand"], "Alt") --Soulseeker
    LBIS:AddItem(spec6, "22800", LBIS.L["Two Hand"], "Alt") --Brimstone Staff
    LBIS:AddItem(spec6, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec6, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec6, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec6, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec6, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec6, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec6, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec6, "19884", LBIS.L["Two Hand"], "Alt") --Jin'do's Judgement
    LBIS:AddItem(spec6, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec6, "19909", LBIS.L["Two Hand"], "Alt") --Will of Arlokk
    LBIS:AddItem(spec6, "22821", LBIS.L["Ranged/Relic"], "BIS") --Doomfinger
    LBIS:AddItem(spec6, "21603", LBIS.L["Ranged/Relic"], "Alt") --Wand of Qiraji Nobility
    LBIS:AddItem(spec6, "19861", LBIS.L["Ranged/Relic"], "Alt") --Touch of Chaos
    LBIS:AddItem(spec6, "22820", LBIS.L["Ranged/Relic"], "Alt") --Wand of Fates
    LBIS:AddItem(spec6, "11748", LBIS.L["Ranged/Relic"], "Alt") --Pyric Caduceus
    LBIS:AddItem(spec6, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec6, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec6, "19367", LBIS.L["Ranged/Relic"], "Alt") --Dragon's Touch
    LBIS:AddItem(spec6, "19130", LBIS.L["Ranged/Relic"], "Alt") --Cold Snap
    LBIS:AddItem(spec6, "19108", LBIS.L["Ranged/Relic"], "Alt") --Wand of Biting Cold
    LBIS:AddItem(spec6, "10572", LBIS.L["Ranged/Relic"], "Alt") --Freezing Shard
    LBIS:AddItem(spec6, "7514", LBIS.L["Ranged/Relic"], "Alt") --Icefury Wand
end
if not LBIS.IsSOD then
    LoadData();
end
