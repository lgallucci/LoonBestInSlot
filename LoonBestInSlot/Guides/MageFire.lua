function LBIS:LoadMageFire()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Fire"], "0", "https://www.wowhead.com/forever/guide/classes/mage/dps-overview-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Mage"], LBIS.L["Fire"], "1", "https://www.wowhead.com/forever/guide/classes/mage/dps-overview-pve")
    
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
end