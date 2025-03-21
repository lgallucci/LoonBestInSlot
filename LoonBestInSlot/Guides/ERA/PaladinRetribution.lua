local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Retribution"], "7")

    LBIS:AddEnchant(spec3, "15397", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "20013", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "15397", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "20023", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "13935", LBIS.L["Feet"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
