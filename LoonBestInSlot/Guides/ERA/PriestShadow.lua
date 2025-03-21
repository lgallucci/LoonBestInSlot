local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "7")

    LBIS:AddEnchant(spec3, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "20009", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "22749", LBIS.L["Main Hand"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
