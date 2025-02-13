local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Tank"], "7")

    LBIS:AddEnchant(spec7, "468328", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec7, "1219512", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "24422", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219587", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec7, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec7, "1213616", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec7, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec7, "13948", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec7, "468328", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec7, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec7, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec7, "13689", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec7, "463871", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec7, "24160", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec7, "22840", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec7, "446451", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "22840", LBIS.L["Legs"]) --

    LBIS:AddItem(spec0, "226607", LBIS.L["Head"], "BIS") --Lawbringer Headguard
    LBIS:AddItem(spec0, "233795", LBIS.L["Head"], "Alt Stam") --Razorspike Headcage
    LBIS:AddItem(spec0, "235871", LBIS.L["Head"], "Alt") --Clutching Death Helm
    LBIS:AddItem(spec0, "227144", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec0, "22411", LBIS.L["Head"], "Alt") --Helm of the Executioner
    LBIS:AddItem(spec0, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec0, "226605", LBIS.L["Shoulder"], "BIS") --Lawbringer Pauldrons
    LBIS:AddItem(spec0, "233793", LBIS.L["Shoulder"], "Alt Stam") --Razorspike Shoulderplates
    LBIS:AddItem(spec0, "228058", LBIS.L["Shoulder"], "Alt Mit") --Bulky Iron Spaulders
    LBIS:AddItem(spec0, "227145", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec0, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec0, "19695", LBIS.L["Shoulder"], "Alt") --Darksoul Shoulders
    LBIS:AddItem(spec0, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec0, "220738", LBIS.L["Shoulder"], "Alt") --Shoulderplates of Dread
    LBIS:AddItem(spec0, "227854", LBIS.L["Back"], "BIS") --Mastercrafted Shifting Cloak
    LBIS:AddItem(spec0, "20073", LBIS.L["Back"], "BIS") --Cloak of the Honor Guard
    LBIS:AddItem(spec0, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec0, "236690", LBIS.L["Back"], "Alt") --Glacial Cloak
    LBIS:AddItem(spec0, "233737", LBIS.L["Back"], "Alt") --Blood-Caked Cloak
    LBIS:AddItem(spec0, "13397", LBIS.L["Back"], "Alt") --Stoneskin Gargoyle Cape
    LBIS:AddItem(spec0, "226595", LBIS.L["Chest"], "BIS") --Lawbringer Chestguard
    LBIS:AddItem(spec0, "236748", LBIS.L["Chest"], "Alt") --Breastplate of Undead Warding
    LBIS:AddItem(spec0, "236695", LBIS.L["Chest"], "Alt") --Icebane Breastplate
    LBIS:AddItem(spec0, "233492", LBIS.L["Chest"], "Alt Stam") --Razorspike Battleplate
    LBIS:AddItem(spec0, "228000", LBIS.L["Chest"], "Alt Mit") --Deathbone Chestplate
    LBIS:AddItem(spec0, "227142", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec0, "226770", LBIS.L["Chest"], "Alt") --Breastplate of Valor
    LBIS:AddItem(spec0, "19693", LBIS.L["Chest"], "Alt") --Darksoul Breastplate
    LBIS:AddItem(spec0, "231174", LBIS.L["Wrist"], "BIS") --Judgement Bindings
    LBIS:AddItem(spec0, "236746", LBIS.L["Wrist"], "Alt") --Bracers of Undead Warding
    LBIS:AddItem(spec0, "236696", LBIS.L["Wrist"], "Alt") --Icebane Bracers
    LBIS:AddItem(spec0, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec0, "226985", LBIS.L["Wrist"], "Alt Mit") --Soulforge Wristguards
    LBIS:AddItem(spec0, "226970", LBIS.L["Wrist"], "Alt") --Soulforge Bracers
    LBIS:AddItem(spec0, "228513", LBIS.L["Wrist"], "Alt") --Vambraces of the Sadist
    LBIS:AddItem(spec0, "221027", LBIS.L["Wrist"], "Alt") --Void-Powered Protector's Vambraces
    LBIS:AddItem(spec0, "231179", LBIS.L["Hands"], "BIS") --Judgement Gauntlets
    LBIS:AddItem(spec0, "236747", LBIS.L["Hands"], "Alt") --Gauntlets of Undead Warding
    LBIS:AddItem(spec0, "236697", LBIS.L["Hands"], "Alt") --Icebane Gauntlets
    LBIS:AddItem(spec0, "227817", LBIS.L["Hands"], "Alt") --Radiant Gloves of the Dawn
    LBIS:AddItem(spec0, "228006", LBIS.L["Hands"], "Alt Mit") --Deathbone Gauntlets
    LBIS:AddItem(spec0, "227885", LBIS.L["Hands"], "Alt") --Stronger-hold Gauntlets
    LBIS:AddItem(spec0, "227147", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec0, "228588", LBIS.L["Hands"], "Alt") --Reiver Claws
    LBIS:AddItem(spec0, "226771", LBIS.L["Hands"], "Alt") --Gauntlets of Valor
    LBIS:AddItem(spec0, "231175", LBIS.L["Waist"], "BIS") --Judgement Belt
    LBIS:AddItem(spec0, "228672", LBIS.L["Waist"], "Alt Mit") --Handcrafted Mastersmith Girdle
    LBIS:AddItem(spec0, "228002", LBIS.L["Waist"], "Alt Mit") --Deathbone Girdle
    LBIS:AddItem(spec0, "20041", LBIS.L["Waist"], "Alt") --Highlander's Plate Girdle
    LBIS:AddItem(spec0, "228670", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec0, "13959", LBIS.L["Waist"], "Alt") --Omokk's Girth Restrainer
    LBIS:AddItem(spec0, "226606", LBIS.L["Legs"], "BIS") --Lawbringer Legguards
    LBIS:AddItem(spec0, "228650", LBIS.L["Legs"], "BIS") --Warmaster Legguards
    LBIS:AddItem(spec0, "228008", LBIS.L["Legs"], "Alt Mit") --Deathbone Legguards
    LBIS:AddItem(spec0, "14554", LBIS.L["Legs"], "Alt") --Cloudkeeper Legplates
    LBIS:AddItem(spec0, "16435", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec0, "231180", LBIS.L["Feet"], "BIS") --Judgement Sabatons
    LBIS:AddItem(spec0, "227999", LBIS.L["Feet"], "BIS") --Deathbone Sabatons
    LBIS:AddItem(spec0, "227146", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec0, "20048", LBIS.L["Feet"], "Alt") --Highlander's Plate Greaves
    LBIS:AddItem(spec0, "236782", LBIS.L["Neck"], "BIS") --Sairuh's Collar
    LBIS:AddItem(spec0, "233729", LBIS.L["Neck"], "Alt") --Blood-Caked Choker
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "228088", LBIS.L["Neck"], "Alt Stam") --Shredder Operator's Dogtags
    LBIS:AddItem(spec0, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec0, "227988", LBIS.L["Neck"], "Alt") --Imperial Jewel
    LBIS:AddItem(spec0, "235885", LBIS.L["Ring"], "BIS") --Ghastly Ring
    LBIS:AddItem(spec0, "237285", LBIS.L["Ring"], "Alt") --Band of Resolution
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec0, "233733", LBIS.L["Ring"], "Alt") --Blood-Caked Ring
    LBIS:AddItem(spec0, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec0, "12548", LBIS.L["Ring"], "Alt") --Magni's Will
    LBIS:AddItem(spec0, "22331", LBIS.L["Ring"], "Alt Mit") --Band of the Steadfast Hero
    LBIS:AddItem(spec0, "11669", LBIS.L["Ring"], "Alt Mit") --Naglering
    LBIS:AddItem(spec0, "228057", LBIS.L["Ring"], "Alt") --Ring of Demonic Potency
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "228186", LBIS.L["Ring"], "Alt Thrt") --Abandoned Wedding Band
    LBIS:AddItem(spec0, "233992", LBIS.L["Trinket"], "BIS") --Lodestone of Retaliation
    LBIS:AddItem(spec0, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec0, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec0, "228113", LBIS.L["Trinket"], "Alt") --Cold Embrace
    LBIS:AddItem(spec0, "228083", LBIS.L["Trinket"], "Alt") --Gloaming Treeheart
    LBIS:AddItem(spec0, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec0, "228589", LBIS.L["Trinket"], "Alt Stam") --Heart of the Scale
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec0, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec0, "228084", LBIS.L["Trinket"], "Alt") --Miniaturized Fire Extinguisher
    LBIS:AddItem(spec0, "2802", LBIS.L["Trinket"], "Alt") --Blazing Emblem
    LBIS:AddItem(spec0, "228576", LBIS.L["Trinket"], "Alt Stam") --Smolderweb's Eye
    LBIS:AddItem(spec0, "221442", LBIS.L["Trinket"], "Alt Stam") --Roar of the Guardian
    LBIS:AddItem(spec0, "220633", LBIS.L["Trinket"], "Alt Mit") --Atal'ai Blood Ritual Badge
    LBIS:AddItem(spec0, "213350", LBIS.L["Trinket"], "Alt Stam") --Wirdal's Hardened Core
    LBIS:AddItem(spec0, "234579", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec0, "227840", LBIS.L["Main Hand"], "Alt") --Implacable Blackguard
    LBIS:AddItem(spec0, "227935", LBIS.L["Main Hand"], "Alt") --Hammer of the Fallen Thane
    LBIS:AddItem(spec0, "228026", LBIS.L["Main Hand"], "Alt") --Blade of Blackwood
    LBIS:AddItem(spec0, "227991", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec0, "228600", LBIS.L["Main Hand"], "Alt") --The Jaw Breaker
    LBIS:AddItem(spec0, "228028", LBIS.L["Main Hand"], "Alt") --Blade of Necromancy
    LBIS:AddItem(spec0, "227881", LBIS.L["Main Hand"], "Alt") --Tranquility
    LBIS:AddItem(spec0, "235868", LBIS.L["Off Hand"], "BIS Mit") --Bulwark of Ire
    LBIS:AddItem(spec0, "233988", LBIS.L["Off Hand"], "Alt") --Tuned Force Reactive Disk
    LBIS:AddItem(spec0, "234459", LBIS.L["Off Hand"], "Alt") --Jagged Obsidian Shield
    LBIS:AddItem(spec0, "234588", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Aegis
    LBIS:AddItem(spec0, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec0, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec0, "220600", LBIS.L["Off Hand"], "Alt") --Crest of Preeminence
    LBIS:AddItem(spec0, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec0, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec0, "13529", LBIS.L["Off Hand"], "Alt") --Husk of Nerub'enkan
    LBIS:AddItem(spec0, "234477", LBIS.L["Ranged/Relic"], "BIS") --Libram of Righteousness
    LBIS:AddItem(spec0, "232421", LBIS.L["Ranged/Relic"], "BIS") --Libram of Avenging
    LBIS:AddItem(spec0, "228174", LBIS.L["Ranged/Relic"], "Alt") --Libram of the Devoted
    LBIS:AddItem(spec0, "23203", LBIS.L["Ranged/Relic"], "Alt") --Libram of Fervor
    LBIS:AddItem(spec0, "221457", LBIS.L["Ranged/Relic"], "Alt") --Libram of Draconic Destruction
    LBIS:AddItem(spec0, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege

    LBIS:AddItem(spec1, "209690", LBIS.L["Head"], "BIS") --Shadowscale Coif
    LBIS:AddItem(spec1, "211843", LBIS.L["Head"], "Alt") --Mask of Scorn
    LBIS:AddItem(spec1, "211505", LBIS.L["Head"], "Alt") --Twilight Avenger's Helm
    LBIS:AddItem(spec1, "1282", LBIS.L["Head"], "Alt") --Sparkmetal Coif
    LBIS:AddItem(spec1, "209676", LBIS.L["Shoulder"], "BIS") --Shoulderguards of Crushing Depths
    LBIS:AddItem(spec1, "209824", LBIS.L["Shoulder"], "Alt") --Shimmering Shoulderpads
    LBIS:AddItem(spec1, "13131", LBIS.L["Shoulder"], "Alt") --Sparkleshell Mantle
    LBIS:AddItem(spec1, "210773", LBIS.L["Shoulder"], "Alt") --Mantle of the Second War
    LBIS:AddItem(spec1, "15531", LBIS.L["Shoulder"], "Alt") --Sentry's Shoulderguards
    LBIS:AddItem(spec1, "6597", LBIS.L["Shoulder"], "Alt") --Battleforge Shoulderguards
    LBIS:AddItem(spec1, "4835", LBIS.L["Shoulder"], "Alt") --Elite Shoulders
    LBIS:AddItem(spec1, "4705", LBIS.L["Shoulder"], "Alt") --Lambent Scale Pauldrons
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "7419", LBIS.L["Back"], "BIS") --Phalanx Cloak
    LBIS:AddItem(spec1, "9838", LBIS.L["Back"], "BIS") --Banded Cloak
    LBIS:AddItem(spec1, "15547", LBIS.L["Back"], "BIS") --Thick Scale Cloak
    LBIS:AddItem(spec1, "15537", LBIS.L["Back"], "BIS") --Wicked Chain Cloak
    LBIS:AddItem(spec1, "6593", LBIS.L["Back"], "BIS") --Battleforge Cloak
    LBIS:AddItem(spec1, "2059", LBIS.L["Back"], "Alt") --Sentry Cloak
    LBIS:AddItem(spec1, "14752", LBIS.L["Back"], "Alt") --Slayer's Cape
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "210794", LBIS.L["Chest"], "BIS") --Shifting Silver Breastplate
    LBIS:AddItem(spec1, "211504", LBIS.L["Chest"], "Alt") --Twilight Avenger's Chain
    LBIS:AddItem(spec1, "2870", LBIS.L["Chest"], "Alt") --Shining Silver Breastplate
    LBIS:AddItem(spec1, "6627", LBIS.L["Chest"], "Alt") --Mutant Scale Breastplate
    LBIS:AddItem(spec1, "6642", LBIS.L["Chest"], "Alt") --Phantom Armor
    LBIS:AddItem(spec1, "14744", LBIS.L["Chest"], "Alt") --Hulking Chestguard
    LBIS:AddItem(spec1, "204804", LBIS.L["Wrist"], "BIS") --Hydraxian Bangles
    LBIS:AddItem(spec1, "3228", LBIS.L["Wrist"], "BIS") --Jimmied Handcuffs
    LBIS:AddItem(spec1, "211463", LBIS.L["Wrist"], "Alt") --Chittering Beetle Clasps
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "Alt") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "209568", LBIS.L["Hands"], "BIS") --Algae Gauntlets
    LBIS:AddItem(spec1, "6595", LBIS.L["Hands"], "Alt") --Battleforge Gauntlets
    LBIS:AddItem(spec1, "3485", LBIS.L["Hands"], "Alt") --Green Iron Gauntlets
    LBIS:AddItem(spec1, "211457", LBIS.L["Waist"], "BIS") --Twilight Defender's Girdle
    LBIS:AddItem(spec1, "7107", LBIS.L["Waist"], "Alt") --Belt of the Stars
    LBIS:AddItem(spec1, "209566", LBIS.L["Legs"], "BIS") --Leggings of the Faithful
    LBIS:AddItem(spec1, "13010", LBIS.L["Legs"], "Alt") --Dreamsinger Legguards
    LBIS:AddItem(spec1, "15529", LBIS.L["Legs"], "Alt") --Sentry's Leggings
    LBIS:AddItem(spec1, "6596", LBIS.L["Legs"], "Alt") --Battleforge Legguards
    LBIS:AddItem(spec1, "6087", LBIS.L["Legs"], "Alt") --Chausses of Westfall
    LBIS:AddItem(spec1, "209689", LBIS.L["Feet"], "BIS") --Crabshell Waders
    LBIS:AddItem(spec1, "12982", LBIS.L["Feet"], "BIS") --Silver-linked Footguards
    LBIS:AddItem(spec1, "211506", LBIS.L["Feet"], "Alt") --Twilight Avenger's Boots
    LBIS:AddItem(spec1, "209581", LBIS.L["Feet"], "Alt") --Silver Hand Sabatons
    LBIS:AddItem(spec1, "3484", LBIS.L["Feet"], "Alt") --Green Iron Boots
    LBIS:AddItem(spec1, "209673", LBIS.L["Neck"], "BIS") --Glowing Fetish Amulet
    LBIS:AddItem(spec1, "209817", LBIS.L["Neck"], "Alt") --Voidwalker Brooch
    LBIS:AddItem(spec1, "209825", LBIS.L["Neck"], "Alt") --Droplet Choker
    LBIS:AddItem(spec1, "20444", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec1, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec1, "209565", LBIS.L["Ring"], "BIS") --Band of Deep Places
    LBIS:AddItem(spec1, "6321", LBIS.L["Ring"], "Alt") --Silverlaine's Family Seal
    LBIS:AddItem(spec1, "2933", LBIS.L["Ring"], "Alt") --Seal of Wrynn
    LBIS:AddItem(spec1, "20439", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec1, "209668", LBIS.L["Ring"], "Alt") --Signet of the Twilight Lord
    LBIS:AddItem(spec1, "20431", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec1, "21568", LBIS.L["Trinket"], "BIS") --Rune of Duty
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec1, "209525", LBIS.L["Main Hand"], "BIS") --Honed Darkwater Talwar
    LBIS:AddItem(spec1, "212582", LBIS.L["Main Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec1, "13024", LBIS.L["Main Hand"], "Alt") --Beazel's Basher
    LBIS:AddItem(spec1, "5191", LBIS.L["Main Hand"], "Alt") --Cruel Barb
    LBIS:AddItem(spec1, "209560", LBIS.L["Main Hand"], "Alt") --Hammer of Righteous Judgement
    LBIS:AddItem(spec1, "211460", LBIS.L["Off Hand"], "BIS") --Ancient Arctic Buckler
    LBIS:AddItem(spec1, "13079", LBIS.L["Off Hand"], "Alt") --Shield of Thorsen
    LBIS:AddItem(spec1, "209424", LBIS.L["Off Hand"], "Alt") --Shell Plate Barrier
    LBIS:AddItem(spec1, "6320", LBIS.L["Off Hand"], "Alt") --Commander's Crest
    LBIS:AddItem(spec1, "209562", LBIS.L["Two Hand"], "BIS") --Deadly Strike of the Hydra
    LBIS:AddItem(spec1, "204807", LBIS.L["Two Hand"], "Alt") --Fathomblade
    LBIS:AddItem(spec1, "6953", LBIS.L["Two Hand"], "Alt") --Verigan's Fist
    LBIS:AddItem(spec1, "209574", LBIS.L["Ranged/Relic"], "BIS") --Discarded Tenets of the Silver Hand

    LBIS:AddItem(spec2, "215161", LBIS.L["Head"], "BIS Mit") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec2, "10763", LBIS.L["Head"], "Alt") --Icemetal Barbute
    LBIS:AddItem(spec2, "7719", LBIS.L["Head"], "Alt") --Raging Berserker's Helm
    LBIS:AddItem(spec2, "14944", LBIS.L["Head"], "Alt") --Warbringer's Crown
    LBIS:AddItem(spec2, "20640", LBIS.L["Head"], "Alt") --Southsea Head Bucket
    LBIS:AddItem(spec2, "213305", LBIS.L["Shoulder"], "BIS") --Machined Alloy Shoulderplates
    LBIS:AddItem(spec2, "8144", LBIS.L["Shoulder"], "Alt") --Chromite Pauldrons
    LBIS:AddItem(spec2, "14909", LBIS.L["Shoulder"], "Alt") --Brutish Shoulders
    LBIS:AddItem(spec2, "7718", LBIS.L["Shoulder"], "Alt") --Herod's Shoulder
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "15382", LBIS.L["Back"], "Alt") --Rageclaw Cloak
    LBIS:AddItem(spec2, "217293", LBIS.L["Back"], "Alt") --Silky Spider Cape
    LBIS:AddItem(spec2, "216622", LBIS.L["Back"], "Alt") --Coagulated Cloak
    LBIS:AddItem(spec2, "213316", LBIS.L["Chest"], "BIS") --H.A.Z.A.R.D. Breastplate
    LBIS:AddItem(spec2, "210794", LBIS.L["Chest"], "BIS") --Shifting Silver Breastplate
    LBIS:AddItem(spec2, "10775", LBIS.L["Chest"], "Alt") --Carapace of Tuten'kash
    LBIS:AddItem(spec2, "19581", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec2, "14956", LBIS.L["Wrist"], "Alt") --Bloodforged Bindings
    LBIS:AddItem(spec2, "216701", LBIS.L["Wrist"], "Alt") --Sergeant Major's Plate Wristguards
    LBIS:AddItem(spec2, "9432", LBIS.L["Wrist"], "Alt") --Skullplate Bracers
    LBIS:AddItem(spec2, "213418", LBIS.L["Wrist"], "Alt") --Welded Truesilver Ringlets
    LBIS:AddItem(spec2, "13071", LBIS.L["Hands"], "BIS") --Plated Fist of Hakoo
    LBIS:AddItem(spec2, "213288", LBIS.L["Hands"], "Alt") --Grubbis Grubby Gauntlets
    LBIS:AddItem(spec2, "9410", LBIS.L["Hands"], "Alt") --Cragfists
    LBIS:AddItem(spec2, "14905", LBIS.L["Hands"], "Alt") --Brutish Gauntlets
    LBIS:AddItem(spec2, "215380", LBIS.L["Waist"], "BIS") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec2, "10768", LBIS.L["Waist"], "Alt") --Boar Champion's Belt
    LBIS:AddItem(spec2, "213327", LBIS.L["Waist"], "Alt") --Belt of the Trogg Berserker
    LBIS:AddItem(spec2, "20125", LBIS.L["Waist"], "Alt") --Highlander's Plate Girdle
    LBIS:AddItem(spec2, "8140", LBIS.L["Waist"], "Alt") --Chromite Girdle
    LBIS:AddItem(spec2, "10088", LBIS.L["Waist"], "Alt") --Gothic Plate Girdle
    LBIS:AddItem(spec2, "213330", LBIS.L["Legs"], "BIS") --H.A.Z.A.R.D. Legplates
    LBIS:AddItem(spec2, "10330", LBIS.L["Legs"], "Alt") --Scarlet Leggings
    LBIS:AddItem(spec2, "213335", LBIS.L["Feet"], "BIS") --H.A.Z.A.R.D. Boots
    LBIS:AddItem(spec2, "213294", LBIS.L["Feet"], "BIS") --Caverndeep Sabatons
    LBIS:AddItem(spec2, "20110", LBIS.L["Feet"], "Alt") --Highlander's Lamellar Greaves
    LBIS:AddItem(spec2, "13068", LBIS.L["Feet"], "Alt") --Obsidian Greaves
    LBIS:AddItem(spec2, "217306", LBIS.L["Feet"], "Alt") --Revelosh's Boots
    LBIS:AddItem(spec2, "14839", LBIS.L["Feet"], "Alt") --Tyrant's Greaves
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "213343", LBIS.L["Neck"], "BIS") --Justice Badge
    LBIS:AddItem(spec2, "13088", LBIS.L["Neck"], "Alt") --Gazlowe's Charm
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "BIS") --Protector's Band
    LBIS:AddItem(spec2, "216673", LBIS.L["Ring"], "Alt") --Talvash's Brilliant Gold Ring
    LBIS:AddItem(spec2, "13095", LBIS.L["Ring"], "Alt") --Assault Band
    LBIS:AddItem(spec2, "209565", LBIS.L["Ring"], "Alt") --Band of Deep Places
    LBIS:AddItem(spec2, "2262", LBIS.L["Ring"], "Alt") --Mark of Kern
    LBIS:AddItem(spec2, "213350", LBIS.L["Trinket"], "BIS Stam") --Wirdal's Hardened Core
    LBIS:AddItem(spec2, "216505", LBIS.L["Trinket"], "Alt") --Bloodlight Crusader's Radiance
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "21567", LBIS.L["Trinket"], "Alt Stam") --Rune of Duty
    LBIS:AddItem(spec2, "21568", LBIS.L["Trinket"], "Alt") --Rune of Duty
    LBIS:AddItem(spec2, "213286", LBIS.L["Main Hand"], "BIS") --Electrocutioner's Needle
    LBIS:AddItem(spec2, "209560", LBIS.L["Main Hand"], "BIS") --Hammer of Righteous Judgement
    LBIS:AddItem(spec2, "864", LBIS.L["Main Hand"], "Alt") --Knightly Longsword
    LBIS:AddItem(spec2, "213390", LBIS.L["Off Hand"], "BIS") --Whirling Truesilver Gearwall
    LBIS:AddItem(spec2, "7726", LBIS.L["Off Hand"], "Alt") --Aegis of the Scarlet Commander
    LBIS:AddItem(spec2, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec2, "1204", LBIS.L["Off Hand"], "Alt") --The Green Tower
    LBIS:AddItem(spec2, "10767", LBIS.L["Off Hand"], "Alt") --Savage Boar's Guard
    LBIS:AddItem(spec2, "210741", LBIS.L["Two Hand"], "BIS") --Automatic Crowd Pummeler
    LBIS:AddItem(spec2, "9425", LBIS.L["Two Hand"], "BIS") --Pendulum of Doom
    LBIS:AddItem(spec2, "213416", LBIS.L["Two Hand"], "Alt") --Thermaplugg's Rocket Cleaver
    LBIS:AddItem(spec2, "216506", LBIS.L["Two Hand"], "Alt") --Bloodlight Avenger's Edge
    LBIS:AddItem(spec2, "6830", LBIS.L["Two Hand"], "Alt") --Bonebiter
    LBIS:AddItem(spec2, "215435", LBIS.L["Ranged/Relic"], "BIS") --Libram of Benediction
    LBIS:AddItem(spec2, "209574", LBIS.L["Ranged/Relic"], "Alt") --Discarded Tenets of the Silver Hand

    LBIS:AddItem(spec3, "215161", LBIS.L["Head"], "BIS") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec3, "220804", LBIS.L["Head"], "Alt") --Knight-Lieutenant's Plate Helm
    LBIS:AddItem(spec3, "221781", LBIS.L["Head"], "Alt") --Avenguard Helm
    LBIS:AddItem(spec3, "221376", LBIS.L["Head"], "Alt") --Emerald Dream Helm
    LBIS:AddItem(spec3, "220738", LBIS.L["Shoulder"], "BIS") --Shoulderplates of Dread
    LBIS:AddItem(spec3, "220795", LBIS.L["Shoulder"], "Alt") --Knight-Lieutenant's Plate Pauldrons
    LBIS:AddItem(spec3, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec3, "223531", LBIS.L["Shoulder"], "Alt") --Big Bad Pauldrons
    LBIS:AddItem(spec3, "221381", LBIS.L["Shoulder"], "Alt") --Emerald Dream Pauldrons
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec3, "220609", LBIS.L["Back"], "BIS") --Drape of Nightfall
    LBIS:AddItem(spec3, "15190", LBIS.L["Back"], "Alt") --Grand Cloak
    LBIS:AddItem(spec3, "18441", LBIS.L["Back"], "Alt") --Sergeant's Cape
    LBIS:AddItem(spec3, "216622", LBIS.L["Back"], "Alt") --Coagulated Cloak
    LBIS:AddItem(spec3, "220653", LBIS.L["Chest"], "BIS") --Wailing Berserker's Chestplate
    LBIS:AddItem(spec3, "220794", LBIS.L["Chest"], "Alt") --Knight's Plate Hauberk
    LBIS:AddItem(spec3, "11678", LBIS.L["Chest"], "Alt") --Carapace of Anub'shiah
    LBIS:AddItem(spec3, "221380", LBIS.L["Chest"], "Alt") --Emerald Dream Breastplate
    LBIS:AddItem(spec3, "210794", LBIS.L["Chest"], "Alt") --Shifting Silver Breastplate
    LBIS:AddItem(spec3, "19580", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec3, "221027", LBIS.L["Wrist"], "Alt") --Void-Powered Protector's Vambraces
    LBIS:AddItem(spec3, "220539", LBIS.L["Wrist"], "Alt") --Warbands of Sacrifice
    LBIS:AddItem(spec3, "12425", LBIS.L["Wrist"], "Alt") --Imperial Plate Bracers
    LBIS:AddItem(spec3, "220817", LBIS.L["Hands"], "BIS") --Sergeant Major's Lamellar Gauntlets
    LBIS:AddItem(spec3, "220541", LBIS.L["Hands"], "BIS") --Disease-Ridden Plate Fists
    LBIS:AddItem(spec3, "220806", LBIS.L["Hands"], "Alt") --Sergeant Major's Plate Gauntlets
    LBIS:AddItem(spec3, "221378", LBIS.L["Hands"], "Alt") --Emerald Dream Gauntlets
    LBIS:AddItem(spec3, "20124", LBIS.L["Waist"], "BIS") --Highlander's Plate Girdle
    LBIS:AddItem(spec3, "215380", LBIS.L["Waist"], "BIS") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec3, "220554", LBIS.L["Waist"], "Alt") --Atal'alarion's Tusk Band
    LBIS:AddItem(spec3, "220555", LBIS.L["Waist"], "Alt") --Atal'ai Serpentscale Girdle
    LBIS:AddItem(spec3, "12424", LBIS.L["Waist"], "Alt") --Imperial Plate Belt
    LBIS:AddItem(spec3, "220654", LBIS.L["Legs"], "BIS") --Wailing Berserker's Legplates
    LBIS:AddItem(spec3, "220797", LBIS.L["Legs"], "Alt") --Knight's Plate Leggings
    LBIS:AddItem(spec3, "17711", LBIS.L["Legs"], "Alt") --Elemental Rockridge Leggings
    LBIS:AddItem(spec3, "220560", LBIS.L["Legs"], "Alt") --Silvershell Legplates
    LBIS:AddItem(spec3, "221377", LBIS.L["Legs"], "Alt") --Emerald Dream Legplates
    LBIS:AddItem(spec3, "220656", LBIS.L["Feet"], "BIS") --Wailing Berserker's Battleboots
    LBIS:AddItem(spec3, "220799", LBIS.L["Feet"], "Alt") --Sergeant Major's Plate Greaves
    LBIS:AddItem(spec3, "220561", LBIS.L["Feet"], "Alt") --Tenacious Troll Kickers
    LBIS:AddItem(spec3, "220648", LBIS.L["Feet"], "Alt") --Banished Martyr's Plate Boots
    LBIS:AddItem(spec3, "221379", LBIS.L["Feet"], "Alt") --Emerald Dream Sabatons
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "19539", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec3, "223532", LBIS.L["Neck"], "Alt") --Lifeblood Amulet
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "BIS") --Band of the Wilds
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "223327", LBIS.L["Ring"], "Alt") --Mark of Hakkar
    LBIS:AddItem(spec3, "220630", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Juggernaut
    LBIS:AddItem(spec3, "216673", LBIS.L["Ring"], "Alt") --Talvash's Brilliant Gold Ring
    LBIS:AddItem(spec3, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS") --Breadth of the Beast
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "220634", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec3, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec3, "221442", LBIS.L["Trinket"], "Alt Stam") --Roar of the Guardian
    LBIS:AddItem(spec3, "220633", LBIS.L["Trinket"], "Alt Mit") --Atal'ai Blood Ritual Badge
    LBIS:AddItem(spec3, "213350", LBIS.L["Trinket"], "Alt Stam") --Wirdal's Hardened Core
    LBIS:AddItem(spec3, "220578", LBIS.L["Main Hand"], "BIS") --Fist of the Forsaken
    LBIS:AddItem(spec3, "871", LBIS.L["Main Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec3, "223520", LBIS.L["Main Hand"], "Alt") --Inventor's Focal Sword
    LBIS:AddItem(spec3, "221456", LBIS.L["Main Hand"], "Alt") --Eclipsed Sanguine Saber
    LBIS:AddItem(spec3, "1979", LBIS.L["Off Hand"], "BIS") --Wall of the Dead
    LBIS:AddItem(spec3, "220600", LBIS.L["Off Hand"], "Alt") --Crest of Preeminence
    LBIS:AddItem(spec3, "1203", LBIS.L["Off Hand"], "Alt") --Aegis of Stormwind
    LBIS:AddItem(spec3, "223197", LBIS.L["Off Hand"], "Alt") --Defender of the Wilds
    LBIS:AddItem(spec3, "11631", LBIS.L["Off Hand"], "Alt") --Stoneshell Guard
    LBIS:AddItem(spec3, "213390", LBIS.L["Off Hand"], "Alt") --Whirling Truesilver Gearwall
    LBIS:AddItem(spec3, "210741", LBIS.L["Two Hand"], "BIS") --Automatic Crowd Pummeler
    LBIS:AddItem(spec3, "223526", LBIS.L["Two Hand"], "Alt") --Sul'thraze the Lasher
    LBIS:AddItem(spec3, "221457", LBIS.L["Ranged/Relic"], "BIS") --Libram of Draconic Destruction
    LBIS:AddItem(spec3, "215435", LBIS.L["Ranged/Relic"], "Alt") --Libram of Benediction
    LBIS:AddItem(spec3, "209574", LBIS.L["Ranged/Relic"], "Alt") --Discarded Tenets of the Silver Hand
    LBIS:AddItem(spec3, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege

    LBIS:AddItem(spec4, "226599", LBIS.L["Head"], "BIS") --Lawbringer Crown
    LBIS:AddItem(spec4, "226607", LBIS.L["Head"], "Alt") --Lawbringer Headguard
    LBIS:AddItem(spec4, "221783", LBIS.L["Shoulder"], "BIS") --Lawbringer Spaulders
    LBIS:AddItem(spec4, "226605", LBIS.L["Shoulder"], "Alt") --Lawbringer Pauldrons
    LBIS:AddItem(spec4, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec4, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec4, "228292", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec4, "226602", LBIS.L["Chest"], "BIS") --Lawbringer Breastplate
    LBIS:AddItem(spec4, "226595", LBIS.L["Chest"], "Alt") --Lawbringer Chestguard
    LBIS:AddItem(spec4, "226992", LBIS.L["Chest"], "Alt") --Soulforge Chestguards
    LBIS:AddItem(spec4, "226596", LBIS.L["Wrist"], "BIS") --Lawbringer Warbands
    LBIS:AddItem(spec4, "226603", LBIS.L["Wrist"], "Alt") --Lawbringer Vambraces
    LBIS:AddItem(spec4, "227820", LBIS.L["Wrist"], "Alt") --Tempered Dark Iron Bracers
    LBIS:AddItem(spec4, "228260", LBIS.L["Hands"], "BIS") --Flameguard Gauntlets
    LBIS:AddItem(spec4, "226600", LBIS.L["Hands"], "Alt") --Lawbringer Grips
    LBIS:AddItem(spec4, "226608", LBIS.L["Hands"], "Alt") --Lawbringer Handguards
    LBIS:AddItem(spec4, "226990", LBIS.L["Hands"], "Alt") --Soulforge Handguards
    LBIS:AddItem(spec4, "226597", LBIS.L["Waist"], "BIS") --Lawbringer Girdle
    LBIS:AddItem(spec4, "226604", LBIS.L["Waist"], "Alt") --Lawbringer Battlebelt
    LBIS:AddItem(spec4, "228295", LBIS.L["Waist"], "Alt") --Onslaught Girdle
    LBIS:AddItem(spec4, "14554", LBIS.L["Legs"], "BIS") --Cloudkeeper Legplates
    LBIS:AddItem(spec4, "226598", LBIS.L["Legs"], "Alt") --Lawbringer Leggings
    LBIS:AddItem(spec4, "226606", LBIS.L["Legs"], "Alt") --Lawbringer Legguards
    LBIS:AddItem(spec4, "22672", LBIS.L["Legs"], "Alt") --Sentinel's Plate Legguards
    LBIS:AddItem(spec4, "226601", LBIS.L["Feet"], "BIS") --Lawbringer Battleboots
    LBIS:AddItem(spec4, "226609", LBIS.L["Feet"], "Alt") --Lawbringer Sabatons
    LBIS:AddItem(spec4, "228925", LBIS.L["Feet"], "Alt") --Tempered Dark Iron Boots
    LBIS:AddItem(spec4, "228249", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "228354", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec4, "228147", LBIS.L["Neck"], "Alt") --Magmadar's Horn
    LBIS:AddItem(spec4, "226500", LBIS.L["Neck"], "Alt") --Chipped Drakefire Amulet
    LBIS:AddItem(spec4, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec4, "228242", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec4, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec4, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec4, "228186", LBIS.L["Ring"], "Alt Thrt") --Abandoned Wedding Band
    LBIS:AddItem(spec4, "216673", LBIS.L["Ring"], "Alt") --Talvash's Brilliant Gold Ring
    LBIS:AddItem(spec4, "22331", LBIS.L["Ring"], "Alt Mit") --Band of the Steadfast Hero
    LBIS:AddItem(spec4, "228057", LBIS.L["Ring"], "Alt") --Ring of Demonic Potency
    LBIS:AddItem(spec4, "228686", LBIS.L["Trinket"], "BIS Stam") --Onyxia Blood Talisman
    LBIS:AddItem(spec4, "228163", LBIS.L["Trinket"], "Alt Stam") --Broodmother's Brooch
    LBIS:AddItem(spec4, "227915", LBIS.L["Trinket"], "Alt Stam") --Duke's Domain
    LBIS:AddItem(spec4, "228293", LBIS.L["Trinket"], "Alt Stam") --Essence of the Pure Flame
    LBIS:AddItem(spec4, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "Alt") --Blackhand's Breadth
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "220634", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec4, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec4, "2802", LBIS.L["Trinket"], "Alt") --Blazing Emblem
    LBIS:AddItem(spec4, "228576", LBIS.L["Trinket"], "Alt Stam") --Smolderweb's Eye
    LBIS:AddItem(spec4, "221442", LBIS.L["Trinket"], "Alt Stam") --Roar of the Guardian
    LBIS:AddItem(spec4, "220633", LBIS.L["Trinket"], "Alt Mit") --Atal'ai Blood Ritual Badge
    LBIS:AddItem(spec4, "213350", LBIS.L["Trinket"], "Alt Stam") --Wirdal's Hardened Core
    LBIS:AddItem(spec4, "227840", LBIS.L["Main Hand"], "BIS") --Implacable Blackguard
    LBIS:AddItem(spec4, "228679", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec4, "227887", LBIS.L["Main Hand"], "Alt") --Hardened Frostguard
    LBIS:AddItem(spec4, "228139", LBIS.L["Main Hand"], "Alt") --Fist of the Firesworn
    LBIS:AddItem(spec4, "228266", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec4, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec4, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec4, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec4, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec4, "228347", LBIS.L["Two Hand"], "BIS") --Typhoon
    LBIS:AddItem(spec4, "227683", LBIS.L["Two Hand"], "BIS") --Sulfuras, Hand of Ragnaros
    LBIS:AddItem(spec4, "228125", LBIS.L["Two Hand"], "Alt") --Refined Arcanite Champion
    LBIS:AddItem(spec4, "228174", LBIS.L["Ranged/Relic"], "BIS") --Libram of the Devoted
    LBIS:AddItem(spec4, "23203", LBIS.L["Ranged/Relic"], "Alt") --Libram of Fervor
    LBIS:AddItem(spec4, "221457", LBIS.L["Ranged/Relic"], "Alt") --Libram of Draconic Destruction
    LBIS:AddItem(spec4, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege

    LBIS:AddItem(spec5, "231186", LBIS.L["Head"], "BIS") --Judgement Great Helm
    LBIS:AddItem(spec5, "231178", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec5, "232163", LBIS.L["Head"], "Alt") --Judgement Great Helm
    LBIS:AddItem(spec5, "231184", LBIS.L["Shoulder"], "BIS") --Judgement Pauldrons
    LBIS:AddItem(spec5, "232161", LBIS.L["Shoulder"], "Alt") --Judgement Pauldrons
    LBIS:AddItem(spec5, "230744", LBIS.L["Back"], "BIS") --Elementium Threaded Cloak
    LBIS:AddItem(spec5, "228383", LBIS.L["Back"], "Alt Thrt") --Puissant Cape
    LBIS:AddItem(spec5, "228292", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec5, "231012", LBIS.L["Back"], "Alt Mit") --Overlord's Embrace
    LBIS:AddItem(spec5, "231181", LBIS.L["Chest"], "BIS") --Judgement Breastplate
    LBIS:AddItem(spec5, "231187", LBIS.L["Chest"], "Alt") --Judgement Chestguard
    LBIS:AddItem(spec5, "232166", LBIS.L["Chest"], "Alt") --Judgement Chestguard
    LBIS:AddItem(spec5, "231182", LBIS.L["Wrist"], "BIS") --Judgement Vambraces
    LBIS:AddItem(spec5, "232159", LBIS.L["Wrist"], "Alt") --Judgement Vambraces
    LBIS:AddItem(spec5, "231188", LBIS.L["Hands"], "BIS") --Judgement Handguards
    LBIS:AddItem(spec5, "231179", LBIS.L["Hands"], "Alt") --Judgement Gauntlets
    LBIS:AddItem(spec5, "232164", LBIS.L["Hands"], "Alt") --Judgement Handguards
    LBIS:AddItem(spec5, "231183", LBIS.L["Waist"], "BIS") --Judgement Waistguard
    LBIS:AddItem(spec5, "232160", LBIS.L["Waist"], "Alt") --Judgement Waistguard
    LBIS:AddItem(spec5, "231177", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec5, "231185", LBIS.L["Legs"], "Alt") --Judgement Legguards
    LBIS:AddItem(spec5, "232162", LBIS.L["Legs"], "Alt") --Judgement Legguards
    LBIS:AddItem(spec5, "231647", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Leggings
    LBIS:AddItem(spec5, "231189", LBIS.L["Feet"], "BIS") --Judgement Greaves
    LBIS:AddItem(spec5, "232165", LBIS.L["Feet"], "Alt") --Judgement Greaves
    LBIS:AddItem(spec5, "231652", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Sabatons
    LBIS:AddItem(spec5, "228249", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec5, "230840", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec5, "228354", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec5, "230922", LBIS.L["Neck"], "Alt") --Talisman of Protection
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "230808", LBIS.L["Ring"], "BIS") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec5, "230943", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec5, "230999", LBIS.L["Ring"], "Alt") --Overlord's Crimson Band
    LBIS:AddItem(spec5, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "Alt Thrt") --Quick Strike Ring
    LBIS:AddItem(spec5, "228242", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec5, "230736", LBIS.L["Trinket"], "BIS Mit") --Styleen's Impeding Scarab
    LBIS:AddItem(spec5, "228686", LBIS.L["Trinket"], "Alt Stam") --Onyxia Blood Talisman
    LBIS:AddItem(spec5, "228163", LBIS.L["Trinket"], "Alt Stam") --Broodmother's Brooch
    LBIS:AddItem(spec5, "227915", LBIS.L["Trinket"], "Alt Stam") --Duke's Domain
    LBIS:AddItem(spec5, "230272", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec5, "231784", LBIS.L["Trinket"], "Alt") --Lightning's Cell
    LBIS:AddItem(spec5, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec5, "230224", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec5, "229806", LBIS.L["Main Hand"], "Alt") --Truthbearer
    LBIS:AddItem(spec5, "230254", LBIS.L["Main Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec5, "230747", LBIS.L["Main Hand"], "Alt") --Chromatically Tempered Sword
    LBIS:AddItem(spec5, "227840", LBIS.L["Main Hand"], "Alt") --Implacable Blackguard
    LBIS:AddItem(spec5, "230802", LBIS.L["Off Hand"], "BIS Stam") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec5, "231289", LBIS.L["Off Hand"], "BIS") --Aegis of the Blood God
    LBIS:AddItem(spec5, "228266", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec5, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec5, "232421", LBIS.L["Ranged/Relic"], "BIS") --Libram of Avenging
    LBIS:AddItem(spec5, "228174", LBIS.L["Ranged/Relic"], "Alt") --Libram of the Devoted
    LBIS:AddItem(spec5, "23203", LBIS.L["Ranged/Relic"], "Alt") --Libram of Fervor
    LBIS:AddItem(spec5, "221457", LBIS.L["Ranged/Relic"], "Alt") --Libram of Draconic Destruction
    LBIS:AddItem(spec5, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege

    LBIS:AddItem(spec6, "233692", LBIS.L["Head"], "BIS") --Avenger's Great Helm
    LBIS:AddItem(spec6, "231178", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec6, "233795", LBIS.L["Head"], "Alt") --Razorspike Headcage
    LBIS:AddItem(spec6, "233689", LBIS.L["Shoulder"], "BIS") --Avenger's Spaulders
    LBIS:AddItem(spec6, "233593", LBIS.L["Shoulder"], "Alt") --Pauldrons of the Unrelenting
    LBIS:AddItem(spec6, "233793", LBIS.L["Shoulder"], "Alt") --Razorspike Shoulderplates
    LBIS:AddItem(spec6, "233606", LBIS.L["Back"], "BIS") --Cloak of the Golden Hive
    LBIS:AddItem(spec6, "234113", LBIS.L["Back"], "Alt Mit") --Sandstorm Cloak
    LBIS:AddItem(spec6, "230744", LBIS.L["Back"], "Alt") --Elementium Threaded Cloak
    LBIS:AddItem(spec6, "233737", LBIS.L["Back"], "Alt Stam") --Blood-Caked Cloak
    LBIS:AddItem(spec6, "228383", LBIS.L["Back"], "Alt Thrt") --Puissant Cape
    LBIS:AddItem(spec6, "228292", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec6, "231012", LBIS.L["Back"], "Alt Mit") --Overlord's Embrace
    LBIS:AddItem(spec6, "231783", LBIS.L["Back"], "Alt") --Drape of the Windlord
    LBIS:AddItem(spec6, "233693", LBIS.L["Chest"], "BIS") --Avenger's Chestguard
    LBIS:AddItem(spec6, "231181", LBIS.L["Chest"], "Alt") --Judgement Breastplate
    LBIS:AddItem(spec6, "233591", LBIS.L["Chest"], "Alt") --Silithid Carapace Chestguard
    LBIS:AddItem(spec6, "233516", LBIS.L["Chest"], "Alt") --Breastplate of Annihilation
    LBIS:AddItem(spec6, "233492", LBIS.L["Chest"], "Alt") --Razorspike Battleplate
    LBIS:AddItem(spec6, "231174", LBIS.L["Wrist"], "BIS") --Judgement Bindings
    LBIS:AddItem(spec6, "234748", LBIS.L["Wrist"], "Alt") --Deeprock Bracers
    LBIS:AddItem(spec6, "234148", LBIS.L["Wrist"], "Alt Mit") --Dragonbone Wristguards
    LBIS:AddItem(spec6, "233582", LBIS.L["Hands"], "BIS") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec6, "234075", LBIS.L["Hands"], "Alt") --Gauntlets of the Immovable
    LBIS:AddItem(spec6, "233560", LBIS.L["Hands"], "Alt") --Ooze-ridden Gauntlets
    LBIS:AddItem(spec6, "231179", LBIS.L["Hands"], "Alt") --Judgement Gauntlets
    LBIS:AddItem(spec6, "233614", LBIS.L["Waist"], "BIS") --Royal Qiraji Belt
    LBIS:AddItem(spec6, "234063", LBIS.L["Waist"], "Alt") --Belt of the Sand Reaver
    LBIS:AddItem(spec6, "233690", LBIS.L["Legs"], "BIS") --Avenger's Tassets
    LBIS:AddItem(spec6, "231177", LBIS.L["Legs"], "Alt") --Judgement Legplates
    LBIS:AddItem(spec6, "234088", LBIS.L["Legs"], "Alt") --Legplates of the Destroyer
    LBIS:AddItem(spec6, "231647", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Leggings
    LBIS:AddItem(spec6, "231180", LBIS.L["Feet"], "BIS") --Judgement Sabatons
    LBIS:AddItem(spec6, "233514", LBIS.L["Feet"], "Alt") --Boots of the Unwavering Will
    LBIS:AddItem(spec6, "233691", LBIS.L["Feet"], "Alt") --Avenger's Sabatons
    LBIS:AddItem(spec6, "231652", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Sabatons
    LBIS:AddItem(spec6, "233642", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec6, "233503", LBIS.L["Neck"], "Alt") --Pendant of the Qiraji Guardian
    LBIS:AddItem(spec6, "228354", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec6, "233729", LBIS.L["Neck"], "Alt Stam") --Blood-Caked Choker
    LBIS:AddItem(spec6, "228249", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec6, "230840", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec6, "230922", LBIS.L["Neck"], "Alt") --Talisman of Protection
    LBIS:AddItem(spec6, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec6, "234034", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "234035", LBIS.L["Ring"], "Alt Mit") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "233524", LBIS.L["Ring"], "Alt") --Angelista's Touch
    LBIS:AddItem(spec6, "230808", LBIS.L["Ring"], "Alt") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec6, "230943", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec6, "230999", LBIS.L["Ring"], "Alt") --Overlord's Crimson Band
    LBIS:AddItem(spec6, "233733", LBIS.L["Ring"], "Alt Stam") --Blood-Caked Ring
    LBIS:AddItem(spec6, "228242", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec6, "233992", LBIS.L["Trinket"], "BIS") --Lodestone of Retaliation
    LBIS:AddItem(spec6, "230736", LBIS.L["Trinket"], "Alt Mit") --Styleen's Impeding Scarab
    LBIS:AddItem(spec6, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec6, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec6, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "233570", LBIS.L["Trinket"], "Alt") --Petrified Scarab
    LBIS:AddItem(spec6, "228083", LBIS.L["Trinket"], "Alt") --Gloaming Treeheart
    LBIS:AddItem(spec6, "231781", LBIS.L["Trinket"], "Alt") --Soul of Thunder
    LBIS:AddItem(spec6, "228686", LBIS.L["Trinket"], "Alt Stam") --Onyxia Blood Talisman
    LBIS:AddItem(spec6, "228163", LBIS.L["Trinket"], "Alt Stam") --Broodmother's Brooch
    LBIS:AddItem(spec6, "230272", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec6, "231784", LBIS.L["Trinket"], "Alt") --Lightning's Cell
    LBIS:AddItem(spec6, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec6, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec6, "229806", LBIS.L["Main Hand"], "BIS") --Truthbearer
    LBIS:AddItem(spec6, "230224", LBIS.L["Main Hand"], "Alt") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec6, "234579", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec6, "234650", LBIS.L["Main Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec6, "227840", LBIS.L["Main Hand"], "Alt") --Implacable Blackguard
    LBIS:AddItem(spec6, "231867", LBIS.L["Main Hand"], "Alt") --Bloodlord's Defender
    LBIS:AddItem(spec6, "21269", LBIS.L["Off Hand"], "BIS") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec6, "230802", LBIS.L["Off Hand"], "BIS Stam") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec6, "234089", LBIS.L["Off Hand"], "Alt") --Buru's Skull Fragment
    LBIS:AddItem(spec6, "233988", LBIS.L["Off Hand"], "Alt") --Tuned Force Reactive Disk
    LBIS:AddItem(spec6, "234588", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Aegis
    LBIS:AddItem(spec6, "234459", LBIS.L["Off Hand"], "Alt") --Jagged Obsidian Shield
    LBIS:AddItem(spec6, "231289", LBIS.L["Off Hand"], "Alt") --Aegis of the Blood God
    LBIS:AddItem(spec6, "228266", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec6, "234477", LBIS.L["Ranged/Relic"], "BIS") --Libram of Righteousness
    LBIS:AddItem(spec6, "232421", LBIS.L["Ranged/Relic"], "Alt") --Libram of Avenging
    LBIS:AddItem(spec6, "228174", LBIS.L["Ranged/Relic"], "Alt") --Libram of the Devoted
    LBIS:AddItem(spec6, "23203", LBIS.L["Ranged/Relic"], "Alt") --Libram of Fervor
    LBIS:AddItem(spec6, "221457", LBIS.L["Ranged/Relic"], "Alt") --Libram of Draconic Destruction
    LBIS:AddItem(spec6, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege

    LBIS:AddItem(spec7, "236137", LBIS.L["Head"], "BIS Mit") --Redemption Crown
    LBIS:AddItem(spec7, "231178", LBIS.L["Head"], "BIS Thrt") --Judgement Crown
    LBIS:AddItem(spec7, "237275", LBIS.L["Head"], "Alt") --Icebane Helmet
    LBIS:AddItem(spec7, "233692", LBIS.L["Head"], "Alt") --Avenger's Great Helm
    LBIS:AddItem(spec7, "236135", LBIS.L["Shoulder"], "BIS") --Redemption Pauldrons
    LBIS:AddItem(spec7, "236260", LBIS.L["Shoulder"], "Alt") --Icebane Pauldrons
    LBIS:AddItem(spec7, "233689", LBIS.L["Shoulder"], "Alt") --Avenger's Spaulders
    LBIS:AddItem(spec7, "233606", LBIS.L["Back"], "BIS") --Cloak of the Golden Hive
    LBIS:AddItem(spec7, "236258", LBIS.L["Back"], "Alt Mit") --Cryptfiend Silk Cloak
    LBIS:AddItem(spec7, "236690", LBIS.L["Back"], "Alt") --Glacial Cloak
    LBIS:AddItem(spec7, "234113", LBIS.L["Back"], "Alt Mit") --Sandstorm Cloak
    LBIS:AddItem(spec7, "233737", LBIS.L["Back"], "Alt Stam") --Blood-Caked Cloak
    LBIS:AddItem(spec7, "228292", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec7, "231012", LBIS.L["Back"], "Alt Mit") --Overlord's Embrace
    LBIS:AddItem(spec7, "236141", LBIS.L["Chest"], "BIS") --Redemption Chestguard
    LBIS:AddItem(spec7, "236748", LBIS.L["Chest"], "Alt") --Breastplate of Undead Warding
    LBIS:AddItem(spec7, "236695", LBIS.L["Chest"], "Alt") --Icebane Breastplate
    LBIS:AddItem(spec7, "233693", LBIS.L["Chest"], "Alt") --Avenger's Chestguard
    LBIS:AddItem(spec7, "236133", LBIS.L["Wrist"], "BIS Mit") --Redemption Bracers
    LBIS:AddItem(spec7, "231174", LBIS.L["Wrist"], "BIS Thrt") --Judgement Bindings
    LBIS:AddItem(spec7, "236746", LBIS.L["Wrist"], "Alt") --Bracers of Undead Warding
    LBIS:AddItem(spec7, "236696", LBIS.L["Wrist"], "Alt") --Icebane Bracers
    LBIS:AddItem(spec7, "236138", LBIS.L["Hands"], "BIS") --Redemption Gauntlets
    LBIS:AddItem(spec7, "236747", LBIS.L["Hands"], "Alt") --Gauntlets of Undead Warding
    LBIS:AddItem(spec7, "231179", LBIS.L["Hands"], "Alt Thrt") --Judgement Gauntlets
    LBIS:AddItem(spec7, "236697", LBIS.L["Hands"], "Alt") --Icebane Gauntlets
    LBIS:AddItem(spec7, "233582", LBIS.L["Hands"], "Alt") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec7, "231175", LBIS.L["Waist"], "BIS") --Judgement Belt
    LBIS:AddItem(spec7, "236134", LBIS.L["Waist"], "Alt Mit") --Redemption Waistguard
    LBIS:AddItem(spec7, "233614", LBIS.L["Waist"], "Alt") --Royal Qiraji Belt
    LBIS:AddItem(spec7, "234063", LBIS.L["Waist"], "Alt") --Belt of the Sand Reaver
    LBIS:AddItem(spec7, "231177", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec7, "237290", LBIS.L["Legs"], "Alt") --Icebane Leggings
    LBIS:AddItem(spec7, "236136", LBIS.L["Legs"], "Alt Mit") --Redemption Legplates
    LBIS:AddItem(spec7, "233690", LBIS.L["Legs"], "Alt") --Avenger's Tassets
    LBIS:AddItem(spec7, "236140", LBIS.L["Feet"], "BIS") --Redemption Sabatons
    LBIS:AddItem(spec7, "231180", LBIS.L["Feet"], "Alt Thrt") --Judgement Sabatons
    LBIS:AddItem(spec7, "236300", LBIS.L["Neck"], "BIS") --Gluth's Missing Collar
    LBIS:AddItem(spec7, "233642", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec7, "236782", LBIS.L["Neck"], "Alt") --Sairuh's Collar
    LBIS:AddItem(spec7, "233503", LBIS.L["Neck"], "Alt") --Pendant of the Qiraji Guardian
    LBIS:AddItem(spec7, "228354", LBIS.L["Neck"], "Alt") --Blazefury Medallion
    LBIS:AddItem(spec7, "233729", LBIS.L["Neck"], "Alt Stam") --Blood-Caked Choker
    LBIS:AddItem(spec7, "228249", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec7, "236130", LBIS.L["Ring"], "BIS") --Band of Redemption
    LBIS:AddItem(spec7, "235885", LBIS.L["Ring"], "BIS") --Ghastly Ring
    LBIS:AddItem(spec7, "236311", LBIS.L["Ring"], "BIS") --Signet of the Fallen Defender
    LBIS:AddItem(spec7, "237285", LBIS.L["Ring"], "Alt") --Band of Resolution
    LBIS:AddItem(spec7, "234035", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec7, "233524", LBIS.L["Ring"], "Alt") --Angelista's Touch
    LBIS:AddItem(spec7, "230999", LBIS.L["Ring"], "Alt") --Overlord's Crimson Band
    LBIS:AddItem(spec7, "230808", LBIS.L["Ring"], "Alt") --Archimtiros' Ring of Reckoning
    LBIS:AddItem(spec7, "230943", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec7, "233733", LBIS.L["Ring"], "Alt Stam") --Blood-Caked Ring
    LBIS:AddItem(spec7, "228242", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec7, "233992", LBIS.L["Trinket"], "BIS") --Lodestone of Retaliation
    LBIS:AddItem(spec7, "236337", LBIS.L["Trinket"], "Alt Stam") --Glyph of Deflection
    LBIS:AddItem(spec7, "230736", LBIS.L["Trinket"], "Alt Mit") --Styleen's Impeding Scarab
    LBIS:AddItem(spec7, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec7, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec7, "233570", LBIS.L["Trinket"], "Alt") --Petrified Scarab
    LBIS:AddItem(spec7, "228113", LBIS.L["Trinket"], "Alt") --Cold Embrace
    LBIS:AddItem(spec7, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec7, "228083", LBIS.L["Trinket"], "Alt") --Gloaming Treeheart
    LBIS:AddItem(spec7, "228686", LBIS.L["Trinket"], "Alt Stam") --Onyxia Blood Talisman
    LBIS:AddItem(spec7, "228163", LBIS.L["Trinket"], "Alt Stam") --Broodmother's Brooch
    LBIS:AddItem(spec7, "230272", LBIS.L["Trinket"], "Alt") --Scrolls of Blinding Light
    LBIS:AddItem(spec7, "231784", LBIS.L["Trinket"], "Alt") --Lightning's Cell
    LBIS:AddItem(spec7, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec7, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec7, "236341", LBIS.L["Main Hand"], "BIS") --The Hungering Cold
    LBIS:AddItem(spec7, "229806", LBIS.L["Main Hand"], "Alt") --Truthbearer
    LBIS:AddItem(spec7, "236263", LBIS.L["Main Hand"], "Alt Mit") --Widow's Remorse
    LBIS:AddItem(spec7, "230224", LBIS.L["Main Hand"], "Alt") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec7, "234579", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec7, "227840", LBIS.L["Main Hand"], "Alt") --Implacable Blackguard
    LBIS:AddItem(spec7, "231867", LBIS.L["Main Hand"], "Alt") --Bloodlord's Defender
    LBIS:AddItem(spec7, "236336", LBIS.L["Off Hand"], "BIS") --The Face of Death
    LBIS:AddItem(spec7, "230802", LBIS.L["Off Hand"], "BIS Stam") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec7, "235868", LBIS.L["Off Hand"], "Alt Mit") --Bulwark of Ire
    LBIS:AddItem(spec7, "233988", LBIS.L["Off Hand"], "Alt") --Tuned Force Reactive Disk
    LBIS:AddItem(spec7, "236288", LBIS.L["Off Hand"], "Alt Stam") --The Plague Bearer
    LBIS:AddItem(spec7, "21269", LBIS.L["Off Hand"], "Alt") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec7, "234089", LBIS.L["Off Hand"], "Alt") --Buru's Skull Fragment
    LBIS:AddItem(spec7, "234588", LBIS.L["Off Hand"], "Alt") --Grand Marshal's Aegis
    LBIS:AddItem(spec7, "234459", LBIS.L["Off Hand"], "Alt") --Jagged Obsidian Shield
    LBIS:AddItem(spec7, "231289", LBIS.L["Off Hand"], "Alt") --Aegis of the Blood God
    LBIS:AddItem(spec7, "232421", LBIS.L["Ranged/Relic"], "BIS") --Libram of Avenging
    LBIS:AddItem(spec7, "234477", LBIS.L["Ranged/Relic"], "BIS") --Libram of Righteousness
    LBIS:AddItem(spec7, "228174", LBIS.L["Ranged/Relic"], "Alt") --Libram of the Devoted
    LBIS:AddItem(spec7, "23203", LBIS.L["Ranged/Relic"], "Alt") --Libram of Fervor
    LBIS:AddItem(spec7, "221457", LBIS.L["Ranged/Relic"], "Alt") --Libram of Draconic Destruction
    LBIS:AddItem(spec7, "220605", LBIS.L["Ranged/Relic"], "Alt") --Libram of Sacrilege
end
if LBIS.IsSOD then
    LoadData();
end
