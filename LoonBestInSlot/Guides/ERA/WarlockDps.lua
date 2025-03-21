local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Dps"], "7")

    LBIS:AddEnchant(spec3, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "22749", LBIS.L["Main Hand"]) --

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
    LBIS:AddItem(spec3, "16800", LBIS.L["Feet"], "Alt") --Arcanist Boots
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
end
if not LBIS.IsSOD then
    LoadData();
end
