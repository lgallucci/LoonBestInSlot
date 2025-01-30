local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Shadow"], "7")

    LBIS:AddEnchant(spec2, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20009", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "22749", LBIS.L["Main Hand"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
