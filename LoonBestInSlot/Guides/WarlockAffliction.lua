function LBIS:LoadWarlockAffliction()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Affliction"], "0", "https://www.wowhead.com/forever/guide/classes/warlock/dps-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warlock"], LBIS.L["Affliction"], "1", "https://www.wowhead.com/forever/guide/classes/warlock/dps-talent-builds-pve")

    LBIS:AddEnchant(spec0, "24165", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec0, "29467", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec0, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec0, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec0, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec0, "25078", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "25073", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec0, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec0, "22749", LBIS.L["Main Hand"]) --

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
end
