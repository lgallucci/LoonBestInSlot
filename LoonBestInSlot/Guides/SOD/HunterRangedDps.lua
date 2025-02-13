local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["RangedDps"], "7")

    LBIS:AddEnchant(spec7, "468325", LBIS.L["Head"]) --Falcon's Call
    LBIS:AddEnchant(spec7, "468383", LBIS.L["Head"]) --Falcon's Fury
    LBIS:AddEnchant(spec7, "1219811", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219809", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219512", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219587", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec7, "1213616", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec7, "1217203", LBIS.L["Wrist"]) --Enchant Bracer - Agility
    LBIS:AddEnchant(spec7, "25080", LBIS.L["Hands"]) --Enchant Gloves - Superior Agility
    LBIS:AddEnchant(spec7, "468325", LBIS.L["Legs"]) --Falcon's Call
    LBIS:AddEnchant(spec7, "468383", LBIS.L["Legs"]) --Falcon's Fury
    LBIS:AddEnchant(spec7, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec7, "23800", LBIS.L["Main Hand"]) --Enchant Weapon - Agility
    LBIS:AddEnchant(spec7, "27837", LBIS.L["Two Hand"]) --Enchant 2H Weapon - Agility
    LBIS:AddEnchant(spec7, "1217206", LBIS.L["Ranged/Relic"]) --Obsidian Scope
    LBIS:AddEnchant(spec7, "27837", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec7, "23800", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec7, "15402", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec7, "446451", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "15402", LBIS.L["Legs"]) --

    LBIS:AddItem(spec0, "226533", LBIS.L["Head"], "BIS") --Giantstalker's Helmet
    LBIS:AddItem(spec0, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec0, "227067", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec0, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec0, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec0, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec0, "226527", LBIS.L["Shoulder"], "BIS") --Giantstalker's Epaulets
    LBIS:AddItem(spec0, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec0, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec0, "226884", LBIS.L["Shoulder"], "Alt") --Beastmaster's Mantle
    LBIS:AddItem(spec0, "19691", LBIS.L["Shoulder"], "Alt") --Bloodsoul Shoulders
    LBIS:AddItem(spec0, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec0, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec0, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec0, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec0, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec0, "226534", LBIS.L["Chest"], "BIS") --Giantstalker's Breastplate
    LBIS:AddItem(spec0, "226886", LBIS.L["Chest"], "Alt") --Beastmaster's Tunic
    LBIS:AddItem(spec0, "227070", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Hauberk
    LBIS:AddItem(spec0, "227071", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec0, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec0, "228070", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "232119", LBIS.L["Wrist"], "BIS") --Dragonstalker's Bracers
    LBIS:AddItem(spec0, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec0, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec0, "226885", LBIS.L["Wrist"], "Alt") --Beastmaster's Bindings
    LBIS:AddItem(spec0, "221026", LBIS.L["Wrist"], "Alt") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec0, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec0, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec0, "232124", LBIS.L["Hands"], "BIS") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec0, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec0, "226883", LBIS.L["Hands"], "Alt") --Beastmaster's Gauntlets
    LBIS:AddItem(spec0, "228552", LBIS.L["Hands"], "Alt") --Gauntlets of Deftness
    LBIS:AddItem(spec0, "220545", LBIS.L["Hands"], "Alt") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec0, "231056", LBIS.L["Waist"], "BIS") --Dragonstalker's Belt
    LBIS:AddItem(spec0, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec0, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec0, "228595", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec0, "226532", LBIS.L["Legs"], "BIS") --Giantstalker's Leggings
    LBIS:AddItem(spec0, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec0, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec0, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec0, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec0, "220667", LBIS.L["Legs"], "Alt") --Dread Hunter's Chausses
    LBIS:AddItem(spec0, "231061", LBIS.L["Feet"], "BIS") --Dragonstalker's Greaves
    LBIS:AddItem(spec0, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec0, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec0, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec0, "228514", LBIS.L["Feet"], "Alt") --Timmy's Galoshes
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "228684", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec0, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec0, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "227284", LBIS.L["Ring"], "BIS") --Band of the Beast
    LBIS:AddItem(spec0, "228469", LBIS.L["Ring"], "BIS") --Tarnished Elven Ring
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec0, "227990", LBIS.L["Trinket"], "BIS") --Hand of Injustice
    LBIS:AddItem(spec0, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec0, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "228094", LBIS.L["Main Hand/Off Hand"], "BIS") --Dreadlord's Blade
    LBIS:AddItem(spec0, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec0, "224409", LBIS.L["Off Hand"], "Alt") --Serpent's Striker
    LBIS:AddItem(spec0, "220582", LBIS.L["Off Hand"], "Alt") --Dragon's Cry
    LBIS:AddItem(spec0, "22314", LBIS.L["Two Hand"], "BIS") --Huntsman's Harpoon
    LBIS:AddItem(spec0, "227845", LBIS.L["Two Hand"], "Alt") --Refined Arcanite Reaper
    LBIS:AddItem(spec0, "220567", LBIS.L["Two Hand"], "Alt") --Bloodied Headspike
    LBIS:AddItem(spec0, "9480", LBIS.L["Two Hand"], "Alt") --Eyegouger
    LBIS:AddItem(spec0, "220566", LBIS.L["Two Hand"], "Alt") --Smolder Claw
    LBIS:AddItem(spec0, "227849", LBIS.L["Ranged/Relic"], "BIS") --Fiery Core Sharpshooter Rifle
    LBIS:AddItem(spec0, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec0, "220573", LBIS.L["Ranged/Relic"], "Alt") --Dreadstalker's Hunting Bow

    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "BIS") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec1, "4724", LBIS.L["Head"], "Alt") --Humbert's Helm
    LBIS:AddItem(spec1, "4385", LBIS.L["Head"], "Alt") --Green Tinted Goggles
    LBIS:AddItem(spec1, "2264", LBIS.L["Shoulder"], "BIS") --Mantle of Thieves
    LBIS:AddItem(spec1, "209692", LBIS.L["Shoulder"], "Alt") --Sentinel Pauldrons
    LBIS:AddItem(spec1, "4252", LBIS.L["Shoulder"], "Alt") --Dark Leather Shoulders
    LBIS:AddItem(spec1, "209680", LBIS.L["Back"], "BIS") --Waterproof Scarf
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "6449", LBIS.L["Back"], "Alt") --Glowing Lizardscale Cloak
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "BIS") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "2041", LBIS.L["Chest"], "Alt") --Tunic of Westfall
    LBIS:AddItem(spec1, "6670", LBIS.L["Chest"], "Alt") --Panther Armor
    LBIS:AddItem(spec1, "209572", LBIS.L["Chest"], "Alt") --Black Boiled Leathers
    LBIS:AddItem(spec1, "15351", LBIS.L["Wrist"], "BIS") --Headhunter's Bands
    LBIS:AddItem(spec1, "897", LBIS.L["Wrist"], "Alt") --Madwolf Bracers
    LBIS:AddItem(spec1, "3202", LBIS.L["Wrist"], "Alt") --Forest Leather Bracers
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "7358", LBIS.L["Hands"], "Alt") --Pilferer's Gloves
    LBIS:AddItem(spec1, "4253", LBIS.L["Hands"], "Alt") --Toughened Leather Gloves
    LBIS:AddItem(spec1, "209421", LBIS.L["Waist"], "BIS") --Cord of Aquanis
    LBIS:AddItem(spec1, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec1, "6719", LBIS.L["Waist"], "Alt") --Windborne Belt
    LBIS:AddItem(spec1, "6468", LBIS.L["Waist"], "Alt") --Deviate Scale Belt
    LBIS:AddItem(spec1, "13114", LBIS.L["Legs"], "BIS") --Troll's Bane Leggings
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "Alt") --Leggings of the Fang
    LBIS:AddItem(spec1, "6607", LBIS.L["Legs"], "Alt") --Dervish Leggings
    LBIS:AddItem(spec1, "14574", LBIS.L["Legs"], "Alt") --Bristlebark Britches
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "16977", LBIS.L["Feet"], "Alt") --Warsong Boots
    LBIS:AddItem(spec1, "1121", LBIS.L["Feet"], "Alt") --Feet of the Lynx
    LBIS:AddItem(spec1, "209670", LBIS.L["Feet"], "Alt") --Skinwalkers
    LBIS:AddItem(spec1, "20442", LBIS.L["Neck"], "BIS") --Scout's Medallion
    LBIS:AddItem(spec1, "20444", LBIS.L["Neck"], "BIS") --Sentinel's Medallion
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec1, "1491", LBIS.L["Ring"], "BIS") --Ring of Precision
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "BIS") --Band of the Iron Fist
    LBIS:AddItem(spec1, "6748", LBIS.L["Ring"], "Alt") --Monkey Ring
    LBIS:AddItem(spec1, "2933", LBIS.L["Ring"], "Alt") --Seal of Wrynn
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "BIS") --Minor Recombobulator
    LBIS:AddItem(spec1, "21568", LBIS.L["Trinket"], "Alt") --Rune of Duty
    LBIS:AddItem(spec1, "16886", LBIS.L["Main Hand"], "BIS") --Outlaw Sabre
    LBIS:AddItem(spec1, "5191", LBIS.L["Main Hand"], "BIS") --Cruel Barb
    LBIS:AddItem(spec1, "2807", LBIS.L["Main Hand"], "Alt") --Guillotine Axe
    LBIS:AddItem(spec1, "209580", LBIS.L["Off Hand"], "BIS") --Gusting Wind
    LBIS:AddItem(spec1, "212583", LBIS.L["Off Hand"], "Alt") --Sentinel's Blade
    LBIS:AddItem(spec1, "4454", LBIS.L["Off Hand"], "Alt") --Talon of Vultros
    LBIS:AddItem(spec1, "209564", LBIS.L["Two Hand"], "BIS") --Guardian's Trident
    LBIS:AddItem(spec1, "209562", LBIS.L["Two Hand"], "BIS") --Deadly Strike of the Hydra
    LBIS:AddItem(spec1, "6679", LBIS.L["Two Hand"], "Alt") --Armor Piercer
    LBIS:AddItem(spec1, "209534", LBIS.L["Ranged/Relic"], "BIS") --Azshari Arbalest
    LBIS:AddItem(spec1, "209688", LBIS.L["Ranged/Relic"], "Alt") --Bael Modan Blunderbuss
    LBIS:AddItem(spec1, "209563", LBIS.L["Ranged/Relic"], "Alt") --Naga Heartrender
    LBIS:AddItem(spec1, "6315", LBIS.L["Ranged/Relic"], "Alt") --Steelarrow Crossbow
    LBIS:AddItem(spec1, "3493", LBIS.L["Ranged/Relic"], "Alt") --Raptor's End
    LBIS:AddItem(spec1, "6469", LBIS.L["Ranged/Relic"], "Alt") --Venomstrike

    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "213280", LBIS.L["Head"], "Alt") --Marksman's Scopevisor
    LBIS:AddItem(spec2, "10741", LBIS.L["Head"], "Alt Ranged") --Lordrec Helmet
    LBIS:AddItem(spec2, "211510", LBIS.L["Head"], "Alt") --Twilight Slayer's Cowl
    LBIS:AddItem(spec2, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec2, "213304", LBIS.L["Shoulder"], "BIS") --Troggslayer Pauldrons
    LBIS:AddItem(spec2, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec2, "213302", LBIS.L["Shoulder"], "Alt") --Mantle of the Cunning Negotiator
    LBIS:AddItem(spec2, "2278", LBIS.L["Shoulder"], "Alt") --Forest Tracker Epaulets
    LBIS:AddItem(spec2, "5257", LBIS.L["Back"], "BIS Melee") --Dark Hooded Cape
    LBIS:AddItem(spec2, "213308", LBIS.L["Back"], "BIS Ranged") --Prototype Parachute Cloak
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec2, "6432", LBIS.L["Back"], "Alt") --Imperial Cloak
    LBIS:AddItem(spec2, "213314", LBIS.L["Chest"], "BIS Melee") --Electromantic Chainmail
    LBIS:AddItem(spec2, "11193", LBIS.L["Chest"], "BIS Melee") --Blazewind Breastplate
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec2, "10583", LBIS.L["Chest"], "Alt") --Quillward Harness
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec2, "217305", LBIS.L["Wrist"], "Alt") --Revelosh's Armguards
    LBIS:AddItem(spec2, "7378", LBIS.L["Wrist"], "Alt") --Dusky Bracers
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "213278", LBIS.L["Hands"], "Alt") --Bonk-Maestro's Handguards
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec2, "7724", LBIS.L["Hands"], "Alt Melee") --Gauntlets of Divinity
    LBIS:AddItem(spec2, "213325", LBIS.L["Waist"], "BIS") --Darkvision Girdle
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "BIS") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "Alt") --Skullduggery Waistband
    LBIS:AddItem(spec2, "13117", LBIS.L["Waist"], "Alt") --Ogron's Sash
    LBIS:AddItem(spec2, "213333", LBIS.L["Legs"], "BIS") --Electromantic Chausses
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec2, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec2, "10742", LBIS.L["Legs"], "Alt") --Dragonflight Leggings
    LBIS:AddItem(spec2, "213339", LBIS.L["Feet"], "BIS Melee") --Electromantic Grounding Sabatons
    LBIS:AddItem(spec2, "6423", LBIS.L["Feet"], "Alt Melee") --Blackforge Greaves
    LBIS:AddItem(spec2, "6431", LBIS.L["Feet"], "Alt") --Imperial Leather Boots
    LBIS:AddItem(spec2, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec2, "213340", LBIS.L["Feet"], "Alt") --Gnomebot Operators Boots
    LBIS:AddItem(spec2, "4109", LBIS.L["Feet"], "Alt") --Excelsior Boots
    LBIS:AddItem(spec2, "10748", LBIS.L["Feet"], "Alt") --Wanderlust Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "19536", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec2, "7686", LBIS.L["Ring"], "Alt Melee") --Ironspine's Eye
    LBIS:AddItem(spec2, "2951", LBIS.L["Ring"], "Alt") --Ring of the Underwood
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec2, "21568", LBIS.L["Trinket"], "Alt") --Rune of Duty
    LBIS:AddItem(spec2, "213409", LBIS.L["Main Hand"], "BIS Melee") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec2, "19552", LBIS.L["Main Hand"], "Alt") --Legionnaire's Sword
    LBIS:AddItem(spec2, "19556", LBIS.L["Main Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec2, "9684", LBIS.L["Main Hand"], "Alt") --Force of the Hippogryph
    LBIS:AddItem(spec2, "213442", LBIS.L["Off Hand"], "BIS Melee") --Cogmaster's Claw
    LBIS:AddItem(spec2, "10823", LBIS.L["Off Hand"], "Alt") --Vanquisher's Sword
    LBIS:AddItem(spec2, "9378", LBIS.L["Off Hand"], "Alt") --Shovelphlange's Mining Axe
    LBIS:AddItem(spec2, "213408", LBIS.L["Two Hand"], "BIS Ranged") --Gyromatic Macro-Adjustor
    LBIS:AddItem(spec2, "10570", LBIS.L["Two Hand"], "Alt") --Manslayer
    LBIS:AddItem(spec2, "209562", LBIS.L["Two Hand"], "Alt") --Deadly Strike of the Hydra
    LBIS:AddItem(spec2, "216516", LBIS.L["Ranged/Relic"], "BIS Melee") --Bloodlash Bow
    LBIS:AddItem(spec2, "213356", LBIS.L["Ranged/Relic"], "BIS Ranged") --Thermaplugg's Custom Blaster
    LBIS:AddItem(spec2, "209534", LBIS.L["Ranged/Relic"], "Alt") --Azshari Arbalest
    LBIS:AddItem(spec2, "3430", LBIS.L["Ranged/Relic"], "Alt") --Sniper Rifle
    LBIS:AddItem(spec2, "10510", LBIS.L["Ranged/Relic"], "Alt") --Mithril Heavy-bore Rifle

    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS Melee") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "220822", LBIS.L["Head"], "Alt") --Knight-Lieutenant's Chain Helmet
    LBIS:AddItem(spec3, "220821", LBIS.L["Head"], "Alt") --Blood Guard's Chain Helmet
    LBIS:AddItem(spec3, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec3, "220516", LBIS.L["Head"], "Alt") --Gasher's Forgotten Visor
    LBIS:AddItem(spec3, "9479", LBIS.L["Head"], "Alt Melee") --Embrace of the Lycan
    LBIS:AddItem(spec3, "220747", LBIS.L["Shoulder"], "BIS Melee") --Paranoia Mantle
    LBIS:AddItem(spec3, "220742", LBIS.L["Shoulder"], "BIS Ranged") --Shrieking Spaulders
    LBIS:AddItem(spec3, "220825", LBIS.L["Shoulder"], "Alt Ranged") --Knight-Lieutenant's Chain Epaulets
    LBIS:AddItem(spec3, "220824", LBIS.L["Shoulder"], "Alt Ranged") --Blood Guard's Chain Epaulets
    LBIS:AddItem(spec3, "213304", LBIS.L["Shoulder"], "Alt Melee") --Troggslayer Pauldrons
    LBIS:AddItem(spec3, "220528", LBIS.L["Shoulder"], "Alt") --Atal'ai Huntsman's Shoulders
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "BIS Melee") --Panther Fur Cloak
    LBIS:AddItem(spec3, "13122", LBIS.L["Back"], "Alt Ranged") --Dark Phantom Cape
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec3, "213308", LBIS.L["Back"], "Alt") --Prototype Parachute Cloak
    LBIS:AddItem(spec3, "220666", LBIS.L["Chest"], "BIS Melee") --Dread Hunter's Chainmail
    LBIS:AddItem(spec3, "220828", LBIS.L["Chest"], "Alt") --Knight's Chain Armor
    LBIS:AddItem(spec3, "17742", LBIS.L["Chest"], "Alt") --Fungus Shroud Armor
    LBIS:AddItem(spec3, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "BIS Melee") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "BIS Ranged") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec3, "21319", LBIS.L["Hands"], "BIS Melee") --Gloves of the Pathfinder
    LBIS:AddItem(spec3, "220545", LBIS.L["Hands"], "BIS Ranged") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec3, "211423", LBIS.L["Hands"], "BIS Ranged") --Void-Touched Leather Gloves
    LBIS:AddItem(spec3, "220829", LBIS.L["Hands"], "Alt") --Sergeant Major's Chain Gauntlets
    LBIS:AddItem(spec3, "221389", LBIS.L["Hands"], "Alt") --Emerald Scalemail Gauntlets
    LBIS:AddItem(spec3, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "BIS Melee") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "17778", LBIS.L["Waist"], "Alt Ranged") --Sagebrush Girdle
    LBIS:AddItem(spec3, "223192", LBIS.L["Waist"], "Alt Ranged") --Cord of the Untamed
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt Melee") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "20153", LBIS.L["Waist"], "Alt") --Defiler's Chain Girdle
    LBIS:AddItem(spec3, "20089", LBIS.L["Waist"], "Alt") --Highlander's Chain Girdle
    LBIS:AddItem(spec3, "213325", LBIS.L["Waist"], "Alt") --Darkvision Girdle
    LBIS:AddItem(spec3, "220667", LBIS.L["Legs"], "BIS Melee") --Dread Hunter's Chausses
    LBIS:AddItem(spec3, "220832", LBIS.L["Legs"], "Alt") --Knight's Chain Legplates
    LBIS:AddItem(spec3, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec3, "220558", LBIS.L["Legs"], "Alt") --Atal'ai Assassin's Leggings
    LBIS:AddItem(spec3, "220668", LBIS.L["Feet"], "BIS Melee") --Dread Hunter's Greaves
    LBIS:AddItem(spec3, "223962", LBIS.L["Feet"], "Alt Melee") --Sandstalker Ankleguards
    LBIS:AddItem(spec3, "17728", LBIS.L["Feet"], "Alt Ranged") --Albino Crocscale Boots
    LBIS:AddItem(spec3, "11627", LBIS.L["Feet"], "Alt") --Fleetfoot Greaves
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "BIS Melee") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "Alt Melee") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "13089", LBIS.L["Neck"], "Alt Melee") --Skibi's Pendant
    LBIS:AddItem(spec3, "19535", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec3, "19539", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "BIS Melee") --Blackstone Ring
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS Melee") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "9533", LBIS.L["Ring"], "BIS Ranged") --Masons Fraternity Ring
    LBIS:AddItem(spec3, "220627", LBIS.L["Ring"], "BIS Ranged") --Drakeclaw Band of the Stalker
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "Alt Melee") --Band of the Wilds
    LBIS:AddItem(spec3, "11945", LBIS.L["Ring"], "Alt Ranged") --Dark Iron Ring
    LBIS:AddItem(spec3, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "19991", LBIS.L["Trinket"], "BIS Melee") --Devilsaur Eye
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS Melee") --Breadth of the Beast
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS Melee") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "220588", LBIS.L["Main Hand"], "BIS Melee") --Cobra Fang Claw
    LBIS:AddItem(spec3, "223520", LBIS.L["Main Hand/Off Hand"], "BIS") --Inventor's Focal Sword
    LBIS:AddItem(spec3, "220576", LBIS.L["Main Hand"], "Alt Melee") --Axe of the Atal'ai Executioner
    LBIS:AddItem(spec3, "17705", LBIS.L["Main Hand"], "Alt Melee") --Thrash Blade
    LBIS:AddItem(spec3, "213409", LBIS.L["Main Hand"], "Alt Melee") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec3, "9684", LBIS.L["Main Hand"], "Alt") --Force of the Hippogryph
    LBIS:AddItem(spec3, "220582", LBIS.L["Off Hand"], "BIS Melee") --Dragon's Cry
    LBIS:AddItem(spec3, "224409", LBIS.L["Off Hand"], "BIS Melee") --Serpent's Striker
    LBIS:AddItem(spec3, "19543", LBIS.L["Off Hand"], "BIS Ranged") --Scout's Blade
    LBIS:AddItem(spec3, "19547", LBIS.L["Off Hand"], "BIS Ranged") --Sentinel's Blade
    LBIS:AddItem(spec3, "19551", LBIS.L["Off Hand"], "Alt Melee") --Legionnaire's Sword
    LBIS:AddItem(spec3, "19555", LBIS.L["Off Hand"], "Alt Melee") --Protector's Sword
    LBIS:AddItem(spec3, "213442", LBIS.L["Off Hand"], "Alt") --Cogmaster's Claw
    LBIS:AddItem(spec3, "10823", LBIS.L["Off Hand"], "Alt") --Vanquisher's Sword
    LBIS:AddItem(spec3, "9378", LBIS.L["Off Hand"], "Alt") --Shovelphlange's Mining Axe
    LBIS:AddItem(spec3, "9480", LBIS.L["Two Hand"], "BIS") --Eyegouger
    LBIS:AddItem(spec3, "220566", LBIS.L["Two Hand"], "Alt") --Smolder Claw
    LBIS:AddItem(spec3, "220567", LBIS.L["Two Hand"], "Alt") --Bloodied Headspike
    LBIS:AddItem(spec3, "221450", LBIS.L["Ranged/Relic"], "BIS Melee") --Gurubashi Pit Fighter's Bow
    LBIS:AddItem(spec3, "220573", LBIS.L["Ranged/Relic"], "BIS Ranged") --Dreadstalker's Hunting Bow
    LBIS:AddItem(spec3, "221451", LBIS.L["Ranged/Relic"], "Alt Ranged") --Bloodthirst Crossbow
    LBIS:AddItem(spec3, "213356", LBIS.L["Ranged/Relic"], "Alt Ranged") --Thermaplugg's Custom Blaster

    LBIS:AddItem(spec4, "226536", LBIS.L["Head"], "BIS") --Giantstalker's Guise
    LBIS:AddItem(spec4, "23306", LBIS.L["Head"], "BIS") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec4, "227067", LBIS.L["Head"], "BIS") --Champion's Chain Helm
    LBIS:AddItem(spec4, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec4, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec4, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec4, "9479", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec4, "226527", LBIS.L["Shoulder"], "BIS") --Giantstalker's Epaulets
    LBIS:AddItem(spec4, "23307", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec4, "23252", LBIS.L["Shoulder"], "BIS") --Champion's Chain Shoulders
    LBIS:AddItem(spec4, "226891", LBIS.L["Shoulder"], "Alt") --Beastmaster's Pauldrons
    LBIS:AddItem(spec4, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec4, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec4, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "228290", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec4, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec4, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec4, "226534", LBIS.L["Chest"], "BIS") --Giantstalker's Breastplate
    LBIS:AddItem(spec4, "226886", LBIS.L["Chest"], "Alt") --Beastmaster's Tunic
    LBIS:AddItem(spec4, "226896", LBIS.L["Chest"], "Alt") --Beastmaster's Chain
    LBIS:AddItem(spec4, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec4, "227089", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Armor
    LBIS:AddItem(spec4, "227083", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Armor
    LBIS:AddItem(spec4, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "226530", LBIS.L["Wrist"], "BIS") --Giantstalker's Bracers
    LBIS:AddItem(spec4, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec4, "221026", LBIS.L["Wrist"], "Alt") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec4, "226528", LBIS.L["Hands"], "BIS") --Giantstalker's Gloves
    LBIS:AddItem(spec4, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec4, "226883", LBIS.L["Hands"], "Alt") --Beastmaster's Gauntlets
    LBIS:AddItem(spec4, "226894", LBIS.L["Hands"], "Alt") --Beastmaster's Fists
    LBIS:AddItem(spec4, "220545", LBIS.L["Hands"], "Alt") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec4, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec4, "226529", LBIS.L["Waist"], "BIS") --Giantstalker's Belt
    LBIS:AddItem(spec4, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec4, "228595", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec4, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec4, "17778", LBIS.L["Waist"], "Alt") --Sagebrush Girdle
    LBIS:AddItem(spec4, "226532", LBIS.L["Legs"], "BIS") --Giantstalker's Leggings
    LBIS:AddItem(spec4, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec4, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec4, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec4, "220667", LBIS.L["Legs"], "Alt") --Dread Hunter's Chausses
    LBIS:AddItem(spec4, "226531", LBIS.L["Feet"], "BIS") --Giantstalker's Boots
    LBIS:AddItem(spec4, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec4, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec4, "220668", LBIS.L["Feet"], "Alt") --Dread Hunter's Greaves
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec4, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec4, "227455", LBIS.L["Ring"], "BIS") --Ocean's Breeze
    LBIS:AddItem(spec4, "227284", LBIS.L["Ring"], "BIS") --Band of the Beast
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "18473", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec4, "227990", LBIS.L["Trinket"], "BIS") --Hand of Injustice
    LBIS:AddItem(spec4, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec4, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec4, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec4, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec4, "213409", LBIS.L["Main Hand"], "Alt") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec4, "224409", LBIS.L["Off Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec4, "220582", LBIS.L["Off Hand"], "Alt") --Dragon's Cry
    LBIS:AddItem(spec4, "19550", LBIS.L["Off Hand"], "Alt") --Legionnaire's Sword
    LBIS:AddItem(spec4, "19554", LBIS.L["Off Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec4, "227833", LBIS.L["Two Hand"], "BIS") --Glaive of Obsidian Fury
    LBIS:AddItem(spec4, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec4, "22314", LBIS.L["Two Hand"], "Alt") --Huntsman's Harpoon
    LBIS:AddItem(spec4, "227845", LBIS.L["Two Hand"], "Alt") --Refined Arcanite Reaper
    LBIS:AddItem(spec4, "220567", LBIS.L["Two Hand"], "Alt") --Bloodied Headspike
    LBIS:AddItem(spec4, "9480", LBIS.L["Two Hand"], "Alt") --Eyegouger
    LBIS:AddItem(spec4, "220566", LBIS.L["Two Hand"], "Alt") --Smolder Claw
    LBIS:AddItem(spec4, "228334", LBIS.L["Ranged/Relic"], "BIS") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec4, "19107", LBIS.L["Ranged/Relic"], "BIS") --Bloodseeker
    LBIS:AddItem(spec4, "220573", LBIS.L["Ranged/Relic"], "Alt") --Dreadstalker's Hunting Bow
    LBIS:AddItem(spec4, "221450", LBIS.L["Ranged/Relic"], "Alt") --Gurubashi Pit Fighter's Bow

    LBIS:AddItem(spec5, "231059", LBIS.L["Head"], "BIS") --Dragonstalker's Helm
    LBIS:AddItem(spec5, "226533", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec5, "226536", LBIS.L["Head"], "Alt") --Giantstalker's Guise
    LBIS:AddItem(spec5, "230857", LBIS.L["Head"], "Alt") --Blooddrenched Mask
    LBIS:AddItem(spec5, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec5, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec5, "227067", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec5, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec5, "231057", LBIS.L["Shoulder"], "BIS") --Dragonstalker's Spaulders
    LBIS:AddItem(spec5, "226527", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec5, "230251", LBIS.L["Shoulder"], "Alt") --Black Brood Pauldrons
    LBIS:AddItem(spec5, "226884", LBIS.L["Shoulder"], "Alt") --Beastmaster's Mantle
    LBIS:AddItem(spec5, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec5, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec5, "19691", LBIS.L["Shoulder"], "Alt") --Bloodsoul Shoulders
    LBIS:AddItem(spec5, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec5, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec5, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec5, "228290", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "230842", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "232311", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec5, "231062", LBIS.L["Chest"], "BIS") --Dragonstalker's Breastplate
    LBIS:AddItem(spec5, "226534", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec5, "226886", LBIS.L["Chest"], "Alt") --Beastmaster's Tunic
    LBIS:AddItem(spec5, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec5, "227070", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Hauberk
    LBIS:AddItem(spec5, "227071", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec5, "228070", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec5, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec5, "231055", LBIS.L["Wrist"], "BIS") --Dragonstalker's Bracers
    LBIS:AddItem(spec5, "231063", LBIS.L["Wrist"], "BIS") --Dragonstalker's Vambraces
    LBIS:AddItem(spec5, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec5, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec5, "230859", LBIS.L["Hands"], "BIS Ranged") --Gloves of the Tormented
    LBIS:AddItem(spec5, "231060", LBIS.L["Hands"], "BIS Ranged") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec5, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec5, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec5, "226883", LBIS.L["Hands"], "Alt") --Beastmaster's Gauntlets
    LBIS:AddItem(spec5, "228552", LBIS.L["Hands"], "Alt") --Gauntlets of Deftness
    LBIS:AddItem(spec5, "231056", LBIS.L["Waist"], "BIS") --Dragonstalker's Belt
    LBIS:AddItem(spec5, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec5, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec5, "231322", LBIS.L["Waist"], "Alt") --Zandalar Predator's Belt
    LBIS:AddItem(spec5, "228595", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec5, "231058", LBIS.L["Legs"], "BIS") --Dragonstalker's Legguards
    LBIS:AddItem(spec5, "231067", LBIS.L["Legs"], "BIS") --Dragonstalker's Pants
    LBIS:AddItem(spec5, "226532", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec5, "231009", LBIS.L["Legs"], "Alt") --Blooddrenched Leggings
    LBIS:AddItem(spec5, "231008", LBIS.L["Legs"], "Alt") --Bloodstained Legplates
    LBIS:AddItem(spec5, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec5, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec5, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec5, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec5, "231061", LBIS.L["Feet"], "BIS") --Dragonstalker's Greaves
    LBIS:AddItem(spec5, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec5, "230866", LBIS.L["Feet"], "Alt") --Blooddrenched Footpads
    LBIS:AddItem(spec5, "230919", LBIS.L["Feet"], "Alt") --Bloodstained Greaves
    LBIS:AddItem(spec5, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec5, "228514", LBIS.L["Feet"], "Alt") --Timmy's Galoshes
    LBIS:AddItem(spec5, "231803", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "231320", LBIS.L["Neck"], "Alt") --Maelstrom's Wrath
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "231307", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec5, "228684", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec5, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec5, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec5, "230921", LBIS.L["Ring"], "BIS") --Band of Jin
    LBIS:AddItem(spec5, "230734", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "230929", LBIS.L["Ring"], "BIS") --Seal of Jin
    LBIS:AddItem(spec5, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec5, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec5, "227284", LBIS.L["Ring"], "Alt") --Band of the Beast
    LBIS:AddItem(spec5, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec5, "227990", LBIS.L["Trinket"], "BIS Ranged") --Hand of Injustice
    LBIS:AddItem(spec5, "230282", LBIS.L["Trinket"], "BIS Ranged") --Drake Fang Talisman
    LBIS:AddItem(spec5, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec5, "231754", LBIS.L["Main Hand"], "BIS") --Kestrel
    LBIS:AddItem(spec5, "228265", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "230247", LBIS.L["Main Hand/Off Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec5, "230845", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec5, "228146", LBIS.L["Off Hand"], "BIS") --Magmadar's Left Claw
    LBIS:AddItem(spec5, "231755", LBIS.L["Off Hand"], "Alt") --Peregrine
    LBIS:AddItem(spec5, "231823", LBIS.L["Two Hand"], "BIS Ranged") --Geddon's Glaive
    LBIS:AddItem(spec5, "227833", LBIS.L["Two Hand"], "BIS Ranged") --Glaive of Obsidian Fury
    LBIS:AddItem(spec5, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec5, "22314", LBIS.L["Two Hand"], "Alt") --Huntsman's Harpoon
    LBIS:AddItem(spec5, "19361", LBIS.L["Ranged/Relic"], "BIS") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec5, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec5, "230253", LBIS.L["Ranged/Relic"], "Alt") --Heartstriker
    LBIS:AddItem(spec5, "227849", LBIS.L["Ranged/Relic"], "Alt") --Fiery Core Sharpshooter Rifle
    LBIS:AddItem(spec5, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker

    LBIS:AddItem(spec6, "233410", LBIS.L["Head"], "BIS") --Striker's Diadem
    LBIS:AddItem(spec6, "231059", LBIS.L["Head"], "Alt") --Dragonstalker's Helm
    LBIS:AddItem(spec6, "226533", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec6, "226536", LBIS.L["Head"], "Alt") --Giantstalker's Guise
    LBIS:AddItem(spec6, "230857", LBIS.L["Head"], "Alt") --Blooddrenched Mask
    LBIS:AddItem(spec6, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec6, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec6, "227067", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec6, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec6, "233409", LBIS.L["Shoulder"], "BIS") --Striker's Pauldrons
    LBIS:AddItem(spec6, "233496", LBIS.L["Shoulder"], "BIS") --Barrage Shoulders
    LBIS:AddItem(spec6, "231057", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Spaulders
    LBIS:AddItem(spec6, "226527", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec6, "230251", LBIS.L["Shoulder"], "Alt") --Black Brood Pauldrons
    LBIS:AddItem(spec6, "226884", LBIS.L["Shoulder"], "Alt") --Beastmaster's Mantle
    LBIS:AddItem(spec6, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec6, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec6, "19691", LBIS.L["Shoulder"], "Alt") --Bloodsoul Shoulders
    LBIS:AddItem(spec6, "13358", LBIS.L["Shoulder"], "Alt") --Wyrmtongue Shoulders
    LBIS:AddItem(spec6, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec6, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec6, "234802", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "233420", LBIS.L["Back"], "BIS") --Cloak of the Unseen Path
    LBIS:AddItem(spec6, "228290", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec6, "233958", LBIS.L["Back"], "Alt") --Qiraji Silk Cape
    LBIS:AddItem(spec6, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec6, "230842", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec6, "232311", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec6, "233411", LBIS.L["Chest"], "BIS") --Striker's Hauberk
    LBIS:AddItem(spec6, "231062", LBIS.L["Chest"], "Alt") --Dragonstalker's Breastplate
    LBIS:AddItem(spec6, "226534", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec6, "226886", LBIS.L["Chest"], "Alt") --Beastmaster's Tunic
    LBIS:AddItem(spec6, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec6, "227070", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Hauberk
    LBIS:AddItem(spec6, "227071", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Hauberk
    LBIS:AddItem(spec6, "228070", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec6, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec6, "234065", LBIS.L["Wrist"], "BIS") --Sand Reaver Wristguards
    LBIS:AddItem(spec6, "233612", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "231055", LBIS.L["Wrist"], "Alt") --Dragonstalker's Bracers
    LBIS:AddItem(spec6, "231063", LBIS.L["Wrist"], "Alt") --Dragonstalker's Vambraces
    LBIS:AddItem(spec6, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec6, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec6, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec6, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec6, "233613", LBIS.L["Hands"], "BIS") --Vek'lor's Gloves of Devastation
    LBIS:AddItem(spec6, "230859", LBIS.L["Hands"], "Alt Ranged") --Gloves of the Tormented
    LBIS:AddItem(spec6, "231060", LBIS.L["Hands"], "Alt Ranged") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec6, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec6, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec6, "226883", LBIS.L["Hands"], "Alt") --Beastmaster's Gauntlets
    LBIS:AddItem(spec6, "228552", LBIS.L["Hands"], "Alt") --Gauntlets of Deftness
    LBIS:AddItem(spec6, "234110", LBIS.L["Waist"], "BIS") --Ossirian's Binding
    LBIS:AddItem(spec6, "231322", LBIS.L["Waist"], "BIS") --Zandalar Predator's Belt
    LBIS:AddItem(spec6, "231056", LBIS.L["Waist"], "Alt") --Dragonstalker's Belt
    LBIS:AddItem(spec6, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec6, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec6, "228595", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec6, "233408", LBIS.L["Legs"], "BIS") --Striker's Leggings
    LBIS:AddItem(spec6, "231058", LBIS.L["Legs"], "Alt") --Dragonstalker's Legguards
    LBIS:AddItem(spec6, "231067", LBIS.L["Legs"], "Alt") --Dragonstalker's Pants
    LBIS:AddItem(spec6, "226532", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec6, "231009", LBIS.L["Legs"], "Alt") --Blooddrenched Leggings
    LBIS:AddItem(spec6, "231008", LBIS.L["Legs"], "Alt") --Bloodstained Legplates
    LBIS:AddItem(spec6, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec6, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec6, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec6, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec6, "234069", LBIS.L["Feet"], "BIS") --Boots of the Qiraji General
    LBIS:AddItem(spec6, "233407", LBIS.L["Feet"], "BIS") --Striker's Footguards
    LBIS:AddItem(spec6, "231061", LBIS.L["Feet"], "Alt") --Dragonstalker's Greaves
    LBIS:AddItem(spec6, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec6, "230866", LBIS.L["Feet"], "Alt") --Blooddrenched Footpads
    LBIS:AddItem(spec6, "230919", LBIS.L["Feet"], "Alt") --Bloodstained Greaves
    LBIS:AddItem(spec6, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec6, "228514", LBIS.L["Feet"], "Alt") --Timmy's Galoshes
    LBIS:AddItem(spec6, "231803", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "231320", LBIS.L["Neck"], "BIS") --Maelstrom's Wrath
    LBIS:AddItem(spec6, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec6, "233587", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec6, "231307", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec6, "228684", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec6, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec6, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec6, "234202", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "233638", LBIS.L["Ring"], "BIS") --Ring of the Godslayer
    LBIS:AddItem(spec6, "233422", LBIS.L["Ring"], "BIS") --Signet of the Unseen Path
    LBIS:AddItem(spec6, "230921", LBIS.L["Ring"], "Alt") --Band of Jin
    LBIS:AddItem(spec6, "230734", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec6, "230929", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec6, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec6, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec6, "227284", LBIS.L["Ring"], "Alt") --Band of the Beast
    LBIS:AddItem(spec6, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec6, "233627", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec6, "231288", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Ravaging
    LBIS:AddItem(spec6, "233990", LBIS.L["Trinket"], "BIS") --Speedstone
    LBIS:AddItem(spec6, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec6, "227990", LBIS.L["Trinket"], "Alt Ranged") --Hand of Injustice
    LBIS:AddItem(spec6, "230282", LBIS.L["Trinket"], "Alt Ranged") --Drake Fang Talisman
    LBIS:AddItem(spec6, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec6, "231754", LBIS.L["Main Hand"], "BIS") --Kestrel
    LBIS:AddItem(spec6, "233576", LBIS.L["Main Hand"], "BIS") --Silithid Claw
    LBIS:AddItem(spec6, "228265", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec6, "230247", LBIS.L["Main Hand/Off Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec6, "230845", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec6, "233421", LBIS.L["Off Hand"], "BIS") --Scythe of the Unseen Path
    LBIS:AddItem(spec6, "228146", LBIS.L["Off Hand"], "Alt") --Magmadar's Left Claw
    LBIS:AddItem(spec6, "231755", LBIS.L["Off Hand"], "Alt") --Peregrine
    LBIS:AddItem(spec6, "233586", LBIS.L["Two Hand"], "BIS") --Jaw of the Sand Reaver
    LBIS:AddItem(spec6, "231823", LBIS.L["Two Hand"], "Alt Ranged") --Geddon's Glaive
    LBIS:AddItem(spec6, "227833", LBIS.L["Two Hand"], "Alt Ranged") --Glaive of Obsidian Fury
    LBIS:AddItem(spec6, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec6, "22314", LBIS.L["Two Hand"], "Alt") --Huntsman's Harpoon
    LBIS:AddItem(spec6, "233605", LBIS.L["Ranged/Relic"], "BIS") --Huhuran's Stinger
    LBIS:AddItem(spec6, "19361", LBIS.L["Ranged/Relic"], "Alt") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec6, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec6, "230253", LBIS.L["Ranged/Relic"], "Alt") --Heartstriker
    LBIS:AddItem(spec6, "227849", LBIS.L["Ranged/Relic"], "Alt") --Fiery Core Sharpshooter Rifle
    LBIS:AddItem(spec6, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker

    LBIS:AddItem(spec7, "236046", LBIS.L["Head"], "BIS") --Cryptstalker Headpiece
    LBIS:AddItem(spec7, "233410", LBIS.L["Head"], "Alt") --Striker's Diadem
    LBIS:AddItem(spec7, "231059", LBIS.L["Head"], "Alt") --Dragonstalker's Helm
    LBIS:AddItem(spec7, "226533", LBIS.L["Head"], "Alt") --Giantstalker's Helmet
    LBIS:AddItem(spec7, "226536", LBIS.L["Head"], "Alt") --Giantstalker's Guise
    LBIS:AddItem(spec7, "230857", LBIS.L["Head"], "Alt") --Blooddrenched Mask
    LBIS:AddItem(spec7, "233409", LBIS.L["Shoulder"], "BIS") --Striker's Pauldrons
    LBIS:AddItem(spec7, "236044", LBIS.L["Shoulder"], "BIS") --Cryptstalker Spaulders
    LBIS:AddItem(spec7, "231057", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Spaulders
    LBIS:AddItem(spec7, "233496", LBIS.L["Shoulder"], "Alt") --Barrage Shoulders
    LBIS:AddItem(spec7, "226527", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec7, "230251", LBIS.L["Shoulder"], "Alt") --Black Brood Pauldrons
    LBIS:AddItem(spec7, "234802", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec7, "233420", LBIS.L["Back"], "BIS") --Cloak of the Unseen Path
    LBIS:AddItem(spec7, "228290", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec7, "233958", LBIS.L["Back"], "Alt") --Qiraji Silk Cape
    LBIS:AddItem(spec7, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec7, "230842", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec7, "236272", LBIS.L["Back"], "Alt") --Cloak of the Scourge
    LBIS:AddItem(spec7, "232311", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec7, "236043", LBIS.L["Chest"], "BIS") --Cryptstalker Tunic
    LBIS:AddItem(spec7, "233411", LBIS.L["Chest"], "Alt") --Striker's Hauberk
    LBIS:AddItem(spec7, "231062", LBIS.L["Chest"], "Alt") --Dragonstalker's Breastplate
    LBIS:AddItem(spec7, "236709", LBIS.L["Chest"], "Alt") --Chestguard of Undead Slaying
    LBIS:AddItem(spec7, "226534", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec7, "236042", LBIS.L["Wrist"], "BIS") --Cryptstalker Wristguards
    LBIS:AddItem(spec7, "234065", LBIS.L["Wrist"], "Alt") --Sand Reaver Wristguards
    LBIS:AddItem(spec7, "233612", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec7, "231055", LBIS.L["Wrist"], "Alt") --Dragonstalker's Bracers
    LBIS:AddItem(spec7, "231063", LBIS.L["Wrist"], "Alt") --Dragonstalker's Vambraces
    LBIS:AddItem(spec7, "236710", LBIS.L["Wrist"], "Alt") --Wristguards of Undead Slaying
    LBIS:AddItem(spec7, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec7, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec7, "235876", LBIS.L["Hands"], "BIS") --Sinner's Handguards
    LBIS:AddItem(spec7, "236047", LBIS.L["Hands"], "BIS") --Cryptstalker Handguards
    LBIS:AddItem(spec7, "233613", LBIS.L["Hands"], "Alt") --Vek'lor's Gloves of Devastation
    LBIS:AddItem(spec7, "230859", LBIS.L["Hands"], "Alt Ranged") --Gloves of the Tormented
    LBIS:AddItem(spec7, "231060", LBIS.L["Hands"], "Alt Ranged") --Dragonstalker's Gauntlets
    LBIS:AddItem(spec7, "236715", LBIS.L["Hands"], "Alt") --Handguards of Undead Slaying
    LBIS:AddItem(spec7, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec7, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec7, "236048", LBIS.L["Waist"], "BIS") --Cryptstalker Girdle
    LBIS:AddItem(spec7, "234110", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec7, "231322", LBIS.L["Waist"], "Alt") --Zandalar Predator's Belt
    LBIS:AddItem(spec7, "231056", LBIS.L["Waist"], "Alt") --Dragonstalker's Belt
    LBIS:AddItem(spec7, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec7, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec7, "236045", LBIS.L["Legs"], "BIS") --Cryptstalker Legguards
    LBIS:AddItem(spec7, "233408", LBIS.L["Legs"], "Alt") --Striker's Leggings
    LBIS:AddItem(spec7, "231058", LBIS.L["Legs"], "Alt") --Dragonstalker's Legguards
    LBIS:AddItem(spec7, "231067", LBIS.L["Legs"], "Alt") --Dragonstalker's Pants
    LBIS:AddItem(spec7, "226532", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec7, "231009", LBIS.L["Legs"], "Alt") --Blooddrenched Leggings
    LBIS:AddItem(spec7, "231008", LBIS.L["Legs"], "Alt") --Bloodstained Legplates
    LBIS:AddItem(spec7, "233407", LBIS.L["Feet"], "BIS") --Striker's Footguards
    LBIS:AddItem(spec7, "236049", LBIS.L["Feet"], "BIS") --Cryptstalker Boots
    LBIS:AddItem(spec7, "235882", LBIS.L["Feet"], "Alt") --Clattering Steps
    LBIS:AddItem(spec7, "231061", LBIS.L["Feet"], "Alt") --Dragonstalker's Greaves
    LBIS:AddItem(spec7, "234069", LBIS.L["Feet"], "Alt") --Boots of the Qiraji General
    LBIS:AddItem(spec7, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec7, "230866", LBIS.L["Feet"], "Alt") --Blooddrenched Footpads
    LBIS:AddItem(spec7, "230919", LBIS.L["Feet"], "Alt") --Bloodstained Greaves
    LBIS:AddItem(spec7, "236316", LBIS.L["Neck"], "BIS") --Sadist's Collar
    LBIS:AddItem(spec7, "235886", LBIS.L["Neck"], "Alt") --Kaigy's Clasp
    LBIS:AddItem(spec7, "231803", LBIS.L["Neck"], "Alt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec7, "231320", LBIS.L["Neck"], "Alt") --Maelstrom's Wrath
    LBIS:AddItem(spec7, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec7, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec7, "233587", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec7, "231307", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec7, "236041", LBIS.L["Ring"], "BIS") --Ring of the Cryptstalker
    LBIS:AddItem(spec7, "236291", LBIS.L["Ring"], "BIS") --Band of Reanimation
    LBIS:AddItem(spec7, "233422", LBIS.L["Ring"], "BIS") --Signet of the Unseen Path
    LBIS:AddItem(spec7, "234202", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec7, "233638", LBIS.L["Ring"], "Alt") --Ring of the Godslayer
    LBIS:AddItem(spec7, "230921", LBIS.L["Ring"], "Alt") --Band of Jin
    LBIS:AddItem(spec7, "230734", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec7, "230929", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec7, "235885", LBIS.L["Ring"], "Alt") --Ghastly Ring
    LBIS:AddItem(spec7, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec7, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec7, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec7, "236334", LBIS.L["Trinket"], "BIS") --Slayer's Crest
    LBIS:AddItem(spec7, "236302", LBIS.L["Trinket"], "BIS") --Eye of Diminution
    LBIS:AddItem(spec7, "233990", LBIS.L["Trinket"], "BIS") --Speedstone
    LBIS:AddItem(spec7, "233627", LBIS.L["Trinket"], "Alt") --Jom Gabbar
    LBIS:AddItem(spec7, "236352", LBIS.L["Trinket"], "Alt") --Mark of the Champion
    LBIS:AddItem(spec7, "231288", LBIS.L["Trinket"], "Alt") --Renataki's Charm of Ravaging
    LBIS:AddItem(spec7, "227990", LBIS.L["Trinket"], "Alt Ranged") --Hand of Injustice
    LBIS:AddItem(spec7, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec7, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec7, "230282", LBIS.L["Trinket"], "Alt Ranged") --Drake Fang Talisman
    LBIS:AddItem(spec7, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec7, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec7, "233421", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Scythe of the Unseen Path
    LBIS:AddItem(spec7, "236265", LBIS.L["Main Hand"], "Alt") --Wraith Blade
    LBIS:AddItem(spec7, "236292", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec7, "231754", LBIS.L["Main Hand"], "Alt") --Kestrel
    LBIS:AddItem(spec7, "233576", LBIS.L["Main Hand"], "Alt") --Silithid Claw
    LBIS:AddItem(spec7, "228265", LBIS.L["Main Hand/Off Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec7, "230247", LBIS.L["Main Hand/Off Hand"], "Alt") --Dragonfang Blade
    LBIS:AddItem(spec7, "230845", LBIS.L["Main Hand/Off Hand"], "Alt") --Doom's Edge
    LBIS:AddItem(spec7, "236343", LBIS.L["Off Hand"], "BIS") --Kingsfall
    LBIS:AddItem(spec7, "236219", LBIS.L["Off Hand"], "Alt") --Harbinger of Doom
    LBIS:AddItem(spec7, "228146", LBIS.L["Off Hand"], "Alt") --Magmadar's Left Claw
    LBIS:AddItem(spec7, "231755", LBIS.L["Off Hand"], "Alt") --Peregrine
    LBIS:AddItem(spec7, "236285", LBIS.L["Two Hand"], "BIS") --The Eye of Nerub
    LBIS:AddItem(spec7, "233586", LBIS.L["Two Hand"], "Alt") --Jaw of the Sand Reaver
    LBIS:AddItem(spec7, "231823", LBIS.L["Two Hand"], "Alt Ranged") --Geddon's Glaive
    LBIS:AddItem(spec7, "227833", LBIS.L["Two Hand"], "Alt Ranged") --Glaive of Obsidian Fury
    LBIS:AddItem(spec7, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec7, "22314", LBIS.L["Two Hand"], "Alt") --Huntsman's Harpoon
    LBIS:AddItem(spec7, "236344", LBIS.L["Ranged/Relic"], "BIS") --Nerubian Slavemaker
    LBIS:AddItem(spec7, "236322", LBIS.L["Ranged/Relic"], "Alt") --Soulstring
    LBIS:AddItem(spec7, "233605", LBIS.L["Ranged/Relic"], "Alt") --Huhuran's Stinger
    LBIS:AddItem(spec7, "19361", LBIS.L["Ranged/Relic"], "Alt") --Ashjre'thul, Crossbow of Smiting
    LBIS:AddItem(spec7, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec7, "230253", LBIS.L["Ranged/Relic"], "Alt") --Heartstriker
    LBIS:AddItem(spec7, "227849", LBIS.L["Ranged/Relic"], "Alt") --Fiery Core Sharpshooter Rifle
end
if LBIS.IsSOD then
    LoadData();
end
