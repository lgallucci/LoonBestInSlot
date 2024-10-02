local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Feral Dps"], "6")

    LBIS:AddEnchant(spec5, "432190", LBIS.L["Head"]) --Wolfshead Trophy
    LBIS:AddEnchant(spec5, "24422", LBIS.L["Shoulder"]) --Zandalar Signet of Might
    LBIS:AddEnchant(spec5, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec5, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec5, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec5, "20013", LBIS.L["Hands"]) --Enchant Gloves - Greater Strength
    LBIS:AddEnchant(spec5, "468321", LBIS.L["Legs"]) --Animist's Fury
    LBIS:AddEnchant(spec5, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec5, "20034", LBIS.L["Two Hand"]) --Enchant Weapon - Crusader

    LBIS:AddItem(spec0, "226792", LBIS.L["Head"], "BIS") --Feralheart Cap
    LBIS:AddItem(spec0, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec0, "227174", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec0, "226790", LBIS.L["Shoulder"], "BIS") --Feralheart Epaulets
    LBIS:AddItem(spec0, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "228036", LBIS.L["Shoulder"], "Alt") --Death's Clutch
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec0, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec0, "226795", LBIS.L["Chest"], "BIS") --Feralheart Tunic
    LBIS:AddItem(spec0, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec0, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec0, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec0, "226788", LBIS.L["Wrist"], "BIS") --Feralheart Bands
    LBIS:AddItem(spec0, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec0, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec0, "226793", LBIS.L["Hands"], "BIS") --Feralheart Fists
    LBIS:AddItem(spec0, "227809", LBIS.L["Hands"], "Alt") --Studded Timbermaw Brawlers
    LBIS:AddItem(spec0, "227183", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec0, "19686", LBIS.L["Hands"], "Alt") --Primal Batskin Gloves
    LBIS:AddItem(spec0, "227805", LBIS.L["Waist"], "BIS") --Ferocity of the Timbermaw
    LBIS:AddItem(spec0, "226789", LBIS.L["Waist"], "Alt") --Feralheart Girdle
    LBIS:AddItem(spec0, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec0, "226791", LBIS.L["Legs"], "BIS") --Feralheart Trousers
    LBIS:AddItem(spec0, "227178", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec0, "227177", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec0, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec0, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec0, "226794", LBIS.L["Feet"], "BIS") --Feralheart Walkers
    LBIS:AddItem(spec0, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec0, "227182", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec0, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec0, "19510", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec0, "19514", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec0, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec0, "227280", LBIS.L["Ring"], "Alt") --Craft of the Shadows
    LBIS:AddItem(spec0, "228089", LBIS.L["Trinket"], "BIS") --Woodcarved Moonstalker
    LBIS:AddItem(spec0, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "228230", LBIS.L["Two Hand"], "BIS") --Refined Hammer of the Titans
    LBIS:AddItem(spec0, "220596", LBIS.L["Two Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec0, "22397", LBIS.L["Ranged/Relic"], "BIS") --Idol of Ferocity
    LBIS:AddItem(spec0, "228181", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Cat)
    LBIS:AddItem(spec0, "220606", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Dream

    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "BIS") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec1, "4724", LBIS.L["Head"], "Alt") --Humbert's Helm
    LBIS:AddItem(spec1, "14573", LBIS.L["Shoulder"], "BIS") --Bristlebark Amice
    LBIS:AddItem(spec1, "2264", LBIS.L["Shoulder"], "Alt") --Mantle of Thieves
    LBIS:AddItem(spec1, "209692", LBIS.L["Shoulder"], "Alt") --Sentinel Pauldrons
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "209523", LBIS.L["Back"], "Alt") --Shimmering Thresher Cape
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "209680", LBIS.L["Back"], "Alt") --Waterproof Scarf
    LBIS:AddItem(spec1, "6449", LBIS.L["Back"], "Alt") --Glowing Lizardscale Cloak
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "BIS") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "15337", LBIS.L["Chest"], "Alt") --Wrangler's Wraps
    LBIS:AddItem(spec1, "2234", LBIS.L["Chest"], "Alt") --Nightwalker Armor
    LBIS:AddItem(spec1, "6670", LBIS.L["Chest"], "Alt") --Panther Armor
    LBIS:AddItem(spec1, "2041", LBIS.L["Chest"], "Alt") --Tunic of Westfall
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "BIS") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "6198", LBIS.L["Wrist"], "Alt") --Jurassic Wristguards
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "1978", LBIS.L["Hands"], "Alt") --Wolfclaw Gloves
    LBIS:AddItem(spec1, "720", LBIS.L["Hands"], "Alt") --Brawler Gloves
    LBIS:AddItem(spec1, "7359", LBIS.L["Hands"], "Alt") --Heavy Earthen Gloves
    LBIS:AddItem(spec1, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec1, "6398", LBIS.L["Waist"], "Alt") --Emblazoned Belt
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "BIS") --Leggings of the Fang
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "209670", LBIS.L["Feet"], "Alt") --Skinwalkers
    LBIS:AddItem(spec1, "1121", LBIS.L["Feet"], "Alt") --Feet of the Lynx
    LBIS:AddItem(spec1, "16977", LBIS.L["Feet"], "Alt") --Warsong Boots
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "BIS") --High Tide Choker
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace
    LBIS:AddItem(spec1, "209673", LBIS.L["Neck"], "Alt") --Glowing Fetish Amulet
    LBIS:AddItem(spec1, "20442", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec1, "20444", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec1, "13097", LBIS.L["Ring"], "BIS") --Thunderbrow Ring
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "BIS") --Band of the Iron Fist
    LBIS:AddItem(spec1, "6321", LBIS.L["Ring"], "BIS") --Silverlaine's Family Seal
    LBIS:AddItem(spec1, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec1, "20439", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "209577", LBIS.L["Two Hand"], "BIS") --Fist of the Wild
    LBIS:AddItem(spec1, "7230", LBIS.L["Two Hand"], "Alt") --Smite's Mighty Hammer
    LBIS:AddItem(spec1, "1976", LBIS.L["Two Hand"], "Alt") --Slaghammer
    LBIS:AddItem(spec1, "2226", LBIS.L["Two Hand"], "Alt") --Ogremage Staff
    LBIS:AddItem(spec1, "209576", LBIS.L["Ranged/Relic"], "BIS") --Mind-Expanding Mushroom

    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "10008", LBIS.L["Head"], "Alt") --White Bandit Mask
    LBIS:AddItem(spec2, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec2, "9647", LBIS.L["Shoulder"], "BIS") --Failed Flying Experiment
    LBIS:AddItem(spec2, "2278", LBIS.L["Shoulder"], "Alt") --Forest Tracker Epaulets
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "5257", LBIS.L["Back"], "BIS") --Dark Hooded Cape
    LBIS:AddItem(spec2, "213308", LBIS.L["Back"], "Alt") --Prototype Parachute Cloak
    LBIS:AddItem(spec2, "14593", LBIS.L["Back"], "Alt") --Hawkeye's Cloak
    LBIS:AddItem(spec2, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "BIS") --Insulated Chestguard
    LBIS:AddItem(spec2, "10583", LBIS.L["Chest"], "Alt") --Quillward Harness
    LBIS:AddItem(spec2, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "9428", LBIS.L["Wrist"], "Alt") --Unearthed Bands
    LBIS:AddItem(spec2, "14590", LBIS.L["Wrist"], "Alt") --Hawkeye's Bracers
    LBIS:AddItem(spec2, "7378", LBIS.L["Wrist"], "Alt") --Dusky Bracers
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "9631", LBIS.L["Hands"], "Alt") --Pratt's Handcrafted Gloves
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "4063", LBIS.L["Hands"], "Alt") --Imperial Leather Gloves
    LBIS:AddItem(spec2, "10760", LBIS.L["Hands"], "Alt") --Swine Fists
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "BIS") --Skullduggery Waistband
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "BIS") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "13117", LBIS.L["Waist"], "Alt") --Ogron's Sash
    LBIS:AddItem(spec2, "20192", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec2, "20116", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec2, "14652", LBIS.L["Waist"], "Alt") --Scorpashi Sash
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "BIS") --Insulated Legguards
    LBIS:AddItem(spec2, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec2, "1718", LBIS.L["Legs"], "Alt") --Basilisk Hide Pants
    LBIS:AddItem(spec2, "213299", LBIS.L["Legs"], "Alt") --Petrolspill Pants
    LBIS:AddItem(spec2, "10742", LBIS.L["Legs"], "Alt") --Dragonflight Leggings
    LBIS:AddItem(spec2, "213341", LBIS.L["Feet"], "BIS") --Insulated Workboots
    LBIS:AddItem(spec2, "213340", LBIS.L["Feet"], "Alt") --Gnomebot Operators Boots
    LBIS:AddItem(spec2, "4109", LBIS.L["Feet"], "Alt") --Excelsior Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "19536", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec2, "7686", LBIS.L["Ring"], "Alt") --Ironspine's Eye
    LBIS:AddItem(spec2, "19513", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec2, "19517", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "215461", LBIS.L["Trinket"], "BIS") --Domesticated Attack Chicken
    LBIS:AddItem(spec2, "210741", LBIS.L["Two Hand"], "BIS") --Automatic Crowd Pummeler
    LBIS:AddItem(spec2, "216499", LBIS.L["Two Hand"], "BIS") --Bloodbark Crusher
    LBIS:AddItem(spec2, "209576", LBIS.L["Ranged/Relic"], "BIS") --Mind-Expanding Mushroom

    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "223963", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec3, "220851", LBIS.L["Head"], "Alt") --Blood Guard's Leather Headband
    LBIS:AddItem(spec3, "220850", LBIS.L["Head"], "Alt") --Knight-Lieutenant's Leather Headband
    LBIS:AddItem(spec3, "220518", LBIS.L["Head"], "Alt") --Ba'ham's Dusty Hat
    LBIS:AddItem(spec3, "220747", LBIS.L["Shoulder"], "BIS") --Paranoia Mantle
    LBIS:AddItem(spec3, "11874", LBIS.L["Shoulder"], "Alt") --Clouddrift Mantle
    LBIS:AddItem(spec3, "223987", LBIS.L["Shoulder"], "Alt") --Splinthide Shoulders
    LBIS:AddItem(spec3, "220853", LBIS.L["Shoulder"], "Alt") --Blood Guard's Leather Shoulders
    LBIS:AddItem(spec3, "220852", LBIS.L["Shoulder"], "Alt") --Knight-Lieutenant's Leather Shoulders
    LBIS:AddItem(spec3, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec3, "221411", LBIS.L["Shoulder"], "Alt") --Emerald Leather Shoulders
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "BIS") --Panther Fur Cloak
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec3, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "220779", LBIS.L["Chest"], "BIS") --Coagulated Bloodguard Tunic
    LBIS:AddItem(spec3, "22274", LBIS.L["Chest"], "Alt") --Grizzled Pelt
    LBIS:AddItem(spec3, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec3, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec3, "10583", LBIS.L["Chest"], "Alt") --Quillward Harness
    LBIS:AddItem(spec3, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec3, "17742", LBIS.L["Chest"], "Alt") --Fungus Shroud Armor
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "BIS") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec3, "14672", LBIS.L["Wrist"], "Alt") --Pridelord Bands
    LBIS:AddItem(spec3, "9428", LBIS.L["Wrist"], "Alt") --Unearthed Bands
    LBIS:AddItem(spec3, "21319", LBIS.L["Hands"], "BIS") --Gloves of the Pathfinder
    LBIS:AddItem(spec3, "12114", LBIS.L["Hands"], "Alt") --Nightfall Gloves
    LBIS:AddItem(spec3, "8260", LBIS.L["Hands"], "Alt") --Serpentskin Gloves
    LBIS:AddItem(spec3, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec3, "867", LBIS.L["Hands"], "Alt") --Gloves of Holy Might
    LBIS:AddItem(spec3, "220545", LBIS.L["Hands"], "Alt") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec3, "15708", LBIS.L["Hands"], "Alt") --Blight Leather Gloves
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "220550", LBIS.L["Waist"], "Alt") --Temple Looter's Waistband
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "20193", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec3, "20115", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec3, "220778", LBIS.L["Legs"], "BIS") --Coagulated Bloodguard Pants
    LBIS:AddItem(spec3, "9652", LBIS.L["Legs"], "Alt") --Gryphon Rider's Leggings
    LBIS:AddItem(spec3, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec3, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec3, "220859", LBIS.L["Legs"], "Alt") --Stone Guard's Leather Pants
    LBIS:AddItem(spec3, "23295", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec3, "221410", LBIS.L["Legs"], "Alt") --Emerald Leather Pants
    LBIS:AddItem(spec3, "220780", LBIS.L["Feet"], "BIS") --Coagulated Bloodguard Boots
    LBIS:AddItem(spec3, "223962", LBIS.L["Feet"], "Alt") --Sandstalker Ankleguards
    LBIS:AddItem(spec3, "17728", LBIS.L["Feet"], "Alt") --Albino Crocscale Boots
    LBIS:AddItem(spec3, "11675", LBIS.L["Feet"], "Alt") --Shadefiend Boots
    LBIS:AddItem(spec3, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec3, "220861", LBIS.L["Feet"], "Alt") --First Sergeant's Leather Boots
    LBIS:AddItem(spec3, "23281", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec3, "221409", LBIS.L["Feet"], "Alt") --Emerald Leather Sabatons
    LBIS:AddItem(spec3, "13089", LBIS.L["Neck"], "BIS") --Skibi's Pendant
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "Alt") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "19159", LBIS.L["Neck"], "Alt") --Woven Ivy Necklace
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "19535", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec3, "19539", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "BIS") --Band of the Wilds
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "BIS") --Blackstone Ring
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS") --Breadth of the Beast
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "BIS") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "221442", LBIS.L["Trinket"], "BIS") --Roar of the Guardian
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "10725", LBIS.L["Trinket"], "Alt") --Gnomish Battle Chicken
    LBIS:AddItem(spec3, "215461", LBIS.L["Trinket"], "Alt") --Domesticated Attack Chicken
    LBIS:AddItem(spec3, "220596", LBIS.L["Two Hand"], "BIS") --Ancient Divining Rod
    LBIS:AddItem(spec3, "221446", LBIS.L["Two Hand"], "BIS") --Ritualist's Hammer
    LBIS:AddItem(spec3, "210741", LBIS.L["Two Hand"], "Alt") --Automatic Crowd Pummeler
    LBIS:AddItem(spec3, "220606", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Dream

    LBIS:AddItem(spec4, "226659", LBIS.L["Head"], "BIS") --Cenarion Horns
    LBIS:AddItem(spec4, "226792", LBIS.L["Head"], "Alt") --Feralheart Cap
    LBIS:AddItem(spec4, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec4, "227174", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec4, "226665", LBIS.L["Shoulder"], "BIS") --Cenarion Shoulders
    LBIS:AddItem(spec4, "226790", LBIS.L["Shoulder"], "Alt") --Feralheart Epaulets
    LBIS:AddItem(spec4, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "228036", LBIS.L["Shoulder"], "Alt") --Death's Clutch
    LBIS:AddItem(spec4, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec4, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec4, "226661", LBIS.L["Chest"], "BIS") --Cenarion Tunic
    LBIS:AddItem(spec4, "226795", LBIS.L["Chest"], "Alt") --Feralheart Tunic
    LBIS:AddItem(spec4, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec4, "226788", LBIS.L["Wrist"], "BIS") --Feralheart Bands
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "226662", LBIS.L["Wrist"], "Alt") --Cenarion Bands
    LBIS:AddItem(spec4, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec4, "226664", LBIS.L["Hands"], "BIS") --Cenarion Fists
    LBIS:AddItem(spec4, "228257", LBIS.L["Hands"], "BIS") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "226793", LBIS.L["Hands"], "Alt") --Feralheart Fists
    LBIS:AddItem(spec4, "227809", LBIS.L["Hands"], "Alt") --Studded Timbermaw Brawlers
    LBIS:AddItem(spec4, "227183", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec4, "19686", LBIS.L["Hands"], "Alt") --Primal Batskin Gloves
    LBIS:AddItem(spec4, "226789", LBIS.L["Waist"], "BIS") --Feralheart Girdle
    LBIS:AddItem(spec4, "227805", LBIS.L["Waist"], "Alt") --Ferocity of the Timbermaw
    LBIS:AddItem(spec4, "226660", LBIS.L["Waist"], "Alt") --Cenarion Girdle
    LBIS:AddItem(spec4, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec4, "226666", LBIS.L["Legs"], "BIS") --Cenarion Trousers
    LBIS:AddItem(spec4, "226791", LBIS.L["Legs"], "Alt") --Feralheart Trousers
    LBIS:AddItem(spec4, "227178", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec4, "227177", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec4, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec4, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec4, "226663", LBIS.L["Feet"], "BIS") --Cenarion Treads
    LBIS:AddItem(spec4, "226794", LBIS.L["Feet"], "Alt") --Feralheart Walkers
    LBIS:AddItem(spec4, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec4, "227182", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec4, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec4, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec4, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "228089", LBIS.L["Trinket"], "BIS") --Woodcarved Moonstalker
    LBIS:AddItem(spec4, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "227683", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec4, "227833", LBIS.L["Two Hand"], "Alt") --Glaive of Obsidian Fury
    LBIS:AddItem(spec4, "228272", LBIS.L["Two Hand"], "Alt") --Shadowstrike
    LBIS:AddItem(spec4, "228230", LBIS.L["Two Hand"], "Alt") --Refined Hammer of the Titans
    LBIS:AddItem(spec4, "220596", LBIS.L["Two Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec4, "22397", LBIS.L["Ranged/Relic"], "BIS") --Idol of Ferocity
    LBIS:AddItem(spec4, "228181", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Cat)
    LBIS:AddItem(spec4, "220606", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Dream

    LBIS:AddItem(spec5, "231257", LBIS.L["Head"], "BIS") --Stormrage Cowl
    LBIS:AddItem(spec5, "226659", LBIS.L["Head"], "Alt") --Cenarion Horns
    LBIS:AddItem(spec5, "226792", LBIS.L["Head"], "Alt") --Feralheart Cap
    LBIS:AddItem(spec5, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec5, "227174", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec5, "231259", LBIS.L["Shoulder"], "BIS") --Stormrage Shoulderpads
    LBIS:AddItem(spec5, "226665", LBIS.L["Shoulder"], "Alt") --Cenarion Shoulders
    LBIS:AddItem(spec5, "226790", LBIS.L["Shoulder"], "Alt") --Feralheart Epaulets
    LBIS:AddItem(spec5, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "228036", LBIS.L["Shoulder"], "Alt") --Death's Clutch
    LBIS:AddItem(spec5, "230842", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "228102", LBIS.L["Back"], "Alt") --Majordomo's Drape
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "20691", LBIS.L["Back"], "Alt") --Windshear Cape
    LBIS:AddItem(spec5, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec5, "231254", LBIS.L["Chest"], "BIS") --Stormrage Vest
    LBIS:AddItem(spec5, "226661", LBIS.L["Chest"], "Alt") --Cenarion Tunic
    LBIS:AddItem(spec5, "226795", LBIS.L["Chest"], "Alt") --Feralheart Tunic
    LBIS:AddItem(spec5, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec5, "231261", LBIS.L["Wrist"], "BIS") --Stormrage Wraps
    LBIS:AddItem(spec5, "226662", LBIS.L["Wrist"], "Alt") --Cenarion Bands
    LBIS:AddItem(spec5, "226788", LBIS.L["Wrist"], "Alt") --Feralheart Bands
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "19687", LBIS.L["Wrist"], "Alt") --Primal Batskin Bracers
    LBIS:AddItem(spec5, "232100", LBIS.L["Hands"], "BIS") --Stormrage Grips
    LBIS:AddItem(spec5, "226664", LBIS.L["Hands"], "Alt") --Cenarion Fists
    LBIS:AddItem(spec5, "226793", LBIS.L["Hands"], "Alt") --Feralheart Fists
    LBIS:AddItem(spec5, "228257", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec5, "227809", LBIS.L["Hands"], "Alt") --Studded Timbermaw Brawlers
    LBIS:AddItem(spec5, "227183", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec5, "19686", LBIS.L["Hands"], "Alt") --Primal Batskin Gloves
    LBIS:AddItem(spec5, "232096", LBIS.L["Waist"], "BIS") --Stormrage Sash
    LBIS:AddItem(spec5, "226660", LBIS.L["Waist"], "Alt") --Cenarion Girdle
    LBIS:AddItem(spec5, "226789", LBIS.L["Waist"], "Alt") --Feralheart Girdle
    LBIS:AddItem(spec5, "227805", LBIS.L["Waist"], "Alt") --Ferocity of the Timbermaw
    LBIS:AddItem(spec5, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec5, "232098", LBIS.L["Legs"], "BIS") --Stormrage Trousers
    LBIS:AddItem(spec5, "226666", LBIS.L["Legs"], "Alt") --Cenarion Trousers
    LBIS:AddItem(spec5, "226791", LBIS.L["Legs"], "Alt") --Feralheart Trousers
    LBIS:AddItem(spec5, "227178", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec5, "227177", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec5, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec5, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec5, "232101", LBIS.L["Feet"], "BIS") --Stormrage Stompers
    LBIS:AddItem(spec5, "226663", LBIS.L["Feet"], "Alt") --Cenarion Treads
    LBIS:AddItem(spec5, "226794", LBIS.L["Feet"], "Alt") --Feralheart Walkers
    LBIS:AddItem(spec5, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec5, "227182", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec5, "231803", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec5, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec5, "230734", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "227455", LBIS.L["Ring"], "BIS") --Ocean's Breeze
    LBIS:AddItem(spec5, "230921", LBIS.L["Ring"], "Alt") --Band of Jin
    LBIS:AddItem(spec5, "230929", LBIS.L["Ring"], "Alt") --Seal of Jin
    LBIS:AddItem(spec5, "227280", LBIS.L["Ring"], "Alt") --Craft of the Shadows
    LBIS:AddItem(spec5, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec5, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec5, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec5, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec5, "231779", LBIS.L["Trinket"], "BIS") --Wrath of Wray
    LBIS:AddItem(spec5, "230282", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec5, "228089", LBIS.L["Trinket"], "Alt") --Woodcarved Moonstalker
    LBIS:AddItem(spec5, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec5, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec5, "224282", LBIS.L["Two Hand"], "BIS") --Rae'lar
    LBIS:AddItem(spec5, "231823", LBIS.L["Two Hand"], "Alt") --Geddon's Glaive
    LBIS:AddItem(spec5, "227683", LBIS.L["Two Hand"], "Alt") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec5, "227833", LBIS.L["Two Hand"], "Alt") --Glaive of Obsidian Fury
    LBIS:AddItem(spec5, "228272", LBIS.L["Two Hand"], "Alt") --Shadowstrike
    LBIS:AddItem(spec5, "228230", LBIS.L["Two Hand"], "Alt") --Refined Hammer of the Titans
    LBIS:AddItem(spec5, "220596", LBIS.L["Two Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec5, "22397", LBIS.L["Ranged/Relic"], "BIS") --Idol of Ferocity
    LBIS:AddItem(spec5, "220606", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Dream
    LBIS:AddItem(spec5, "228181", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Cat)
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
