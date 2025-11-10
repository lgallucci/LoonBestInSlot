local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["DPS"], "8")

    LBIS:AddEnchant(spec6, "24165", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29467", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25078", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "25073", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "22267", LBIS.L["Head"], "BIS") --Spellweaver's Turban
    LBIS:AddItem(spec0, "20686", LBIS.L["Shoulder"], "BIS") --Abyssal Cloth Amice
    LBIS:AddItem(spec0, "20697", LBIS.L["Back"], "BIS") --Crystalline Threaded Cape
    LBIS:AddItem(spec0, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec0, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec0, "10787", LBIS.L["Hands"], "BIS") --Atal'ai Gloves
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "BIS") --Ban'thok Sash
    LBIS:AddItem(spec0, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec0, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec0, "22403", LBIS.L["Neck"], "BIS") --Diana's Pearl Necklace
    LBIS:AddItem(spec0, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec0, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "22688", LBIS.L["Main Hand"], "BIS") --Verimonde's Last Resort
    LBIS:AddItem(spec0, "22329", LBIS.L["Off Hand"], "BIS") --Scepter of Interminable Focus
    LBIS:AddItem(spec0, "13396", LBIS.L["Ranged"], "BIS") --Skul's Ghastly Touch

    LBIS:AddItem(spec1, "16929", LBIS.L["Head"], "BIS") --Nemesis Skullcap
    LBIS:AddItem(spec1, "14112", LBIS.L["Shoulder"], "BIS") --Felcloth Shoulders
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec1, "14153", LBIS.L["Chest"], "Alt") --Robe of the Void
    LBIS:AddItem(spec1, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec1, "16804", LBIS.L["Wrist"], "BIS") --Felheart Bracers
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec1, "16805", LBIS.L["Hands"], "Alt") --Felheart Gloves
    LBIS:AddItem(spec1, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec1, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec1, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec1, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec1, "16810", LBIS.L["Legs"], "Alt") --Felheart Pants
    LBIS:AddItem(spec1, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec1, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec1, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec1, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec1, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec1, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec1, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec1, "11904", LBIS.L["Off Hand"], "BIS") --Spirit of Aquementas
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec1, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec1, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec1, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec1, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo

    LBIS:AddItem(spec2, "23310", LBIS.L["Head"], "BIS") --Lieutenant Commander's Dreadweave Cowl
    LBIS:AddItem(spec2, "16929", LBIS.L["Head"], "Alt") --Nemesis Skullcap
    LBIS:AddItem(spec2, "228480", LBIS.L["Head"], "Alt") --Crown of the Ogre King
    LBIS:AddItem(spec2, "23311", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Dreadweave Spaulders
    LBIS:AddItem(spec2, "14112", LBIS.L["Shoulder"], "Alt") --Felcloth Shoulders
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec2, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec2, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec2, "14153", LBIS.L["Chest"], "Alt") --Robe of the Void
    LBIS:AddItem(spec2, "227096", LBIS.L["Chest"], "Alt") --Knight-Captain's Dreadweave Tunic
    LBIS:AddItem(spec2, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec2, "16804", LBIS.L["Wrist"], "Alt") --Felheart Bracers
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec2, "220890", LBIS.L["Hands"], "Alt") --Sergeant Major's Dreadweave Gloves
    LBIS:AddItem(spec2, "16805", LBIS.L["Hands"], "Alt") --Felheart Gloves
    LBIS:AddItem(spec2, "18306", LBIS.L["Hands"], "Alt") --Gloves of Shadowy Mist
    LBIS:AddItem(spec2, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec2, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec2, "18327", LBIS.L["Waist"], "Alt") --Whipvine Cord
    LBIS:AddItem(spec2, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec2, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec2, "23296", LBIS.L["Legs"], "Alt") --Knight-Captain's Dreadweave Legguards
    LBIS:AddItem(spec2, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec2, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec2, "16810", LBIS.L["Legs"], "Alt") --Felheart Pants
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec2, "17562", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dreadweave Boots
    LBIS:AddItem(spec2, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "18507", LBIS.L["Feet"], "Alt") --Boots of the Full Moon
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec2, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec2, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec2, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec2, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec2, "17103", LBIS.L["Main Hand"], "BIS") --Azuresong Mageblade
    LBIS:AddItem(spec2, "228382", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec2, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec2, "11904", LBIS.L["Off Hand"], "BIS") --Spirit of Aquementas
    LBIS:AddItem(spec2, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec2, "228484", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec2, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec2, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec2, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec2, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo

    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "23310", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dreadweave Cowl
    LBIS:AddItem(spec3, "16929", LBIS.L["Head"], "Alt") --Nemesis Skullcap
    LBIS:AddItem(spec3, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec3, "23311", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dreadweave Spaulders
    LBIS:AddItem(spec3, "16932", LBIS.L["Shoulder"], "Alt") --Nemesis Spaulders
    LBIS:AddItem(spec3, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec3, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec3, "16931", LBIS.L["Chest"], "Alt") --Nemesis Robes
    LBIS:AddItem(spec3, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "16934", LBIS.L["Wrist"], "Alt") --Nemesis Bracers
    LBIS:AddItem(spec3, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec3, "16928", LBIS.L["Hands"], "Alt") --Nemesis Gloves
    LBIS:AddItem(spec3, "23282", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dreadweave Handwraps
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "16933", LBIS.L["Waist"], "BIS") --Nemesis Belt
    LBIS:AddItem(spec3, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec3, "16930", LBIS.L["Legs"], "BIS") --Nemesis Leggings
    LBIS:AddItem(spec3, "19133", LBIS.L["Legs"], "Alt") --Fel Infused Leggings
    LBIS:AddItem(spec3, "23296", LBIS.L["Legs"], "Alt") --Knight-Captain's Dreadweave Legguards
    LBIS:AddItem(spec3, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec3, "16927", LBIS.L["Feet"], "BIS") --Nemesis Boots
    LBIS:AddItem(spec3, "23291", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Silk Walkers
    LBIS:AddItem(spec3, "16803", LBIS.L["Feet"], "Alt") --Felheart Slippers
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec3, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec3, "19434", LBIS.L["Ring"], "BIS") --Band of Dark Dominion
    LBIS:AddItem(spec3, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec3, "19356", LBIS.L["Main Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec3, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec3, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec3, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus

    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec4, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec4, "19999", LBIS.L["Head"], "Alt") --Bloodvine Goggles
    LBIS:AddItem(spec4, "17578", LBIS.L["Head"], "Alt") --Field Marshal's Coronal
    LBIS:AddItem(spec4, "17591", LBIS.L["Head"], "Alt") --Warlord's Dreadweave Hood
    LBIS:AddItem(spec4, "22074", LBIS.L["Head"], "Alt") --Deathmist Mask
    LBIS:AddItem(spec4, "23255", LBIS.L["Head"], "Alt") --Champion's Dreadweave Cowl
    LBIS:AddItem(spec4, "23310", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dreadweave Cowl
    LBIS:AddItem(spec4, "16929", LBIS.L["Head"], "Alt") --Nemesis Skullcap
    LBIS:AddItem(spec4, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec4, "23311", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Dreadweave Spaulders
    LBIS:AddItem(spec4, "23256", LBIS.L["Shoulder"], "BIS") --Champion's Dreadweave Spaulders
    LBIS:AddItem(spec4, "17580", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dreadweave Shoulders
    LBIS:AddItem(spec4, "17590", LBIS.L["Shoulder"], "Alt") --Warlord's Dreadweave Mantle
    LBIS:AddItem(spec4, "16932", LBIS.L["Shoulder"], "Alt") --Nemesis Spaulders
    LBIS:AddItem(spec4, "19849", LBIS.L["Shoulder"], "Alt") --Zandalar Demoniac's Mantle
    LBIS:AddItem(spec4, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec4, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec4, "22711", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec4, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "22330", LBIS.L["Back"], "Alt") --Shroud of Arcane Mastery
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec4, "16931", LBIS.L["Chest"], "BIS") --Nemesis Robes
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec4, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec4, "14153", LBIS.L["Chest"], "Alt") --Robe of the Void
    LBIS:AddItem(spec4, "17581", LBIS.L["Chest"], "Alt") --Field Marshal's Dreadweave Robe
    LBIS:AddItem(spec4, "17592", LBIS.L["Chest"], "Alt") --Warlord's Dreadweave Robe
    LBIS:AddItem(spec4, "20033", LBIS.L["Chest"], "Alt") --Zandalar Demoniac's Robe
    LBIS:AddItem(spec4, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec4, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec4, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "19848", LBIS.L["Wrist"], "Alt") --Zandalar Demoniac's Wraps
    LBIS:AddItem(spec4, "20690", LBIS.L["Wrist"], "Alt") --Abyssal Cloth Wristbands
    LBIS:AddItem(spec4, "16934", LBIS.L["Wrist"], "Alt") --Nemesis Bracers
    LBIS:AddItem(spec4, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec4, "16804", LBIS.L["Wrist"], "Alt") --Felheart Bracers
    LBIS:AddItem(spec4, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec4, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec4, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec4, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec4, "22077", LBIS.L["Hands"], "Alt") --Deathmist Wraps
    LBIS:AddItem(spec4, "16928", LBIS.L["Hands"], "Alt") --Nemesis Gloves
    LBIS:AddItem(spec4, "17584", LBIS.L["Hands"], "Alt") --Marshal's Dreadweave Gloves
    LBIS:AddItem(spec4, "17588", LBIS.L["Hands"], "Alt") --General's Dreadweave Gloves
    LBIS:AddItem(spec4, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec4, "20716", LBIS.L["Hands"], "Alt") --Sandworm Skin Gloves
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec4, "14146", LBIS.L["Hands"], "Alt") --Gloves of Spell Mastery
    LBIS:AddItem(spec4, "16805", LBIS.L["Hands"], "Alt") --Felheart Gloves
    LBIS:AddItem(spec4, "23282", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dreadweave Handwraps
    LBIS:AddItem(spec4, "22865", LBIS.L["Hands"], "Alt") --Blood Guard's Dreadweave Handwraps
    LBIS:AddItem(spec4, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec4, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec4, "16933", LBIS.L["Waist"], "BIS") --Nemesis Belt
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec4, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec4, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec4, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "20047", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec4, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec4, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec4, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec4, "16930", LBIS.L["Legs"], "Alt") --Nemesis Leggings
    LBIS:AddItem(spec4, "17579", LBIS.L["Legs"], "Alt") --Marshal's Dreadweave Leggings
    LBIS:AddItem(spec4, "17593", LBIS.L["Legs"], "Alt") --General's Dreadweave Pants
    LBIS:AddItem(spec4, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec4, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec4, "23283", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Dreadweave Walkers
    LBIS:AddItem(spec4, "22855", LBIS.L["Feet"], "BIS") --Blood Guard's Dreadweave Walkers
    LBIS:AddItem(spec4, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec4, "17583", LBIS.L["Feet"], "Alt") --Marshal's Dreadweave Boots
    LBIS:AddItem(spec4, "17586", LBIS.L["Feet"], "Alt") --General's Dreadweave Boots
    LBIS:AddItem(spec4, "16927", LBIS.L["Feet"], "Alt") --Nemesis Boots
    LBIS:AddItem(spec4, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec4, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec4, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec4, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec4, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec4, "20632", LBIS.L["Ring"], "BIS") --Mindtear Band
    LBIS:AddItem(spec4, "19434", LBIS.L["Ring"], "Alt") --Band of Dark Dominion
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec4, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec4, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec4, "21563", LBIS.L["Ring"], "Alt") --Don Rodrigo's Band
    LBIS:AddItem(spec4, "19905", LBIS.L["Ring"], "Alt") --Zanzil's Band
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec4, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "19812", LBIS.L["Trinket"], "Alt") --Rune of the Dawn
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "18467", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "19957", LBIS.L["Trinket"], "Alt") --Hazza'rah's Charm of Destruction
    LBIS:AddItem(spec4, "19337", LBIS.L["Trinket"], "Alt") --The Black Book
    LBIS:AddItem(spec4, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "19864", LBIS.L["Main Hand"], "Alt") --Bloodcaller
    LBIS:AddItem(spec4, "22329", LBIS.L["Off Hand"], "BIS") --Scepter of Interminable Focus
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "19309", LBIS.L["Off Hand"], "Alt") --Tome of Shadow Force
    LBIS:AddItem(spec4, "20582", LBIS.L["Off Hand"], "Alt") --Trance Stone
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec4, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec4, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec4, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec4, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec4, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec4, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec4, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec4, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec4, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec4, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec4, "19884", LBIS.L["Two Hand"], "Alt") --Jin'do's Judgement
    LBIS:AddItem(spec4, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec4, "19861", LBIS.L["Ranged/Relic"], "BIS") --Touch of Chaos
    LBIS:AddItem(spec4, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec4, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec4, "19367", LBIS.L["Ranged/Relic"], "Alt") --Dragon's Touch
    LBIS:AddItem(spec4, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec4, "19130", LBIS.L["Ranged/Relic"], "Alt") --Cold Snap

    LBIS:AddItem(spec5, "21337", LBIS.L["Head"], "BIS") --Doomcaller's Circlet
    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec5, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec5, "19999", LBIS.L["Head"], "Alt") --Bloodvine Goggles
    LBIS:AddItem(spec5, "17578", LBIS.L["Head"], "Alt") --Field Marshal's Coronal
    LBIS:AddItem(spec5, "17591", LBIS.L["Head"], "Alt") --Warlord's Dreadweave Hood
    LBIS:AddItem(spec5, "22074", LBIS.L["Head"], "Alt") --Deathmist Mask
    LBIS:AddItem(spec5, "23255", LBIS.L["Head"], "Alt") --Champion's Dreadweave Cowl
    LBIS:AddItem(spec5, "23310", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dreadweave Cowl
    LBIS:AddItem(spec5, "16929", LBIS.L["Head"], "Alt") --Nemesis Skullcap
    LBIS:AddItem(spec5, "21335", LBIS.L["Shoulder"], "BIS") --Doomcaller's Mantle
    LBIS:AddItem(spec5, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "17580", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dreadweave Shoulders
    LBIS:AddItem(spec5, "17590", LBIS.L["Shoulder"], "Alt") --Warlord's Dreadweave Mantle
    LBIS:AddItem(spec5, "23311", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dreadweave Spaulders
    LBIS:AddItem(spec5, "23256", LBIS.L["Shoulder"], "Alt") --Champion's Dreadweave Spaulders
    LBIS:AddItem(spec5, "16932", LBIS.L["Shoulder"], "Alt") --Nemesis Spaulders
    LBIS:AddItem(spec5, "21468", LBIS.L["Shoulder"], "Alt") --Mantle of Maz'Nadir
    LBIS:AddItem(spec5, "19849", LBIS.L["Shoulder"], "Alt") --Zandalar Demoniac's Mantle
    LBIS:AddItem(spec5, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec5, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec5, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "22711", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec5, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec5, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec5, "22330", LBIS.L["Back"], "Alt") --Shroud of Arcane Mastery
    LBIS:AddItem(spec5, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec5, "18734", LBIS.L["Back"], "Alt") --Pale Moon Cloak
    LBIS:AddItem(spec5, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec5, "21838", LBIS.L["Chest"], "Alt") --Garb of Royal Ascension
    LBIS:AddItem(spec5, "21334", LBIS.L["Chest"], "Alt") --Doomcaller's Robes
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec5, "21499", LBIS.L["Chest"], "Alt") --Vestments of the Shifting Sands
    LBIS:AddItem(spec5, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec5, "16931", LBIS.L["Chest"], "Alt") --Nemesis Robes
    LBIS:AddItem(spec5, "14153", LBIS.L["Chest"], "Alt") --Robe of the Void
    LBIS:AddItem(spec5, "17581", LBIS.L["Chest"], "Alt") --Field Marshal's Dreadweave Robe
    LBIS:AddItem(spec5, "17592", LBIS.L["Chest"], "Alt") --Warlord's Dreadweave Robe
    LBIS:AddItem(spec5, "20033", LBIS.L["Chest"], "Alt") --Zandalar Demoniac's Robe
    LBIS:AddItem(spec5, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec5, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "19848", LBIS.L["Wrist"], "Alt") --Zandalar Demoniac's Wraps
    LBIS:AddItem(spec5, "20690", LBIS.L["Wrist"], "Alt") --Abyssal Cloth Wristbands
    LBIS:AddItem(spec5, "16934", LBIS.L["Wrist"], "Alt") --Nemesis Bracers
    LBIS:AddItem(spec5, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec5, "16804", LBIS.L["Wrist"], "Alt") --Felheart Bracers
    LBIS:AddItem(spec5, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec5, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec5, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec5, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec5, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec5, "22077", LBIS.L["Hands"], "Alt") --Deathmist Wraps
    LBIS:AddItem(spec5, "16928", LBIS.L["Hands"], "Alt") --Nemesis Gloves
    LBIS:AddItem(spec5, "17584", LBIS.L["Hands"], "Alt") --Marshal's Dreadweave Gloves
    LBIS:AddItem(spec5, "17588", LBIS.L["Hands"], "Alt") --General's Dreadweave Gloves
    LBIS:AddItem(spec5, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec5, "20716", LBIS.L["Hands"], "Alt") --Sandworm Skin Gloves
    LBIS:AddItem(spec5, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec5, "14146", LBIS.L["Hands"], "Alt") --Gloves of Spell Mastery
    LBIS:AddItem(spec5, "16805", LBIS.L["Hands"], "Alt") --Felheart Gloves
    LBIS:AddItem(spec5, "23282", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dreadweave Handwraps
    LBIS:AddItem(spec5, "22865", LBIS.L["Hands"], "Alt") --Blood Guard's Dreadweave Handwraps
    LBIS:AddItem(spec5, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec5, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec5, "16933", LBIS.L["Waist"], "Alt") --Nemesis Belt
    LBIS:AddItem(spec5, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec5, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec5, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec5, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "20047", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec5, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec5, "19683", LBIS.L["Legs"], "BIS") --Bloodvine Leggings
    LBIS:AddItem(spec5, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec5, "19133", LBIS.L["Legs"], "Alt") --Fel Infused Leggings
    LBIS:AddItem(spec5, "16930", LBIS.L["Legs"], "Alt") --Nemesis Leggings
    LBIS:AddItem(spec5, "17579", LBIS.L["Legs"], "Alt") --Marshal's Dreadweave Leggings
    LBIS:AddItem(spec5, "17593", LBIS.L["Legs"], "Alt") --General's Dreadweave Pants
    LBIS:AddItem(spec5, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec5, "19684", LBIS.L["Feet"], "BIS") --Bloodvine Boots
    LBIS:AddItem(spec5, "22855", LBIS.L["Feet"], "BIS") --Blood Guard's Dreadweave Walkers
    LBIS:AddItem(spec5, "23283", LBIS.L["Feet"], "BIS") --Knight-Lieutenant's Dreadweave Walkers
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec5, "17583", LBIS.L["Feet"], "Alt") --Marshal's Dreadweave Boots
    LBIS:AddItem(spec5, "17586", LBIS.L["Feet"], "Alt") --General's Dreadweave Boots
    LBIS:AddItem(spec5, "16927", LBIS.L["Feet"], "Alt") --Nemesis Boots
    LBIS:AddItem(spec5, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec5, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec5, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec5, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec5, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec5, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec5, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec5, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec5, "18340", LBIS.L["Neck"], "Alt") --Eidolon Talisman
    LBIS:AddItem(spec5, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec5, "21417", LBIS.L["Ring"], "BIS") --Ring of Unspoken Names
    LBIS:AddItem(spec5, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec5, "20632", LBIS.L["Ring"], "BIS") --Mindtear Band
    LBIS:AddItem(spec5, "19434", LBIS.L["Ring"], "Alt") --Band of Dark Dominion
    LBIS:AddItem(spec5, "21483", LBIS.L["Ring"], "Alt") --Ring of the Desert Winds
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec5, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec5, "21563", LBIS.L["Ring"], "Alt") --Don Rodrigo's Band
    LBIS:AddItem(spec5, "19905", LBIS.L["Ring"], "Alt") --Zanzil's Band
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "BIS") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "21473", LBIS.L["Trinket"], "Alt") --Eye of Moam
    LBIS:AddItem(spec5, "19812", LBIS.L["Trinket"], "Alt") --Rune of the Dawn
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec5, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec5, "18467", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "19957", LBIS.L["Trinket"], "Alt") --Hazza'rah's Charm of Destruction
    LBIS:AddItem(spec5, "19337", LBIS.L["Trinket"], "Alt") --The Black Book
    LBIS:AddItem(spec5, "21622", LBIS.L["Main Hand"], "BIS") --Sharpened Silithid Femur
    LBIS:AddItem(spec5, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec5, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "19864", LBIS.L["Main Hand"], "Alt") --Bloodcaller
    LBIS:AddItem(spec5, "21597", LBIS.L["Off Hand"], "BIS") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec5, "22329", LBIS.L["Off Hand"], "BIS") --Scepter of Interminable Focus
    LBIS:AddItem(spec5, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "19309", LBIS.L["Off Hand"], "Alt") --Tome of Shadow Force
    LBIS:AddItem(spec5, "20582", LBIS.L["Off Hand"], "Alt") --Trance Stone
    LBIS:AddItem(spec5, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec5, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec5, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec5, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec5, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec5, "21273", LBIS.L["Two Hand"], "BIS") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec5, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec5, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec5, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec5, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec5, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec5, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec5, "19884", LBIS.L["Two Hand"], "Alt") --Jin'do's Judgement
    LBIS:AddItem(spec5, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec5, "21603", LBIS.L["Ranged/Relic"], "BIS") --Wand of Qiraji Nobility
    LBIS:AddItem(spec5, "19861", LBIS.L["Ranged/Relic"], "BIS") --Touch of Chaos
    LBIS:AddItem(spec5, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec5, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec5, "19367", LBIS.L["Ranged/Relic"], "Alt") --Dragon's Touch
    LBIS:AddItem(spec5, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec5, "19130", LBIS.L["Ranged/Relic"], "Alt") --Cold Snap

    LBIS:AddItem(spec6, "22506", LBIS.L["Head"], "BIS") --Plagueheart Circlet
    LBIS:AddItem(spec6, "21337", LBIS.L["Head"], "Alt") --Doomcaller's Circlet
    LBIS:AddItem(spec6, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec6, "23035", LBIS.L["Head"], "Alt") --Preceptor's Hat
    LBIS:AddItem(spec6, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec6, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec6, "19999", LBIS.L["Head"], "Alt") --Bloodvine Goggles
    LBIS:AddItem(spec6, "17578", LBIS.L["Head"], "Alt") --Field Marshal's Coronal
    LBIS:AddItem(spec6, "17591", LBIS.L["Head"], "Alt") --Warlord's Dreadweave Hood
    LBIS:AddItem(spec6, "22074", LBIS.L["Head"], "Alt") --Deathmist Mask
    LBIS:AddItem(spec6, "23255", LBIS.L["Head"], "Alt") --Champion's Dreadweave Cowl
    LBIS:AddItem(spec6, "23310", LBIS.L["Head"], "Alt") --Lieutenant Commander's Dreadweave Cowl
    LBIS:AddItem(spec6, "22507", LBIS.L["Shoulder"], "BIS") --Plagueheart Shoulderpads
    LBIS:AddItem(spec6, "22983", LBIS.L["Shoulder"], "Alt") --Rime Covered Mantle
    LBIS:AddItem(spec6, "21335", LBIS.L["Shoulder"], "Alt") --Doomcaller's Mantle
    LBIS:AddItem(spec6, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec6, "17580", LBIS.L["Shoulder"], "Alt") --Field Marshal's Dreadweave Shoulders
    LBIS:AddItem(spec6, "17590", LBIS.L["Shoulder"], "Alt") --Warlord's Dreadweave Mantle
    LBIS:AddItem(spec6, "23256", LBIS.L["Shoulder"], "Alt") --Champion's Dreadweave Spaulders
    LBIS:AddItem(spec6, "23311", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dreadweave Spaulders
    LBIS:AddItem(spec6, "16932", LBIS.L["Shoulder"], "Alt") --Nemesis Spaulders
    LBIS:AddItem(spec6, "19849", LBIS.L["Shoulder"], "Alt") --Zandalar Demoniac's Mantle
    LBIS:AddItem(spec6, "23050", LBIS.L["Back"], "BIS") --Cloak of the Necropolis
    LBIS:AddItem(spec6, "22731", LBIS.L["Back"], "Alt") --Cloak of the Devoured
    LBIS:AddItem(spec6, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "23017", LBIS.L["Back"], "Alt") --Veil of Eclipse
    LBIS:AddItem(spec6, "22711", LBIS.L["Back"], "Alt") --Cloak of the Hakkari Worshipers
    LBIS:AddItem(spec6, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec6, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec6, "22504", LBIS.L["Chest"], "BIS") --Plagueheart Robe
    LBIS:AddItem(spec6, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec6, "23220", LBIS.L["Chest"], "Alt") --Crystal Webbed Robe
    LBIS:AddItem(spec6, "21838", LBIS.L["Chest"], "Alt") --Garb of Royal Ascension
    LBIS:AddItem(spec6, "21334", LBIS.L["Chest"], "Alt") --Doomcaller's Robes
    LBIS:AddItem(spec6, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec6, "21499", LBIS.L["Chest"], "Alt") --Vestments of the Shifting Sands
    LBIS:AddItem(spec6, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec6, "16931", LBIS.L["Chest"], "Alt") --Nemesis Robes
    LBIS:AddItem(spec6, "14153", LBIS.L["Chest"], "Alt") --Robe of the Void
    LBIS:AddItem(spec6, "17581", LBIS.L["Chest"], "Alt") --Field Marshal's Dreadweave Robe
    LBIS:AddItem(spec6, "17592", LBIS.L["Chest"], "Alt") --Warlord's Dreadweave Robe
    LBIS:AddItem(spec6, "20033", LBIS.L["Chest"], "Alt") --Zandalar Demoniac's Robe
    LBIS:AddItem(spec6, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec6, "21186", LBIS.L["Wrist"], "Alt") --Rockfury Bracers
    LBIS:AddItem(spec6, "23021", LBIS.L["Wrist"], "Alt") --The Soul Harvester's Bindings
    LBIS:AddItem(spec6, "21611", LBIS.L["Wrist"], "Alt") --Burrower Bracers
    LBIS:AddItem(spec6, "22511", LBIS.L["Wrist"], "Alt") --Plagueheart Bindings
    LBIS:AddItem(spec6, "21464", LBIS.L["Wrist"], "Alt") --Shackles of the Unscarred
    LBIS:AddItem(spec6, "19848", LBIS.L["Wrist"], "Alt") --Zandalar Demoniac's Wraps
    LBIS:AddItem(spec6, "20690", LBIS.L["Wrist"], "Alt") --Abyssal Cloth Wristbands
    LBIS:AddItem(spec6, "16934", LBIS.L["Wrist"], "Alt") --Nemesis Bracers
    LBIS:AddItem(spec6, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "22509", LBIS.L["Hands"], "Alt") --Plagueheart Gloves
    LBIS:AddItem(spec6, "19407", LBIS.L["Hands"], "Alt") --Ebony Flame Gloves
    LBIS:AddItem(spec6, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec6, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec6, "22077", LBIS.L["Hands"], "Alt") --Deathmist Wraps
    LBIS:AddItem(spec6, "16928", LBIS.L["Hands"], "Alt") --Nemesis Gloves
    LBIS:AddItem(spec6, "17584", LBIS.L["Hands"], "Alt") --Marshal's Dreadweave Gloves
    LBIS:AddItem(spec6, "17588", LBIS.L["Hands"], "Alt") --General's Dreadweave Gloves
    LBIS:AddItem(spec6, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec6, "14146", LBIS.L["Hands"], "Alt") --Gloves of Spell Mastery
    LBIS:AddItem(spec6, "16805", LBIS.L["Hands"], "Alt") --Felheart Gloves
    LBIS:AddItem(spec6, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "22510", LBIS.L["Waist"], "Alt") --Plagueheart Belt
    LBIS:AddItem(spec6, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec6, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "16933", LBIS.L["Waist"], "Alt") --Nemesis Belt
    LBIS:AddItem(spec6, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec6, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec6, "20047", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec6, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec6, "23070", LBIS.L["Legs"], "BIS") --Leggings of Polarity
    LBIS:AddItem(spec6, "22505", LBIS.L["Legs"], "Alt") --Plagueheart Leggings
    LBIS:AddItem(spec6, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "21336", LBIS.L["Legs"], "Alt") --Doomcaller's Trousers
    LBIS:AddItem(spec6, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec6, "19133", LBIS.L["Legs"], "Alt") --Fel Infused Leggings
    LBIS:AddItem(spec6, "17579", LBIS.L["Legs"], "Alt") --Marshal's Dreadweave Leggings
    LBIS:AddItem(spec6, "17593", LBIS.L["Legs"], "Alt") --General's Dreadweave Pants
    LBIS:AddItem(spec6, "22508", LBIS.L["Feet"], "BIS") --Plagueheart Sandals
    LBIS:AddItem(spec6, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec6, "21600", LBIS.L["Feet"], "Alt") --Boots of Epiphany
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "21338", LBIS.L["Feet"], "Alt") --Doomcaller's Footwraps
    LBIS:AddItem(spec6, "23057", LBIS.L["Neck"], "BIS") --Gem of Trapped Innocents
    LBIS:AddItem(spec6, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "22943", LBIS.L["Neck"], "Alt") --Malice Stone Pendant
    LBIS:AddItem(spec6, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec6, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec6, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec6, "23031", LBIS.L["Ring"], "BIS") --Band of the Inevitable
    LBIS:AddItem(spec6, "23025", LBIS.L["Ring"], "Alt") --Seal of the Damned
    LBIS:AddItem(spec6, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec6, "21417", LBIS.L["Ring"], "Alt") --Ring of Unspoken Names
    LBIS:AddItem(spec6, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec6, "20632", LBIS.L["Ring"], "Alt") --Mindtear Band
    LBIS:AddItem(spec6, "19434", LBIS.L["Ring"], "Alt") --Band of Dark Dominion
    LBIS:AddItem(spec6, "21483", LBIS.L["Ring"], "Alt") --Ring of the Desert Winds
    LBIS:AddItem(spec6, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec6, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec6, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec6, "21563", LBIS.L["Ring"], "Alt") --Don Rodrigo's Band
    LBIS:AddItem(spec6, "19905", LBIS.L["Ring"], "Alt") --Zanzil's Band
    LBIS:AddItem(spec6, "23207", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "23046", LBIS.L["Trinket"], "BIS") --The Restrained Essence of Sapphiron
    LBIS:AddItem(spec6, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "21473", LBIS.L["Trinket"], "Alt") --Eye of Moam
    LBIS:AddItem(spec6, "19812", LBIS.L["Trinket"], "Alt") --Rune of the Dawn
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec6, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec6, "18467", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "19957", LBIS.L["Trinket"], "Alt") --Hazza'rah's Charm of Destruction
    LBIS:AddItem(spec6, "19337", LBIS.L["Trinket"], "Alt") --The Black Book
    LBIS:AddItem(spec6, "22807", LBIS.L["Main Hand"], "BIS") --Wraith Blade
    LBIS:AddItem(spec6, "22803", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec6, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec6, "21622", LBIS.L["Main Hand"], "Alt") --Sharpened Silithid Femur
    LBIS:AddItem(spec6, "17103", LBIS.L["Main Hand"], "Alt") --Azuresong Mageblade
    LBIS:AddItem(spec6, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "19864", LBIS.L["Main Hand"], "Alt") --Bloodcaller
    LBIS:AddItem(spec6, "23049", LBIS.L["Off Hand"], "BIS") --Sapphiron's Left Eye
    LBIS:AddItem(spec6, "21597", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec6, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec6, "21471", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec6, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec6, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec6, "22630", LBIS.L["Two Hand"], "BIS") --Atiesh, Greatstaff of the Guardian
    LBIS:AddItem(spec6, "22800", LBIS.L["Two Hand"], "Alt") --Brimstone Staff
    LBIS:AddItem(spec6, "22799", LBIS.L["Two Hand"], "Alt") --Soulseeker
    LBIS:AddItem(spec6, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec6, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec6, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec6, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec6, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec6, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec6, "19884", LBIS.L["Two Hand"], "Alt") --Jin'do's Judgement
    LBIS:AddItem(spec6, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec6, "22820", LBIS.L["Ranged/Relic"], "BIS") --Wand of Fates
    LBIS:AddItem(spec6, "22821", LBIS.L["Ranged/Relic"], "Alt") --Doomfinger
    LBIS:AddItem(spec6, "21603", LBIS.L["Ranged/Relic"], "Alt") --Wand of Qiraji Nobility
    LBIS:AddItem(spec6, "19861", LBIS.L["Ranged/Relic"], "Alt") --Touch of Chaos
    LBIS:AddItem(spec6, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec6, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
end
if not LBIS.IsSOD then
    LoadData();
end
