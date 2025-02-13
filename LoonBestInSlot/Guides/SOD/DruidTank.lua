local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "7")

    LBIS:AddEnchant(spec7, "468323", LBIS.L["Head"]) --Animist's Roar
    LBIS:AddEnchant(spec7, "432190", LBIS.L["Head"]) --Wolfshead Trophy
    LBIS:AddEnchant(spec7, "1219511", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "24422", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "25086", LBIS.L["Back"]) --Enchant Cloak - Dodge
    LBIS:AddEnchant(spec7, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec7, "1213616", LBIS.L["Chest"]) --Enchant Chest - Living Stats
    LBIS:AddEnchant(spec7, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec7, "25072", LBIS.L["Hands"]) --Enchant Gloves - Threat
    LBIS:AddEnchant(spec7, "25080", LBIS.L["Hands"]) --Enchant Gloves - Superior Agility
    LBIS:AddEnchant(spec7, "468323", LBIS.L["Legs"]) --Animist's Roar
    LBIS:AddEnchant(spec7, "468321", LBIS.L["Legs"]) --Animist's Fury
    LBIS:AddEnchant(spec7, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec7, "20034", LBIS.L["Main Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec7, "446451", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec7, "20013", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec7, "15397", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec7, "15397", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec7, "13948", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec7, "15402", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec7, "13890", LBIS.L["Feet"]) --

    LBIS:AddItem(spec0, "226792", LBIS.L["Head"], "BIS") --Feralheart Cap
    LBIS:AddItem(spec0, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec0, "227174", LBIS.L["Head"], "Alt") --Champion's Dragonhide Headguard
    LBIS:AddItem(spec0, "215166", LBIS.L["Head"], "Alt") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec0, "228500", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec0, "226790", LBIS.L["Shoulder"], "BIS") --Feralheart Epaulets
    LBIS:AddItem(spec0, "20194", LBIS.L["Shoulder"], "BIS") --Defiler's Leather Shoulders
    LBIS:AddItem(spec0, "227175", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec0, "228036", LBIS.L["Shoulder"], "Alt") --Death's Clutch
    LBIS:AddItem(spec0, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "227854", LBIS.L["Back"], "BIS") --Mastercrafted Shifting Cloak
    LBIS:AddItem(spec0, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec0, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec0, "226795", LBIS.L["Chest"], "BIS") --Feralheart Tunic
    LBIS:AddItem(spec0, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec0, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec0, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec0, "226788", LBIS.L["Wrist"], "BIS") --Feralheart Bands
    LBIS:AddItem(spec0, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
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
    LBIS:AddItem(spec0, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec0, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec0, "19514", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec0, "19510", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec0, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec0, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec0, "228089", LBIS.L["Trinket"], "BIS") --Woodcarved Moonstalker
    LBIS:AddItem(spec0, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "228230", LBIS.L["Main Hand"], "BIS") --Refined Hammer of the Titans
    LBIS:AddItem(spec0, "228666", LBIS.L["Main Hand"], "Alt") --Seeping Willow
    LBIS:AddItem(spec0, "221446", LBIS.L["Main Hand"], "Alt") --Ritualist's Hammer
    LBIS:AddItem(spec0, "220596", LBIS.L["Main Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec0, "228181", LBIS.L["Ranged/Relic"], "BIS") --Idol of Exsanguination (Cat)
    LBIS:AddItem(spec0, "23198", LBIS.L["Ranged/Relic"], "BIS") --Idol of Brutality
    LBIS:AddItem(spec0, "220606", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Dream
    LBIS:AddItem(spec0, "228182", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Bear)

    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "BIS") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "209682", LBIS.L["Head"], "Alt") --Sturdy Hood
    LBIS:AddItem(spec1, "209692", LBIS.L["Shoulder"], "BIS") --Sentinel Pauldrons
    LBIS:AddItem(spec1, "2264", LBIS.L["Shoulder"], "Alt") --Mantle of Thieves
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "2059", LBIS.L["Back"], "Alt") --Sentry Cloak
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "BIS Thrt") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "209687", LBIS.L["Chest"], "BIS") --Hydra Hide Cuirass
    LBIS:AddItem(spec1, "209572", LBIS.L["Chest"], "Alt") --Black Boiled Leathers
    LBIS:AddItem(spec1, "209675", LBIS.L["Chest"], "Alt") --Clamweave Tunic
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "BIS") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "15351", LBIS.L["Wrist"], "Alt") --Headhunter's Bands
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "1978", LBIS.L["Hands"], "Alt") --Wolfclaw Gloves
    LBIS:AddItem(spec1, "209527", LBIS.L["Hands"], "Alt") --Naga Battle Gauntlets
    LBIS:AddItem(spec1, "9827", LBIS.L["Waist"], "BIS") --Scaled Leather Belt
    LBIS:AddItem(spec1, "209421", LBIS.L["Waist"], "Alt") --Cord of Aquanis
    LBIS:AddItem(spec1, "6468", LBIS.L["Waist"], "Alt") --Deviate Scale Belt
    LBIS:AddItem(spec1, "13114", LBIS.L["Legs"], "BIS") --Troll's Bane Leggings
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "Alt") --Leggings of the Fang
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "7754", LBIS.L["Feet"], "Alt") --Harbinger Boots
    LBIS:AddItem(spec1, "16977", LBIS.L["Feet"], "Alt") --Warsong Boots
    LBIS:AddItem(spec1, "209673", LBIS.L["Neck"], "BIS") --Glowing Fetish Amulet
    LBIS:AddItem(spec1, "209817", LBIS.L["Neck"], "Alt") --Voidwalker Brooch
    LBIS:AddItem(spec1, "209565", LBIS.L["Ring"], "BIS") --Band of Deep Places
    LBIS:AddItem(spec1, "2039", LBIS.L["Ring"], "Alt") --Plains Ring
    LBIS:AddItem(spec1, "6414", LBIS.L["Ring"], "Alt") --Seal of Sylvanas
    LBIS:AddItem(spec1, "12985", LBIS.L["Ring"], "Alt") --Ring of Defense
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "21566", LBIS.L["Trinket"], "BIS") --Rune of Perfection
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec1, "209577", LBIS.L["Main Hand"], "BIS") --Fist of the Wild
    LBIS:AddItem(spec1, "1976", LBIS.L["Main Hand"], "Alt") --Slaghammer
    LBIS:AddItem(spec1, "209576", LBIS.L["Ranged/Relic"], "BIS") --Mind-Expanding Mushroom

    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec2, "211510", LBIS.L["Head"], "Alt") --Twilight Slayer's Cowl
    LBIS:AddItem(spec2, "209682", LBIS.L["Head"], "Alt") --Sturdy Hood
    LBIS:AddItem(spec2, "10774", LBIS.L["Shoulder"], "BIS") --Fleshhide Shoulders
    LBIS:AddItem(spec2, "213302", LBIS.L["Shoulder"], "Alt") --Mantle of the Cunning Negotiator
    LBIS:AddItem(spec2, "209692", LBIS.L["Shoulder"], "Alt") --Sentinel Pauldrons
    LBIS:AddItem(spec2, "2264", LBIS.L["Shoulder"], "Alt") --Mantle of Thieves
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "216622", LBIS.L["Back"], "Alt") --Coagulated Cloak
    LBIS:AddItem(spec2, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "2059", LBIS.L["Back"], "Alt") --Sentry Cloak
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "BIS") --Insulated Chestguard
    LBIS:AddItem(spec2, "209687", LBIS.L["Chest"], "Alt") --Hydra Hide Cuirass
    LBIS:AddItem(spec2, "213298", LBIS.L["Chest"], "Alt") --Mechbuilder's Overalls
    LBIS:AddItem(spec2, "211512", LBIS.L["Chest"], "Alt") --Twilight Slayer's Tunic
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "7534", LBIS.L["Wrist"], "Alt") --Cabalist Bracers
    LBIS:AddItem(spec2, "9925", LBIS.L["Wrist"], "Alt") --Tracker's Wristguards
    LBIS:AddItem(spec2, "209524", LBIS.L["Wrist"], "Alt") --Bindings of Serra'kis
    LBIS:AddItem(spec2, "19508", LBIS.L["Wrist"], "Alt") --Branded Leather Bracers
    LBIS:AddItem(spec2, "5783", LBIS.L["Wrist"], "Alt") --Murloc Scale Bracers
    LBIS:AddItem(spec2, "15351", LBIS.L["Wrist"], "Alt") --Headhunter's Bands
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "10777", LBIS.L["Hands"], "Alt") --Arachnid Gloves
    LBIS:AddItem(spec2, "1978", LBIS.L["Hands"], "Alt") --Wolfclaw Gloves
    LBIS:AddItem(spec2, "209527", LBIS.L["Hands"], "Alt") --Naga Battle Gauntlets
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "BIS") --Skullduggery Waistband
    LBIS:AddItem(spec2, "20116", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec2, "4264", LBIS.L["Waist"], "Alt") --Barbaric Belt
    LBIS:AddItem(spec2, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec2, "209421", LBIS.L["Waist"], "Alt") --Cord of Aquanis
    LBIS:AddItem(spec2, "6468", LBIS.L["Waist"], "Alt") --Deviate Scale Belt
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "BIS") --Insulated Legguards
    LBIS:AddItem(spec2, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec2, "10410", LBIS.L["Legs"], "Alt") --Leggings of the Fang
    LBIS:AddItem(spec2, "213299", LBIS.L["Legs"], "Alt") --Petrolspill Pants
    LBIS:AddItem(spec2, "13114", LBIS.L["Legs"], "Alt") --Troll's Bane Leggings
    LBIS:AddItem(spec2, "213341", LBIS.L["Feet"], "BIS") --Insulated Workboots
    LBIS:AddItem(spec2, "213340", LBIS.L["Feet"], "Alt") --Gnomebot Operators Boots
    LBIS:AddItem(spec2, "20113", LBIS.L["Feet"], "Alt") --Highlander's Leather Boots
    LBIS:AddItem(spec2, "211511", LBIS.L["Feet"], "Alt") --Twilight Slayer's Footpads
    LBIS:AddItem(spec2, "7754", LBIS.L["Feet"], "Alt") --Harbinger Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "209673", LBIS.L["Neck"], "Alt") --Glowing Fetish Amulet
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec2, "216674", LBIS.L["Ring"], "Alt") --Nogg's Brilliant Gold Ring
    LBIS:AddItem(spec2, "9642", LBIS.L["Ring"], "Alt") --Band of the Great Tortoise
    LBIS:AddItem(spec2, "18585", LBIS.L["Ring"], "Alt") --Band of Allegiance
    LBIS:AddItem(spec2, "2262", LBIS.L["Ring"], "Alt") --Mark of Kern
    LBIS:AddItem(spec2, "7686", LBIS.L["Ring"], "Alt") --Ironspine's Eye
    LBIS:AddItem(spec2, "209565", LBIS.L["Ring"], "Alt") --Band of Deep Places
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "213350", LBIS.L["Trinket"], "Alt") --Wirdal's Hardened Core
    LBIS:AddItem(spec2, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec2, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec2, "210741", LBIS.L["Main Hand"], "BIS") --Automatic Crowd Pummeler
    LBIS:AddItem(spec2, "216499", LBIS.L["Main Hand"], "Alt") --Bloodbark Crusher
    LBIS:AddItem(spec2, "209577", LBIS.L["Main Hand"], "Alt") --Fist of the Wild
    LBIS:AddItem(spec2, "209576", LBIS.L["Ranged/Relic"], "BIS") --Mind-Expanding Mushroom

    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "223963", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec3, "220851", LBIS.L["Head"], "Alt Mit") --Blood Guard's Leather Headband
    LBIS:AddItem(spec3, "220850", LBIS.L["Head"], "Alt Mit") --Knight-Lieutenant's Leather Headband
    LBIS:AddItem(spec3, "220518", LBIS.L["Head"], "Alt") --Ba'ham's Dusty Hat
    LBIS:AddItem(spec3, "220747", LBIS.L["Shoulder"], "BIS") --Paranoia Mantle
    LBIS:AddItem(spec3, "220853", LBIS.L["Shoulder"], "Alt Mit") --Blood Guard's Leather Shoulders
    LBIS:AddItem(spec3, "220852", LBIS.L["Shoulder"], "Alt Mit") --Knight-Lieutenant's Leather Shoulders
    LBIS:AddItem(spec3, "220532", LBIS.L["Shoulder"], "Alt") --Reinforced Atal'ai Spaulders
    LBIS:AddItem(spec3, "223987", LBIS.L["Shoulder"], "Alt") --Splinthide Shoulders
    LBIS:AddItem(spec3, "221411", LBIS.L["Shoulder"], "Alt") --Emerald Leather Shoulders
    LBIS:AddItem(spec3, "10774", LBIS.L["Shoulder"], "Alt") --Fleshhide Shoulders
    LBIS:AddItem(spec3, "213302", LBIS.L["Shoulder"], "Alt") --Mantle of the Cunning Negotiator
    LBIS:AddItem(spec3, "18441", LBIS.L["Back"], "BIS Mit") --Sergeant's Cape
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "13122", LBIS.L["Back"], "Alt") --Dark Phantom Cape
    LBIS:AddItem(spec3, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "220779", LBIS.L["Chest"], "BIS") --Coagulated Bloodguard Tunic
    LBIS:AddItem(spec3, "220855", LBIS.L["Chest"], "Alt Mit") --Stone Guard's Leather Armor
    LBIS:AddItem(spec3, "220854", LBIS.L["Chest"], "Alt Mit") --Knight's Leather Armor
    LBIS:AddItem(spec3, "22274", LBIS.L["Chest"], "Alt") --Grizzled Pelt
    LBIS:AddItem(spec3, "12793", LBIS.L["Chest"], "Alt") --Mixologist's Tunic
    LBIS:AddItem(spec3, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "BIS Mit") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "Alt") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec3, "14672", LBIS.L["Wrist"], "Alt") --Pridelord Bands
    LBIS:AddItem(spec3, "19590", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "220545", LBIS.L["Hands"], "BIS Mit") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec3, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec3, "21319", LBIS.L["Hands"], "Alt") --Gloves of the Pathfinder
    LBIS:AddItem(spec3, "12114", LBIS.L["Hands"], "Alt") --Nightfall Gloves
    LBIS:AddItem(spec3, "15708", LBIS.L["Hands"], "Alt") --Blight Leather Gloves
    LBIS:AddItem(spec3, "8260", LBIS.L["Hands"], "Alt") --Serpentskin Gloves
    LBIS:AddItem(spec3, "867", LBIS.L["Hands"], "Alt") --Gloves of Holy Might
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "BIS") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "213322", LBIS.L["Waist"], "Alt Mit") --Skullduggery Waistband
    LBIS:AddItem(spec3, "20115", LBIS.L["Waist"], "Alt") --Highlander's Leather Girdle
    LBIS:AddItem(spec3, "20193", LBIS.L["Waist"], "Alt") --Defiler's Leather Girdle
    LBIS:AddItem(spec3, "10109", LBIS.L["Waist"], "Alt") --Wanderer's Belt
    LBIS:AddItem(spec3, "220550", LBIS.L["Waist"], "Alt") --Temple Looter's Waistband
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "220778", LBIS.L["Legs"], "BIS") --Coagulated Bloodguard Pants
    LBIS:AddItem(spec3, "220859", LBIS.L["Legs"], "Alt Mit") --Stone Guard's Leather Pants
    LBIS:AddItem(spec3, "23295", LBIS.L["Legs"], "Alt Mit") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec3, "9652", LBIS.L["Legs"], "Alt") --Gryphon Rider's Leggings
    LBIS:AddItem(spec3, "221410", LBIS.L["Legs"], "Alt") --Emerald Leather Pants
    LBIS:AddItem(spec3, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec3, "220780", LBIS.L["Feet"], "BIS") --Coagulated Bloodguard Boots
    LBIS:AddItem(spec3, "11675", LBIS.L["Feet"], "Alt Mit") --Shadefiend Boots
    LBIS:AddItem(spec3, "223962", LBIS.L["Feet"], "Alt") --Sandstalker Ankleguards
    LBIS:AddItem(spec3, "220861", LBIS.L["Feet"], "Alt") --First Sergeant's Leather Boots
    LBIS:AddItem(spec3, "23281", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec3, "17728", LBIS.L["Feet"], "Alt") --Albino Crocscale Boots
    LBIS:AddItem(spec3, "221409", LBIS.L["Feet"], "Alt") --Emerald Leather Sabatons
    LBIS:AddItem(spec3, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec3, "220625", LBIS.L["Neck"], "BIS Mit") --Resilience of the Exiled
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "Alt") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "13089", LBIS.L["Neck"], "Alt") --Skibi's Pendant
    LBIS:AddItem(spec3, "19159", LBIS.L["Neck"], "Alt") --Woven Ivy Necklace
    LBIS:AddItem(spec3, "223532", LBIS.L["Neck"], "Alt") --Lifeblood Amulet
    LBIS:AddItem(spec3, "19539", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec3, "19535", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "220630", LBIS.L["Ring"], "BIS Mit") --Drakeclaw Band of the Juggernaut
    LBIS:AddItem(spec3, "216674", LBIS.L["Ring"], "Alt Mit") --Nogg's Brilliant Gold Ring
    LBIS:AddItem(spec3, "216673", LBIS.L["Ring"], "Alt Mit") --Talvash's Brilliant Gold Ring
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "19512", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "19515", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec3, "17774", LBIS.L["Trinket"], "BIS") --Mark of the Chosen
    LBIS:AddItem(spec3, "221442", LBIS.L["Trinket"], "BIS") --Roar of the Guardian
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "221474", LBIS.L["Trinket"], "Alt") --Chained Essence of Eranikus
    LBIS:AddItem(spec3, "11811", LBIS.L["Trinket"], "Alt Mit") --Smoking Heart of the Mountain
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "213350", LBIS.L["Trinket"], "Alt") --Wirdal's Hardened Core
    LBIS:AddItem(spec3, "221446", LBIS.L["Main Hand"], "BIS") --Ritualist's Hammer
    LBIS:AddItem(spec3, "220596", LBIS.L["Main Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec3, "221780", LBIS.L["Main Hand"], "Alt Mit") --Princess Theradras' Scepter
    LBIS:AddItem(spec3, "216499", LBIS.L["Main Hand"], "Alt") --Bloodbark Crusher
    LBIS:AddItem(spec3, "210741", LBIS.L["Main Hand"], "Alt") --Automatic Crowd Pummeler
    LBIS:AddItem(spec3, "220606", LBIS.L["Ranged/Relic"], "BIS") --Idol of the Dream
    LBIS:AddItem(spec3, "209576", LBIS.L["Ranged/Relic"], "Alt") --Mind-Expanding Mushroom

    LBIS:AddItem(spec4, "226659", LBIS.L["Head"], "BIS") --Cenarion Horns
    LBIS:AddItem(spec4, "226670", LBIS.L["Head"], "BIS") --Cenarion Crown
    LBIS:AddItem(spec4, "226819", LBIS.L["Head"], "Alt") --Feralheart Helm
    LBIS:AddItem(spec4, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec4, "226707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec4, "215166", LBIS.L["Head"], "Alt") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec4, "228500", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec4, "226665", LBIS.L["Shoulder"], "BIS") --Cenarion Shoulders
    LBIS:AddItem(spec4, "226674", LBIS.L["Shoulder"], "BIS") --Cenarion Pauldrons
    LBIS:AddItem(spec4, "20194", LBIS.L["Shoulder"], "Alt") --Defiler's Leather Shoulders
    LBIS:AddItem(spec4, "227175", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec4, "227172", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec4, "226817", LBIS.L["Shoulder"], "Alt") --Feralheart Shoulders
    LBIS:AddItem(spec4, "226706", LBIS.L["Shoulder"], "Alt") --Shadowcraft Spaulders
    LBIS:AddItem(spec4, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec4, "227854", LBIS.L["Back"], "BIS") --Mastercrafted Shifting Cloak
    LBIS:AddItem(spec4, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec4, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec4, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec4, "226661", LBIS.L["Chest"], "BIS") --Cenarion Tunic
    LBIS:AddItem(spec4, "227803", LBIS.L["Chest"], "BIS") --Dire Warbear Harness
    LBIS:AddItem(spec4, "226675", LBIS.L["Chest"], "BIS") --Cenarion Armor
    LBIS:AddItem(spec4, "226795", LBIS.L["Chest"], "Alt") --Feralheart Tunic
    LBIS:AddItem(spec4, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec4, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec4, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec4, "226668", LBIS.L["Wrist"], "BIS") --Cenarion Wristguards
    LBIS:AddItem(spec4, "226662", LBIS.L["Wrist"], "Alt") --Cenarion Bands
    LBIS:AddItem(spec4, "226788", LBIS.L["Wrist"], "Alt") --Feralheart Bands
    LBIS:AddItem(spec4, "226664", LBIS.L["Hands"], "BIS") --Cenarion Fists
    LBIS:AddItem(spec4, "226669", LBIS.L["Hands"], "BIS") --Cenarion Grips
    LBIS:AddItem(spec4, "228257", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec4, "226793", LBIS.L["Hands"], "Alt") --Feralheart Fists
    LBIS:AddItem(spec4, "227183", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec4, "227805", LBIS.L["Waist"], "BIS") --Ferocity of the Timbermaw
    LBIS:AddItem(spec4, "226667", LBIS.L["Waist"], "BIS") --Cenarion Waistguard
    LBIS:AddItem(spec4, "226660", LBIS.L["Waist"], "Alt") --Cenarion Girdle
    LBIS:AddItem(spec4, "226789", LBIS.L["Waist"], "Alt") --Feralheart Girdle
    LBIS:AddItem(spec4, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec4, "226666", LBIS.L["Legs"], "BIS") --Cenarion Trousers
    LBIS:AddItem(spec4, "226671", LBIS.L["Legs"], "BIS") --Cenarion Legguards
    LBIS:AddItem(spec4, "227804", LBIS.L["Legs"], "Alt") --Dire Warbear Woolies
    LBIS:AddItem(spec4, "226791", LBIS.L["Legs"], "Alt") --Feralheart Trousers
    LBIS:AddItem(spec4, "227178", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec4, "227177", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec4, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec4, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec4, "226663", LBIS.L["Feet"], "BIS") --Cenarion Treads
    LBIS:AddItem(spec4, "226673", LBIS.L["Feet"], "BIS") --Cenarion Walkers
    LBIS:AddItem(spec4, "227815", LBIS.L["Feet"], "Alt") --Fine Dawn Treaders
    LBIS:AddItem(spec4, "226794", LBIS.L["Feet"], "Alt") --Feralheart Walkers
    LBIS:AddItem(spec4, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec4, "227182", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec4, "228249", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec4, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec4, "228242", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec4, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec4, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec4, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec4, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec4, "228686", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec4, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec4, "228089", LBIS.L["Trinket"], "BIS") --Woodcarved Moonstalker
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "227915", LBIS.L["Trinket"], "Alt") --Duke's Domain
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "227683", LBIS.L["Main Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec4, "227833", LBIS.L["Main Hand"], "Alt") --Glaive of Obsidian Fury
    LBIS:AddItem(spec4, "228272", LBIS.L["Main Hand"], "Alt") --Shadowstrike
    LBIS:AddItem(spec4, "228230", LBIS.L["Main Hand"], "Alt") --Refined Hammer of the Titans
    LBIS:AddItem(spec4, "228666", LBIS.L["Main Hand"], "Alt") --Seeping Willow
    LBIS:AddItem(spec4, "221446", LBIS.L["Main Hand"], "Alt") --Ritualist's Hammer
    LBIS:AddItem(spec4, "220596", LBIS.L["Main Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec4, "228181", LBIS.L["Ranged/Relic"], "BIS") --Idol of Exsanguination (Cat)
    LBIS:AddItem(spec4, "23198", LBIS.L["Ranged/Relic"], "BIS") --Idol of Brutality
    LBIS:AddItem(spec4, "220606", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Dream
    LBIS:AddItem(spec4, "228182", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Bear)

    LBIS:AddItem(spec5, "226659", LBIS.L["Head"], "BIS") --Cenarion Horns
    LBIS:AddItem(spec5, "226670", LBIS.L["Head"], "BIS") --Cenarion Crown
    LBIS:AddItem(spec5, "226819", LBIS.L["Head"], "Alt") --Feralheart Helm
    LBIS:AddItem(spec5, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec5, "226707", LBIS.L["Head"], "Alt") --Shadowcraft Cap
    LBIS:AddItem(spec5, "215166", LBIS.L["Head"], "Alt") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec5, "228500", LBIS.L["Head"], "Alt") --Mask of the Unforgiven
    LBIS:AddItem(spec5, "226665", LBIS.L["Shoulder"], "BIS") --Cenarion Shoulders
    LBIS:AddItem(spec5, "226674", LBIS.L["Shoulder"], "BIS") --Cenarion Pauldrons
    LBIS:AddItem(spec5, "20194", LBIS.L["Shoulder"], "Alt") --Defiler's Leather Shoulders
    LBIS:AddItem(spec5, "227175", LBIS.L["Shoulder"], "Alt") --Champion's Dragonhide Shoulders
    LBIS:AddItem(spec5, "227172", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Dragonhide Shoulders
    LBIS:AddItem(spec5, "226817", LBIS.L["Shoulder"], "Alt") --Feralheart Shoulders
    LBIS:AddItem(spec5, "226706", LBIS.L["Shoulder"], "Alt") --Shadowcraft Spaulders
    LBIS:AddItem(spec5, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec5, "227854", LBIS.L["Back"], "BIS") --Mastercrafted Shifting Cloak
    LBIS:AddItem(spec5, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec5, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec5, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec5, "226661", LBIS.L["Chest"], "BIS") --Cenarion Tunic
    LBIS:AddItem(spec5, "227803", LBIS.L["Chest"], "BIS") --Dire Warbear Harness
    LBIS:AddItem(spec5, "226675", LBIS.L["Chest"], "BIS") --Cenarion Armor
    LBIS:AddItem(spec5, "226795", LBIS.L["Chest"], "Alt") --Feralheart Tunic
    LBIS:AddItem(spec5, "227176", LBIS.L["Chest"], "Alt") --Knight-Captain's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "227179", LBIS.L["Chest"], "Alt") --Legionnaire's Dragonhide Chestpiece
    LBIS:AddItem(spec5, "228101", LBIS.L["Chest"], "Alt") --Hide of the Behemoth
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "226668", LBIS.L["Wrist"], "BIS") --Cenarion Wristguards
    LBIS:AddItem(spec5, "226662", LBIS.L["Wrist"], "Alt") --Cenarion Bands
    LBIS:AddItem(spec5, "226788", LBIS.L["Wrist"], "Alt") --Feralheart Bands
    LBIS:AddItem(spec5, "226664", LBIS.L["Hands"], "BIS") --Cenarion Fists
    LBIS:AddItem(spec5, "226669", LBIS.L["Hands"], "BIS") --Cenarion Grips
    LBIS:AddItem(spec5, "228257", LBIS.L["Hands"], "Alt") --Aged Core Leather Gloves
    LBIS:AddItem(spec5, "226793", LBIS.L["Hands"], "Alt") --Feralheart Fists
    LBIS:AddItem(spec5, "227183", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Dragonhide Grips
    LBIS:AddItem(spec5, "227805", LBIS.L["Waist"], "BIS") --Ferocity of the Timbermaw
    LBIS:AddItem(spec5, "226667", LBIS.L["Waist"], "BIS") --Cenarion Waistguard
    LBIS:AddItem(spec5, "226660", LBIS.L["Waist"], "Alt") --Cenarion Girdle
    LBIS:AddItem(spec5, "226789", LBIS.L["Waist"], "Alt") --Feralheart Girdle
    LBIS:AddItem(spec5, "13252", LBIS.L["Waist"], "Alt") --Cloudrunner Girdle
    LBIS:AddItem(spec5, "226666", LBIS.L["Legs"], "BIS") --Cenarion Trousers
    LBIS:AddItem(spec5, "226671", LBIS.L["Legs"], "BIS") --Cenarion Legguards
    LBIS:AddItem(spec5, "227804", LBIS.L["Legs"], "Alt") --Dire Warbear Woolies
    LBIS:AddItem(spec5, "226791", LBIS.L["Legs"], "Alt") --Feralheart Trousers
    LBIS:AddItem(spec5, "227178", LBIS.L["Legs"], "Alt") --Knight-Captain's Dragonhide Leggings
    LBIS:AddItem(spec5, "227177", LBIS.L["Legs"], "Alt") --Legionnaire's Dragonhide Leggings
    LBIS:AddItem(spec5, "228534", LBIS.L["Legs"], "Alt") --Plaguehound Leggings
    LBIS:AddItem(spec5, "16709", LBIS.L["Legs"], "Alt") --Shadowcraft Pants
    LBIS:AddItem(spec5, "226663", LBIS.L["Feet"], "BIS") --Cenarion Treads
    LBIS:AddItem(spec5, "226673", LBIS.L["Feet"], "BIS") --Cenarion Walkers
    LBIS:AddItem(spec5, "227815", LBIS.L["Feet"], "Alt") --Fine Dawn Treaders
    LBIS:AddItem(spec5, "226794", LBIS.L["Feet"], "Alt") --Feralheart Walkers
    LBIS:AddItem(spec5, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec5, "227182", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Dragonhide Treads
    LBIS:AddItem(spec5, "228249", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "22340", LBIS.L["Neck"], "Alt") --Pendant of Celerity
    LBIS:AddItem(spec5, "22150", LBIS.L["Neck"], "Alt") --Beads of Ogre Might
    LBIS:AddItem(spec5, "228242", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec5, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec5, "19510", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec5, "19514", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec5, "18500", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec5, "228686", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec5, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec5, "228089", LBIS.L["Trinket"], "BIS") --Woodcarved Moonstalker
    LBIS:AddItem(spec5, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec5, "227915", LBIS.L["Trinket"], "Alt") --Duke's Domain
    LBIS:AddItem(spec5, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec5, "227683", LBIS.L["Main Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec5, "227833", LBIS.L["Main Hand"], "Alt") --Glaive of Obsidian Fury
    LBIS:AddItem(spec5, "228272", LBIS.L["Main Hand"], "Alt") --Shadowstrike
    LBIS:AddItem(spec5, "228230", LBIS.L["Main Hand"], "Alt") --Refined Hammer of the Titans
    LBIS:AddItem(spec5, "228666", LBIS.L["Main Hand"], "Alt") --Seeping Willow
    LBIS:AddItem(spec5, "221446", LBIS.L["Main Hand"], "Alt") --Ritualist's Hammer
    LBIS:AddItem(spec5, "220596", LBIS.L["Main Hand"], "Alt") --Ancient Divining Rod
    LBIS:AddItem(spec5, "228181", LBIS.L["Ranged/Relic"], "BIS") --Idol of Exsanguination (Cat)
    LBIS:AddItem(spec5, "23198", LBIS.L["Ranged/Relic"], "BIS") --Idol of Brutality
    LBIS:AddItem(spec5, "220606", LBIS.L["Ranged/Relic"], "Alt") --Idol of the Dream
    LBIS:AddItem(spec5, "228182", LBIS.L["Ranged/Relic"], "Alt") --Idol of Exsanguination (Bear)

    LBIS:AddItem(spec6, "233412", LBIS.L["Head"], "BIS") --Genesis Helm
    LBIS:AddItem(spec6, "233522", LBIS.L["Head"], "BIS") --Guise of the Devourer
    LBIS:AddItem(spec6, "234084", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec6, "233808", LBIS.L["Head"], "Alt") --Razorbramble Cowl
    LBIS:AddItem(spec6, "231241", LBIS.L["Head"], "Alt") --Stormrage Headdress
    LBIS:AddItem(spec6, "231687", LBIS.L["Head"], "Alt") --Warlord's Dragonhide Headguard
    LBIS:AddItem(spec6, "226670", LBIS.L["Head"], "Alt") --Cenarion Crown
    LBIS:AddItem(spec6, "233709", LBIS.L["Head"], "Alt") --Genesis Cowl
    LBIS:AddItem(spec6, "233413", LBIS.L["Shoulder"], "BIS") --Genesis Shoulderpads
    LBIS:AddItem(spec6, "231243", LBIS.L["Shoulder"], "Alt") --Stormrage Spaulders
    LBIS:AddItem(spec6, "233804", LBIS.L["Shoulder"], "Alt") --Razorbramble Shoulderpads
    LBIS:AddItem(spec6, "231684", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Shoulders
    LBIS:AddItem(spec6, "226674", LBIS.L["Shoulder"], "Alt") --Cenarion Pauldrons
    LBIS:AddItem(spec6, "231259", LBIS.L["Shoulder"], "Alt") --Stormrage Shoulderpads
    LBIS:AddItem(spec6, "233606", LBIS.L["Back"], "BIS") --Cloak of the Golden Hive
    LBIS:AddItem(spec6, "234113", LBIS.L["Back"], "BIS") --Sandstorm Cloak
    LBIS:AddItem(spec6, "233418", LBIS.L["Back"], "Alt") --Cloak of Unending Life
    LBIS:AddItem(spec6, "230744", LBIS.L["Back"], "Alt") --Elementium Threaded Cloak
    LBIS:AddItem(spec6, "228360", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec6, "15138", LBIS.L["Back"], "Alt") --Onyxia Scale Cloak
    LBIS:AddItem(spec6, "233415", LBIS.L["Chest"], "BIS") --Genesis Vest
    LBIS:AddItem(spec6, "231686", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Chestpiece
    LBIS:AddItem(spec6, "231238", LBIS.L["Chest"], "Alt") --Stormrage Armor
    LBIS:AddItem(spec6, "233813", LBIS.L["Chest"], "Alt") --Razorbramble Leathers
    LBIS:AddItem(spec6, "234077", LBIS.L["Chest"], "Alt") --Thick Silithid Chestguard
    LBIS:AddItem(spec6, "227803", LBIS.L["Chest"], "Alt") --Dire Warbear Harness
    LBIS:AddItem(spec6, "226675", LBIS.L["Chest"], "Alt") --Cenarion Armor
    LBIS:AddItem(spec6, "233711", LBIS.L["Chest"], "Alt") --Genesis Armor
    LBIS:AddItem(spec6, "233612", LBIS.L["Wrist"], "BIS") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "233506", LBIS.L["Wrist"], "Alt") --Beetle Scaled Wristguards
    LBIS:AddItem(spec6, "231245", LBIS.L["Wrist"], "Alt") --Stormrage Wristguards
    LBIS:AddItem(spec6, "226668", LBIS.L["Wrist"], "Alt") --Cenarion Wristguards
    LBIS:AddItem(spec6, "233618", LBIS.L["Hands"], "BIS") --Gloves of the Hidden Temple
    LBIS:AddItem(spec6, "233579", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec6, "233645", LBIS.L["Hands"], "Alt") --Gloves of the Immortal
    LBIS:AddItem(spec6, "234066", LBIS.L["Hands"], "Alt") --Toughened Silithid Hide Gloves
    LBIS:AddItem(spec6, "231240", LBIS.L["Hands"], "Alt") --Stormrage Gauntlets
    LBIS:AddItem(spec6, "231688", LBIS.L["Hands"], "Alt") --General's Dragonhide Grips
    LBIS:AddItem(spec6, "226669", LBIS.L["Hands"], "Alt") --Cenarion Grips
    LBIS:AddItem(spec6, "231256", LBIS.L["Hands"], "Alt") --Stormrage Grips
    LBIS:AddItem(spec6, "233635", LBIS.L["Waist"], "BIS") --Belt of Never-ending Agony
    LBIS:AddItem(spec6, "233577", LBIS.L["Waist"], "BIS") --Thick Qirajihide Belt
    LBIS:AddItem(spec6, "231244", LBIS.L["Waist"], "Alt") --Stormrage Waistguard
    LBIS:AddItem(spec6, "226667", LBIS.L["Waist"], "Alt") --Cenarion Waistguard
    LBIS:AddItem(spec6, "233416", LBIS.L["Legs"], "BIS") --Genesis Trousers
    LBIS:AddItem(spec6, "231685", LBIS.L["Legs"], "Alt") --General's Dragonhide Leggings
    LBIS:AddItem(spec6, "231258", LBIS.L["Legs"], "Alt") --Stormrage Trousers
    LBIS:AddItem(spec6, "234163", LBIS.L["Legs"], "Alt") --Dark Heart Pants
    LBIS:AddItem(spec6, "227804", LBIS.L["Legs"], "Alt") --Dire Warbear Woolies
    LBIS:AddItem(spec6, "226671", LBIS.L["Legs"], "Alt") --Cenarion Legguards
    LBIS:AddItem(spec6, "233710", LBIS.L["Legs"], "Alt") --Genesis Leather Pants
    LBIS:AddItem(spec6, "233414", LBIS.L["Feet"], "BIS") --Genesis Boots
    LBIS:AddItem(spec6, "233590", LBIS.L["Feet"], "BIS") --Hive Tunneler's Boots
    LBIS:AddItem(spec6, "231239", LBIS.L["Feet"], "Alt") --Stormrage Treads
    LBIS:AddItem(spec6, "230805", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec6, "231683", LBIS.L["Feet"], "Alt") --General's Dragonhide Treads
    LBIS:AddItem(spec6, "226673", LBIS.L["Feet"], "Alt") --Cenarion Walkers
    LBIS:AddItem(spec6, "233712", LBIS.L["Feet"], "Alt") --Genesis Stompers
    LBIS:AddItem(spec6, "233642", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec6, "230840", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec6, "234814", LBIS.L["Neck"], "Alt Mit") --Pendant of the Shifting Sands
    LBIS:AddItem(spec6, "234116", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec6, "228249", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec6, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec6, "234031", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "234034", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "233600", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "233524", LBIS.L["Ring"], "Alt Mit") --Angelista's Touch
    LBIS:AddItem(spec6, "233615", LBIS.L["Ring"], "Alt Mit") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec6, "233419", LBIS.L["Ring"], "Alt") --Band of Unending Life
    LBIS:AddItem(spec6, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "230839", LBIS.L["Ring"], "Alt") --Master Dragonslayer's Ring
    LBIS:AddItem(spec6, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec6, "228242", LBIS.L["Ring"], "Alt Mit") --Heavy Dark Iron Ring
    LBIS:AddItem(spec6, "233992", LBIS.L["Trinket"], "BIS") --Lodestone of Retaliation
    LBIS:AddItem(spec6, "228686", LBIS.L["Trinket"], "BIS Mit") --Onyxia Blood Talisman
    LBIS:AddItem(spec6, "228293", LBIS.L["Trinket"], "BIS") --Essence of the Pure Flame
    LBIS:AddItem(spec6, "231779", LBIS.L["Trinket"], "Alt") --Wrath of Wray
    LBIS:AddItem(spec6, "233628", LBIS.L["Trinket"], "Alt Mit") --The Burrower's Shell
    LBIS:AddItem(spec6, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec6, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "235012", LBIS.L["Main Hand"], "BIS") --Mace of Unending Life
    LBIS:AddItem(spec6, "234548", LBIS.L["Main Hand"], "Alt") --High Warlord's Pig Poker
    LBIS:AddItem(spec6, "234570", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Polearm
    LBIS:AddItem(spec6, "234978", LBIS.L["Main Hand"], "Alt") --Jaw of the Sand Reaver
    LBIS:AddItem(spec6, "234547", LBIS.L["Main Hand"], "Alt Mit") --High Warlord's Pig Sticker
    LBIS:AddItem(spec6, "234569", LBIS.L["Main Hand"], "Alt Mit") --Grand Marshal's Glaive
    LBIS:AddItem(spec6, "234747", LBIS.L["Main Hand"], "Alt Mit") --Fist of Cenarius
    LBIS:AddItem(spec6, "234999", LBIS.L["Main Hand"], "Alt") --Blessed Qiraji War Hammer
    LBIS:AddItem(spec6, "227683", LBIS.L["Main Hand"], "Alt") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec6, "224282", LBIS.L["Main Hand"], "Alt") --Rae'lar
    LBIS:AddItem(spec6, "232424", LBIS.L["Ranged/Relic"], "BIS") --Idol of Cruelty
    LBIS:AddItem(spec6, "234468", LBIS.L["Ranged/Relic"], "BIS") --Idol of Ursin Power
    LBIS:AddItem(spec6, "234469", LBIS.L["Ranged/Relic"], "BIS") --Idol of Feline Ferocity
    LBIS:AddItem(spec6, "23198", LBIS.L["Ranged/Relic"], "Alt") --Idol of Brutality

    LBIS:AddItem(spec7, "236205", LBIS.L["Head"], "BIS") --Dreamwalker Headdress
    LBIS:AddItem(spec7, "233412", LBIS.L["Head"], "BIS") --Genesis Helm
    LBIS:AddItem(spec7, "233522", LBIS.L["Head"], "BIS") --Guise of the Devourer
    LBIS:AddItem(spec7, "234084", LBIS.L["Head"], "Alt") --Southwind Helm
    LBIS:AddItem(spec7, "233808", LBIS.L["Head"], "Alt") --Razorbramble Cowl
    LBIS:AddItem(spec7, "231241", LBIS.L["Head"], "Alt") --Stormrage Headdress
    LBIS:AddItem(spec7, "231687", LBIS.L["Head"], "Alt") --Warlord's Dragonhide Headguard
    LBIS:AddItem(spec7, "226670", LBIS.L["Head"], "Alt") --Cenarion Crown
    LBIS:AddItem(spec7, "236203", LBIS.L["Shoulder"], "BIS") --Dreamwalker Pauldrons
    LBIS:AddItem(spec7, "233413", LBIS.L["Shoulder"], "BIS") --Genesis Shoulderpads
    LBIS:AddItem(spec7, "231243", LBIS.L["Shoulder"], "Alt") --Stormrage Spaulders
    LBIS:AddItem(spec7, "233804", LBIS.L["Shoulder"], "Alt") --Razorbramble Shoulderpads
    LBIS:AddItem(spec7, "231684", LBIS.L["Shoulder"], "Alt") --Warlord's Dragonhide Shoulders
    LBIS:AddItem(spec7, "226674", LBIS.L["Shoulder"], "Alt") --Cenarion Pauldrons
    LBIS:AddItem(spec7, "236258", LBIS.L["Back"], "BIS") --Cryptfiend Silk Cloak
    LBIS:AddItem(spec7, "236333", LBIS.L["Back"], "Alt") --Shroud of Dominion
    LBIS:AddItem(spec7, "233606", LBIS.L["Back"], "Alt") --Cloak of the Golden Hive
    LBIS:AddItem(spec7, "234113", LBIS.L["Back"], "Alt Mit") --Sandstorm Cloak
    LBIS:AddItem(spec7, "230744", LBIS.L["Back"], "Alt") --Elementium Threaded Cloak
    LBIS:AddItem(spec7, "233418", LBIS.L["Back"], "Alt") --Cloak of Unending Life
    LBIS:AddItem(spec7, "15138", LBIS.L["Back"], "Alt") --Onyxia Scale Cloak
    LBIS:AddItem(spec7, "236209", LBIS.L["Chest"], "BIS") --Dreamwalker Armor
    LBIS:AddItem(spec7, "236733", LBIS.L["Chest"], "BIS") --Tunic of Undead Warding
    LBIS:AddItem(spec7, "233415", LBIS.L["Chest"], "Alt") --Genesis Vest
    LBIS:AddItem(spec7, "231686", LBIS.L["Chest"], "Alt") --Warlord's Dragonhide Chestpiece
    LBIS:AddItem(spec7, "231238", LBIS.L["Chest"], "Alt") --Stormrage Armor
    LBIS:AddItem(spec7, "233813", LBIS.L["Chest"], "Alt") --Razorbramble Leathers
    LBIS:AddItem(spec7, "227803", LBIS.L["Chest"], "Alt") --Dire Warbear Harness
    LBIS:AddItem(spec7, "226675", LBIS.L["Chest"], "Alt") --Cenarion Armor
    LBIS:AddItem(spec7, "236201", LBIS.L["Wrist"], "BIS") --Dreamwalker Bracers
    LBIS:AddItem(spec7, "236731", LBIS.L["Wrist"], "BIS") --Wristwraps of Undead Warding
    LBIS:AddItem(spec7, "233612", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec7, "233506", LBIS.L["Wrist"], "Alt") --Beetle Scaled Wristguards
    LBIS:AddItem(spec7, "231245", LBIS.L["Wrist"], "Alt") --Stormrage Wristguards
    LBIS:AddItem(spec7, "226668", LBIS.L["Wrist"], "Alt") --Cenarion Wristguards
    LBIS:AddItem(spec7, "236206", LBIS.L["Hands"], "BIS") --Dreamwalker Gauntlets
    LBIS:AddItem(spec7, "236732", LBIS.L["Hands"], "BIS") --Handwraps of Undead Warding
    LBIS:AddItem(spec7, "233618", LBIS.L["Hands"], "Alt") --Gloves of the Hidden Temple
    LBIS:AddItem(spec7, "233579", LBIS.L["Hands"], "Alt") --Gloves of Enforcement
    LBIS:AddItem(spec7, "233645", LBIS.L["Hands"], "Alt") --Gloves of the Immortal
    LBIS:AddItem(spec7, "234066", LBIS.L["Hands"], "Alt") --Toughened Silithid Hide Gloves
    LBIS:AddItem(spec7, "231240", LBIS.L["Hands"], "Alt") --Stormrage Gauntlets
    LBIS:AddItem(spec7, "231688", LBIS.L["Hands"], "Alt") --General's Dragonhide Grips
    LBIS:AddItem(spec7, "226669", LBIS.L["Hands"], "Alt") --Cenarion Grips
    LBIS:AddItem(spec7, "236202", LBIS.L["Waist"], "BIS") --Dreamwalker Waistguard
    LBIS:AddItem(spec7, "233635", LBIS.L["Waist"], "Alt") --Belt of Never-ending Agony
    LBIS:AddItem(spec7, "233577", LBIS.L["Waist"], "Alt") --Thick Qirajihide Belt
    LBIS:AddItem(spec7, "231244", LBIS.L["Waist"], "Alt") --Stormrage Waistguard
    LBIS:AddItem(spec7, "226667", LBIS.L["Waist"], "Alt") --Cenarion Waistguard
    LBIS:AddItem(spec7, "236204", LBIS.L["Legs"], "BIS") --Dreamwalker Leggings
    LBIS:AddItem(spec7, "233416", LBIS.L["Legs"], "Alt") --Genesis Trousers
    LBIS:AddItem(spec7, "231685", LBIS.L["Legs"], "Alt") --General's Dragonhide Leggings
    LBIS:AddItem(spec7, "231258", LBIS.L["Legs"], "Alt") --Stormrage Trousers
    LBIS:AddItem(spec7, "234163", LBIS.L["Legs"], "Alt") --Dark Heart Pants
    LBIS:AddItem(spec7, "227804", LBIS.L["Legs"], "Alt") --Dire Warbear Woolies
    LBIS:AddItem(spec7, "226671", LBIS.L["Legs"], "Alt") --Cenarion Legguards
    LBIS:AddItem(spec7, "236208", LBIS.L["Feet"], "BIS") --Dreamwalker Sabatons
    LBIS:AddItem(spec7, "233414", LBIS.L["Feet"], "Alt") --Genesis Boots
    LBIS:AddItem(spec7, "233590", LBIS.L["Feet"], "Alt") --Hive Tunneler's Boots
    LBIS:AddItem(spec7, "231239", LBIS.L["Feet"], "Alt") --Stormrage Treads
    LBIS:AddItem(spec7, "230805", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec7, "231683", LBIS.L["Feet"], "Alt") --General's Dragonhide Treads
    LBIS:AddItem(spec7, "226673", LBIS.L["Feet"], "Alt") --Cenarion Walkers
    LBIS:AddItem(spec7, "233642", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec7, "235886", LBIS.L["Neck"], "BIS") --Kaigy's Clasp
    LBIS:AddItem(spec7, "236782", LBIS.L["Neck"], "BIS Mit") --Sairuh's Collar
    LBIS:AddItem(spec7, "237280", LBIS.L["Neck"], "Alt") --Medallion of the Dawn
    LBIS:AddItem(spec7, "230840", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec7, "234814", LBIS.L["Neck"], "Alt Mit") --Pendant of the Shifting Sands
    LBIS:AddItem(spec7, "234116", LBIS.L["Neck"], "Alt") --Fury of the Forgotten Swarm
    LBIS:AddItem(spec7, "228249", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec7, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec7, "236207", LBIS.L["Ring"], "BIS") --Loop of the Dreamwalker
    LBIS:AddItem(spec7, "236311", LBIS.L["Ring"], "BIS") --Signet of the Fallen Defender
    LBIS:AddItem(spec7, "237285", LBIS.L["Ring"], "BIS") --Band of Resolution
    LBIS:AddItem(spec7, "235885", LBIS.L["Ring"], "Alt") --Ghastly Ring
    LBIS:AddItem(spec7, "234031", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec7, "234034", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec7, "233600", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec7, "233524", LBIS.L["Ring"], "Alt Mit") --Angelista's Touch
    LBIS:AddItem(spec7, "233615", LBIS.L["Ring"], "Alt Mit") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec7, "233419", LBIS.L["Ring"], "Alt") --Band of Unending Life
    LBIS:AddItem(spec7, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec7, "228242", LBIS.L["Ring"], "Alt Mit") --Heavy Dark Iron Ring
    LBIS:AddItem(spec7, "236268", LBIS.L["Trinket"], "BIS") --Kiss of the Spider
    LBIS:AddItem(spec7, "233992", LBIS.L["Trinket"], "BIS") --Lodestone of Retaliation
    LBIS:AddItem(spec7, "228686", LBIS.L["Trinket"], "Alt") --Onyxia Blood Talisman
    LBIS:AddItem(spec7, "236334", LBIS.L["Trinket"], "Alt") --Slayer's Crest
    LBIS:AddItem(spec7, "231779", LBIS.L["Trinket"], "Alt") --Wrath of Wray
    LBIS:AddItem(spec7, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec7, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec7, "233628", LBIS.L["Trinket"], "Alt Mit") --The Burrower's Shell
    LBIS:AddItem(spec7, "228293", LBIS.L["Trinket"], "Alt") --Essence of the Pure Flame
    LBIS:AddItem(spec7, "236352", LBIS.L["Trinket"], "Alt") --Mark of the Champion
    LBIS:AddItem(spec7, "230282", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec7, "235889", LBIS.L["Main Hand"], "BIS") --Servant's Quarterstaff
    LBIS:AddItem(spec7, "236285", LBIS.L["Main Hand"], "BIS") --The Eye of Nerub
    LBIS:AddItem(spec7, "235012", LBIS.L["Main Hand"], "Alt") --Mace of Unending Life
    LBIS:AddItem(spec7, "234548", LBIS.L["Main Hand"], "Alt") --High Warlord's Pig Poker
    LBIS:AddItem(spec7, "234570", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Polearm
    LBIS:AddItem(spec7, "234978", LBIS.L["Main Hand"], "Alt") --Jaw of the Sand Reaver
    LBIS:AddItem(spec7, "234547", LBIS.L["Main Hand"], "Alt Mit") --High Warlord's Pig Sticker
    LBIS:AddItem(spec7, "234569", LBIS.L["Main Hand"], "Alt Mit") --Grand Marshal's Glaive
    LBIS:AddItem(spec7, "234747", LBIS.L["Main Hand"], "Alt Mit") --Fist of Cenarius
    LBIS:AddItem(spec7, "234999", LBIS.L["Main Hand"], "Alt") --Blessed Qiraji War Hammer
    LBIS:AddItem(spec7, "227683", LBIS.L["Main Hand"], "Alt") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec7, "224282", LBIS.L["Main Hand"], "Alt") --Rae'lar
    LBIS:AddItem(spec7, "232424", LBIS.L["Ranged/Relic"], "BIS") --Idol of Cruelty
    LBIS:AddItem(spec7, "234468", LBIS.L["Ranged/Relic"], "BIS") --Idol of Ursin Power
end
if LBIS.IsSOD then
    LoadData();
end
