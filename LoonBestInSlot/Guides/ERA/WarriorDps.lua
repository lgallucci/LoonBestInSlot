local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "7")

    LBIS:AddEnchant(spec2, "15397", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec2, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec2, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec2, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec2, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec2, "20013", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec2, "15397", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec2, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec2, "20034", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec2, "12460", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec1, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec1, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec1, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec1, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec1, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec1, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec1, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec1, "13203", LBIS.L["Back"], "Alt") --Armswake Cloak
    LBIS:AddItem(spec1, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec1, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec1, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec1, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec1, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec1, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec1, "12966", LBIS.L["Wrist"], "Alt") --Blackmist Armguards
    LBIS:AddItem(spec1, "15063", LBIS.L["Hands"], "BIS") --Devilsaur Gauntlets
    LBIS:AddItem(spec1, "19143", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec1, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec1, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec1, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec1, "15062", LBIS.L["Legs"], "BIS") --Devilsaur Leggings
    LBIS:AddItem(spec1, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec1, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec1, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec1, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec1, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec1, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec1, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec1, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec1, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec1, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec1, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec1, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec1, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec1, "17075", LBIS.L["Main Hand"], "BIS") --Vis'kag the Bloodletter
    LBIS:AddItem(spec1, "17068", LBIS.L["Main Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec1, "18832", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec1, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec1, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec1, "18805", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec1, "18816", LBIS.L["Off Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec1, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec1, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec1, "12535", LBIS.L["Off Hand"], "Alt") --Doomforged Straightedge
    LBIS:AddItem(spec1, "17076", LBIS.L["Two Hand"], "BIS") --Bonereaver's Edge
    LBIS:AddItem(spec1, "12592", LBIS.L["Two Hand"], "Alt") --Blackblade of Shahram
    LBIS:AddItem(spec1, "12784", LBIS.L["Two Hand"], "Alt") --Arcanite Reaper
    LBIS:AddItem(spec1, "11931", LBIS.L["Two Hand"], "Alt") --Dreadforge Retaliator
    LBIS:AddItem(spec1, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec1, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec1, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow

    LBIS:AddItem(spec2, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec2, "23314", LBIS.L["Head"], "Alt") --Lieutenant Commander's Plate Helm
    LBIS:AddItem(spec2, "23244", LBIS.L["Head"], "Alt") --Champion's Plate Helm
    LBIS:AddItem(spec2, "18817", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec2, "12587", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec2, "13404", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec2, "23315", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Plate Shoulders
    LBIS:AddItem(spec2, "23243", LBIS.L["Shoulder"], "BIS") --Champion's Plate Shoulders
    LBIS:AddItem(spec2, "12927", LBIS.L["Shoulder"], "BIS") --Truestrike Shoulders
    LBIS:AddItem(spec2, "15051", LBIS.L["Shoulder"], "Alt") --Black Dragonscale Shoulders
    LBIS:AddItem(spec2, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec2, "16868", LBIS.L["Shoulder"], "Alt") --Pauldrons of Might
    LBIS:AddItem(spec2, "12082", LBIS.L["Shoulder"], "Alt") --Wyrmhide Spaulders
    LBIS:AddItem(spec2, "18541", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec2, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec2, "18689", LBIS.L["Back"], "Alt") --Phantasmal Cloak
    LBIS:AddItem(spec2, "19084", LBIS.L["Back"], "Alt") --Stormpike Soldier's Cloak
    LBIS:AddItem(spec2, "19083", LBIS.L["Back"], "Alt") --Frostwolf Legionnaire's Cloak
    LBIS:AddItem(spec2, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec2, "11726", LBIS.L["Chest"], "BIS") --Savage Gladiator Chain
    LBIS:AddItem(spec2, "14637", LBIS.L["Chest"], "BIS") --Cadaverous Armor
    LBIS:AddItem(spec2, "13944", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec2, "23300", LBIS.L["Chest"], "Alt") --Knight-Captain's Plate Hauberk
    LBIS:AddItem(spec2, "22872", LBIS.L["Chest"], "Alt") --Legionnaire's Plate Hauberk
    LBIS:AddItem(spec2, "11926", LBIS.L["Chest"], "Alt") --Deathdealer Breastplate
    LBIS:AddItem(spec2, "18530", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec2, "15050", LBIS.L["Chest"], "Alt") --Black Dragonscale Breastplate
    LBIS:AddItem(spec2, "19578", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec2, "19146", LBIS.L["Wrist"], "BIS") --Wristguards of Stability
    LBIS:AddItem(spec2, "12936", LBIS.L["Wrist"], "Alt") --Battleborn Armbraces
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec2, "18533", LBIS.L["Wrist"], "Alt") --Gordok Bracers of Power
    LBIS:AddItem(spec2, "13400", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec2, "19143", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec2, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec2, "16863", LBIS.L["Hands"], "Alt") --Gauntlets of Might
    LBIS:AddItem(spec2, "15063", LBIS.L["Hands"], "Alt") --Devilsaur Gauntlets
    LBIS:AddItem(spec2, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec2, "19137", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec2, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec2, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec2, "19087", LBIS.L["Waist"], "Alt") --Frostwolf Plate Belt
    LBIS:AddItem(spec2, "19091", LBIS.L["Waist"], "Alt") --Stormpike Plate Girdle
    LBIS:AddItem(spec2, "18505", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec2, "23301", LBIS.L["Legs"], "BIS") --Knight-Captain's Plate Leggings
    LBIS:AddItem(spec2, "22873", LBIS.L["Legs"], "BIS") --Legionnaire's Plate Leggings
    LBIS:AddItem(spec2, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec2, "15062", LBIS.L["Legs"], "Alt") --Devilsaur Leggings
    LBIS:AddItem(spec2, "18380", LBIS.L["Legs"], "Alt") --Eldritch Reinforced Legplates
    LBIS:AddItem(spec2, "14616", LBIS.L["Feet"], "BIS") --Bloodmail Boots
    LBIS:AddItem(spec2, "12555", LBIS.L["Feet"], "Alt") --Battlechaser's Greaves
    LBIS:AddItem(spec2, "13967", LBIS.L["Feet"], "Alt") --Windreaver Greaves
    LBIS:AddItem(spec2, "13210", LBIS.L["Feet"], "Alt") --Pads of the Dread Wolf
    LBIS:AddItem(spec2, "13070", LBIS.L["Feet"], "Alt") --Sapphiron's Scale Boots
    LBIS:AddItem(spec2, "11731", LBIS.L["Feet"], "Alt") --Savage Gladiator Greaves
    LBIS:AddItem(spec2, "16984", LBIS.L["Feet"], "Alt") --Black Dragonscale Boots
    LBIS:AddItem(spec2, "18404", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec2, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec2, "11933", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec2, "17044", LBIS.L["Neck"], "Alt") --Will of the Martyr
    LBIS:AddItem(spec2, "18821", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "17063", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec2, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec2, "13098", LBIS.L["Ring"], "Alt") --Painweaver Band
    LBIS:AddItem(spec2, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec2, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec2, "11815", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec2, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec2, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "17112", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec2, "18832", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Brutality Blade
    LBIS:AddItem(spec2, "17068", LBIS.L["Main Hand/Off Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec2, "17075", LBIS.L["Main Hand/Off Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec2, "11684", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec2, "12940", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec2, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec2, "19104", LBIS.L["Main Hand"], "Alt") --Stormstrike Hammer
    LBIS:AddItem(spec2, "2244", LBIS.L["Main Hand"], "Alt") --Krol Blade
    LBIS:AddItem(spec2, "17705", LBIS.L["Main Hand"], "Alt") --Thrash Blade
    LBIS:AddItem(spec2, "19103", LBIS.L["Main Hand/Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec2, "811", LBIS.L["Main Hand"], "Alt") --Axe of the Deep Woods
    LBIS:AddItem(spec2, "13286", LBIS.L["Main Hand"], "Alt") --Rivenspike
    LBIS:AddItem(spec2, "12939", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec2, "15806", LBIS.L["Off Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec2, "18392", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec2, "18737", LBIS.L["Off Hand"], "Alt") --Bone Slicing Hatchet
    LBIS:AddItem(spec2, "871", LBIS.L["Off Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec2, "13015", LBIS.L["Off Hand"], "Alt") --Serathil
    LBIS:AddItem(spec2, "17069", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec2, "17072", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec2, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec2, "12651", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec2, "18323", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec2, "12653", LBIS.L["Ranged/Relic"], "Alt") --Riphook
end
if not LBIS.IsSOD then
    LoadData();
end
