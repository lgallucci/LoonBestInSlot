local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "8")

    LBIS:AddEnchant(spec6, "15397", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29483", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25080", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "13404", LBIS.L["Head"], "BIS") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "12936", LBIS.L["Wrist"], "BIS") --Battleborn Armbraces
    LBIS:AddItem(spec0, "13957", LBIS.L["Hands"], "BIS") --Gargoyle Slashers
    LBIS:AddItem(spec0, "13959", LBIS.L["Waist"], "BIS") --Omokk's Girth Restrainer
    LBIS:AddItem(spec0, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec0, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "BIS") --Mark of Fordring
    LBIS:AddItem(spec0, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec0, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "12784", LBIS.L["Main Hand"], "BIS") --Arcanite Reaper

    LBIS:AddItem(spec1, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec1, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "BIS") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec1, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec1, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec1, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec1, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec1, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec1, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec1, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec1, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec1, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec1, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec1, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec1, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "17182", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec1, "12592", LBIS.L["Two Hand"], "Alt") --Blackblade of Shahram
    LBIS:AddItem(spec1, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec1, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator

    LBIS:AddItem(spec2, "18817", LBIS.L["Head"], "BIS") --Crown of Destruction
    LBIS:AddItem(spec2, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec2, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "BIS") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec2, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec2, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec2, "12757", LBIS.L["Chest"], "BIS") --Breastplate of Bloodthirst
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec2, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec2, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec2, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec2, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec2, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec2, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec2, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec2, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec2, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec2, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec2, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec2, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec2, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec2, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec2, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec2, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec2, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec2, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec2, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "17182", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec2, "18822", LBIS.L["Two Hand"], "BIS") --Obsidian Edged Blade
    LBIS:AddItem(spec2, "17076", LBIS.L["Two Hand"], "Alt") --Bonereaver's Edge
    LBIS:AddItem(spec2, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec2, "17193", LBIS.L["Two Hand"], "Alt") --Sulfuron Hammer
    LBIS:AddItem(spec2, "17073", LBIS.L["Two Hand"], "Alt") --Earthshaker
    LBIS:AddItem(spec2, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec2, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator

    LBIS:AddItem(spec3, "19372", LBIS.L["Head"], "BIS") --Helm of Endless Rage
    LBIS:AddItem(spec3, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec3, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec3, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec3, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec3, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec3, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec3, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec3, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec3, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec3, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec3, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec3, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec3, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec3, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec3, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec3, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec3, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec3, "19405", LBIS.L["Chest"], "Alt") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec3, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec3, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec3, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec3, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec3, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec3, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec3, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec3, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec3, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec3, "16471", LBIS.L["Hands"], "BIS") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec3, "23274", LBIS.L["Hands"], "BIS") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec3, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec3, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec3, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec3, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec3, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec3, "19380", LBIS.L["Waist"], "BIS") --Therazane's Link
    LBIS:AddItem(spec3, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec3, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec3, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec3, "19402", LBIS.L["Legs"], "BIS") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec3, "16475", LBIS.L["Legs"], "BIS") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec3, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec3, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec3, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec3, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec3, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec3, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec3, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec3, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec3, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec3, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec3, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec3, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec3, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec3, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec3, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec3, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec3, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec3, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec3, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec3, "19343", LBIS.L["Trinket"], "BIS") --Scrolls of Blinding Light
    LBIS:AddItem(spec3, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec3, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec3, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec3, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec3, "17182", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec3, "18876", LBIS.L["Two Hand"], "BIS") --Grand Marshal's Claymore
    LBIS:AddItem(spec3, "19364", LBIS.L["Two Hand"], "BIS") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec3, "18822", LBIS.L["Two Hand"], "Alt") --Obsidian Edged Blade
    LBIS:AddItem(spec3, "19357", LBIS.L["Two Hand"], "Alt") --Herald of Woe
    LBIS:AddItem(spec3, "17076", LBIS.L["Two Hand"], "Alt") --Bonereaver's Edge
    LBIS:AddItem(spec3, "19358", LBIS.L["Two Hand"], "Alt") --Draconic Maul
    LBIS:AddItem(spec3, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec3, "17193", LBIS.L["Two Hand"], "Alt") --Sulfuron Hammer
    LBIS:AddItem(spec3, "17073", LBIS.L["Two Hand"], "Alt") --Earthshaker
    LBIS:AddItem(spec3, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec3, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator

    LBIS:AddItem(spec4, "19372", LBIS.L["Head"], "BIS") --Helm of Endless Rage
    LBIS:AddItem(spec4, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec4, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec4, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec4, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec4, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec4, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec4, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec4, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec4, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec4, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec4, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec4, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec4, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec4, "19405", LBIS.L["Chest"], "Alt") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec4, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec4, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec4, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec4, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec4, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec4, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec4, "16471", LBIS.L["Hands"], "BIS") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec4, "23274", LBIS.L["Hands"], "BIS") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec4, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec4, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec4, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec4, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec4, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec4, "19380", LBIS.L["Waist"], "BIS") --Therazane's Link
    LBIS:AddItem(spec4, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec4, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec4, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec4, "19402", LBIS.L["Legs"], "BIS") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec4, "16475", LBIS.L["Legs"], "BIS") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec4, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec4, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec4, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec4, "19387", LBIS.L["Feet"], "BIS") --Chromatic Boots
    LBIS:AddItem(spec4, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec4, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec4, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec4, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec4, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "19377", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec4, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec4, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec4, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec4, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec4, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec4, "19343", LBIS.L["Trinket"], "BIS") --Scrolls of Blinding Light
    LBIS:AddItem(spec4, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec4, "19406", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec4, "17182", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec4, "18876", LBIS.L["Two Hand"], "BIS") --Grand Marshal's Claymore
    LBIS:AddItem(spec4, "19364", LBIS.L["Two Hand"], "BIS") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec4, "18822", LBIS.L["Two Hand"], "Alt") --Obsidian Edged Blade
    LBIS:AddItem(spec4, "19357", LBIS.L["Two Hand"], "Alt") --Herald of Woe
    LBIS:AddItem(spec4, "17076", LBIS.L["Two Hand"], "Alt") --Bonereaver's Edge
    LBIS:AddItem(spec4, "19358", LBIS.L["Two Hand"], "Alt") --Draconic Maul
    LBIS:AddItem(spec4, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec4, "17193", LBIS.L["Two Hand"], "Alt") --Sulfuron Hammer
    LBIS:AddItem(spec4, "17073", LBIS.L["Two Hand"], "Alt") --Earthshaker
    LBIS:AddItem(spec4, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec4, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator

    LBIS:AddItem(spec5, "21387", LBIS.L["Head"], "BIS") --Avenger's Crown
    LBIS:AddItem(spec5, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec5, "21460", LBIS.L["Head"], "Alt") --Helm of Domination
    LBIS:AddItem(spec5, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec5, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec5, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec5, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec5, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec5, "21391", LBIS.L["Shoulder"], "BIS") --Avenger's Pauldrons
    LBIS:AddItem(spec5, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec5, "16476", LBIS.L["Shoulder"], "Alt") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec5, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec5, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec5, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec5, "19436", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "21701", LBIS.L["Back"], "BIS") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec5, "22712", LBIS.L["Back"], "Alt") --Might of the Tribe
    LBIS:AddItem(spec5, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec5, "21389", LBIS.L["Chest"], "BIS") --Avenger's Breastplate
    LBIS:AddItem(spec5, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec5, "16473", LBIS.L["Chest"], "Alt") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec5, "19904", LBIS.L["Chest"], "Alt") --Runed Bloodstained Hauberk
    LBIS:AddItem(spec5, "19405", LBIS.L["Chest"], "Alt") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec5, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec5, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec5, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec5, "21618", LBIS.L["Wrist"], "BIS") --Hive Defiler Wristguards
    LBIS:AddItem(spec5, "21457", LBIS.L["Wrist"], "BIS") --Bracers of Brutality
    LBIS:AddItem(spec5, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec5, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec5, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec5, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec5, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec5, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec5, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec5, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec5, "16471", LBIS.L["Hands"], "BIS") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec5, "22714", LBIS.L["Hands"], "BIS") --Sacrificial Gauntlets
    LBIS:AddItem(spec5, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec5, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec5, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec5, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec5, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec5, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec5, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec5, "21463", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec5, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec5, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec5, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec5, "21390", LBIS.L["Legs"], "BIS") --Avenger's Legguards
    LBIS:AddItem(spec5, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec5, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec5, "21495", LBIS.L["Legs"], "Alt") --Legplates of the Qiraji Command
    LBIS:AddItem(spec5, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec5, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec5, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec5, "21388", LBIS.L["Feet"], "BIS") --Avenger's Greaves
    LBIS:AddItem(spec5, "19387", LBIS.L["Feet"], "Alt") --Chromatic Boots
    LBIS:AddItem(spec5, "21688", LBIS.L["Feet"], "Alt") --Boots of the Fallen Hero
    LBIS:AddItem(spec5, "21490", LBIS.L["Feet"], "Alt") --Slime Kickers
    LBIS:AddItem(spec5, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec5, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec5, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec5, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec5, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec5, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19377", LBIS.L["Neck"], "Alt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "21809", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec5, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec5, "21505", LBIS.L["Neck"], "Alt") --Choker of the Shifting Sands
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec5, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec5, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "18821", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec5, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec5, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec5, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec5, "19343", LBIS.L["Trinket"], "BIS") --Scrolls of Blinding Light
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec5, "17182", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec5, "233640", LBIS.L["Two Hand"], "BIS") --Dark Edge of Insanity
    LBIS:AddItem(spec5, "18876", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Claymore
    LBIS:AddItem(spec5, "19364", LBIS.L["Two Hand"], "Alt") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec5, "21679", LBIS.L["Two Hand"], "Alt") --Kalimdor's Revenge
    LBIS:AddItem(spec5, "19854", LBIS.L["Two Hand"], "Alt") --Zin'rokh, Destroyer of Worlds
    LBIS:AddItem(spec5, "19169", LBIS.L["Two Hand"], "Alt") --Nightfall
    LBIS:AddItem(spec5, "18822", LBIS.L["Two Hand"], "Alt") --Obsidian Edged Blade
    LBIS:AddItem(spec5, "19357", LBIS.L["Two Hand"], "Alt") --Herald of Woe
    LBIS:AddItem(spec5, "17076", LBIS.L["Two Hand"], "Alt") --Bonereaver's Edge
    LBIS:AddItem(spec5, "19358", LBIS.L["Two Hand"], "Alt") --Draconic Maul
    LBIS:AddItem(spec5, "21492", LBIS.L["Two Hand"], "Alt") --Manslayer of the Qiraji
    LBIS:AddItem(spec5, "19323", LBIS.L["Two Hand"], "Alt") --The Unstoppable Force
    LBIS:AddItem(spec5, "17193", LBIS.L["Two Hand"], "Alt") --Sulfuron Hammer
    LBIS:AddItem(spec5, "17073", LBIS.L["Two Hand"], "Alt") --Earthshaker
    LBIS:AddItem(spec5, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec5, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator

    LBIS:AddItem(spec6, "21387", LBIS.L["Head"], "BIS") --Avenger's Crown
    LBIS:AddItem(spec6, "19372", LBIS.L["Head"], "Alt") --Helm of Endless Rage
    LBIS:AddItem(spec6, "21460", LBIS.L["Head"], "Alt") --Helm of Domination
    LBIS:AddItem(spec6, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec6, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec6, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec6, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec6, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec6, "23667", LBIS.L["Shoulder"], "BIS") --Spaulders of the Grand Crusader
    LBIS:AddItem(spec6, "19394", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec6, "21391", LBIS.L["Shoulder"], "Alt") --Avenger's Pauldrons
    LBIS:AddItem(spec6, "21665", LBIS.L["Shoulder"], "Alt") --Mantle of Wicked Revenge
    LBIS:AddItem(spec6, "16476", LBIS.L["Shoulder"], "Alt") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec6, "23277", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec6, "12927", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec6, "21710", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "23045", LBIS.L["Back"], "BIS") --Shroud of Dominion
    LBIS:AddItem(spec6, "21701", LBIS.L["Back"], "BIS") --Cloak of Concentrated Hatred
    LBIS:AddItem(spec6, "22712", LBIS.L["Back"], "Alt") --Might of the Tribe
    LBIS:AddItem(spec6, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec6, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec6, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec6, "22337", LBIS.L["Back"], "Alt") --Shroud of Domination
    LBIS:AddItem(spec6, "23226", LBIS.L["Chest"], "BIS") --Ghoul Skin Tunic
    LBIS:AddItem(spec6, "23000", LBIS.L["Chest"], "BIS") --Plated Abomination Ribcage
    LBIS:AddItem(spec6, "21389", LBIS.L["Chest"], "BIS") --Avenger's Breastplate
    LBIS:AddItem(spec6, "21814", LBIS.L["Chest"], "Alt") --Breastplate of Annihilation
    LBIS:AddItem(spec6, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec6, "16473", LBIS.L["Chest"], "Alt") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec6, "19904", LBIS.L["Chest"], "Alt") --Runed Bloodstained Hauberk
    LBIS:AddItem(spec6, "19405", LBIS.L["Chest"], "Alt") --Malfurion's Blessed Bulwark
    LBIS:AddItem(spec6, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec6, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec6, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec6, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec6, "22936", LBIS.L["Wrist"], "BIS") --Wristguards of Vengeance
    LBIS:AddItem(spec6, "21618", LBIS.L["Wrist"], "BIS") --Hive Defiler Wristguards
    LBIS:AddItem(spec6, "21457", LBIS.L["Wrist"], "BIS") --Bracers of Brutality
    LBIS:AddItem(spec6, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec6, "19146", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec6, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec6, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec6, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec6, "21581", LBIS.L["Hands"], "BIS") --Gauntlets of Annihilation
    LBIS:AddItem(spec6, "21672", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec6, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec6, "22714", LBIS.L["Hands"], "Alt") --Sacrificial Gauntlets
    LBIS:AddItem(spec6, "21623", LBIS.L["Hands"], "Alt") --Gauntlets of the Righteous Champion
    LBIS:AddItem(spec6, "19157", LBIS.L["Hands"], "Alt") --Chromatic Gauntlets
    LBIS:AddItem(spec6, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec6, "13957", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec6, "23219", LBIS.L["Waist"], "BIS") --Girdle of the Mentor
    LBIS:AddItem(spec6, "19137", LBIS.L["Waist"], "Alt") --Onslaught Girdle
    LBIS:AddItem(spec6, "21692", LBIS.L["Waist"], "Alt") --Triad Girdle
    LBIS:AddItem(spec6, "19380", LBIS.L["Waist"], "Alt") --Therazane's Link
    LBIS:AddItem(spec6, "21463", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec6, "19392", LBIS.L["Waist"], "Alt") --Girdle of the Fallen Crusader
    LBIS:AddItem(spec6, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec6, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec6, "23068", LBIS.L["Legs"], "BIS") --Legplates of Carnage
    LBIS:AddItem(spec6, "23071", LBIS.L["Legs"], "BIS") --Leggings of Apocalypse
    LBIS:AddItem(spec6, "21390", LBIS.L["Legs"], "BIS") --Avenger's Legguards
    LBIS:AddItem(spec6, "19402", LBIS.L["Legs"], "Alt") --Legguards of the Fallen Crusader
    LBIS:AddItem(spec6, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec6, "21495", LBIS.L["Legs"], "Alt") --Legplates of the Qiraji Command
    LBIS:AddItem(spec6, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec6, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec6, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec6, "21388", LBIS.L["Feet"], "BIS") --Avenger's Greaves
    LBIS:AddItem(spec6, "21493", LBIS.L["Feet"], "Alt") --Boots of the Vanguard
    LBIS:AddItem(spec6, "19387", LBIS.L["Feet"], "Alt") --Chromatic Boots
    LBIS:AddItem(spec6, "21688", LBIS.L["Feet"], "Alt") --Boots of the Fallen Hero
    LBIS:AddItem(spec6, "21490", LBIS.L["Feet"], "Alt") --Slime Kickers
    LBIS:AddItem(spec6, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec6, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec6, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec6, "14616", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec6, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec6, "23053", LBIS.L["Neck"], "BIS") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec6, "21664", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "19856", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec6, "18404", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "19377", LBIS.L["Neck"], "Alt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "21505", LBIS.L["Neck"], "Alt") --Choker of the Shifting Sands
    LBIS:AddItem(spec6, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec6, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec6, "23038", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec6, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec6, "19432", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec6, "21677", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec6, "19384", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec6, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec6, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec6, "19343", LBIS.L["Trinket"], "BIS") --Scrolls of Blinding Light
    LBIS:AddItem(spec6, "22954", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec6, "23206", LBIS.L["Trinket"], "Alt") --Mark of the Champion
    LBIS:AddItem(spec6, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec6, "22798", LBIS.L["Two Hand"], "BIS") --Might of Menethil
    LBIS:AddItem(spec6, "22691", LBIS.L["Two Hand"], "Alt") --Corrupted Ashbringer
    LBIS:AddItem(spec6, "17182", LBIS.L["Two Hand"], "Alt") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec6, "19364", LBIS.L["Two Hand"], "Alt") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec6, "19334", LBIS.L["Two Hand"], "Alt") --The Untamed Blade
    LBIS:AddItem(spec6, "18876", LBIS.L["Two Hand"], "Alt") --Grand Marshal's Claymore
    LBIS:AddItem(spec6, "21679", LBIS.L["Two Hand"], "Alt") --Kalimdor's Revenge
    LBIS:AddItem(spec6, "19169", LBIS.L["Two Hand"], "Alt") --Nightfall
    LBIS:AddItem(spec6, "17076", LBIS.L["Two Hand"], "Alt") --Bonereaver's Edge
    LBIS:AddItem(spec6, "18822", LBIS.L["Two Hand"], "Alt") --Obsidian Edged Blade
    LBIS:AddItem(spec6, "23203", LBIS.L["Ranged/Relic"], "BIS") --Libram of Fervor
    LBIS:AddItem(spec6, "22401", LBIS.L["Ranged/Relic"], "Alt") --Libram of Hope
end
if not LBIS.IsSOD then
    LoadData();
end
