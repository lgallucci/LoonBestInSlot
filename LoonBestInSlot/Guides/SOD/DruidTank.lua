local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Druid"], LBIS.L["Tank"], "4")

    LBIS:AddEnchant(spec3, "15397", LBIS.L["Head"]) --Lesser Arcanum of Voracity
    LBIS:AddEnchant(spec3, "446451", LBIS.L["Shoulder"]) --Atal'ai Signet of Might
    LBIS:AddEnchant(spec3, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec3, "13941", LBIS.L["Chest"]) --Enchant Chest - Stats
    LBIS:AddEnchant(spec3, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec3, "13887", LBIS.L["Hands"]) --Enchant Gloves - Strength
    LBIS:AddEnchant(spec3, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec3, "7218", LBIS.L["Main Hand"]) --Weapon Counterweight

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
end
if C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
