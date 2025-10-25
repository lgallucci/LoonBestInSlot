local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "8")

    LBIS:AddEnchant(spec6, "22844", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "24421", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20009", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25073", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "14112", LBIS.L["Shoulder"], "BIS") --Felcloth Shoulders
    LBIS:AddItem(spec0, "13386", LBIS.L["Back"], "BIS") --Archivist Cape
    LBIS:AddItem(spec0, "14136", LBIS.L["Chest"], "BIS") --Robe of Winter Night
    LBIS:AddItem(spec0, "11766", LBIS.L["Wrist"], "BIS") --Flameweave Cuffs
    LBIS:AddItem(spec0, "18407", LBIS.L["Hands"], "BIS") --Felcloth Gloves
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "BIS") --Ban'thok Sash
    LBIS:AddItem(spec0, "13170", LBIS.L["Legs"], "BIS") --Skyshroud Leggings
    LBIS:AddItem(spec0, "18735", LBIS.L["Feet"], "BIS") --Maleki's Footwraps
    LBIS:AddItem(spec0, "18691", LBIS.L["Neck"], "BIS") --Dark Advisor's Pendant
    LBIS:AddItem(spec0, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec0, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec0, "13349", LBIS.L["Main Hand"], "BIS") --Scepter of the Unholy
    LBIS:AddItem(spec0, "10796", LBIS.L["Off Hand"], "BIS") --Drakestone
    LBIS:AddItem(spec0, "13396", LBIS.L["Ranged"], "BIS") --Skul's Ghastly Touch

    LBIS:AddItem(spec1, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec1, "14111", LBIS.L["Head"], "Alt") --Felcloth Hood
    LBIS:AddItem(spec1, "14112", LBIS.L["Shoulder"], "BIS") --Felcloth Shoulders
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec1, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec1, "14136", LBIS.L["Chest"], "BIS") --Robe of Winter Night
    LBIS:AddItem(spec1, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec1, "14106", LBIS.L["Chest"], "Alt") --Felcloth Robe
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec1, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec1, "18809", LBIS.L["Waist"], "BIS") --Sash of Whispered Secrets
    LBIS:AddItem(spec1, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec1, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec1, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "BIS") --Skyshroud Leggings
    LBIS:AddItem(spec1, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec1, "18735", LBIS.L["Feet"], "BIS") --Maleki's Footwraps
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec1, "18697", LBIS.L["Feet"], "Alt") --Coldstone Slippers
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec1, "18728", LBIS.L["Neck"], "Alt") --Anastari Heirloom
    LBIS:AddItem(spec1, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec1, "7553", LBIS.L["Ring"], "Alt") --Band of the Unicorn
    LBIS:AddItem(spec1, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec1, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec1, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec1, "13349", LBIS.L["Main Hand"], "Alt") --Scepter of the Unholy
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "11904", LBIS.L["Off Hand"], "BIS") --Spirit of Aquementas
    LBIS:AddItem(spec1, "873", LBIS.L["Two Hand"], "BIS") --Staff of Jordan
    LBIS:AddItem(spec1, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec1, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus

    LBIS:AddItem(spec2, "23316", LBIS.L["Head"], "BIS") --Lieutenant Commander's Satin Hood
    LBIS:AddItem(spec2, "23261", LBIS.L["Head"], "BIS") --Champion's Satin Hood
    LBIS:AddItem(spec2, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec2, "14111", LBIS.L["Head"], "Alt") --Felcloth Hood
    LBIS:AddItem(spec2, "18526", LBIS.L["Head"], "Alt") --Crown of the Ogre King
    LBIS:AddItem(spec2, "14112", LBIS.L["Shoulder"], "BIS") --Felcloth Shoulders
    LBIS:AddItem(spec2, "23317", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Satin Mantle
    LBIS:AddItem(spec2, "23262", LBIS.L["Shoulder"], "Alt") --Champion's Satin Mantle
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec2, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec2, "18350", LBIS.L["Back"], "BIS") --Amplifying Cloak
    LBIS:AddItem(spec2, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec2, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec2, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec2, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec2, "14136", LBIS.L["Chest"], "BIS") --Robe of Winter Night
    LBIS:AddItem(spec2, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec2, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec2, "23303", LBIS.L["Chest"], "Alt") --Knight-Captain's Satin Tunic
    LBIS:AddItem(spec2, "22885", LBIS.L["Chest"], "Alt") --Legionnaire's Satin Tunic
    LBIS:AddItem(spec2, "14106", LBIS.L["Chest"], "Alt") --Felcloth Robe
    LBIS:AddItem(spec2, "18532", LBIS.L["Chest"], "Alt") --Mindsurge Robe
    LBIS:AddItem(spec2, "19595", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec2, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec2, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec2, "23288", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Satin Handwraps
    LBIS:AddItem(spec2, "22869", LBIS.L["Hands"], "Alt") --Blood Guard's Satin Handwraps
    LBIS:AddItem(spec2, "23128", LBIS.L["Hands"], "Alt") --The Shadow's Grasp
    LBIS:AddItem(spec2, "18306", LBIS.L["Hands"], "Alt") --Gloves of Shadowy Mist
    LBIS:AddItem(spec2, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec2, "18387", LBIS.L["Hands"], "Alt") --Brightspark Gloves
    LBIS:AddItem(spec2, "18369", LBIS.L["Hands"], "Alt") --Gordok's Handwraps
    LBIS:AddItem(spec2, "18809", LBIS.L["Waist"], "BIS") --Sash of Whispered Secrets
    LBIS:AddItem(spec2, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec2, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec2, "18475", LBIS.L["Waist"], "Alt") --Oddly Magical Belt
    LBIS:AddItem(spec2, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec2, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec2, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec2, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec2, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec2, "22752", LBIS.L["Legs"], "Alt") --Sentinel's Silk Leggings
    LBIS:AddItem(spec2, "22747", LBIS.L["Legs"], "Alt") --Outrider's Silk Leggings
    LBIS:AddItem(spec2, "23302", LBIS.L["Legs"], "Alt") --Knight-Captain's Satin Legguards
    LBIS:AddItem(spec2, "22882", LBIS.L["Legs"], "Alt") --Legionnaire's Satin Legguards
    LBIS:AddItem(spec2, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec2, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec2, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "23289", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Satin Walkers
    LBIS:AddItem(spec2, "22859", LBIS.L["Feet"], "Alt") --Blood Guard's Satin Walkers
    LBIS:AddItem(spec2, "18697", LBIS.L["Feet"], "Alt") --Coldstone Slippers
    LBIS:AddItem(spec2, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec2, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec2, "18728", LBIS.L["Neck"], "Alt") --Anastari Heirloom
    LBIS:AddItem(spec2, "22149", LBIS.L["Neck"], "Alt") --Beads of Ogre Mojo
    LBIS:AddItem(spec2, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec2, "19096", LBIS.L["Neck"], "Alt") --Frostwolf Advisor's Pendant
    LBIS:AddItem(spec2, "19098", LBIS.L["Neck"], "Alt") --Stormpike Sage's Pendant
    LBIS:AddItem(spec2, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec2, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec2, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec2, "7553", LBIS.L["Ring"], "Alt") --Band of the Unicorn
    LBIS:AddItem(spec2, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec2, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec2, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec2, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec2, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec2, "18469", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec2, "17070", LBIS.L["Main Hand"], "BIS") --Fang of the Mystics
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec2, "13349", LBIS.L["Main Hand"], "Alt") --Scepter of the Unholy
    LBIS:AddItem(spec2, "18372", LBIS.L["Main Hand"], "Alt") --Blade of the New Moon
    LBIS:AddItem(spec2, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec2, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec2, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec2, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec2, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec2, "18609", LBIS.L["Two Hand"], "BIS") --Anathema
    LBIS:AddItem(spec2, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec2, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec2, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec2, "19102", LBIS.L["Two Hand"], "Alt") --Crackling Staff
    LBIS:AddItem(spec2, "19101", LBIS.L["Two Hand"], "Alt") --Whiteout Staff
    LBIS:AddItem(spec2, "18353", LBIS.L["Two Hand"], "Alt") --Stoneflower Staff
    LBIS:AddItem(spec2, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec2, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec2, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand

    LBIS:AddItem(spec3, "23316", LBIS.L["Head"], "BIS") --Lieutenant Commander's Satin Hood
    LBIS:AddItem(spec3, "23261", LBIS.L["Head"], "BIS") --Champion's Satin Hood
    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec3, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec3, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec3, "14111", LBIS.L["Head"], "Alt") --Felcloth Hood
    LBIS:AddItem(spec3, "18526", LBIS.L["Head"], "Alt") --Crown of the Ogre King
    LBIS:AddItem(spec3, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec3, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec3, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec3, "14112", LBIS.L["Shoulder"], "Alt") --Felcloth Shoulders
    LBIS:AddItem(spec3, "23317", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Satin Mantle
    LBIS:AddItem(spec3, "23262", LBIS.L["Shoulder"], "Alt") --Champion's Satin Mantle
    LBIS:AddItem(spec3, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec3, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec3, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec3, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec3, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec3, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec3, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec3, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec3, "23303", LBIS.L["Chest"], "BIS") --Knight-Captain's Satin Tunic
    LBIS:AddItem(spec3, "22885", LBIS.L["Chest"], "BIS") --Legionnaire's Satin Tunic
    LBIS:AddItem(spec3, "14136", LBIS.L["Chest"], "BIS") --Robe of Winter Night
    LBIS:AddItem(spec3, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec3, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec3, "13314", LBIS.L["Chest"], "Alt") --Alanna's Embrace
    LBIS:AddItem(spec3, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec3, "14106", LBIS.L["Chest"], "Alt") --Felcloth Robe
    LBIS:AddItem(spec3, "18532", LBIS.L["Chest"], "Alt") --Mindsurge Robe
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec3, "19135", LBIS.L["Wrist"], "Alt") --Blacklight Bracer
    LBIS:AddItem(spec3, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec3, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec3, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec3, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "23288", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Satin Handwraps
    LBIS:AddItem(spec3, "22869", LBIS.L["Hands"], "Alt") --Blood Guard's Satin Handwraps
    LBIS:AddItem(spec3, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec3, "23128", LBIS.L["Hands"], "Alt") --The Shadow's Grasp
    LBIS:AddItem(spec3, "18306", LBIS.L["Hands"], "Alt") --Gloves of Shadowy Mist
    LBIS:AddItem(spec3, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec3, "19388", LBIS.L["Waist"], "BIS") --Angelista's Grasp
    LBIS:AddItem(spec3, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec3, "19094", LBIS.L["Waist"], "Alt") --Stormpike Cloth Girdle
    LBIS:AddItem(spec3, "19090", LBIS.L["Waist"], "Alt") --Frostwolf Cloth Belt
    LBIS:AddItem(spec3, "18475", LBIS.L["Waist"], "Alt") --Oddly Magical Belt
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "13956", LBIS.L["Waist"], "Alt") --Clutch of Andros
    LBIS:AddItem(spec3, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec3, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec3, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec3, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec3, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec3, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec3, "22752", LBIS.L["Legs"], "Alt") --Sentinel's Silk Leggings
    LBIS:AddItem(spec3, "22747", LBIS.L["Legs"], "Alt") --Outrider's Silk Leggings
    LBIS:AddItem(spec3, "14107", LBIS.L["Legs"], "Alt") --Felcloth Pants
    LBIS:AddItem(spec3, "23302", LBIS.L["Legs"], "Alt") --Knight-Captain's Satin Legguards
    LBIS:AddItem(spec3, "22882", LBIS.L["Legs"], "Alt") --Legionnaire's Satin Legguards
    LBIS:AddItem(spec3, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec3, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec3, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec3, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec3, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec3, "18102", LBIS.L["Feet"], "Alt") --Dragonrider Boots
    LBIS:AddItem(spec3, "23289", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Satin Walkers
    LBIS:AddItem(spec3, "22859", LBIS.L["Feet"], "Alt") --Blood Guard's Satin Walkers
    LBIS:AddItem(spec3, "18697", LBIS.L["Feet"], "Alt") --Coldstone Slippers
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec3, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec3, "18728", LBIS.L["Neck"], "Alt") --Anastari Heirloom
    LBIS:AddItem(spec3, "22149", LBIS.L["Neck"], "Alt") --Beads of Ogre Mojo
    LBIS:AddItem(spec3, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec3, "19098", LBIS.L["Neck"], "Alt") --Stormpike Sage's Pendant
    LBIS:AddItem(spec3, "19096", LBIS.L["Neck"], "Alt") --Frostwolf Advisor's Pendant
    LBIS:AddItem(spec3, "19434", LBIS.L["Ring"], "BIS") --Band of Dark Dominion
    LBIS:AddItem(spec3, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec3, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec3, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec3, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec3, "19522", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec3, "19518", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "7553", LBIS.L["Ring"], "Alt") --Band of the Unicorn
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec3, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec3, "11819", LBIS.L["Trinket"], "Alt") --Second Wind
    LBIS:AddItem(spec3, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec3, "18469", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec3, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec3, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec3, "13349", LBIS.L["Main Hand"], "Alt") --Scepter of the Unholy
    LBIS:AddItem(spec3, "18372", LBIS.L["Main Hand"], "Alt") --Blade of the New Moon
    LBIS:AddItem(spec3, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec3, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec3, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec3, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec3, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec3, "23452", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Tome of Power
    LBIS:AddItem(spec3, "23468", LBIS.L["Off Hand"], "Alt") --High Warlord's Tome of Destruction
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec3, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec3, "18609", LBIS.L["Two Hand"], "Alt") --Anathema
    LBIS:AddItem(spec3, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec3, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec3, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec3, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec3, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec3, "19102", LBIS.L["Two Hand"], "Alt") --Crackling Staff
    LBIS:AddItem(spec3, "19101", LBIS.L["Two Hand"], "Alt") --Whiteout Staff
    LBIS:AddItem(spec3, "18353", LBIS.L["Two Hand"], "Alt") --Stoneflower Staff
    LBIS:AddItem(spec3, "13396", LBIS.L["Ranged/Relic"], "BIS") --Skul's Ghastly Touch
    LBIS:AddItem(spec3, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec3, "20082", LBIS.L["Ranged/Relic"], "Alt") --Woestave
    LBIS:AddItem(spec3, "18301", LBIS.L["Ranged/Relic"], "Alt") --Lethtendris's Wand
    LBIS:AddItem(spec3, "19367", LBIS.L["Ranged/Relic"], "Alt") --Dragon's Touch

    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec4, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec4, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec4, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec4, "14111", LBIS.L["Head"], "Alt") --Felcloth Hood
    LBIS:AddItem(spec4, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec4, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec4, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec4, "14112", LBIS.L["Shoulder"], "Alt") --Felcloth Shoulders
    LBIS:AddItem(spec4, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec4, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "19086", LBIS.L["Back"], "Alt") --Stormpike Sage's Cloak
    LBIS:AddItem(spec4, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec4, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec4, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec4, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec4, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec4, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec4, "14106", LBIS.L["Chest"], "Alt") --Felcloth Robe
    LBIS:AddItem(spec4, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec4, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec4, "19597", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "19596", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec4, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec4, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec4, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec4, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec4, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec4, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec4, "22716", LBIS.L["Waist"], "Alt") --Belt of Untapped Power
    LBIS:AddItem(spec4, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec4, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec4, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec4, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec4, "22342", LBIS.L["Legs"], "Alt") --Leggings of Torment
    LBIS:AddItem(spec4, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec4, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec4, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec4, "19895", LBIS.L["Legs"], "Alt") --Bloodtinged Kilt
    LBIS:AddItem(spec4, "14107", LBIS.L["Legs"], "Alt") --Felcloth Pants
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec4, "19897", LBIS.L["Feet"], "BIS") --Betrayer's Boots
    LBIS:AddItem(spec4, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec4, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec4, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec4, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec4, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "18728", LBIS.L["Neck"], "Alt") --Anastari Heirloom
    LBIS:AddItem(spec4, "19434", LBIS.L["Ring"], "BIS") --Band of Dark Dominion
    LBIS:AddItem(spec4, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec4, "12543", LBIS.L["Ring"], "Alt") --Songstone of Ironforge
    LBIS:AddItem(spec4, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec4, "1980", LBIS.L["Ring"], "Alt") --Underworld Band
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec4, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "23451", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Mageblade
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "18878", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec4, "13349", LBIS.L["Main Hand"], "Alt") --Scepter of the Unholy
    LBIS:AddItem(spec4, "18372", LBIS.L["Main Hand"], "Alt") --Blade of the New Moon
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "BIS") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec4, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec4, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec4, "18874", LBIS.L["Two Hand"], "BIS") --High Warlord's War Staff
    LBIS:AddItem(spec4, "18873", LBIS.L["Two Hand"], "BIS") --Grand Marshal's Stave
    LBIS:AddItem(spec4, "18609", LBIS.L["Two Hand"], "Alt") --Anathema
    LBIS:AddItem(spec4, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec4, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec4, "18842", LBIS.L["Two Hand"], "Alt") --Staff of Dominance
    LBIS:AddItem(spec4, "19884", LBIS.L["Two Hand"], "Alt") --Jin'do's Judgement
    LBIS:AddItem(spec4, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec4, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec4, "19861", LBIS.L["Ranged/Relic"], "BIS") --Touch of Chaos
    LBIS:AddItem(spec4, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec4, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec4, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec4, "20082", LBIS.L["Ranged/Relic"], "Alt") --Woestave

    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "21348", LBIS.L["Head"], "Alt") --Tiara of the Oracle
    LBIS:AddItem(spec5, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec5, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec5, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec5, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec5, "19370", LBIS.L["Shoulder"], "BIS") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "21350", LBIS.L["Shoulder"], "Alt") --Mantle of the Oracle
    LBIS:AddItem(spec5, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec5, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec5, "14112", LBIS.L["Shoulder"], "Alt") --Felcloth Shoulders
    LBIS:AddItem(spec5, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec5, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec5, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec5, "21351", LBIS.L["Chest"], "BIS") --Vestments of the Oracle
    LBIS:AddItem(spec5, "21838", LBIS.L["Chest"], "Alt") --Garb of Royal Ascension
    LBIS:AddItem(spec5, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec5, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec5, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec5, "21611", LBIS.L["Wrist"], "BIS") --Burrower Bracers
    LBIS:AddItem(spec5, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "19596", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "19597", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "19407", LBIS.L["Hands"], "BIS") --Ebony Flame Gloves
    LBIS:AddItem(spec5, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec5, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec5, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec5, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec5, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec5, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec5, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec5, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec5, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec5, "22342", LBIS.L["Legs"], "Alt") --Leggings of Torment
    LBIS:AddItem(spec5, "21352", LBIS.L["Legs"], "Alt") --Trousers of the Oracle
    LBIS:AddItem(spec5, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec5, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec5, "21600", LBIS.L["Feet"], "BIS") --Boots of Epiphany
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec5, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec5, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec5, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec5, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec5, "21349", LBIS.L["Feet"], "Alt") --Footwraps of the Oracle
    LBIS:AddItem(spec5, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec5, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "21608", LBIS.L["Neck"], "Alt") --Amulet of Vek'nilash
    LBIS:AddItem(spec5, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec5, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec5, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec5, "23125", LBIS.L["Neck"], "Alt") --Chains of the Lich
    LBIS:AddItem(spec5, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec5, "19434", LBIS.L["Ring"], "BIS") --Band of Dark Dominion
    LBIS:AddItem(spec5, "21210", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec5, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec5, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "21466", LBIS.L["Main Hand"], "Alt") --Stinger of Ayamiss
    LBIS:AddItem(spec5, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec5, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec5, "19366", LBIS.L["Off Hand"], "BIS") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec5, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec5, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec5, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec5, "18609", LBIS.L["Two Hand"], "Alt") --Anathema
    LBIS:AddItem(spec5, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec5, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec5, "21603", LBIS.L["Ranged/Relic"], "BIS") --Wand of Qiraji Nobility
    LBIS:AddItem(spec5, "19861", LBIS.L["Ranged/Relic"], "Alt") --Touch of Chaos
    LBIS:AddItem(spec5, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec5, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec5, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec5, "20082", LBIS.L["Ranged/Relic"], "Alt") --Woestave

    LBIS:AddItem(spec6, "23035", LBIS.L["Head"], "BIS") --Preceptor's Hat
    LBIS:AddItem(spec6, "21348", LBIS.L["Head"], "Alt") --Tiara of the Oracle
    LBIS:AddItem(spec6, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec6, "19375", LBIS.L["Head"], "Alt") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec6, "17602", LBIS.L["Head"], "Alt") --Field Marshal's Headdress
    LBIS:AddItem(spec6, "17623", LBIS.L["Head"], "Alt") --Warlord's Satin Cowl
    LBIS:AddItem(spec6, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec6, "22983", LBIS.L["Shoulder"], "BIS") --Rime Covered Mantle
    LBIS:AddItem(spec6, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec6, "21350", LBIS.L["Shoulder"], "Alt") --Mantle of the Oracle
    LBIS:AddItem(spec6, "17604", LBIS.L["Shoulder"], "Alt") --Field Marshal's Satin Mantle
    LBIS:AddItem(spec6, "17622", LBIS.L["Shoulder"], "Alt") --Warlord's Satin Mantle
    LBIS:AddItem(spec6, "14112", LBIS.L["Shoulder"], "Alt") --Felcloth Shoulders
    LBIS:AddItem(spec6, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec6, "23017", LBIS.L["Back"], "Alt") --Veil of Eclipse
    LBIS:AddItem(spec6, "23050", LBIS.L["Back"], "Alt") --Cloak of the Necropolis
    LBIS:AddItem(spec6, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec6, "23220", LBIS.L["Chest"], "BIS") --Crystal Webbed Robe
    LBIS:AddItem(spec6, "21351", LBIS.L["Chest"], "Alt") --Vestments of the Oracle
    LBIS:AddItem(spec6, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec6, "23069", LBIS.L["Chest"], "Alt") --Necro-Knight's Garb
    LBIS:AddItem(spec6, "21838", LBIS.L["Chest"], "Alt") --Garb of Royal Ascension
    LBIS:AddItem(spec6, "21671", LBIS.L["Chest"], "Alt") --Robes of the Battleguard
    LBIS:AddItem(spec6, "21499", LBIS.L["Chest"], "Alt") --Vestments of the Shifting Sands
    LBIS:AddItem(spec6, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec6, "14136", LBIS.L["Chest"], "Alt") --Robe of Winter Night
    LBIS:AddItem(spec6, "17605", LBIS.L["Chest"], "Alt") --Field Marshal's Satin Vestments
    LBIS:AddItem(spec6, "17624", LBIS.L["Chest"], "Alt") --Warlord's Satin Robes
    LBIS:AddItem(spec6, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec6, "21611", LBIS.L["Wrist"], "BIS") --Burrower Bracers
    LBIS:AddItem(spec6, "21186", LBIS.L["Wrist"], "Alt") --Rockfury Bracers
    LBIS:AddItem(spec6, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec6, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec6, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec6, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "19407", LBIS.L["Hands"], "Alt") --Ebony Flame Gloves
    LBIS:AddItem(spec6, "18407", LBIS.L["Hands"], "Alt") --Felcloth Gloves
    LBIS:AddItem(spec6, "17608", LBIS.L["Hands"], "Alt") --Marshal's Satin Gloves
    LBIS:AddItem(spec6, "17620", LBIS.L["Hands"], "Alt") --General's Satin Gloves
    LBIS:AddItem(spec6, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "18809", LBIS.L["Waist"], "Alt") --Sash of Whispered Secrets
    LBIS:AddItem(spec6, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec6, "19133", LBIS.L["Legs"], "BIS") --Fel Infused Leggings
    LBIS:AddItem(spec6, "23070", LBIS.L["Legs"], "Alt") --Leggings of Polarity
    LBIS:AddItem(spec6, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec6, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec6, "21352", LBIS.L["Legs"], "Alt") --Trousers of the Oracle
    LBIS:AddItem(spec6, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "22342", LBIS.L["Legs"], "Alt") --Leggings of Torment
    LBIS:AddItem(spec6, "17603", LBIS.L["Legs"], "Alt") --Marshal's Satin Pants
    LBIS:AddItem(spec6, "17625", LBIS.L["Legs"], "Alt") --General's Satin Leggings
    LBIS:AddItem(spec6, "21600", LBIS.L["Feet"], "BIS") --Boots of Epiphany
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "18735", LBIS.L["Feet"], "Alt") --Maleki's Footwraps
    LBIS:AddItem(spec6, "21349", LBIS.L["Feet"], "Alt") --Footwraps of the Oracle
    LBIS:AddItem(spec6, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec6, "17607", LBIS.L["Feet"], "Alt") --Marshal's Satin Sandals
    LBIS:AddItem(spec6, "17618", LBIS.L["Feet"], "Alt") --General's Satin Boots
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "22943", LBIS.L["Neck"], "Alt") --Malice Stone Pendant
    LBIS:AddItem(spec6, "21608", LBIS.L["Neck"], "Alt") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec6, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec6, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec6, "18691", LBIS.L["Neck"], "Alt") --Dark Advisor's Pendant
    LBIS:AddItem(spec6, "23125", LBIS.L["Neck"], "Alt") --Chains of the Lich
    LBIS:AddItem(spec6, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec6, "23031", LBIS.L["Ring"], "BIS") --Band of the Inevitable
    LBIS:AddItem(spec6, "21210", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "21190", LBIS.L["Ring"], "Alt") --Wrath of Cenarius
    LBIS:AddItem(spec6, "19434", LBIS.L["Ring"], "Alt") --Band of Dark Dominion
    LBIS:AddItem(spec6, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec6, "19147", LBIS.L["Ring"], "Alt") --Ring of Spell Power
    LBIS:AddItem(spec6, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec6, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "23046", LBIS.L["Trinket"], "BIS") --The Restrained Essence of Sapphiron
    LBIS:AddItem(spec6, "23207", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec6, "17064", LBIS.L["Trinket"], "Alt") --Shard of the Scale
    LBIS:AddItem(spec6, "22988", LBIS.L["Main Hand"], "BIS") --The End of Dreams
    LBIS:AddItem(spec6, "22803", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "23451", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Mageblade
    LBIS:AddItem(spec6, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "21466", LBIS.L["Main Hand"], "Alt") --Stinger of Ayamiss
    LBIS:AddItem(spec6, "19903", LBIS.L["Main Hand"], "Alt") --Fang of Venoxis
    LBIS:AddItem(spec6, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec6, "20070", LBIS.L["Main Hand"], "Alt") --Sageclaw
    LBIS:AddItem(spec6, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec6, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec6, "19309", LBIS.L["Off Hand"], "BIS") --Tome of Shadow Force
    LBIS:AddItem(spec6, "23049", LBIS.L["Off Hand"], "Alt") --Sapphiron's Left Eye
    LBIS:AddItem(spec6, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec6, "21597", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "21471", LBIS.L["Off Hand"], "Alt") --Talon of Furious Concentration
    LBIS:AddItem(spec6, "22937", LBIS.L["Off Hand"], "Alt") --Gem of Nerubis
    LBIS:AddItem(spec6, "20582", LBIS.L["Off Hand"], "Alt") --Trance Stone
    LBIS:AddItem(spec6, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "22799", LBIS.L["Two Hand"], "BIS") --Soulseeker
    LBIS:AddItem(spec6, "22800", LBIS.L["Two Hand"], "Alt") --Brimstone Staff
    LBIS:AddItem(spec6, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec6, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec6, "18873", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Stave
    LBIS:AddItem(spec6, "18874", LBIS.L["Two Hand"], "Alt") --High Warlord's War Staff
    LBIS:AddItem(spec6, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec6, "21128", LBIS.L["Two Hand"], "Alt") --Staff of the Qiraji Prophets
    LBIS:AddItem(spec6, "18609", LBIS.L["Two Hand"], "Alt") --Anathema
    LBIS:AddItem(spec6, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff
    LBIS:AddItem(spec6, "21603", LBIS.L["Ranged/Relic"], "BIS") --Wand of Qiraji Nobility
    LBIS:AddItem(spec6, "22821", LBIS.L["Ranged/Relic"], "Alt") --Doomfinger
    LBIS:AddItem(spec6, "22820", LBIS.L["Ranged/Relic"], "Alt") --Wand of Fates
    LBIS:AddItem(spec6, "19861", LBIS.L["Ranged/Relic"], "Alt") --Touch of Chaos
    LBIS:AddItem(spec6, "13396", LBIS.L["Ranged/Relic"], "Alt") --Skul's Ghastly Touch
    LBIS:AddItem(spec6, "13938", LBIS.L["Ranged/Relic"], "Alt") --Bonecreeper Stylus
    LBIS:AddItem(spec6, "22408", LBIS.L["Ranged/Relic"], "Alt") --Ritssyn's Wand of Bad Mojo
    LBIS:AddItem(spec6, "20082", LBIS.L["Ranged/Relic"], "Alt") --Woestave
end
if not LBIS.IsSOD then
    LoadData();
end
