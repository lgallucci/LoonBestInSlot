local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Tank"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Tank"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Tank"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Tank"], "4")

    LBIS:AddEnchant(spec4, "15397", LBIS.L["Head"]) --Lesser Arcanum of Voracity
    LBIS:AddEnchant(spec4, "446451", LBIS.L["Shoulder"]) --Atal'ai Signet of Might
    LBIS:AddEnchant(spec4, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec4, "13941", LBIS.L["Chest"]) --Enchant Chest - Stats
    LBIS:AddEnchant(spec4, "13939", LBIS.L["Wrist"]) --Enchant Bracer - Greater Strength
    LBIS:AddEnchant(spec4, "13887", LBIS.L["Hands"]) --Enchant Gloves - Strength
    LBIS:AddEnchant(spec4, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec4, "13898", LBIS.L["Main Hand"]) --Enchant Weapon - Fiery Weapon
    LBIS:AddEnchant(spec4, "13689", LBIS.L["Off Hand"]) --Enchant Shield - Lesser Block

    LBIS:AddItem(spec1, "211789", LBIS.L["Head"], "BIS") --Artemis Cowl
    LBIS:AddItem(spec1, "211510", LBIS.L["Head"], "Alt") --Twilight Slayer's Cowl
    LBIS:AddItem(spec1, "211507", LBIS.L["Head"], "Alt") --Twilight Elementalist's Cowl
    LBIS:AddItem(spec1, "209682", LBIS.L["Head"], "Alt") --Sturdy Hood
    LBIS:AddItem(spec1, "4724", LBIS.L["Head"], "Alt") --Humbert's Helm
    LBIS:AddItem(spec1, "4385", LBIS.L["Head"], "Alt") --Green Tinted Goggles
    LBIS:AddItem(spec1, "209692", LBIS.L["Shoulder"], "BIS") --Sentinel Pauldrons
    LBIS:AddItem(spec1, "15127", LBIS.L["Shoulder"], "Alt") --Robust Shoulders
    LBIS:AddItem(spec1, "2264", LBIS.L["Shoulder"], "Alt") --Mantle of Thieves
    LBIS:AddItem(spec1, "7352", LBIS.L["Shoulder"], "Alt") --Earthen Leather Shoulders
    LBIS:AddItem(spec1, "4251", LBIS.L["Shoulder"], "Alt") --Hillman's Shoulders
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "2059", LBIS.L["Back"], "Alt") --Sentry Cloak
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "14582", LBIS.L["Back"], "Alt") --Dokebi Cape
    LBIS:AddItem(spec1, "6667", LBIS.L["Back"], "Alt") --Engineer's Cloak
    LBIS:AddItem(spec1, "14752", LBIS.L["Back"], "Alt") --Slayer's Cape
    LBIS:AddItem(spec1, "6449", LBIS.L["Back"], "Alt") --Glowing Lizardscale Cloak
    LBIS:AddItem(spec1, "209687", LBIS.L["Chest"], "BIS") --Hydra Hide Cuirass
    LBIS:AddItem(spec1, "211512", LBIS.L["Chest"], "Alt") --Twilight Slayer's Tunic
    LBIS:AddItem(spec1, "209572", LBIS.L["Chest"], "Alt") --Black Boiled Leathers
    LBIS:AddItem(spec1, "211509", LBIS.L["Chest"], "Alt") --Twilight Elementalist's Robe
    LBIS:AddItem(spec1, "209675", LBIS.L["Chest"], "Alt") --Clamweave Tunic
    LBIS:AddItem(spec1, "10399", LBIS.L["Chest"], "Alt") --Blackened Defias Armor
    LBIS:AddItem(spec1, "6603", LBIS.L["Chest"], "Alt") --Dervish Tunic
    LBIS:AddItem(spec1, "15471", LBIS.L["Chest"], "Alt") --Brawnhide Armor
    LBIS:AddItem(spec1, "209524", LBIS.L["Wrist"], "BIS") --Bindings of Serra'kis
    LBIS:AddItem(spec1, "4049", LBIS.L["Wrist"], "Alt") --Emblazoned Bracers
    LBIS:AddItem(spec1, "15351", LBIS.L["Wrist"], "Alt") --Headhunter's Bands
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "211502", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec1, "1978", LBIS.L["Hands"], "Alt") --Wolfclaw Gloves
    LBIS:AddItem(spec1, "211455", LBIS.L["Hands"], "Alt") --Slick Fingerless Gloves
    LBIS:AddItem(spec1, "720", LBIS.L["Hands"], "Alt") --Brawler Gloves
    LBIS:AddItem(spec1, "16740", LBIS.L["Hands"], "Alt") --Shredder Operating Gloves
    LBIS:AddItem(spec1, "16987", LBIS.L["Waist"], "BIS") --Screecher Belt
    LBIS:AddItem(spec1, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec1, "209685", LBIS.L["Waist"], "Alt") --Ancient Moss Cinch
    LBIS:AddItem(spec1, "209432", LBIS.L["Waist"], "Alt") --Ghamoo-ra's Cinch
    LBIS:AddItem(spec1, "9827", LBIS.L["Waist"], "Alt") --Scaled Leather Belt
    LBIS:AddItem(spec1, "15469", LBIS.L["Waist"], "Alt") --Windsong Cinch
    LBIS:AddItem(spec1, "6398", LBIS.L["Waist"], "Alt") --Emblazoned Belt
    LBIS:AddItem(spec1, "6468", LBIS.L["Waist"], "Alt") --Deviate Scale Belt
    LBIS:AddItem(spec1, "5355", LBIS.L["Waist"], "Alt") --Beastmaster's Girdle
    LBIS:AddItem(spec1, "13114", LBIS.L["Legs"], "BIS") --Troll's Bane Leggings
    LBIS:AddItem(spec1, "10410", LBIS.L["Legs"], "BIS") --Leggings of the Fang
    LBIS:AddItem(spec1, "209684", LBIS.L["Legs"], "Alt") --Soul Leech Pants
    LBIS:AddItem(spec1, "6607", LBIS.L["Legs"], "Alt") --Dervish Leggings
    LBIS:AddItem(spec1, "4831", LBIS.L["Legs"], "Alt") --Stalking Pants
    LBIS:AddItem(spec1, "210795", LBIS.L["Feet"], "BIS") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec1, "211511", LBIS.L["Feet"], "BIS") --Twilight Slayer's Footpads
    LBIS:AddItem(spec1, "211508", LBIS.L["Feet"], "Alt") --Twilight Elementalist's Footpads
    LBIS:AddItem(spec1, "16977", LBIS.L["Feet"], "Alt") --Warsong Boots
    LBIS:AddItem(spec1, "209569", LBIS.L["Feet"], "Alt") --Murloc Hide Kneeboots
    LBIS:AddItem(spec1, "6668", LBIS.L["Feet"], "Alt") --Draftsman Boots
    LBIS:AddItem(spec1, "6335", LBIS.L["Feet"], "Alt") --Grizzled Boots
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "BIS") --Spectral Necklace
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec1, "209817", LBIS.L["Neck"], "Alt") --Voidwalker Brooch
    LBIS:AddItem(spec1, "6414", LBIS.L["Ring"], "BIS") --Seal of Sylvanas
    LBIS:AddItem(spec1, "209565", LBIS.L["Ring"], "BIS") --Band of Deep Places
    LBIS:AddItem(spec1, "2039", LBIS.L["Ring"], "Alt") --Plains Ring
    LBIS:AddItem(spec1, "6321", LBIS.L["Ring"], "Alt") --Silverlaine's Family Seal
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "Alt") --Band of the Iron Fist
    LBIS:AddItem(spec1, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec1, "12985", LBIS.L["Ring"], "Alt") --Ring of Defense
    LBIS:AddItem(spec1, "1156", LBIS.L["Ring"], "Alt") --Lavishly Jeweled Ring
    LBIS:AddItem(spec1, "21566", LBIS.L["Trinket"], "BIS") --Rune of Perfection
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec1, "209681", LBIS.L["Trinket"], "Alt") --Black Murloc Egg
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec1, "209436", LBIS.L["Main Hand"], "BIS") --Chipped Bite of Serra'kis
    LBIS:AddItem(spec1, "209694", LBIS.L["Main Hand"], "BIS") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec1, "209560", LBIS.L["Main Hand"], "BIS") --Hammer of Righteous Judgement
    LBIS:AddItem(spec1, "209822", LBIS.L["Main Hand"], "Alt") --Strength of Purpose
    LBIS:AddItem(spec1, "209579", LBIS.L["Main Hand"], "Alt") --Crashing Thunder
    LBIS:AddItem(spec1, "209580", LBIS.L["Main Hand"], "Alt") --Gusting Wind
    LBIS:AddItem(spec1, "7786", LBIS.L["Main Hand"], "Alt") --Headsplitter
    LBIS:AddItem(spec1, "6220", LBIS.L["Main Hand"], "Alt") --Meteor Shard
    LBIS:AddItem(spec1, "2878", LBIS.L["Main Hand"], "Alt") --Bearded Boneaxe
    LBIS:AddItem(spec1, "3413", LBIS.L["Main Hand"], "Alt") --Doomspike
    LBIS:AddItem(spec1, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec1, "2819", LBIS.L["Main Hand"], "Alt") --Cross Dagger
    LBIS:AddItem(spec1, "209424", LBIS.L["Off Hand"], "BIS") --Shell Plate Barrier
    LBIS:AddItem(spec1, "211460", LBIS.L["Off Hand"], "BIS") --Ancient Arctic Buckler
    LBIS:AddItem(spec1, "6320", LBIS.L["Off Hand"], "Alt") --Commander's Crest
    LBIS:AddItem(spec1, "6630", LBIS.L["Off Hand"], "Alt") --Seedcloud Buckler
    LBIS:AddItem(spec1, "3761", LBIS.L["Off Hand"], "Alt") --Deadskull Shield
    LBIS:AddItem(spec1, "6599", LBIS.L["Off Hand"], "Alt") --Battleforge Shield
    LBIS:AddItem(spec1, "15522", LBIS.L["Off Hand"], "Alt") --Spiked Chain Shield
    LBIS:AddItem(spec1, "6598", LBIS.L["Off Hand"], "Alt") --Dervish Buckler
    LBIS:AddItem(spec1, "209575", LBIS.L["Ranged/Relic"], "BIS") --Carved Driftwood Icon

    LBIS:AddItem(spec2, "215382", LBIS.L["Head"], "BIS") --Rad-Resistant Scale Hood
    LBIS:AddItem(spec2, "7719", LBIS.L["Head"], "Alt") --Raging Berserker's Helm
    LBIS:AddItem(spec2, "213280", LBIS.L["Head"], "Alt") --Marksman's Scopevisor
    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "Alt") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "15602", LBIS.L["Head"], "Alt") --Ancient Crown
    LBIS:AddItem(spec2, "9932", LBIS.L["Head"], "Alt") --Brigade Circlet
    LBIS:AddItem(spec2, "213304", LBIS.L["Shoulder"], "BIS") --Troggslayer Pauldrons
    LBIS:AddItem(spec2, "13132", LBIS.L["Shoulder"], "Alt") --Skeletal Shoulders
    LBIS:AddItem(spec2, "7718", LBIS.L["Shoulder"], "Alt") --Herod's Shoulder
    LBIS:AddItem(spec2, "3765", LBIS.L["Shoulder"], "Alt") --Brigand's Pauldrons
    LBIS:AddItem(spec2, "6747", LBIS.L["Shoulder"], "Alt") --Enforcer Pauldrons
    LBIS:AddItem(spec2, "213303", LBIS.L["Shoulder"], "Alt") --Lightning Rod Spaulders
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "11858", LBIS.L["Back"], "Alt") --Battlehard Cape
    LBIS:AddItem(spec2, "213308", LBIS.L["Back"], "Alt") --Prototype Parachute Cloak
    LBIS:AddItem(spec2, "14656", LBIS.L["Back"], "Alt") --Scorpashi Cape
    LBIS:AddItem(spec2, "13121", LBIS.L["Back"], "Alt") --Wing of the Whelpling
    LBIS:AddItem(spec2, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "217293", LBIS.L["Back"], "Alt") --Silky Spider Cape
    LBIS:AddItem(spec2, "213314", LBIS.L["Chest"], "BIS") --Electromantic Chainmail
    LBIS:AddItem(spec2, "210794", LBIS.L["Chest"], "Alt") --Shifting Silver Breastplate
    LBIS:AddItem(spec2, "10328", LBIS.L["Chest"], "Alt") --Scarlet Chestpiece
    LBIS:AddItem(spec2, "1981", LBIS.L["Chest"], "Alt") --Icemail Jerkin
    LBIS:AddItem(spec2, "7688", LBIS.L["Chest"], "Alt") --Ironspine's Ribcage
    LBIS:AddItem(spec2, "11193", LBIS.L["Chest"], "Alt") --Blazewind Breastplate
    LBIS:AddItem(spec2, "209687", LBIS.L["Chest"], "Alt") --Hydra Hide Cuirass
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "19584", LBIS.L["Wrist"], "BIS") --Windtalker's Wristguards
    LBIS:AddItem(spec2, "212994", LBIS.L["Wrist"], "BIS") --Stormchaser's Bindings
    LBIS:AddItem(spec2, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec2, "13199", LBIS.L["Wrist"], "Alt") --Crushridge Bindings
    LBIS:AddItem(spec2, "16794", LBIS.L["Wrist"], "Alt") --Gripsteel Wristguards
    LBIS:AddItem(spec2, "213278", LBIS.L["Hands"], "BIS") --Bonk-Maestro's Handguards
    LBIS:AddItem(spec2, "7724", LBIS.L["Hands"], "BIS") --Gauntlets of Divinity
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "10331", LBIS.L["Hands"], "Alt") --Scarlet Gauntlets
    LBIS:AddItem(spec2, "14764", LBIS.L["Hands"], "Alt") --Enduring Gauntlets
    LBIS:AddItem(spec2, "215380", LBIS.L["Waist"], "BIS") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec2, "213325", LBIS.L["Waist"], "BIS") --Darkvision Girdle
    LBIS:AddItem(spec2, "20153", LBIS.L["Waist"], "Alt") --Defiler's Chain Girdle
    LBIS:AddItem(spec2, "213324", LBIS.L["Waist"], "Alt") --Electromagnetic Waistcord
    LBIS:AddItem(spec2, "10768", LBIS.L["Waist"], "Alt") --Boar Champion's Belt
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "Alt") --Skullduggery Waistband
    LBIS:AddItem(spec2, "213333", LBIS.L["Legs"], "BIS") --Electromantic Chausses
    LBIS:AddItem(spec2, "10330", LBIS.L["Legs"], "Alt") --Scarlet Leggings
    LBIS:AddItem(spec2, "9396", LBIS.L["Legs"], "Alt") --Legguards of the Vault
    LBIS:AddItem(spec2, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec2, "209566", LBIS.L["Legs"], "Alt") --Leggings of the Faithful
    LBIS:AddItem(spec2, "1678", LBIS.L["Feet"], "BIS") --Black Ogre Kickers
    LBIS:AddItem(spec2, "6423", LBIS.L["Feet"], "BIS") --Blackforge Greaves
    LBIS:AddItem(spec2, "20156", LBIS.L["Feet"], "Alt") --Defiler's Chain Greaves
    LBIS:AddItem(spec2, "213339", LBIS.L["Feet"], "Alt") --Electromantic Grounding Sabatons
    LBIS:AddItem(spec2, "213340", LBIS.L["Feet"], "Alt") --Gnomebot Operators Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "19536", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "4430", LBIS.L["Neck"], "Alt") --Ethereal Talisman
    LBIS:AddItem(spec2, "13087", LBIS.L["Neck"], "Alt") --River Pride Choker
    LBIS:AddItem(spec2, "17772", LBIS.L["Neck"], "Alt") --Zealous Shadowshard Pendant
    LBIS:AddItem(spec2, "13084", LBIS.L["Neck"], "Alt") --Kaleidoscope Chain
    LBIS:AddItem(spec2, "209673", LBIS.L["Neck"], "Alt") --Glowing Fetish Amulet
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "BIS") --Legionnaire's Band
    LBIS:AddItem(spec2, "13095", LBIS.L["Ring"], "Alt") --Assault Band
    LBIS:AddItem(spec2, "7686", LBIS.L["Ring"], "Alt") --Ironspine's Eye
    LBIS:AddItem(spec2, "2262", LBIS.L["Ring"], "Alt") --Mark of Kern
    LBIS:AddItem(spec2, "18585", LBIS.L["Ring"], "Alt") --Band of Allegiance
    LBIS:AddItem(spec2, "4549", LBIS.L["Ring"], "Alt") --Seafire Band
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "213350", LBIS.L["Trinket"], "Alt") --Wirdal's Hardened Core
    LBIS:AddItem(spec2, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec2, "216615", LBIS.L["Trinket"], "Alt") --Ancestral Bloodstorm Beacon
    LBIS:AddItem(spec2, "213409", LBIS.L["Main Hand"], "BIS") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec2, "213442", LBIS.L["Main Hand"], "BIS") --Cogmaster's Claw
    LBIS:AddItem(spec2, "213291", LBIS.L["Main Hand"], "Alt") --Toxic Revenger II
    LBIS:AddItem(spec2, "9465", LBIS.L["Main Hand"], "Alt") --Digmaster 5000
    LBIS:AddItem(spec2, "213295", LBIS.L["Main Hand"], "Alt") --Ultrasonic Vibroblade
    LBIS:AddItem(spec2, "213560", LBIS.L["Main Hand"], "Alt") --Mechanostrider Muffler
    LBIS:AddItem(spec2, "213297", LBIS.L["Main Hand"], "Alt") --Oscillating Blasthammer
    LBIS:AddItem(spec2, "934", LBIS.L["Main Hand"], "Alt") --Stalvan's Reaper
    LBIS:AddItem(spec2, "10744", LBIS.L["Main Hand"], "Alt") --Axe of the Ebon Drake
    LBIS:AddItem(spec2, "9684", LBIS.L["Main Hand"], "Alt") --Force of the Hippogryph
    LBIS:AddItem(spec2, "213390", LBIS.L["Off Hand"], "BIS") --Whirling Truesilver Gearwall
    LBIS:AddItem(spec2, "7726", LBIS.L["Off Hand"], "Alt") --Aegis of the Scarlet Commander
    LBIS:AddItem(spec2, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec2, "10767", LBIS.L["Off Hand"], "Alt") --Savage Boar's Guard
    LBIS:AddItem(spec2, "1204", LBIS.L["Off Hand"], "Alt") --The Green Tower
    LBIS:AddItem(spec2, "215436", LBIS.L["Ranged/Relic"], "BIS") --Totem of Invigorating Flame
    LBIS:AddItem(spec2, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec3, "215382", LBIS.L["Head"], "BIS") --Rad-Resistant Scale Hood
    LBIS:AddItem(spec3, "220820", LBIS.L["Head"], "BIS") --Blood Guard's Mail Helmet
    LBIS:AddItem(spec3, "221391", LBIS.L["Head"], "Alt") --Emerald Scalemail Helmet
    LBIS:AddItem(spec3, "220516", LBIS.L["Head"], "Alt") --Gasher's Forgotten Visor
    LBIS:AddItem(spec3, "223963", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec3, "215114", LBIS.L["Head"], "Alt") --Glowing Hyperconductive Scale Coif
    LBIS:AddItem(spec3, "221402", LBIS.L["Head"], "Alt") --Emerald Chain Helmet
    LBIS:AddItem(spec3, "220518", LBIS.L["Head"], "Alt") --Ba'ham's Dusty Hat
    LBIS:AddItem(spec3, "17767", LBIS.L["Head"], "Alt") --Bloomsprout Headpiece
    LBIS:AddItem(spec3, "7719", LBIS.L["Head"], "Alt") --Raging Berserker's Helm
    LBIS:AddItem(spec3, "213280", LBIS.L["Head"], "Alt") --Marksman's Scopevisor
    LBIS:AddItem(spec3, "220743", LBIS.L["Shoulder"], "BIS Melee") --Cacophonous Chain Shoulderguards
    LBIS:AddItem(spec3, "220741", LBIS.L["Shoulder"], "BIS") --Screaming Chain Pauldrons
    LBIS:AddItem(spec3, "223544", LBIS.L["Shoulder"], "BIS") --Dregmetal Spaulders
    LBIS:AddItem(spec3, "220823", LBIS.L["Shoulder"], "Alt") --Blood Guard's Mail Epaulets
    LBIS:AddItem(spec3, "220527", LBIS.L["Shoulder"], "Alt") --Atal'ai Berserker's Mantle
    LBIS:AddItem(spec3, "221392", LBIS.L["Shoulder"], "Alt") --Emerald Scalemail Shoulders
    LBIS:AddItem(spec3, "221400", LBIS.L["Shoulder"], "Alt") --Emerald Chain Shoudlers
    LBIS:AddItem(spec3, "223987", LBIS.L["Shoulder"], "Alt") --Splinthide Shoulders
    LBIS:AddItem(spec3, "220528", LBIS.L["Shoulder"], "Alt") --Atal'ai Huntsman's Shoulders
    LBIS:AddItem(spec3, "213304", LBIS.L["Shoulder"], "Alt") --Troggslayer Pauldrons
    LBIS:AddItem(spec3, "7718", LBIS.L["Shoulder"], "Alt") --Herod's Shoulder
    LBIS:AddItem(spec3, "19121", LBIS.L["Back"], "BIS") --Deep Woodlands Cloak
    LBIS:AddItem(spec3, "220611", LBIS.L["Back"], "Alt") --Hukku's Hex Cape
    LBIS:AddItem(spec3, "216620", LBIS.L["Back"], "Alt") --Bloodrot Cloak
    LBIS:AddItem(spec3, "16341", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec3, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec3, "220609", LBIS.L["Back"], "Alt") --Drape of Nightfall
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "213308", LBIS.L["Back"], "Alt") --Prototype Parachute Cloak
    LBIS:AddItem(spec3, "217293", LBIS.L["Back"], "Alt") --Silky Spider Cape
    LBIS:AddItem(spec3, "220657", LBIS.L["Chest"], "BIS Melee") --Ostracized Berserker's Hauberk
    LBIS:AddItem(spec3, "220660", LBIS.L["Chest"], "BIS") --Shunned Devotee's Chainshirt
    LBIS:AddItem(spec3, "220826", LBIS.L["Chest"], "Alt") --Stone Guard's Mail Armor
    LBIS:AddItem(spec3, "220844", LBIS.L["Chest"], "Alt") --Stone Guard's Pulsing Breastplate
    LBIS:AddItem(spec3, "221390", LBIS.L["Chest"], "Alt") --Emerald Scalemail Breastplate
    LBIS:AddItem(spec3, "223528", LBIS.L["Chest"], "Alt") --Gahz'rilla Scale Armor
    LBIS:AddItem(spec3, "221404", LBIS.L["Chest"], "Alt") --Emerald Chain Breastplate
    LBIS:AddItem(spec3, "220533", LBIS.L["Chest"], "Alt") --Reforged Atal'ai Breastplate
    LBIS:AddItem(spec3, "213314", LBIS.L["Chest"], "Alt") --Electromantic Chainmail
    LBIS:AddItem(spec3, "213315", LBIS.L["Chest"], "Alt") --Electromantic Chainshirt
    LBIS:AddItem(spec3, "210794", LBIS.L["Chest"], "Alt") --Shifting Silver Breastplate
    LBIS:AddItem(spec3, "19583", LBIS.L["Wrist"], "BIS") --Windtalker's Wristguards
    LBIS:AddItem(spec3, "221025", LBIS.L["Wrist"], "BIS") --Void-Powered Invoker's Vambraces
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "17714", LBIS.L["Wrist"], "Alt") --Bracers of the Stone Princess
    LBIS:AddItem(spec3, "11679", LBIS.L["Wrist"], "Alt") --Rubicund Armguards
    LBIS:AddItem(spec3, "220538", LBIS.L["Wrist"], "Alt") --Cursed Slimescale Bracers
    LBIS:AddItem(spec3, "18432", LBIS.L["Wrist"], "Alt") --First Sergeant's Mail Wristguards
    LBIS:AddItem(spec3, "212996", LBIS.L["Wrist"], "Alt") --Lightningcaller's Bindings
    LBIS:AddItem(spec3, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec3, "220831", LBIS.L["Hands"], "BIS") --First Sergeant's Mail Gauntlets
    LBIS:AddItem(spec3, "220542", LBIS.L["Hands"], "Alt") --Polluted Murkwater Gauntlets
    LBIS:AddItem(spec3, "220845", LBIS.L["Hands"], "Alt") --First Sergeant's Pulsing Gauntlets
    LBIS:AddItem(spec3, "221389", LBIS.L["Hands"], "Alt") --Emerald Scalemail Gauntlets
    LBIS:AddItem(spec3, "17736", LBIS.L["Hands"], "Alt") --Rockgrip Gauntlets
    LBIS:AddItem(spec3, "221403", LBIS.L["Hands"], "Alt") --Emerald Chain Gauntlets
    LBIS:AddItem(spec3, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec3, "223192", LBIS.L["Waist"], "BIS") --Cord of the Untamed
    LBIS:AddItem(spec3, "213324", LBIS.L["Waist"], "Alt") --Electromagnetic Waistcord
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "220552", LBIS.L["Waist"], "Alt") --Waistguard of Pain
    LBIS:AddItem(spec3, "20151", LBIS.L["Waist"], "Alt") --Defiler's Chain Girdle
    LBIS:AddItem(spec3, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec3, "215380", LBIS.L["Waist"], "Alt") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec3, "213325", LBIS.L["Waist"], "Alt") --Darkvision Girdle
    LBIS:AddItem(spec3, "213322", LBIS.L["Waist"], "Alt") --Skullduggery Waistband
    LBIS:AddItem(spec3, "220658", LBIS.L["Legs"], "BIS Melee") --Ostracized Berserker's Legplates
    LBIS:AddItem(spec3, "220661", LBIS.L["Legs"], "BIS") --Shunned Devotee's Legguards
    LBIS:AddItem(spec3, "223250", LBIS.L["Legs"], "Alt") --Fel Mail Legs
    LBIS:AddItem(spec3, "223980", LBIS.L["Legs"], "Alt") --Searingscale Leggings
    LBIS:AddItem(spec3, "220834", LBIS.L["Legs"], "Alt") --Stone Guard's Mail Legplates
    LBIS:AddItem(spec3, "220847", LBIS.L["Legs"], "Alt") --Stone Guard's Pulsing Legplates
    LBIS:AddItem(spec3, "221388", LBIS.L["Legs"], "Alt") --Emerald Scalemail Leggings
    LBIS:AddItem(spec3, "221401", LBIS.L["Legs"], "Alt") --Emerald ChainLeggings
    LBIS:AddItem(spec3, "213333", LBIS.L["Legs"], "Alt") --Electromantic Chausses
    LBIS:AddItem(spec3, "220659", LBIS.L["Feet"], "BIS Melee") --Ostracized Berserker's Chain Greaves
    LBIS:AddItem(spec3, "220662", LBIS.L["Feet"], "BIS") --Shunned Devotee's Scale Boots
    LBIS:AddItem(spec3, "20155", LBIS.L["Feet"], "Alt") --Defiler's Chain Greaves
    LBIS:AddItem(spec3, "22240", LBIS.L["Feet"], "Alt") --Greaves of Withering Despair
    LBIS:AddItem(spec3, "220835", LBIS.L["Feet"], "Alt") --First Sergeant's Mail Sabatons
    LBIS:AddItem(spec3, "221393", LBIS.L["Feet"], "Alt") --Emerald Scalemail Boots
    LBIS:AddItem(spec3, "221405", LBIS.L["Feet"], "Alt") --Emerald Chain Boots
    LBIS:AddItem(spec3, "11675", LBIS.L["Feet"], "Alt") --Shadefiend Boots
    LBIS:AddItem(spec3, "11627", LBIS.L["Feet"], "Alt") --Fleetfoot Greaves
    LBIS:AddItem(spec3, "20189", LBIS.L["Feet"], "Alt") --Defiler's Leather Boots
    LBIS:AddItem(spec3, "213339", LBIS.L["Feet"], "Alt") --Electromantic Grounding Sabatons
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "220623", LBIS.L["Neck"], "Alt") --Jin'do's Lost Locket
    LBIS:AddItem(spec3, "19159", LBIS.L["Neck"], "Alt") --Woven Ivy Necklace
    LBIS:AddItem(spec3, "19535", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec3, "220625", LBIS.L["Neck"], "Alt") --Resilience of the Exiled
    LBIS:AddItem(spec3, "223532", LBIS.L["Neck"], "Alt") --Lifeblood Amulet
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "BIS") --Blackstone Ring
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "BIS") --Band of the Wilds
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "221193", LBIS.L["Ring"], "Alt") --Emerald Ring
    LBIS:AddItem(spec3, "224006", LBIS.L["Ring"], "Alt") --Emerald Ring
    LBIS:AddItem(spec3, "19519", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "223327", LBIS.L["Ring"], "Alt") --Mark of Hakkar
    LBIS:AddItem(spec3, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec3, "9533", LBIS.L["Ring"], "Alt") --Masons Fraternity Ring
    LBIS:AddItem(spec3, "17774", LBIS.L["Trinket"], "BIS") --Mark of the Chosen
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS") --Breadth of the Beast
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec3, "220634", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec3, "220632", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Medallion
    LBIS:AddItem(spec3, "220633", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Badge
    LBIS:AddItem(spec3, "221442", LBIS.L["Trinket"], "Alt") --Roar of the Guardian
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "221474", LBIS.L["Trinket"], "Alt") --Chained Essence of Eranikus
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "213350", LBIS.L["Trinket"], "Alt") --Wirdal's Hardened Core
    LBIS:AddItem(spec3, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec3, "216615", LBIS.L["Trinket"], "Alt") --Ancestral Bloodstorm Beacon
    LBIS:AddItem(spec3, "220588", LBIS.L["Main Hand"], "BIS Melee") --Cobra Fang Claw
    LBIS:AddItem(spec3, "223964", LBIS.L["Main Hand"], "BIS") --Blade of Eternal Darkness
    LBIS:AddItem(spec3, "220586", LBIS.L["Main Hand"], "Alt") --Hubris, the Bandit Brander
    LBIS:AddItem(spec3, "213410", LBIS.L["Main Hand"], "Alt") --Glimmering Gizmoblade
    LBIS:AddItem(spec3, "11702", LBIS.L["Main Hand"], "Alt") --Grizzle's Skinner
    LBIS:AddItem(spec3, "223518", LBIS.L["Main Hand"], "Alt") --Charstone Dirk
    LBIS:AddItem(spec3, "220581", LBIS.L["Main Hand"], "Alt") --Snake Clobberer
    LBIS:AddItem(spec3, "9639", LBIS.L["Main Hand"], "Alt") --The Hand of Antu'sul
    LBIS:AddItem(spec3, "9478", LBIS.L["Main Hand"], "Alt") --Ripsaw
    LBIS:AddItem(spec3, "11120", LBIS.L["Main Hand"], "Alt") --Belgrom's Hammer
    LBIS:AddItem(spec3, "19543", LBIS.L["Main Hand"], "Alt") --Scout's Blade
    LBIS:AddItem(spec3, "220601", LBIS.L["Off Hand"], "BIS") --Hakkari Witch Doctor's Guard
    LBIS:AddItem(spec3, "1979", LBIS.L["Off Hand"], "BIS Mit") --Wall of the Dead
    LBIS:AddItem(spec3, "213390", LBIS.L["Off Hand"], "Alt") --Whirling Truesilver Gearwall
    LBIS:AddItem(spec3, "223197", LBIS.L["Off Hand"], "Alt") --Defender of the Wilds
    LBIS:AddItem(spec3, "216501", LBIS.L["Off Hand"], "Alt") --Bloodstorm Barrier
    LBIS:AddItem(spec3, "223545", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec3, "11631", LBIS.L["Off Hand"], "Alt") --Stoneshell Guard
    LBIS:AddItem(spec3, "1169", LBIS.L["Off Hand"], "Alt") --Blackskull Shield
    LBIS:AddItem(spec3, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec3, "1204", LBIS.L["Off Hand"], "Alt") --The Green Tower
    LBIS:AddItem(spec3, "220607", LBIS.L["Ranged/Relic"], "BIS") --Totem of Tormented Ancestry
    LBIS:AddItem(spec3, "221464", LBIS.L["Ranged/Relic"], "Alt") --Totem of Fiery Precision
    LBIS:AddItem(spec3, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame
    LBIS:AddItem(spec3, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec4, "228353", LBIS.L["Head"], "BIS") --Infernal Headcage
    LBIS:AddItem(spec4, "226630", LBIS.L["Head"], "Alt") --Earthfury Greathelm
    LBIS:AddItem(spec4, "227002", LBIS.L["Head"], "Alt") --Coif of The Five Thunders
    LBIS:AddItem(spec4, "227029", LBIS.L["Head"], "Alt") --Headpiece of The Five Thunders
    LBIS:AddItem(spec4, "226755", LBIS.L["Head"], "Alt") --Coif of Elements
    LBIS:AddItem(spec4, "18479", LBIS.L["Head"], "Alt") --Carrion Scorpid Helm
    LBIS:AddItem(spec4, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec4, "228258", LBIS.L["Shoulder"], "BIS") --Deep Earth Spaulders
    LBIS:AddItem(spec4, "226632", LBIS.L["Shoulder"], "Alt") --Earthfury Pauldrons
    LBIS:AddItem(spec4, "227003", LBIS.L["Shoulder"], "Alt") --Pauldrons of The Five Thunders
    LBIS:AddItem(spec4, "227834", LBIS.L["Shoulder"], "Alt") --Molten Chain Shoulders
    LBIS:AddItem(spec4, "228605", LBIS.L["Shoulder"], "Alt") --Bonespike Shoulder
    LBIS:AddItem(spec4, "226753", LBIS.L["Shoulder"], "Alt") --Pauldrons of Elements
    LBIS:AddItem(spec4, "228100", LBIS.L["Back"], "BIS") --Drape of the Fire Lord
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "228292", LBIS.L["Back"], "Alt") --Dragon's Blood Cape
    LBIS:AddItem(spec4, "228505", LBIS.L["Back"], "Alt") --Royal Tribunal Cloak
    LBIS:AddItem(spec4, "19085", LBIS.L["Back"], "Alt") --Frostwolf Advisor's Cloak
    LBIS:AddItem(spec4, "226627", LBIS.L["Chest"], "BIS") --Earthfury Scalemail
    LBIS:AddItem(spec4, "227032", LBIS.L["Chest"], "Alt") --Chestguard of The Five Thunders
    LBIS:AddItem(spec4, "226749", LBIS.L["Chest"], "Alt") --Vest of Elements
    LBIS:AddItem(spec4, "227876", LBIS.L["Chest"], "Alt") --Invincible Mail
    LBIS:AddItem(spec4, "228070", LBIS.L["Chest"], "Alt") --Ogre Forged Hauberk
    LBIS:AddItem(spec4, "220657", LBIS.L["Chest"], "Alt Melee") --Ostracized Berserker's Hauberk
    LBIS:AddItem(spec4, "220660", LBIS.L["Chest"], "Alt") --Shunned Devotee's Chainshirt
    LBIS:AddItem(spec4, "226626", LBIS.L["Wrist"], "BIS") --Earthfury Wristbands
    LBIS:AddItem(spec4, "226634", LBIS.L["Wrist"], "Alt") --Earthfury Wristguards
    LBIS:AddItem(spec4, "227025", LBIS.L["Wrist"], "Alt") --Wristguards of The Five Thunders
    LBIS:AddItem(spec4, "227001", LBIS.L["Wrist"], "Alt") --Bindings of The Five Thunders
    LBIS:AddItem(spec4, "226751", LBIS.L["Wrist"], "Alt") --Bindings of Elements
    LBIS:AddItem(spec4, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec4, "226621", LBIS.L["Hands"], "BIS") --Earthfury Hands
    LBIS:AddItem(spec4, "226629", LBIS.L["Hands"], "Alt") --Earthfury Handguards
    LBIS:AddItem(spec4, "227006", LBIS.L["Hands"], "Alt") --Gauntlets of The Five Thunders
    LBIS:AddItem(spec4, "227030", LBIS.L["Hands"], "Alt") --Handguards of The Five Thunders
    LBIS:AddItem(spec4, "228537", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec4, "226748", LBIS.L["Hands"], "Alt") --Gauntlets of Elements
    LBIS:AddItem(spec4, "227870", LBIS.L["Hands"], "Alt") --Tempest Gauntlets
    LBIS:AddItem(spec4, "227961", LBIS.L["Hands"], "Alt") --Savage Gladiator Grips
    LBIS:AddItem(spec4, "226633", LBIS.L["Waist"], "BIS") --Earthfury Waistguard
    LBIS:AddItem(spec4, "226625", LBIS.L["Waist"], "Alt") --Earthfury Cord
    LBIS:AddItem(spec4, "227026", LBIS.L["Waist"], "Alt") --Waistguard of The Five Thunders
    LBIS:AddItem(spec4, "227008", LBIS.L["Waist"], "Alt") --Cord of The Five Thunders
    LBIS:AddItem(spec4, "228014", LBIS.L["Waist"], "Alt") --Bloodmail Belt
    LBIS:AddItem(spec4, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec4, "227034", LBIS.L["Waist"], "Alt") --Waist of The Five Thunders
    LBIS:AddItem(spec4, "226754", LBIS.L["Waist"], "Alt") --Cord of Elements
    LBIS:AddItem(spec4, "226631", LBIS.L["Legs"], "BIS") --Earthfury Scaled Leggings
    LBIS:AddItem(spec4, "228661", LBIS.L["Legs"], "Alt") --Tristam Legguards
    LBIS:AddItem(spec4, "227028", LBIS.L["Legs"], "Alt") --Legguards of The Five Thunders
    LBIS:AddItem(spec4, "227005", LBIS.L["Legs"], "Alt") --Kilt of The Five Thunders
    LBIS:AddItem(spec4, "228003", LBIS.L["Legs"], "Alt") --Bloodmail Legguards
    LBIS:AddItem(spec4, "228503", LBIS.L["Legs"], "Alt") --Woollies of the Prancing Minstrel
    LBIS:AddItem(spec4, "226750", LBIS.L["Legs"], "Alt") --Kilt of Elements
    LBIS:AddItem(spec4, "226628", LBIS.L["Feet"], "BIS") --Earthfury Sabatons
    LBIS:AddItem(spec4, "227810", LBIS.L["Feet"], "Alt") --Dense Timbermaw Boots
    LBIS:AddItem(spec4, "227031", LBIS.L["Feet"], "Alt") --Sabatons of The Five Thunders
    LBIS:AddItem(spec4, "226620", LBIS.L["Feet"], "Alt") --Earthfury Walkers
    LBIS:AddItem(spec4, "227007", LBIS.L["Feet"], "Alt") --Slippers of The Five Thunders
    LBIS:AddItem(spec4, "228593", LBIS.L["Feet"], "Alt") --Wind Dancer Boots
    LBIS:AddItem(spec4, "19144", LBIS.L["Feet"], "Alt") --Sabatons of the Flamewalker
    LBIS:AddItem(spec4, "226752", LBIS.L["Feet"], "Alt") --Boots of Elements
    LBIS:AddItem(spec4, "227998", LBIS.L["Feet"], "Alt") --Bloodmail Boots
    LBIS:AddItem(spec4, "228289", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "228247", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "228249", LBIS.L["Neck"], "Alt") --Medallion of Steadfast Might
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "22149", LBIS.L["Neck"], "Alt") --Beads of Ogre Mojo
    LBIS:AddItem(spec4, "18289", LBIS.L["Neck"], "Alt") --Barbed Thorn Necklace
    LBIS:AddItem(spec4, "228536", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec4, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec4, "228287", LBIS.L["Ring"], "BIS") --Band of Sulfuras
    LBIS:AddItem(spec4, "227282", LBIS.L["Ring"], "BIS") --Ring of the Dreaded Mist
    LBIS:AddItem(spec4, "227279", LBIS.L["Ring"], "Alt") --Loop of the Magister
    LBIS:AddItem(spec4, "228242", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec4, "228268", LBIS.L["Ring"], "Alt") --Seal of the Archmagus
    LBIS:AddItem(spec4, "22331", LBIS.L["Ring"], "Alt") --Band of the Steadfast Hero
    LBIS:AddItem(spec4, "228085", LBIS.L["Ring"], "Alt") --Phaseshifted Legion Band
    LBIS:AddItem(spec4, "228683", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "227966", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec4, "223985", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec4, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec4, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec4, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec4, "228293", LBIS.L["Trinket"], "BIS") --Essence of the Pure Flame
    LBIS:AddItem(spec4, "228686", LBIS.L["Trinket"], "Alt") --Onyxia Blood Talisman
    LBIS:AddItem(spec4, "228576", LBIS.L["Trinket"], "Alt") --Smolderweb's Eye
    LBIS:AddItem(spec4, "227972", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec4, "227915", LBIS.L["Trinket"], "Alt") --Duke's Domain
    LBIS:AddItem(spec4, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec4, "228589", LBIS.L["Trinket"], "Alt") --Heart of the Scale
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "18370", LBIS.L["Trinket"], "Alt") --Vigilance Charm
    LBIS:AddItem(spec4, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec4, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec4, "227886", LBIS.L["Main Hand"], "BIS") --Skyrider's Masterwork Stormhammer
    LBIS:AddItem(spec4, "228382", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "228263", LBIS.L["Main Hand"], "Alt") --Sorcerous Dagger
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "228162", LBIS.L["Main Hand"], "Alt") --Deceit
    LBIS:AddItem(spec4, "228142", LBIS.L["Off Hand"], "BIS") --Earth and Fire
    LBIS:AddItem(spec4, "228266", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec4, "19321", LBIS.L["Off Hand"], "Alt") --The Immovable Object
    LBIS:AddItem(spec4, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec4, "228106", LBIS.L["Off Hand"], "Alt") --Shield of Life and Death
    LBIS:AddItem(spec4, "22336", LBIS.L["Off Hand"], "Alt") --Draconian Aegis of the Legion
    LBIS:AddItem(spec4, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec4, "1168", LBIS.L["Off Hand"], "Alt") --Skullflame Shield
    LBIS:AddItem(spec4, "228178", LBIS.L["Ranged/Relic"], "BIS") --Totem of Earthen Vitality
    LBIS:AddItem(spec4, "227977", LBIS.L["Ranged/Relic"], "BIS") --Totem of Rage
    LBIS:AddItem(spec4, "228177", LBIS.L["Ranged/Relic"], "Alt") --Totem of Raging Fire
    LBIS:AddItem(spec4, "228176", LBIS.L["Ranged/Relic"], "Alt") --Totem of Thunder
    LBIS:AddItem(spec4, "220607", LBIS.L["Ranged/Relic"], "Alt") --Totem of Tormented Ancestry
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
