local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Dps"], "6")

    LBIS:AddEnchant(spec5, "22840", LBIS.L["Head"]) --Arcanum of Rapidity
    LBIS:AddEnchant(spec5, "446451", LBIS.L["Shoulder"]) --Atal'ai Signet of Might
    LBIS:AddEnchant(spec5, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec5, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec5, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec5, "13948", LBIS.L["Hands"]) --Enchant Gloves - Minor Haste
    LBIS:AddEnchant(spec5, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec5, "20034", LBIS.L["Main Hand"]) --Enchant Weapon - Crusader

    LBIS:AddItem(spec1, "211505", LBIS.L["Head"], "BIS") --Twilight Avenger's Helm
    LBIS:AddItem(spec1, "1282", LBIS.L["Head"], "Alt") --Sparkmetal Coif
    LBIS:AddItem(spec1, "7130", LBIS.L["Head"], "Alt") --Brutal Helm
    LBIS:AddItem(spec1, "15531", LBIS.L["Shoulder"], "BIS") --Sentry's Shoulderguards
    LBIS:AddItem(spec1, "14573", LBIS.L["Shoulder"], "Alt") --Bristlebark Amice
    LBIS:AddItem(spec1, "3481", LBIS.L["Shoulder"], "Alt") --Silvered Bronze Shoulders
    LBIS:AddItem(spec1, "16315", LBIS.L["Back"], "BIS") --Sergeant Major's Cape
    LBIS:AddItem(spec1, "9838", LBIS.L["Back"], "Alt") --Banded Cloak
    LBIS:AddItem(spec1, "6449", LBIS.L["Back"], "Alt") --Glowing Lizardscale Cloak
    LBIS:AddItem(spec1, "5193", LBIS.L["Back"], "Alt") --Cape of the Brotherhood
    LBIS:AddItem(spec1, "211504", LBIS.L["Chest"], "BIS") --Twilight Avenger's Chain
    LBIS:AddItem(spec1, "210794", LBIS.L["Chest"], "Alt") --Shifting Silver Breastplate
    LBIS:AddItem(spec1, "2870", LBIS.L["Chest"], "Alt") --Shining Silver Breastplate
    LBIS:AddItem(spec1, "6627", LBIS.L["Chest"], "Alt") --Mutant Scale Breastplate
    LBIS:AddItem(spec1, "4438", LBIS.L["Wrist"], "BIS") --Pugilist Bracers
    LBIS:AddItem(spec1, "13012", LBIS.L["Wrist"], "Alt") --Yorgen Bracers
    LBIS:AddItem(spec1, "15459", LBIS.L["Wrist"], "Alt") --Grimtoll Wristguards
    LBIS:AddItem(spec1, "211423", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gloves
    LBIS:AddItem(spec1, "209568", LBIS.L["Hands"], "Alt") --Algae Gauntlets
    LBIS:AddItem(spec1, "16978", LBIS.L["Hands"], "Alt") --Warsong Gauntlets
    LBIS:AddItem(spec1, "6460", LBIS.L["Waist"], "BIS") --Cobrahn's Grasp
    LBIS:AddItem(spec1, "16659", LBIS.L["Waist"], "Alt") --Deftkin Belt
    LBIS:AddItem(spec1, "7107", LBIS.L["Waist"], "Alt") --Belt of the Stars
    LBIS:AddItem(spec1, "209566", LBIS.L["Legs"], "BIS") --Leggings of the Faithful
    LBIS:AddItem(spec1, "6087", LBIS.L["Legs"], "Alt") --Chausses of Westfall
    LBIS:AddItem(spec1, "6671", LBIS.L["Legs"], "Alt") --Juggernaut Leggings
    LBIS:AddItem(spec1, "211506", LBIS.L["Feet"], "BIS") --Twilight Avenger's Boots
    LBIS:AddItem(spec1, "15525", LBIS.L["Feet"], "Alt") --Sentry's Slippers
    LBIS:AddItem(spec1, "3741", LBIS.L["Feet"], "Alt") --Stomping Boots
    LBIS:AddItem(spec1, "209422", LBIS.L["Neck"], "BIS") --High Tide Choker
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace
    LBIS:AddItem(spec1, "20442", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec1, "20444", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec1, "13097", LBIS.L["Ring"], "BIS") --Thunderbrow Ring
    LBIS:AddItem(spec1, "211467", LBIS.L["Ring"], "BIS") --Band of the Iron Fist
    LBIS:AddItem(spec1, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec1, "20439", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec1, "6321", LBIS.L["Ring"], "Alt") --Silverlaine's Family Seal
    LBIS:AddItem(spec1, "6749", LBIS.L["Ring"], "Alt") --Tiger Band
    LBIS:AddItem(spec1, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec1, "21568", LBIS.L["Trinket"], "BIS") --Rune of Duty
    LBIS:AddItem(spec1, "209525", LBIS.L["Main Hand"], "BIS") --Honed Darkwater Talwar
    LBIS:AddItem(spec1, "209694", LBIS.L["Main Hand"], "BIS") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec1, "16886", LBIS.L["Main Hand"], "Alt") --Outlaw Sabre
    LBIS:AddItem(spec1, "1292", LBIS.L["Main Hand"], "Alt") --Butcher's Cleaver
    LBIS:AddItem(spec1, "5191", LBIS.L["Main Hand"], "Alt") --Cruel Barb
    LBIS:AddItem(spec1, "209562", LBIS.L["Two Hand"], "BIS") --Deadly Strike of the Hydra
    LBIS:AddItem(spec1, "204807", LBIS.L["Two Hand"], "Alt") --Fathomblade
    LBIS:AddItem(spec1, "209567", LBIS.L["Two Hand"], "Alt") --Coral Reef Axe
    LBIS:AddItem(spec1, "7230", LBIS.L["Two Hand"], "Alt") --Smite's Mighty Hammer
    LBIS:AddItem(spec1, "6505", LBIS.L["Two Hand"], "Alt") --Crescent Staff
    LBIS:AddItem(spec1, "209563", LBIS.L["Ranged/Relic"], "BIS") --Naga Heartrender
    LBIS:AddItem(spec1, "209688", LBIS.L["Ranged/Relic"], "Alt") --Bael Modan Blunderbuss

    LBIS:AddItem(spec2, "215161", LBIS.L["Head"], "BIS") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec2, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec2, "7719", LBIS.L["Head"], "BIS") --Raging Berserker's Helm
    LBIS:AddItem(spec2, "8142", LBIS.L["Head"], "Alt") --Chromite Barbute
    LBIS:AddItem(spec2, "211505", LBIS.L["Head"], "Alt") --Twilight Avenger's Helm
    LBIS:AddItem(spec2, "213304", LBIS.L["Shoulder"], "BIS") --Troggslayer Pauldrons
    LBIS:AddItem(spec2, "9647", LBIS.L["Shoulder"], "Alt") --Failed Flying Experiment
    LBIS:AddItem(spec2, "213305", LBIS.L["Shoulder"], "Alt") --Machined Alloy Shoulderplates
    LBIS:AddItem(spec2, "213307", LBIS.L["Back"], "BIS") --Drape of Dismantling
    LBIS:AddItem(spec2, "216621", LBIS.L["Back"], "Alt") --Blooddrenched Drape
    LBIS:AddItem(spec2, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213313", LBIS.L["Chest"], "BIS") --Insulated Chestguard
    LBIS:AddItem(spec2, "210794", LBIS.L["Chest"], "Alt") --Shifting Silver Breastplate
    LBIS:AddItem(spec2, "11195", LBIS.L["Chest"], "Alt") --Warforged Chestplate
    LBIS:AddItem(spec2, "19581", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec2, "19590", LBIS.L["Wrist"], "BIS") --Forest Stalker's Bracers
    LBIS:AddItem(spec2, "4438", LBIS.L["Wrist"], "BIS") --Pugilist Bracers
    LBIS:AddItem(spec2, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec2, "213319", LBIS.L["Hands"], "BIS") --Machinist's Gloves
    LBIS:AddItem(spec2, "213288", LBIS.L["Hands"], "Alt") --Grubbis Grubby Gauntlets
    LBIS:AddItem(spec2, "9631", LBIS.L["Hands"], "Alt") --Pratt's Handcrafted Gloves
    LBIS:AddItem(spec2, "9632", LBIS.L["Hands"], "Alt") --Jangdor's Handcrafted Gloves
    LBIS:AddItem(spec2, "13071", LBIS.L["Hands"], "Alt") --Plated Fist of Hakoo
    LBIS:AddItem(spec2, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "BIS") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "213322", LBIS.L["Waist"], "Alt") --Skullduggery Waistband
    LBIS:AddItem(spec2, "215380", LBIS.L["Waist"], "Alt") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec2, "213325", LBIS.L["Waist"], "Alt") --Darkvision Girdle
    LBIS:AddItem(spec2, "6460", LBIS.L["Waist"], "Alt") --Cobrahn's Grasp
    LBIS:AddItem(spec2, "213332", LBIS.L["Legs"], "BIS") --Insulated Legguards
    LBIS:AddItem(spec2, "10330", LBIS.L["Legs"], "Alt") --Scarlet Leggings
    LBIS:AddItem(spec2, "209566", LBIS.L["Legs"], "Alt") --Leggings of the Faithful
    LBIS:AddItem(spec2, "20128", LBIS.L["Feet"], "BIS") --Highlander's Plate Greaves
    LBIS:AddItem(spec2, "9637", LBIS.L["Feet"], "BIS") --Shinkicker Boots
    LBIS:AddItem(spec2, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec2, "211506", LBIS.L["Feet"], "Alt") --Twilight Avenger's Boots
    LBIS:AddItem(spec2, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec2, "209422", LBIS.L["Neck"], "BIS") --High Tide Choker
    LBIS:AddItem(spec2, "19540", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec2, "19536", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec2, "213284", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec2, "19515", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec2, "19512", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec2, "211467", LBIS.L["Ring"], "Alt") --Band of the Iron Fist
    LBIS:AddItem(spec2, "20429", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec2, "20439", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec2, "213348", LBIS.L["Trinket"], "BIS") --Gyromatic Experiment 420b
    LBIS:AddItem(spec2, "211449", LBIS.L["Trinket"], "BIS") --Avenger's Void Pearl
    LBIS:AddItem(spec2, "213409", LBIS.L["Main Hand"], "BIS") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec2, "216496", LBIS.L["Main Hand"], "BIS") --Sanguine Skullcrusher
    LBIS:AddItem(spec2, "9684", LBIS.L["Main Hand"], "Alt") --Force of the Hippogryph
    LBIS:AddItem(spec2, "10823", LBIS.L["Main Hand"], "Alt") --Vanquisher's Sword
    LBIS:AddItem(spec2, "213416", LBIS.L["Two Hand"], "BIS") --Thermaplugg's Rocket Cleaver
    LBIS:AddItem(spec2, "9425", LBIS.L["Two Hand"], "Alt") --Pendulum of Doom
    LBIS:AddItem(spec2, "6975", LBIS.L["Two Hand"], "Alt") --Whirlwind Axe
    LBIS:AddItem(spec2, "6830", LBIS.L["Two Hand"], "Alt") --Bonebiter
    LBIS:AddItem(spec2, "209562", LBIS.L["Two Hand"], "Alt") --Deadly Strike of the Hydra
    LBIS:AddItem(spec2, "9426", LBIS.L["Ranged/Relic"], "BIS") --Monolithic Bow
    LBIS:AddItem(spec2, "213355", LBIS.L["Ranged/Relic"], "BIS") --Falco's Sting
    LBIS:AddItem(spec2, "209563", LBIS.L["Ranged/Relic"], "BIS") --Naga Heartrender
    LBIS:AddItem(spec2, "209688", LBIS.L["Ranged/Relic"], "Alt") --Bael Modan Blunderbuss

    LBIS:AddItem(spec3, "215161", LBIS.L["Head"], "BIS") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec3, "215166", LBIS.L["Head"], "BIS") --Glowing Gneuro-Linked Cowl
    LBIS:AddItem(spec3, "20521", LBIS.L["Head"], "BIS") --Fury Visor
    LBIS:AddItem(spec3, "220511", LBIS.L["Head"], "Alt") --Greathelm of the Nightmare
    LBIS:AddItem(spec3, "221376", LBIS.L["Head"], "Alt") --Emerald Dream Helm
    LBIS:AddItem(spec3, "220738", LBIS.L["Shoulder"], "BIS") --Shoulderplates of Dread
    LBIS:AddItem(spec3, "20517", LBIS.L["Shoulder"], "BIS") --Razorsteel Shoulders
    LBIS:AddItem(spec3, "221381", LBIS.L["Shoulder"], "Alt") --Emerald Dream Pauldrons
    LBIS:AddItem(spec3, "213304", LBIS.L["Shoulder"], "Alt") --Troggslayer Pauldrons
    LBIS:AddItem(spec3, "220615", LBIS.L["Back"], "BIS") --Panther Fur Cloak
    LBIS:AddItem(spec3, "11626", LBIS.L["Back"], "BIS") --Blackveil Cape
    LBIS:AddItem(spec3, "213307", LBIS.L["Back"], "Alt") --Drape of Dismantling
    LBIS:AddItem(spec3, "216621", LBIS.L["Back"], "Alt") --Blooddrenched Drape
    LBIS:AddItem(spec3, "220653", LBIS.L["Chest"], "BIS") --Wailing Berserker's Chestplate
    LBIS:AddItem(spec3, "220794", LBIS.L["Chest"], "Alt") --Knight's Plate Hauberk
    LBIS:AddItem(spec3, "220801", LBIS.L["Chest"], "Alt") --Stone Guard's Plate Armor
    LBIS:AddItem(spec3, "213313", LBIS.L["Chest"], "Alt") --Insulated Chestguard
    LBIS:AddItem(spec3, "221026", LBIS.L["Wrist"], "BIS") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec3, "19580", LBIS.L["Wrist"], "BIS") --Berserker Bracers
    LBIS:AddItem(spec3, "19589", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec3, "213317", LBIS.L["Wrist"], "Alt") --Experimental Aim Stabilizers
    LBIS:AddItem(spec3, "220540", LBIS.L["Hands"], "Alt") --Corruption Laden Handguards
    LBIS:AddItem(spec3, "220541", LBIS.L["Hands"], "Alt") --Disease-Ridden Plate Fists
    LBIS:AddItem(spec3, "213288", LBIS.L["Hands"], "Alt") --Grubbis Grubby Gauntlets
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "BIS") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "20205", LBIS.L["Waist"], "BIS") --Defiler's Plate Girdle
    LBIS:AddItem(spec3, "220552", LBIS.L["Waist"], "Alt") --Waistguard of Pain
    LBIS:AddItem(spec3, "215380", LBIS.L["Waist"], "Alt") --Power-Assisted Lifting Belt
    LBIS:AddItem(spec3, "220654", LBIS.L["Legs"], "BIS") --Wailing Berserker's Legplates
    LBIS:AddItem(spec3, "220797", LBIS.L["Legs"], "Alt") --Knight's Plate Leggings
    LBIS:AddItem(spec3, "220798", LBIS.L["Legs"], "Alt") --Stone Guard's Plate Leggings
    LBIS:AddItem(spec3, "213332", LBIS.L["Legs"], "Alt") --Insulated Legguards
    LBIS:AddItem(spec3, "220656", LBIS.L["Feet"], "BIS") --Wailing Berserker's Battleboots
    LBIS:AddItem(spec3, "20211", LBIS.L["Feet"], "Alt") --Defiler's Plate Greaves
    LBIS:AddItem(spec3, "11675", LBIS.L["Feet"], "Alt") --Shadefiend Boots
    LBIS:AddItem(spec3, "213341", LBIS.L["Feet"], "Alt") --Insulated Workboots
    LBIS:AddItem(spec3, "220624", LBIS.L["Neck"], "BIS") --Bloodstained Charm of Valor
    LBIS:AddItem(spec3, "213344", LBIS.L["Neck"], "BIS") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec3, "209422", LBIS.L["Neck"], "Alt") --High Tide Choker
    LBIS:AddItem(spec3, "220626", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec3, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec3, "223194", LBIS.L["Ring"], "Alt") --Band of the Wilds
    LBIS:AddItem(spec3, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec3, "19515", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec3, "19512", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec3, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec3, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec3, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec3, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec3, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec3, "220589", LBIS.L["Main Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec3, "17705", LBIS.L["Main Hand"], "Alt") --Thrash Blade
    LBIS:AddItem(spec3, "213409", LBIS.L["Main Hand"], "Alt") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec3, "216496", LBIS.L["Main Hand"], "Alt") --Sanguine Skullcrusher
    LBIS:AddItem(spec3, "220686", LBIS.L["Two Hand"], "BIS") --Chieftain's Bane
    LBIS:AddItem(spec3, "220173", LBIS.L["Two Hand"], "BIS") --Parasomnia
    LBIS:AddItem(spec3, "213416", LBIS.L["Two Hand"], "Alt") --Thermaplugg's Rocket Cleaver
    LBIS:AddItem(spec3, "9425", LBIS.L["Two Hand"], "Alt") --Pendulum of Doom
    LBIS:AddItem(spec3, "220571", LBIS.L["Ranged/Relic"], "BIS") --Stinging Longbow
    LBIS:AddItem(spec3, "13039", LBIS.L["Ranged/Relic"], "BIS") --Skull Splitting Crossbow
    LBIS:AddItem(spec3, "2100", LBIS.L["Ranged/Relic"], "Alt") --Precisely Calibrated Boomstick
    LBIS:AddItem(spec3, "13139", LBIS.L["Ranged/Relic"], "Alt") --Guttbuster
    LBIS:AddItem(spec3, "9426", LBIS.L["Ranged/Relic"], "Alt") --Monolithic Bow
    LBIS:AddItem(spec3, "213355", LBIS.L["Ranged/Relic"], "Alt") --Falco's Sting

    LBIS:AddItem(spec4, "215161", LBIS.L["Head"], "BIS") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec4, "12640", LBIS.L["Head"], "BIS") --Lionheart Helm
    LBIS:AddItem(spec4, "226495", LBIS.L["Head"], "Alt") --Jaws of Might
    LBIS:AddItem(spec4, "226492", LBIS.L["Shoulder"], "BIS") --Pauldrons of Might
    LBIS:AddItem(spec4, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec4, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec4, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec4, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec4, "18204", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec4, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec4, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec4, "226494", LBIS.L["Chest"], "BIS") --Hauberk of Might
    LBIS:AddItem(spec4, "226499", LBIS.L["Wrist"], "BIS") --Armguards of Might
    LBIS:AddItem(spec4, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec4, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec4, "226497", LBIS.L["Hands"], "BIS") --Hands of Might
    LBIS:AddItem(spec4, "228260", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec4, "226861", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec4, "228295", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec4, "226498", LBIS.L["Waist"], "Alt") --Sash of Might
    LBIS:AddItem(spec4, "226493", LBIS.L["Legs"], "BIS") --Leggings of Might
    LBIS:AddItem(spec4, "226859", LBIS.L["Legs"], "Alt") --Legplates of Heroism
    LBIS:AddItem(spec4, "226496", LBIS.L["Feet"], "BIS") --Treads of Might
    LBIS:AddItem(spec4, "226857", LBIS.L["Feet"], "BIS") --Battleboots of Heroism
    LBIS:AddItem(spec4, "228685", LBIS.L["Neck"], "BIS") --Onyxia Tooth Pendant
    LBIS:AddItem(spec4, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec4, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec4, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec4, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec4, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec4, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec4, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec4, "228397", LBIS.L["Main Hand"], "BIS") --Empyrean Demolisher
    LBIS:AddItem(spec4, "228506", LBIS.L["Main Hand"], "BIS") --Brutality Blade
    LBIS:AddItem(spec4, "227991", LBIS.L["Main Hand"], "BIS") --Ironfoe
    LBIS:AddItem(spec4, "228519", LBIS.L["Ranged/Relic"], "BIS") --Striker's Mark
    LBIS:AddItem(spec4, "228270", LBIS.L["Ranged/Relic"], "BIS") --Blastershot Launcher

    LBIS:AddItem(spec5, "215161", LBIS.L["Head"], "BIS") --Tempered Interference-Negating Helmet
    LBIS:AddItem(spec5, "232251", LBIS.L["Head"], "BIS") --Helm of Wrath
    LBIS:AddItem(spec5, "226495", LBIS.L["Head"], "Alt") --Jaws of Might
    LBIS:AddItem(spec5, "12640", LBIS.L["Head"], "Alt") --Lionheart Helm
    LBIS:AddItem(spec5, "230256", LBIS.L["Shoulder"], "BIS") --Drake Talon Pauldrons
    LBIS:AddItem(spec5, "226492", LBIS.L["Shoulder"], "Alt") --Pauldrons of Might
    LBIS:AddItem(spec5, "20212", LBIS.L["Shoulder"], "Alt") --Defiler's Plate Spaulders
    LBIS:AddItem(spec5, "20057", LBIS.L["Shoulder"], "Alt") --Highlander's Plate Spaulders
    LBIS:AddItem(spec5, "230842", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "228102", LBIS.L["Back"], "BIS") --Majordomo's Drape
    LBIS:AddItem(spec5, "228383", LBIS.L["Back"], "Alt") --Puissant Cape
    LBIS:AddItem(spec5, "18204", LBIS.L["Back"], "Alt") --Eskhandar's Pelt
    LBIS:AddItem(spec5, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec5, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec5, "232254", LBIS.L["Chest"], "BIS") --Breastplate of Wrath
    LBIS:AddItem(spec5, "226494", LBIS.L["Chest"], "BIS") --Hauberk of Might
    LBIS:AddItem(spec5, "232247", LBIS.L["Wrist"], "BIS") --Bracers of Wrath
    LBIS:AddItem(spec5, "226499", LBIS.L["Wrist"], "BIS") --Armguards of Might
    LBIS:AddItem(spec5, "19578", LBIS.L["Wrist"], "Alt") --Berserker Bracers
    LBIS:AddItem(spec5, "232252", LBIS.L["Hands"], "BIS") --Gauntlets of Wrath
    LBIS:AddItem(spec5, "226497", LBIS.L["Hands"], "BIS") --Hands of Might
    LBIS:AddItem(spec5, "228260", LBIS.L["Hands"], "Alt") --Flameguard Gauntlets
    LBIS:AddItem(spec5, "226861", LBIS.L["Hands"], "Alt") --Gauntlets of Heroism
    LBIS:AddItem(spec5, "228295", LBIS.L["Waist"], "BIS") --Onslaught Girdle
    LBIS:AddItem(spec5, "232248", LBIS.L["Waist"], "Alt") --Belt of Wrath
    LBIS:AddItem(spec5, "226498", LBIS.L["Waist"], "Alt") --Sash of Might
    LBIS:AddItem(spec5, "232250", LBIS.L["Legs"], "BIS") --Legplates of Wrath
    LBIS:AddItem(spec5, "226493", LBIS.L["Legs"], "BIS") --Leggings of Might
    LBIS:AddItem(spec5, "226859", LBIS.L["Legs"], "Alt") --Legplates of Heroism
    LBIS:AddItem(spec5, "232253", LBIS.L["Feet"], "BIS") --Greaves of Wrath
    LBIS:AddItem(spec5, "226496", LBIS.L["Feet"], "BIS") --Treads of Might
    LBIS:AddItem(spec5, "226857", LBIS.L["Feet"], "Alt") --Battleboots of Heroism
    LBIS:AddItem(spec5, "231307", LBIS.L["Neck"], "BIS") --The Eye of Hakkar
    LBIS:AddItem(spec5, "228759", LBIS.L["Neck"], "Alt") --Eskhandar's Collar
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "230839", LBIS.L["Ring"], "BIS") --Master Dragonslayer's Ring
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "228080", LBIS.L["Ring"], "Alt") --Resin Loop
    LBIS:AddItem(spec5, "230282", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "13965", LBIS.L["Trinket"], "BIS") --Blackhand's Breadth
    LBIS:AddItem(spec5, "20130", LBIS.L["Trinket"], "BIS") --Diamond Flask
    LBIS:AddItem(spec5, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec5, "230837", LBIS.L["Main Hand"], "BIS") --Crul'shorukh, Edge of Chaos
    LBIS:AddItem(spec5, "230747", LBIS.L["Main Hand"], "BIS") --Chromatically Tempered Sword
    LBIS:AddItem(spec5, "232564", LBIS.L["Main Hand"], "Alt") --Maladath, Runed Blade of the Black Flight
    LBIS:AddItem(spec5, "229379", LBIS.L["Main Hand"], "Alt") --Eskhandar's Right Claw
    LBIS:AddItem(spec5, "228397", LBIS.L["Main Hand"], "Alt") --Empyrean Demolisher
    LBIS:AddItem(spec5, "228506", LBIS.L["Main Hand"], "Alt") --Brutality Blade
    LBIS:AddItem(spec5, "227991", LBIS.L["Main Hand"], "Alt") --Ironfoe
    LBIS:AddItem(spec5, "228165", LBIS.L["Ranged/Relic"], "BIS") --Dragonslayer's Javelin
    LBIS:AddItem(spec5, "231302", LBIS.L["Ranged/Relic"], "BIS") --Gurubashi Dwarf Destroyer
    LBIS:AddItem(spec5, "228519", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec5, "228270", LBIS.L["Ranged/Relic"], "Alt") --Blastershot Launcher
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
