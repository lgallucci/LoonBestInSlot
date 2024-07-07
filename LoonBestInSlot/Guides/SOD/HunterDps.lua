local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["Dps"], "4")

    LBIS:AddEnchant(spec3, "15402", LBIS.L["Head"]) --Lesser Arcanum of Voracity
    LBIS:AddEnchant(spec3, "446451", LBIS.L["Shoulder"]) --Atal'ai Signet of Might
    LBIS:AddEnchant(spec3, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec3, "13941", LBIS.L["Chest"]) --Enchant Chest - Stats
    LBIS:AddEnchant(spec3, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec3, "20012", LBIS.L["Hands"]) --Enchant Gloves - Greater Agility
    LBIS:AddEnchant(spec3, "15402", LBIS.L["Legs"]) --Lesser Arcanum of Voracity
    LBIS:AddEnchant(spec3, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec3, "23800", LBIS.L["Main Hand"]) --Enchant Weapon - Agility
    LBIS:AddEnchant(spec3, "23800", LBIS.L["Off Hand"]) --Enchant Weapon - Agility
    LBIS:AddEnchant(spec3, "23800", LBIS.L["Two Hand"]) --Enchant Weapon - Agility

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
end
if C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
