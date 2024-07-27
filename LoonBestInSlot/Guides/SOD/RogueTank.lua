local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Tank"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Tank"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Tank"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Rogue"], LBIS.L["Tank"], "4")

    LBIS:AddEnchant(spec4, "15402", LBIS.L["Head"]) --Lesser Arcanum of Voracity
    LBIS:AddEnchant(spec4, "446451", LBIS.L["Shoulder"]) --Atal'ai Signet of Might
    LBIS:AddEnchant(spec4, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec4, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec4, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec4, "20012", LBIS.L["Hands"]) --Enchant Gloves - Greater Agility
    LBIS:AddEnchant(spec4, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec4, "20034", LBIS.L["Main Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec4, "23800", LBIS.L["Off Hand"]) --Enchant Weapon - Agility

    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "BIS") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec1, "209682", LBIS.L["Head"], "Alt") --Sturdy Hood
    LBIS:AddItem(spec1, "4724", LBIS.L["Head"], "Alt") --Humbert's Helm
    LBIS:AddItem(spec1, "209692", LBIS.L["Shoulder"], "BIS") --Sentinel Pauldrons
    LBIS:AddItem(spec1, "2264", LBIS.L["Shoulder"], "Alt") --Mantle of Thieves
    LBIS:AddItem(spec1, "15127", LBIS.L["Shoulder"], "Alt") --Robust Shoulders
    LBIS:AddItem(spec1, "4252", LBIS.L["Shoulder"], "Alt") --Dark Leather Shoulders
    LBIS:AddItem(spec1, "7352", LBIS.L["Shoulder"], "Alt") --Earthen Leather Shoulders
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "16315", LBIS.L["Back"], "BIS") --Sergeant Major's Cape
    LBIS:AddItem(spec1, "15135", LBIS.L["Back"], "Alt") --Cutthroat's Cape
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "209680", LBIS.L["Back"], "Alt") --Waterproof Scarf
    LBIS:AddItem(spec1, "6449", LBIS.L["Back"], "Alt") --Glowing Lizardscale Cloak
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "BIS") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "209572", LBIS.L["Chest"], "Alt") --Black Boiled Leathers
    LBIS:AddItem(spec1, "2041", LBIS.L["Chest"], "Alt") --Tunic of Westfall
    LBIS:AddItem(spec1, "6603", LBIS.L["Chest"], "Alt") --Dervish Tunic
    LBIS:AddItem(spec1, "10399", LBIS.L["Chest"], "Alt") --Blackened Defias Armor
    LBIS:AddItem(spec1, "15132", LBIS.L["Wrist"], "BIS") --Cutthroat's Armguards
    LBIS:AddItem(spec1, "897", LBIS.L["Wrist"], "Alt") --Madwolf Bracers
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "Alt") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "2017", LBIS.L["Wrist"], "Alt") --Glowing Leather Bracers
    LBIS:AddItem(spec1, "6198", LBIS.L["Wrist"], "Alt") --Jurassic Wristguards
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "1978", LBIS.L["Hands"], "Alt") --Wolfclaw Gloves
    LBIS:AddItem(spec1, "15343", LBIS.L["Hands"], "Alt") --Pathfinder Gloves
    LBIS:AddItem(spec1, "720", LBIS.L["Hands"], "Alt") --Brawler Gloves
    LBIS:AddItem(spec1, "6468", LBIS.L["Waist"], "BIS") --Deviate Scale Belt
    LBIS:AddItem(spec1, "9827", LBIS.L["Waist"], "BIS") --Scaled Leather Belt
    LBIS:AddItem(spec1, "209421", LBIS.L["Waist"], "Alt") --Cord of Aquanis
    LBIS:AddItem(spec1, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec1, "6719", LBIS.L["Waist"], "Alt") --Windborne Belt
    LBIS:AddItem(spec1, "13114", LBIS.L["Legs"], "BIS") --Troll's Bane Leggings
    LBIS:AddItem(spec1, "6607", LBIS.L["Legs"], "Alt") --Dervish Leggings
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "Alt") --Leggings of the Fang
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "16977", LBIS.L["Feet"], "Alt") --Warsong Boots
    LBIS:AddItem(spec1, "15341", LBIS.L["Feet"], "Alt") --Pathfinder Footpads
    LBIS:AddItem(spec1, "6752", LBIS.L["Feet"], "Alt") --Lancer Boots
    LBIS:AddItem(spec1, "10653", LBIS.L["Feet"], "Alt") --Trailblazer Boots
    LBIS:AddItem(spec1, "7754", LBIS.L["Feet"], "Alt") --Harbinger Boots
    LBIS:AddItem(spec1, "20442", LBIS.L["Neck"], "BIS") --Scout's Medallion
    LBIS:AddItem(spec1, "20444", LBIS.L["Neck"], "BIS") --Sentinel's Medallion
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec1, "209817", LBIS.L["Neck"], "Alt") --Voidwalker Brooch
    LBIS:AddItem(spec1, "12008", LBIS.L["Ring"], "BIS") --Savannah Ring
    LBIS:AddItem(spec1, "6414", LBIS.L["Ring"], "BIS") --Seal of Sylvanas
    LBIS:AddItem(spec1, "2933", LBIS.L["Ring"], "BIS") --Seal of Wrynn
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "Alt") --Band of the Iron Fist
    LBIS:AddItem(spec1, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec1, "20439", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec1, "2039", LBIS.L["Ring"], "Alt") --Plains Ring
    LBIS:AddItem(spec1, "4998", LBIS.L["Ring"], "Alt") --Blood Ring
    LBIS:AddItem(spec1, "21568", LBIS.L["Trinket"], "BIS") --Rune of Duty
    LBIS:AddItem(spec1, "18857", LBIS.L["Trinket"], "Alt") --Insignia of the Alliance
    LBIS:AddItem(spec1, "18849", LBIS.L["Trinket"], "Alt") --Insignia of the Horde
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "209525", LBIS.L["Main Hand"], "BIS") --Honed Darkwater Talwar
    LBIS:AddItem(spec1, "212586", LBIS.L["Main Hand"], "Alt") --Legionnaire's Sword
    LBIS:AddItem(spec1, "212582", LBIS.L["Main Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec1, "16886", LBIS.L["Main Hand"], "Alt") --Outlaw Sabre
    LBIS:AddItem(spec1, "3186", LBIS.L["Main Hand"], "Alt") --Viking Sword
    LBIS:AddItem(spec1, "5191", LBIS.L["Main Hand"], "Alt") --Cruel Barb
    LBIS:AddItem(spec1, "6472", LBIS.L["Main Hand"], "Alt") --Stinging Viper
    LBIS:AddItem(spec1, "209560", LBIS.L["Main Hand"], "Alt") --Hammer of Righteous Judgement
    LBIS:AddItem(spec1, "212587", LBIS.L["Off Hand"], "BIS") --Scout's Blade
    LBIS:AddItem(spec1, "212583", LBIS.L["Off Hand"], "BIS") --Sentinel's Blade
    LBIS:AddItem(spec1, "2941", LBIS.L["Off Hand"], "Alt") --Prison Shank
    LBIS:AddItem(spec1, "2819", LBIS.L["Off Hand"], "Alt") --Cross Dagger
    LBIS:AddItem(spec1, "15242", LBIS.L["Off Hand"], "Alt") --Honed Stiletto
    LBIS:AddItem(spec1, "209688", LBIS.L["Ranged/Relic"], "BIS") --Bael Modan Blunderbuss
    LBIS:AddItem(spec1, "3021", LBIS.L["Ranged/Relic"], "Alt") --Ranger Bow
    LBIS:AddItem(spec1, "209830", LBIS.L["Ranged/Relic"], "Alt") --Ironhide Arbalest
    LBIS:AddItem(spec1, "209563", LBIS.L["Ranged/Relic"], "Alt") --Naga Heartrender

    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec2, "8176", LBIS.L["Head"], "Alt") --Nightscape Headband
    LBIS:AddItem(spec2, "10008", LBIS.L["Head"], "Alt") --White Bandit Mask
    LBIS:AddItem(spec2, "213302", LBIS.L["Shoulder"], "BIS") --Mantle of the Cunning Negotiator
    LBIS:AddItem(spec2, "7755", LBIS.L["Shoulder"], "Alt") --Flintrock Shoulders
    LBIS:AddItem(spec2, "10774", LBIS.L["Shoulder"], "Alt") --Fleshhide Shoulders
    LBIS:AddItem(spec2, "209692", LBIS.L["Shoulder"], "Alt") --Sentinel Pauldrons
    LBIS:AddItem(spec2, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec2, "2278", LBIS.L["Shoulder"], "Alt") --Forest Tracker Epaulets
    LBIS:AddItem(spec2, "213308", LBIS.L["Back"], "BIS") --Prototype Parachute Cloak
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec2, "14593", LBIS.L["Back"], "Alt") --Hawkeye's Cloak
    LBIS:AddItem(spec2, "5257", LBIS.L["Back"], "Alt") --Dark Hooded Cape
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "BIS") --Insulated Chestguard
    LBIS:AddItem(spec2, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec2, "10583", LBIS.L["Chest"], "Alt") --Quillward Harness
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "9428", LBIS.L["Wrist"], "Alt") --Unearthed Bands
    LBIS:AddItem(spec2, "7534", LBIS.L["Wrist"], "Alt") --Cabalist Bracers
    LBIS:AddItem(spec2, "19508", LBIS.L["Wrist"], "Alt") --Branded Leather Bracers
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "10777", LBIS.L["Hands"], "Alt") --Arachnid Gloves
    LBIS:AddItem(spec2, "867", LBIS.L["Hands"], "Alt") --Gloves of Holy Might
    LBIS:AddItem(spec2, "9632", LBIS.L["Hands"], "Alt") --Jangdor's Handcrafted Gloves
    LBIS:AddItem(spec2, "9631", LBIS.L["Hands"], "Alt") --Pratt's Handcrafted Gloves
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "BIS") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "BIS") --Skullduggery Waistband
    LBIS:AddItem(spec2, "20192", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec2, "20116", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec2, "13117", LBIS.L["Waist"], "Alt") --Ogron's Sash
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "BIS") --Insulated Legguards
    LBIS:AddItem(spec2, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec2, "213299", LBIS.L["Legs"], "Alt") --Petrolspill Pants
    LBIS:AddItem(spec2, "1718", LBIS.L["Legs"], "Alt") --Basilisk Hide Pants
    LBIS:AddItem(spec2, "15168", LBIS.L["Legs"], "Alt") --Imposing Pants
    LBIS:AddItem(spec2, "213341", LBIS.L["Feet"], "BIS") --Insulated Workboots
    LBIS:AddItem(spec2, "20187", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec2, "20113", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec2, "15162", LBIS.L["Feet"], "Alt") --Imposing Boots
    LBIS:AddItem(spec2, "6431", LBIS.L["Feet"], "Alt") --Imperial Leather Boots
    LBIS:AddItem(spec2, "4109", LBIS.L["Feet"], "Alt") --Excelsior Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "19536", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec2, "2951", LBIS.L["Ring"], "Alt") --Ring of the Underwood
    LBIS:AddItem(spec2, "13095", LBIS.L["Ring"], "Alt") --Assault Band
    LBIS:AddItem(spec2, "2262", LBIS.L["Ring"], "Alt") --Mark of Kern
    LBIS:AddItem(spec2, "12012", LBIS.L["Ring"], "Alt") --Marsh Ring
    LBIS:AddItem(spec2, "7686", LBIS.L["Ring"], "Alt") --Ironspine's Eye
    LBIS:AddItem(spec2, "7552", LBIS.L["Ring"], "Alt") --Falcon's Hook
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "213350", LBIS.L["Trinket"], "Alt") --Wirdal's Hardened Core
    LBIS:AddItem(spec2, "19024", LBIS.L["Trinket"], "Alt") --Arena Grand Master
    LBIS:AddItem(spec2, "2164", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Gut Ripper
    LBIS:AddItem(spec2, "213291", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Toxic Revenger II
    LBIS:AddItem(spec2, "216520", LBIS.L["Main Hand/Off Hand"], "BIS") --Bloodharvest Blade
    LBIS:AddItem(spec2, "19544", LBIS.L["Main Hand/Off Hand"], "Alt") --Scout's Blade
    LBIS:AddItem(spec2, "19548", LBIS.L["Main Hand/Off Hand"], "Alt") --Sentinel's Blade
    LBIS:AddItem(spec2, "216522", LBIS.L["Off Hand"], "BIS") --Blood Spattered Stiletto
    LBIS:AddItem(spec2, "213355", LBIS.L["Ranged/Relic"], "BIS") --Falco's Sting
    LBIS:AddItem(spec2, "13038", LBIS.L["Ranged/Relic"], "Alt") --Swiftwind
    LBIS:AddItem(spec2, "209688", LBIS.L["Ranged/Relic"], "Alt") --Bael Modan Blunderbuss
    LBIS:AddItem(spec2, "213293", LBIS.L["Ranged/Relic"], "Alt") --Hi-tech Supergun Mk.VII
    LBIS:AddItem(spec2, "13138", LBIS.L["Ranged/Relic"], "Alt") --The Silencer
    LBIS:AddItem(spec2, "9426", LBIS.L["Ranged/Relic"], "Alt") --Monolithic Bow

    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "223963", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec3, "220518", LBIS.L["Head"], "Alt") --Ba'ham's Dusty Hat
    LBIS:AddItem(spec3, "19984", LBIS.L["Head"], "Alt") --Ebon Mask
    LBIS:AddItem(spec3, "220747", LBIS.L["Shoulder"], "BIS") --Paranoia Mantle
    LBIS:AddItem(spec3, "223987", LBIS.L["Shoulder"], "Alt") --Splinthide Shoulders
    LBIS:AddItem(spec3, "220852", LBIS.L["Shoulder"], "Alt") --Knight-Lieutenant's Leather Shoulders
    LBIS:AddItem(spec3, "220853", LBIS.L["Shoulder"], "Alt") --Blood Guard's Leather Shoulders
    LBIS:AddItem(spec3, "221411", LBIS.L["Shoulder"], "Alt") --Emerald Leather Shoulders
    LBIS:AddItem(spec3, "11874", LBIS.L["Shoulder"], "Alt") --Clouddrift Mantle
    LBIS:AddItem(spec3, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "BIS") --Panther Fur Cloak
    LBIS:AddItem(spec3, "220609", LBIS.L["Back"], "Alt") --Drape of Nightfall
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec3, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec3, "213308", LBIS.L["Back"], "Alt") --Prototype Parachute Cloak
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "220676", LBIS.L["Chest"], "BIS") --Blood Corrupted Tunic
    LBIS:AddItem(spec3, "17742", LBIS.L["Chest"], "Alt") --Fungus Shroud Armor
    LBIS:AddItem(spec3, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec3, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec3, "220854", LBIS.L["Chest"], "Alt") --Knight's Leather Armor
    LBIS:AddItem(spec3, "220855", LBIS.L["Chest"], "Alt") --Stone Guard's Leather Armor
    LBIS:AddItem(spec3, "221406", LBIS.L["Chest"], "Alt") --Emerald Leather Vest
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "BIS") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec3, "15425", LBIS.L["Wrist"], "Alt") --Peerless Bracers
    LBIS:AddItem(spec3, "220545", LBIS.L["Hands"], "BIS") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec3, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec3, "220856", LBIS.L["Hands"], "Alt") --Sergeant Major's Leather Gauntlets
    LBIS:AddItem(spec3, "220857", LBIS.L["Hands"], "Alt") --First Sergeant's Leather Gauntlets
    LBIS:AddItem(spec3, "221407", LBIS.L["Hands"], "Alt") --Emerald Leather Gloves
    LBIS:AddItem(spec3, "21319", LBIS.L["Hands"], "Alt") --Gloves of the Pathfinder
    LBIS:AddItem(spec3, "12114", LBIS.L["Hands"], "Alt") --Nightfall Gloves
    LBIS:AddItem(spec3, "867", LBIS.L["Hands"], "Alt") --Gloves of Holy Might
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "BIS") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "220550", LBIS.L["Waist"], "Alt") --Temple Looter's Waistband
    LBIS:AddItem(spec3, "20193", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec3, "20115", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "220678", LBIS.L["Legs"], "BIS") --Blood Corrupted Pants
    LBIS:AddItem(spec3, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec3, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec3, "220858", LBIS.L["Legs"], "Alt") --Knight's Leather Pants
    LBIS:AddItem(spec3, "220859", LBIS.L["Legs"], "Alt") --Stone Guard's Leather Pants
    LBIS:AddItem(spec3, "221410", LBIS.L["Legs"], "Alt") --Emerald Leather Pants
    LBIS:AddItem(spec3, "220677", LBIS.L["Feet"], "BIS") --Blood Corrupted Boots
    LBIS:AddItem(spec3, "20189", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec3, "20112", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec3, "17728", LBIS.L["Feet"], "Alt") --Albino Crocscale Boots
    LBIS:AddItem(spec3, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec3, "223962", LBIS.L["Feet"], "Alt") --Sandstalker Ankleguards
    LBIS:AddItem(spec3, "220860", LBIS.L["Feet"], "Alt") --Sergeant Major's Leather Boots
    LBIS:AddItem(spec3, "220861", LBIS.L["Feet"], "Alt") --First Sergeant's Leather Boots
    LBIS:AddItem(spec3, "221409", LBIS.L["Feet"], "Alt") --Emerald Leather Sabatons
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "19159", LBIS.L["Neck"], "Alt") --Woven Ivy Necklace
    LBIS:AddItem(spec3, "19539", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec3, "19535", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "Alt") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "13089", LBIS.L["Neck"], "Alt") --Skibi's Pendant
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "BIS") --Band of the Wilds
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "9533", LBIS.L["Ring"], "Alt") --Masons Fraternity Ring
    LBIS:AddItem(spec3, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "221442", LBIS.L["Trinket"], "Alt") --Roar of the Guardian
    LBIS:AddItem(spec3, "220632", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Medallion
    LBIS:AddItem(spec3, "220585", LBIS.L["Main Hand/Off Hand"], "BIS") --Degraded Dire Nail
    LBIS:AddItem(spec3, "213291", LBIS.L["Main Hand"], "BIS") --Toxic Revenger II
    LBIS:AddItem(spec3, "221460", LBIS.L["Main Hand/Off Hand"], "Alt") --Gurubashi Backstabber
    LBIS:AddItem(spec3, "2163", LBIS.L["Main Hand/Off Hand"], "Alt") --Shadowblade
    LBIS:AddItem(spec3, "19543", LBIS.L["Main Hand/Off Hand"], "Alt") --Scout's Blade
    LBIS:AddItem(spec3, "19547", LBIS.L["Main Hand/Off Hand"], "Alt") --Sentinel's Blade
    LBIS:AddItem(spec3, "6660", LBIS.L["Off Hand"], "Alt") --Julie's Dagger
    LBIS:AddItem(spec3, "11635", LBIS.L["Off Hand"], "Alt") --Hookfang Shanker
    LBIS:AddItem(spec3, "220674", LBIS.L["Off Hand"], "Alt") --Debased Stealthblade
    LBIS:AddItem(spec3, "223329", LBIS.L["Off Hand"], "Alt") --Lifeforce Dirk
    LBIS:AddItem(spec3, "3187", LBIS.L["Off Hand"], "Alt") --Sacrificial Kris
    LBIS:AddItem(spec3, "2100", LBIS.L["Ranged/Relic"], "BIS") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec3, "220571", LBIS.L["Ranged/Relic"], "Alt") --Stinging Longbow
    LBIS:AddItem(spec3, "13139", LBIS.L["Ranged/Relic"], "Alt") --Guttbuster
    LBIS:AddItem(spec3, "13039", LBIS.L["Ranged/Relic"], "Alt") --Skull Splitting Crossbow
    LBIS:AddItem(spec3, "213355", LBIS.L["Ranged/Relic"], "Alt") --Falco's Sting
    LBIS:AddItem(spec3, "13138", LBIS.L["Ranged/Relic"], "Alt") --The Silencer

    LBIS:AddItem(spec4, "226480", LBIS.L["Head"], "BIS") --Nightslayer Hood
    LBIS:AddItem(spec4, "226841", LBIS.L["Head"], "Alt") --Darkmantle Faceguard
    LBIS:AddItem(spec4, "226446", LBIS.L["Head"], "Alt") --Nightslayer Cover
    LBIS:AddItem(spec4, "226829", LBIS.L["Head"], "Alt") --Darkmantle Cap
    LBIS:AddItem(spec4, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec4, "226707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec4, "215166", LBIS.L["Head"], "Alt") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec4, "228500", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec4, "226444", LBIS.L["Shoulder"], "BIS") --Nightslayer Shoulder Pads
    LBIS:AddItem(spec4, "226478", LBIS.L["Shoulder"], "Alt") --Nightslayer Pauldrons
    LBIS:AddItem(spec4, "227818", LBIS.L["Shoulder"], "Alt") --Glowing Mantle of the Dawn
    LBIS:AddItem(spec4, "227054", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Leather Shoulders
    LBIS:AddItem(spec4, "227056", LBIS.L["Shoulder"], "Alt") --Champion's Leather Shoulders
    LBIS:AddItem(spec4, "226826", LBIS.L["Shoulder"], "Alt") --Darkmantle Spaulders
    LBIS:AddItem(spec4, "226837", LBIS.L["Shoulder"], "Alt") --Darkmantle Pauldrons
    LBIS:AddItem(spec4, "226706", LBIS.L["Shoulder"], "Alt") --Shadowcraft Spaulders
    LBIS:AddItem(spec4, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "228290", LBIS.L["Back"], "BIS") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec4, "227854", LBIS.L["Back"], "Alt") --Mastercrafted Shifting Cloak
    LBIS:AddItem(spec4, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec4, "228360", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec4, "226473", LBIS.L["Chest"], "BIS") --Nightslayer Cuirass
    LBIS:AddItem(spec4, "226843", LBIS.L["Chest"], "Alt") --Darkmantle Armor
    LBIS:AddItem(spec4, "226447", LBIS.L["Chest"], "Alt") --Nightslayer Chestpiece
    LBIS:AddItem(spec4, "226825", LBIS.L["Chest"], "Alt") --Darkmantle Tunic
    LBIS:AddItem(spec4, "227803", LBIS.L["Chest"], "Alt") --Dire Warbear Harness
    LBIS:AddItem(spec4, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec4, "226700", LBIS.L["Chest"], "Alt") --Shadowcraft Tunic
    LBIS:AddItem(spec4, "15056", LBIS.L["Chest"], "Alt") --Stormshroud Armor
    LBIS:AddItem(spec4, "14637", LBIS.L["Chest"], "Alt") --Cadaverous Armor
    LBIS:AddItem(spec4, "226442", LBIS.L["Wrist"], "BIS") --Nightslayer Bracelets
    LBIS:AddItem(spec4, "226830", LBIS.L["Wrist"], "BIS") --Darkmantle Bracers
    LBIS:AddItem(spec4, "226476", LBIS.L["Wrist"], "Alt") --Nightslayer Bracers
    LBIS:AddItem(spec4, "226835", LBIS.L["Wrist"], "Alt") --Darkmantle Wristguards
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec4, "226704", LBIS.L["Wrist"], "Alt") --Shadowcraft Bracers
    LBIS:AddItem(spec4, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec4, "226441", LBIS.L["Hands"], "BIS") --Nightslayer Gloves
    LBIS:AddItem(spec4, "226475", LBIS.L["Hands"], "Alt") --Nightslayer Handguards
    LBIS:AddItem(spec4, "226840", LBIS.L["Hands"], "Alt") --Darkmantle Handguards
    LBIS:AddItem(spec4, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec4, "228257", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "226828", LBIS.L["Hands"], "Alt") --Darkmantle Grips
    LBIS:AddItem(spec4, "228007", LBIS.L["Hands"], "Alt") --Gargoyle Slashers
    LBIS:AddItem(spec4, "220545", LBIS.L["Hands"], "Alt") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec4, "226702", LBIS.L["Hands"], "Alt") --Shadowcraft Gloves
    LBIS:AddItem(spec4, "226440", LBIS.L["Waist"], "BIS") --Nightslayer Belt
    LBIS:AddItem(spec4, "226474", LBIS.L["Waist"], "Alt") --Nightslayer Waistguard
    LBIS:AddItem(spec4, "226836", LBIS.L["Waist"], "Alt") --Darkmantle Waistguard
    LBIS:AddItem(spec4, "226832", LBIS.L["Waist"], "Alt") --Darkmantle Belt
    LBIS:AddItem(spec4, "20045", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec4, "20190", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec4, "220550", LBIS.L["Waist"], "Alt") --Temple Looter's Waistband
    LBIS:AddItem(spec4, "228068", LBIS.L["Waist"], "Alt") --Mugger's Belt
    LBIS:AddItem(spec4, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec4, "226701", LBIS.L["Waist"], "Alt") --Shadowcraft Belt
    LBIS:AddItem(spec4, "226479", LBIS.L["Legs"], "BIS") --Nightslayer Legguards
    LBIS:AddItem(spec4, "226445", LBIS.L["Legs"], "Alt") --Nightslayer Pants
    LBIS:AddItem(spec4, "227804", LBIS.L["Legs"], "Alt") --Dire Warbear Woolies
    LBIS:AddItem(spec4, "228660", LBIS.L["Legs"], "Alt") --Blademaster Leggings
    LBIS:AddItem(spec4, "226838", LBIS.L["Legs"], "Alt") --Darkmantle Legguards
    LBIS:AddItem(spec4, "227061", LBIS.L["Legs"], "Alt") --Knight-Captain's Leather Legguards
    LBIS:AddItem(spec4, "227059", LBIS.L["Legs"], "Alt") --Legionnaire's Leather Legguards
    LBIS:AddItem(spec4, "226827", LBIS.L["Legs"], "Alt") --Darkmantle Pants
    LBIS:AddItem(spec4, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec4, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec4, "226443", LBIS.L["Feet"], "BIS") --Nightslayer Boots
    LBIS:AddItem(spec4, "226477", LBIS.L["Feet"], "Alt") --Nightslayer Tabi
    LBIS:AddItem(spec4, "227815", LBIS.L["Feet"], "Alt") --Fine Dawn Treaders
    LBIS:AddItem(spec4, "226842", LBIS.L["Feet"], "Alt") --Darkmantle Treads
    LBIS:AddItem(spec4, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec4, "226831", LBIS.L["Feet"], "Alt") --Darkmantle Footpads
    LBIS:AddItem(spec4, "20052", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec4, "20186", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec4, "16711", LBIS.L["Feet"], "Alt") --Shadowcraft Boots
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec4, "228574", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec4, "228147", LBIS.L["Neck"], "Alt") --Magmadar's Horn
    LBIS:AddItem(spec4, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "228684", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec4, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec4, "220624", LBIS.L["Neck"], "Alt") --Bloodstained Charm of Valor
    LBIS:AddItem(spec4, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec4, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec4, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "227280", LBIS.L["Ring"], "BIS") --Craft of the Shadows
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec4, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec4, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec4, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec4, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec4, "228686", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec4, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "228464", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec4, "228089", LBIS.L["Trinket"], "Alt") --Woodcarved Moonstalker
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "228757", LBIS.L["Main Hand"], "BIS") --Felstriker
    LBIS:AddItem(spec4, "228265", LBIS.L["Main Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec4, "228296", LBIS.L["Main Hand"], "Alt") --Perdition's Blade
    LBIS:AddItem(spec4, "19324", LBIS.L["Main Hand"], "Alt") --The Lobotomizer
    LBIS:AddItem(spec4, "220585", LBIS.L["Main Hand"], "Alt") --Degraded Dire Nail
    LBIS:AddItem(spec4, "19542", LBIS.L["Main Hand"], "Alt") --Scout's Blade
    LBIS:AddItem(spec4, "19546", LBIS.L["Main Hand"], "Alt") --Sentinel's Blade
    LBIS:AddItem(spec4, "227991", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec4, "17112", LBIS.L["Main Hand"], "Alt") --Empyrean Demolisher
    LBIS:AddItem(spec4, "17075", LBIS.L["Main Hand"], "Alt") --Vis'kag the Bloodletter
    LBIS:AddItem(spec4, "228653", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec4, "228277", LBIS.L["Off Hand"], "BIS") --Core Hound Tooth
    LBIS:AddItem(spec4, "228143", LBIS.L["Off Hand"], "BIS") --Shadowflame Sword
    LBIS:AddItem(spec4, "228472", LBIS.L["Off Hand"], "Alt") --Distracting Dagger
    LBIS:AddItem(spec4, "13368", LBIS.L["Off Hand"], "Alt") --Bonescraper
    LBIS:AddItem(spec4, "228652", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec4, "228600", LBIS.L["Off Hand"], "Alt") --The Jaw Breaker
    LBIS:AddItem(spec4, "228252", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec4, "228270", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
    LBIS:AddItem(spec4, "228050", LBIS.L["Ranged/Relic"], "Alt") --Satyr's Bow
    LBIS:AddItem(spec4, "228559", LBIS.L["Ranged/Relic"], "Alt") --Blackcrow
    LBIS:AddItem(spec4, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec4, "220571", LBIS.L["Ranged/Relic"], "Alt") --Stinging Longbow
    LBIS:AddItem(spec4, "228107", LBIS.L["Ranged/Relic"], "Alt") --Fallen Huntress' Longbow
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
