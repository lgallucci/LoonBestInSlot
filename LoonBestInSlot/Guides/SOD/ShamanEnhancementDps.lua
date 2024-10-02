local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Enhancement Dps"], "6")

    LBIS:AddEnchant(spec5, "468354", LBIS.L["Head"]) --Vodouisant's Shroud
    LBIS:AddEnchant(spec5, "24422", LBIS.L["Shoulder"]) --Zandalar Signet of Might
    LBIS:AddEnchant(spec5, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec5, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec5, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec5, "13948", LBIS.L["Hands"]) --Enchant Gloves - Minor Haste
    LBIS:AddEnchant(spec5, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec5, "20034", LBIS.L["Main Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec5, "20034", LBIS.L["Off Hand"]) --Enchant Weapon - Crusader

    LBIS:AddItem(spec0, "227021", LBIS.L["Head"], "BIS") --Face of The Five Thunders
    LBIS:AddItem(spec0, "228604", LBIS.L["Head"], "Alt") --Eye of Rend
    LBIS:AddItem(spec0, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec0, "227154", LBIS.L["Shoulder"], "BIS") --Champion's Mail Pauldrons
    LBIS:AddItem(spec0, "227019", LBIS.L["Shoulder"], "Alt") --Spaulders of The Five Thunders
    LBIS:AddItem(spec0, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "22337", LBIS.L["Back"], "BIS") --Shroud of Domination
    LBIS:AddItem(spec0, "23127", LBIS.L["Back"], "Alt") --Cloak of Revanchion
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec0, "227024", LBIS.L["Chest"], "BIS") --Chain of The Five Thunders
    LBIS:AddItem(spec0, "227952", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "228025", LBIS.L["Chest"], "Alt") --Tombstone Breastplate
    LBIS:AddItem(spec0, "220657", LBIS.L["Chest"], "Alt") --Ostracized Berserker's Hauberk
    LBIS:AddItem(spec0, "228575", LBIS.L["Wrist"], "BIS") --Slashclaw Bracers
    LBIS:AddItem(spec0, "19582", LBIS.L["Wrist"], "Alt") --Windtalker's Wristguards
    LBIS:AddItem(spec0, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec0, "227022", LBIS.L["Hands"], "BIS") --Fists of The Five Thunders
    LBIS:AddItem(spec0, "227809", LBIS.L["Hands"], "Alt") --Studded Timbermaw Brawlers
    LBIS:AddItem(spec0, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec0, "227018", LBIS.L["Waist"], "BIS") --Girdle of The Five Thunders
    LBIS:AddItem(spec0, "228567", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec0, "220552", LBIS.L["Waist"], "Alt") --Waistguard of Pain
    LBIS:AddItem(spec0, "227156", LBIS.L["Legs"], "BIS") --Legionnaire's Mail Legguards
    LBIS:AddItem(spec0, "227020", LBIS.L["Legs"], "Alt") --Legplates of The Five Thunders
    LBIS:AddItem(spec0, "220658", LBIS.L["Legs"], "Alt") --Ostracized Berserker's Legplates
    LBIS:AddItem(spec0, "227023", LBIS.L["Feet"], "BIS") --Treads of The Five Thunders
    LBIS:AddItem(spec0, "227158", LBIS.L["Feet"], "Alt") --Blood Guard's Mail Greaves
    LBIS:AddItem(spec0, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec0, "220659", LBIS.L["Feet"], "Alt") --Ostracized Berserker's Chain Greaves
    LBIS:AddItem(spec0, "11675", LBIS.L["Feet"], "Alt") --Shadefiend Boots
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "22150", LBIS.L["Neck"], "BIS") --Beads of Ogre Might
    LBIS:AddItem(spec0, "220624", LBIS.L["Neck"], "Alt") --Bloodstained Charm of Valor
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec0, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec0, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec0, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec0, "228089", LBIS.L["Trinket"], "Alt") --Woodcarved Moonstalker
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec0, "19103", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Frostbite
    LBIS:AddItem(spec0, "228535", LBIS.L["Main Hand/Off Hand"], "Alt/BIS") --Bone Slicing Hatchet
    LBIS:AddItem(spec0, "13006", LBIS.L["Main Hand"], "Alt") --Mass of McGowan
    LBIS:AddItem(spec0, "220588", LBIS.L["Main Hand"], "Alt") --Cobra Fang Claw
    LBIS:AddItem(spec0, "228169", LBIS.L["Main Hand/Off Hand"], "Alt") --The Attitude Adjustor
    LBIS:AddItem(spec0, "220581", LBIS.L["Main Hand/Off Hand"], "Alt") --Snake Clobberer
    LBIS:AddItem(spec0, "224409", LBIS.L["Off Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec0, "228177", LBIS.L["Ranged/Relic"], "BIS") --Totem of Raging Fire
    LBIS:AddItem(spec0, "220607", LBIS.L["Ranged/Relic"], "Alt") --Totem of Tormented Ancestry
    LBIS:AddItem(spec0, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame

    LBIS:AddItem(spec1, "211789", LBIS.L["Head"], "BIS") --Artemis Cowl
    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "Alt") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "4724", LBIS.L["Head"], "Alt") --Humbert's Helm
    LBIS:AddItem(spec1, "4385", LBIS.L["Head"], "Alt") --Green Tinted Goggles
    LBIS:AddItem(spec1, "14573", LBIS.L["Shoulder"], "BIS") --Bristlebark Amice
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "BIS") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "6603", LBIS.L["Chest"], "Alt") --Dervish Tunic
    LBIS:AddItem(spec1, "210781", LBIS.L["Wrist"], "BIS") --Phoenix Bindings
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "Alt") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "15351", LBIS.L["Wrist"], "Alt") --Headhunter's Bands
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "720", LBIS.L["Hands"], "Alt") --Brawler Gloves
    LBIS:AddItem(spec1, "7359", LBIS.L["Hands"], "Alt") --Heavy Earthen Gloves
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "BIS") --Leggings of the Fang
    LBIS:AddItem(spec1, "6607", LBIS.L["Legs"], "Alt") --Dervish Leggings
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "15341", LBIS.L["Feet"], "Alt") --Pathfinder Footpads
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "BIS") --High Tide Choker
    LBIS:AddItem(spec1, "209673", LBIS.L["Neck"], "Alt") --Glowing Fetish Amulet
    LBIS:AddItem(spec1, "20442", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec1, "6321", LBIS.L["Ring"], "BIS") --Silverlaine's Family Seal
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "BIS") --Band of the Iron Fist
    LBIS:AddItem(spec1, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "21565", LBIS.L["Trinket"], "BIS") --Rune of Perfection
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "BIS") --Minor Recombobulator
    LBIS:AddItem(spec1, "2878", LBIS.L["Main Hand"], "BIS") --Bearded Boneaxe
    LBIS:AddItem(spec1, "4825", LBIS.L["Main Hand"], "Alt") --Callous Axe
    LBIS:AddItem(spec1, "7786", LBIS.L["Main Hand"], "Alt") --Headsplitter
    LBIS:AddItem(spec1, "13024", LBIS.L["Main Hand"], "Alt") --Beazel's Basher
    LBIS:AddItem(spec1, "1454", LBIS.L["Off Hand"], "BIS") --Axe of the Enforcer
    LBIS:AddItem(spec1, "209436", LBIS.L["Off Hand"], "Alt") --Chipped Bite of Serra'kis
    LBIS:AddItem(spec1, "2194", LBIS.L["Off Hand"], "Alt") --Diamond Hammer
    LBIS:AddItem(spec1, "209575", LBIS.L["Ranged/Relic"], "BIS") --Carved Driftwood Icon

    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "7719", LBIS.L["Head"], "Alt") --Raging Berserker's Helm
    LBIS:AddItem(spec2, "10008", LBIS.L["Head"], "Alt") --White Bandit Mask
    LBIS:AddItem(spec2, "211789", LBIS.L["Head"], "Alt") --Artemis Cowl
    LBIS:AddItem(spec2, "213304", LBIS.L["Shoulder"], "BIS") --Troggslayer Pauldrons
    LBIS:AddItem(spec2, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec2, "2278", LBIS.L["Shoulder"], "Alt") --Forest Tracker Epaulets
    LBIS:AddItem(spec2, "7755", LBIS.L["Shoulder"], "Alt") --Flintrock Shoulders
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "216621", LBIS.L["Back"], "Alt") --Blooddrenched Drape
    LBIS:AddItem(spec2, "5257", LBIS.L["Back"], "Alt") --Dark Hooded Cape
    LBIS:AddItem(spec2, "14593", LBIS.L["Back"], "Alt") --Hawkeye's Cloak
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "BIS") --Insulated Chestguard
    LBIS:AddItem(spec2, "6773", LBIS.L["Chest"], "Alt") --Gelkis Marauder Chain
    LBIS:AddItem(spec2, "10583", LBIS.L["Chest"], "Alt") --Quillward Harness
    LBIS:AddItem(spec2, "1488", LBIS.L["Chest"], "Alt") --Avenger's Armor
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec2, "212994", LBIS.L["Wrist"], "Alt") --Stormchaser's Bindings
    LBIS:AddItem(spec2, "14770", LBIS.L["Wrist"], "Alt") --Ravager's Armguards
    LBIS:AddItem(spec2, "213318", LBIS.L["Wrist"], "Alt") --Ornate Dark Iron Bangles
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "7724", LBIS.L["Hands"], "Alt") --Gauntlets of Divinity
    LBIS:AddItem(spec2, "9632", LBIS.L["Hands"], "Alt") --Jangdor's Handcrafted Gloves
    LBIS:AddItem(spec2, "4063", LBIS.L["Hands"], "Alt") --Imperial Leather Gloves
    LBIS:AddItem(spec2, "9435", LBIS.L["Hands"], "Alt") --Reticulated Bone Gauntlets
    LBIS:AddItem(spec2, "213325", LBIS.L["Waist"], "BIS") --Darkvision Girdle
    LBIS:AddItem(spec2, "215380", LBIS.L["Waist"], "Alt") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "Alt") --Skullduggery Waistband
    LBIS:AddItem(spec2, "13117", LBIS.L["Waist"], "Alt") --Ogron's Sash
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "10768", LBIS.L["Waist"], "Alt") --Boar Champion's Belt
    LBIS:AddItem(spec2, "20152", LBIS.L["Waist"], "Alt") --Defiler's Chain Girdle
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "BIS") --Insulated Legguards
    LBIS:AddItem(spec2, "10330", LBIS.L["Legs"], "Alt") --Scarlet Leggings
    LBIS:AddItem(spec2, "9396", LBIS.L["Legs"], "Alt") --Legguards of the Vault
    LBIS:AddItem(spec2, "13129", LBIS.L["Legs"], "Alt") --Firemane Leggings
    LBIS:AddItem(spec2, "6423", LBIS.L["Feet"], "BIS") --Blackforge Greaves
    LBIS:AddItem(spec2, "215378", LBIS.L["Feet"], "BIS") --Irradiated Boots
    LBIS:AddItem(spec2, "213340", LBIS.L["Feet"], "Alt") --Gnomebot Operators Boots
    LBIS:AddItem(spec2, "4109", LBIS.L["Feet"], "Alt") --Excelsior Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "4430", LBIS.L["Neck"], "Alt") --Ethereal Talisman
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec2, "13097", LBIS.L["Ring"], "Alt") --Thunderbrow Ring
    LBIS:AddItem(spec2, "2262", LBIS.L["Ring"], "Alt") --Mark of Kern
    LBIS:AddItem(spec2, "13095", LBIS.L["Ring"], "Alt") --Assault Band
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec2, "216939", LBIS.L["Trinket"], "Alt") --Greater Insignia of the Horde
    LBIS:AddItem(spec2, "213409", LBIS.L["Main Hand"], "BIS") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec2, "934", LBIS.L["Main Hand/Off Hand"], "BIS") --Stalvan's Reaper
    LBIS:AddItem(spec2, "13026", LBIS.L["Main Hand"], "Alt") --Heaven's Light
    LBIS:AddItem(spec2, "213295", LBIS.L["Main Hand"], "Alt") --Ultrasonic Vibroblade
    LBIS:AddItem(spec2, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec2, "10744", LBIS.L["Main Hand"], "Alt") --Axe of the Ebon Drake
    LBIS:AddItem(spec2, "213442", LBIS.L["Off Hand"], "BIS") --Cogmaster's Claw
    LBIS:AddItem(spec2, "1602", LBIS.L["Off Hand"], "BIS") --Sickle Axe
    LBIS:AddItem(spec2, "9427", LBIS.L["Off Hand"], "Alt") --Stonevault Bonebreaker
    LBIS:AddItem(spec2, "9359", LBIS.L["Off Hand"], "Alt") --Southsea Lamp
    LBIS:AddItem(spec2, "9378", LBIS.L["Off Hand"], "Alt") --Shovelphlange's Mining Axe
    LBIS:AddItem(spec2, "215436", LBIS.L["Ranged/Relic"], "BIS") --Totem of Invigorating Flame
    LBIS:AddItem(spec2, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec3, "223963", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec3, "220743", LBIS.L["Shoulder"], "BIS") --Cacophonous Chain Shoulderguards
    LBIS:AddItem(spec3, "220527", LBIS.L["Shoulder"], "Alt") --Atal'ai Berserker's Mantle
    LBIS:AddItem(spec3, "223544", LBIS.L["Shoulder"], "Alt") --Dregmetal Spaulders
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "BIS") --Panther Fur Cloak
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "Alt") --Blackveil Cape
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "220657", LBIS.L["Chest"], "BIS") --Ostracized Berserker's Hauberk
    LBIS:AddItem(spec3, "213314", LBIS.L["Chest"], "Alt") --Electromantic Chainmail
    LBIS:AddItem(spec3, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec3, "223528", LBIS.L["Chest"], "Alt") --Gahz'rilla Scale Armor
    LBIS:AddItem(spec3, "19583", LBIS.L["Wrist"], "BIS") --Windtalker's Wristguards
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "Alt") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "17714", LBIS.L["Wrist"], "Alt") --Bracers of the Stone Princess
    LBIS:AddItem(spec3, "220831", LBIS.L["Hands"], "BIS") --First Sergeant's Mail Gauntlets
    LBIS:AddItem(spec3, "220542", LBIS.L["Hands"], "Alt") --Polluted Murkwater Gauntlets
    LBIS:AddItem(spec3, "21319", LBIS.L["Hands"], "Alt") --Gloves of the Pathfinder
    LBIS:AddItem(spec3, "17736", LBIS.L["Hands"], "Alt") --Rockgrip Gauntlets
    LBIS:AddItem(spec3, "220552", LBIS.L["Waist"], "BIS") --Waistguard of Pain
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "13134", LBIS.L["Waist"], "Alt") --Belt of the Gladiator
    LBIS:AddItem(spec3, "220658", LBIS.L["Legs"], "BIS") --Ostracized Berserker's Legplates
    LBIS:AddItem(spec3, "213333", LBIS.L["Legs"], "Alt") --Electromantic Chausses
    LBIS:AddItem(spec3, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec3, "220834", LBIS.L["Legs"], "Alt") --Stone Guard's Mail Legplates
    LBIS:AddItem(spec3, "220659", LBIS.L["Feet"], "BIS") --Ostracized Berserker's Chain Greaves
    LBIS:AddItem(spec3, "213339", LBIS.L["Feet"], "Alt") --Electromantic Grounding Sabatons
    LBIS:AddItem(spec3, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec3, "11675", LBIS.L["Feet"], "Alt") --Shadefiend Boots
    LBIS:AddItem(spec3, "223962", LBIS.L["Feet"], "Alt") --Sandstalker Ankleguards
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "BIS") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "19159", LBIS.L["Neck"], "Alt") --Woven Ivy Necklace
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec3, "12002", LBIS.L["Ring"], "Alt") --Marble Circle
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec3, "220574", LBIS.L["Main Hand/Off Hand"], "Alt") --Sharpened Tooth of Eranikus
    LBIS:AddItem(spec3, "220581", LBIS.L["Main Hand/Off Hand"], "Alt") --Snake Clobberer
    LBIS:AddItem(spec3, "12527", LBIS.L["Main Hand"], "Alt") --Ribsplitter
    LBIS:AddItem(spec3, "220576", LBIS.L["Main Hand/Off Hand"], "Alt") --Axe of the Atal'ai Executioner
    LBIS:AddItem(spec3, "11120", LBIS.L["Main Hand"], "Alt") --Belgrom's Hammer
    LBIS:AddItem(spec3, "224409", LBIS.L["Off Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec3, "15228", LBIS.L["Off Hand"], "Alt") --Smashing Star
    LBIS:AddItem(spec3, "220607", LBIS.L["Ranged/Relic"], "BIS") --Totem of Tormented Ancestry
    LBIS:AddItem(spec3, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame
    LBIS:AddItem(spec3, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec4, "226638", LBIS.L["Head"], "BIS") --Earthfury Headpiece
    LBIS:AddItem(spec4, "228291", LBIS.L["Head"], "Alt") --Crown of Destruction
    LBIS:AddItem(spec4, "227021", LBIS.L["Head"], "Alt") --Face of The Five Thunders
    LBIS:AddItem(spec4, "226640", LBIS.L["Shoulder"], "BIS") --Earthfury Spaulders
    LBIS:AddItem(spec4, "227019", LBIS.L["Shoulder"], "Alt") --Spaulders of The Five Thunders
    LBIS:AddItem(spec4, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec4, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec4, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec4, "22337", LBIS.L["Back"], "Alt") --Shroud of Domination
    LBIS:AddItem(spec4, "227024", LBIS.L["Chest"], "BIS") --Chain of The Five Thunders
    LBIS:AddItem(spec4, "226635", LBIS.L["Chest"], "Alt") --Earthfury Chainmail
    LBIS:AddItem(spec4, "227952", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec4, "220657", LBIS.L["Chest"], "Alt") --Ostracized Berserker's Hauberk
    LBIS:AddItem(spec4, "226642", LBIS.L["Wrist"], "BIS") --Earthfury Bindings
    LBIS:AddItem(spec4, "228246", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec4, "19582", LBIS.L["Wrist"], "Alt") --Windtalker's Wristguards
    LBIS:AddItem(spec4, "227022", LBIS.L["Hands"], "BIS") --Fists of The Five Thunders
    LBIS:AddItem(spec4, "226637", LBIS.L["Hands"], "Alt") --Earthfury Grips
    LBIS:AddItem(spec4, "227838", LBIS.L["Hands"], "Alt") --Shining Chromatic Gauntlets
    LBIS:AddItem(spec4, "14551", LBIS.L["Hands"], "Alt") --Edgemaster's Handguards
    LBIS:AddItem(spec4, "226641", LBIS.L["Waist"], "BIS") --Earthfury Girdle
    LBIS:AddItem(spec4, "227018", LBIS.L["Waist"], "Alt") --Girdle of The Five Thunders
    LBIS:AddItem(spec4, "228567", LBIS.L["Waist"], "Alt") --Chiselbrand Girdle
    LBIS:AddItem(spec4, "226639", LBIS.L["Legs"], "BIS") --Earthfury Chain Leggings
    LBIS:AddItem(spec4, "227020", LBIS.L["Legs"], "Alt") --Legplates of The Five Thunders
    LBIS:AddItem(spec4, "227156", LBIS.L["Legs"], "Alt") --Legionnaire's Mail Legguards
    LBIS:AddItem(spec4, "226636", LBIS.L["Feet"], "BIS") --Earthfury Battleboots
    LBIS:AddItem(spec4, "227023", LBIS.L["Feet"], "Alt") --Treads of The Five Thunders
    LBIS:AddItem(spec4, "228091", LBIS.L["Feet"], "Alt") --Thorned Boots
    LBIS:AddItem(spec4, "228147", LBIS.L["Neck"], "BIS") --Magmadar's Horn
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec4, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec4, "228078", LBIS.L["Trinket"], "BIS") --Accursed Chalice
    LBIS:AddItem(spec4, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec4, "228089", LBIS.L["Trinket"], "Alt") --Woodcarved Moonstalker
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "17068", LBIS.L["Main Hand/Off Hand"], "BIS") --Deathbringer
    LBIS:AddItem(spec4, "228508", LBIS.L["Main Hand/Off Hand"], "Alt") --Hammer of The Black Anvil
    LBIS:AddItem(spec4, "228350", LBIS.L["Main Hand"], "Alt") --Eskhandar's Right Claw
    LBIS:AddItem(spec4, "227825", LBIS.L["Main Hand"], "Alt") --Molten Dark Iron Destroyer
    LBIS:AddItem(spec4, "228349", LBIS.L["Off Hand"], "Alt") --Eskhandar's Left Claw
    LBIS:AddItem(spec4, "19103", LBIS.L["Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec4, "228177", LBIS.L["Ranged/Relic"], "BIS") --Totem of Raging Fire
    LBIS:AddItem(spec4, "220607", LBIS.L["Ranged/Relic"], "Alt") --Totem of Tormented Ancestry
    LBIS:AddItem(spec4, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame

    LBIS:AddItem(spec5, "232219", LBIS.L["Head"], "BIS") --Crown of Ten Storms
    LBIS:AddItem(spec5, "226638", LBIS.L["Head"], "Alt") --Earthfury Headpiece
    LBIS:AddItem(spec5, "227021", LBIS.L["Head"], "Alt") --Face of The Five Thunders
    LBIS:AddItem(spec5, "232217", LBIS.L["Shoulder"], "BIS") --Spaulders of Ten Storms
    LBIS:AddItem(spec5, "226640", LBIS.L["Shoulder"], "Alt") --Earthfury Spaulders
    LBIS:AddItem(spec5, "227019", LBIS.L["Shoulder"], "Alt") --Spaulders of The Five Thunders
    LBIS:AddItem(spec5, "228383", LBIS.L["Back"], "BIS") --Puissant Cape
    LBIS:AddItem(spec5, "230842", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "228102", LBIS.L["Back"], "Alt") --Majordomo's Drape
    LBIS:AddItem(spec5, "227024", LBIS.L["Chest"], "BIS") --Chain of The Five Thunders
    LBIS:AddItem(spec5, "232222", LBIS.L["Chest"], "Alt") --Armor of Ten Storms
    LBIS:AddItem(spec5, "226635", LBIS.L["Chest"], "Alt") --Earthfury Chainmail
    LBIS:AddItem(spec5, "232215", LBIS.L["Wrist"], "BIS") --Vambraces of Ten Storms
    LBIS:AddItem(spec5, "226642", LBIS.L["Wrist"], "Alt") --Earthfury Bindings
    LBIS:AddItem(spec5, "228246", LBIS.L["Wrist"], "Alt") --Wristguards of Stability
    LBIS:AddItem(spec5, "232220", LBIS.L["Hands"], "BIS") --Grips of Ten Storms
    LBIS:AddItem(spec5, "226637", LBIS.L["Hands"], "Alt") --Earthfury Grips
    LBIS:AddItem(spec5, "227838", LBIS.L["Hands"], "Alt") --Shining Chromatic Gauntlets
    LBIS:AddItem(spec5, "227022", LBIS.L["Hands"], "Alt") --Fists of The Five Thunders
    LBIS:AddItem(spec5, "226641", LBIS.L["Waist"], "BIS") --Earthfury Girdle
    LBIS:AddItem(spec5, "232216", LBIS.L["Waist"], "Alt") --Girdle of Ten Storms
    LBIS:AddItem(spec5, "227018", LBIS.L["Waist"], "Alt") --Girdle of The Five Thunders
    LBIS:AddItem(spec5, "226639", LBIS.L["Legs"], "BIS") --Earthfury Chain Leggings
    LBIS:AddItem(spec5, "232218", LBIS.L["Legs"], "Alt") --Leggings of Ten Storms
    LBIS:AddItem(spec5, "227020", LBIS.L["Legs"], "Alt") --Legplates of The Five Thunders
    LBIS:AddItem(spec5, "227023", LBIS.L["Feet"], "BIS") --Treads of The Five Thunders
    LBIS:AddItem(spec5, "226636", LBIS.L["Feet"], "Alt") --Earthfury Battleboots
    LBIS:AddItem(spec5, "230805", LBIS.L["Feet"], "Alt") --Boots of the Shadow Flame
    LBIS:AddItem(spec5, "231306", LBIS.L["Neck"], "BIS") --Soul Corrupter's Necklace
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "228147", LBIS.L["Neck"], "Alt") --Magmadar's Horn
    LBIS:AddItem(spec5, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec5, "230839", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "Alt") --Don Julio's Band
    LBIS:AddItem(spec5, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec5, "230282", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "230273", LBIS.L["Trinket"], "BIS") --Natural Alignment Crystal
    LBIS:AddItem(spec5, "230810", LBIS.L["Trinket"], "Alt") --Neltharion's Tear
    LBIS:AddItem(spec5, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec5, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec5, "228089", LBIS.L["Trinket"], "Alt") --Woodcarved Moonstalker
    LBIS:AddItem(spec5, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec5, "230276", LBIS.L["Main Hand"], "BIS") --Claw of the Black Drake
    LBIS:AddItem(spec5, "231815", LBIS.L["Main Hand/Off Hand"], "BIS") --Flashrend
    LBIS:AddItem(spec5, "17068", LBIS.L["Main Hand/Off Hand"], "BIS/Alt") --Deathbringer
    LBIS:AddItem(spec5, "228508", LBIS.L["Main Hand/Off Hand"], "Alt") --Hammer of The Black Anvil
    LBIS:AddItem(spec5, "227825", LBIS.L["Main Hand"], "Alt") --Molten Dark Iron Destroyer
    LBIS:AddItem(spec5, "228349", LBIS.L["Off Hand"], "Alt") --Eskhandar's Left Claw
    LBIS:AddItem(spec5, "19103", LBIS.L["Off Hand"], "Alt") --Frostbite
    LBIS:AddItem(spec5, "232416", LBIS.L["Ranged/Relic"], "BIS") --Totem of Astral Flow
    LBIS:AddItem(spec5, "228177", LBIS.L["Ranged/Relic"], "Alt") --Totem of Raging Fire
    LBIS:AddItem(spec5, "220607", LBIS.L["Ranged/Relic"], "Alt") --Totem of Tormented Ancestry
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
