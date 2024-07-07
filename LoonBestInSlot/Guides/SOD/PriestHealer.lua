local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Healer"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Healer"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Healer"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Priest"], LBIS.L["Healer"], "4")

    LBIS:AddEnchant(spec3, "15340", LBIS.L["Head"]) --Lesser Arcanum of Rumination
    LBIS:AddEnchant(spec3, "446472", LBIS.L["Shoulder"]) --Atal'ai Signet of Serenity
    LBIS:AddEnchant(spec3, "20014", LBIS.L["Back"]) --Enchant Cloak - Greater Resistance
    LBIS:AddEnchant(spec3, "20028", LBIS.L["Chest"]) --Enchant Chest - Major Mana
    LBIS:AddEnchant(spec3, "20008", LBIS.L["Wrist"]) --Enchant Bracer - Greater Intellect
    LBIS:AddEnchant(spec3, "19057", LBIS.L["Hands"]) --Rugged Armor Kit
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec3, "7793", LBIS.L["Two Hand"]) --Enchant 2H Weapon - Lesser Intellect

    LBIS:AddItem(spec1, "211842", LBIS.L["Head"], "BIS") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec1, "209683", LBIS.L["Head"], "BIS") --Twilight Invoker's Shawl
    LBIS:AddItem(spec1, "4373", LBIS.L["Head"], "Alt") --Shadow Goggles
    LBIS:AddItem(spec1, "4368", LBIS.L["Head"], "Alt") --Flying Tiger Goggles
    LBIS:AddItem(spec1, "211500", LBIS.L["Head"], "Alt") --Resilient Cloth Headband
    LBIS:AddItem(spec1, "209679", LBIS.L["Shoulder"], "BIS") --Azshari Novice's Shoulderpads
    LBIS:AddItem(spec1, "215365", LBIS.L["Shoulder"], "BIS") --Invoker's Mantle
    LBIS:AddItem(spec1, "211468", LBIS.L["Shoulder"], "BIS") --Frayed Chestnut Mantle
    LBIS:AddItem(spec1, "12998", LBIS.L["Shoulder"], "BIS") --Magician's Mantle
    LBIS:AddItem(spec1, "3748", LBIS.L["Shoulder"], "Alt") --Feline Mantle
    LBIS:AddItem(spec1, "3560", LBIS.L["Shoulder"], "Alt") --Mantle of Honor
    LBIS:AddItem(spec1, "17047", LBIS.L["Shoulder"], "Alt") --Luminescent Amice
    LBIS:AddItem(spec1, "6617", LBIS.L["Shoulder"], "Alt") --Sage's Mantle of the Owl
    LBIS:AddItem(spec1, "209423", LBIS.L["Back"], "BIS") --Flowing Scarf
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec1, "6614", LBIS.L["Back"], "Alt") --Sage's Cloak of the Owl
    LBIS:AddItem(spec1, "14400", LBIS.L["Back"], "Alt") --Resilient Cape
    LBIS:AddItem(spec1, "7356", LBIS.L["Back"], "Alt") --Elder's Cloak of Intellect
    LBIS:AddItem(spec1, "20428", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec1, "20427", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec1, "16661", LBIS.L["Back"], "Alt") --Soft Willow Cape
    LBIS:AddItem(spec1, "4713", LBIS.L["Back"], "Alt") --Silver-thread Cloak
    LBIS:AddItem(spec1, "211464", LBIS.L["Back"], "Alt") --Worn Prelacy Cape
    LBIS:AddItem(spec1, "209671", LBIS.L["Chest"], "BIS") --Twilight Invoker's Robes
    LBIS:AddItem(spec1, "6324", LBIS.L["Chest"], "BIS") --Robes of Arugal
    LBIS:AddItem(spec1, "2800", LBIS.L["Chest"], "Alt") --Black Velvet Robes
    LBIS:AddItem(spec1, "2292", LBIS.L["Chest"], "Alt") --Necrology Robes
    LBIS:AddItem(spec1, "5770", LBIS.L["Chest"], "Alt") --Robes of Arcana
    LBIS:AddItem(spec1, "9798", LBIS.L["Chest"], "Alt") --Ivycloth Robe of Intellect
    LBIS:AddItem(spec1, "5766", LBIS.L["Chest"], "Alt") --Lesser Wizard's Robe
    LBIS:AddItem(spec1, "6608", LBIS.L["Chest"], "Alt") --Bright Armor
    LBIS:AddItem(spec1, "6613", LBIS.L["Wrist"], "BIS") --Sage's Bracers of the Owl
    LBIS:AddItem(spec1, "1974", LBIS.L["Wrist"], "BIS") --Mindthrust Bracers
    LBIS:AddItem(spec1, "4036", LBIS.L["Wrist"], "Alt") --Silver-thread Cuffs
    LBIS:AddItem(spec1, "3647", LBIS.L["Wrist"], "Alt") --Bright Bracers
    LBIS:AddItem(spec1, "209672", LBIS.L["Hands"], "BIS") --Black Fingerless Gloves
    LBIS:AddItem(spec1, "7106", LBIS.L["Hands"], "Alt") --Zodiac Gloves
    LBIS:AddItem(spec1, "16740", LBIS.L["Hands"], "Alt") --Shredder Operating Gloves
    LBIS:AddItem(spec1, "6393", LBIS.L["Hands"], "Alt") --Silver-thread Gloves
    LBIS:AddItem(spec1, "7049", LBIS.L["Hands"], "Alt") --Truefaith Gloves
    LBIS:AddItem(spec1, "3066", LBIS.L["Hands"], "Alt") --Bright Gloves
    LBIS:AddItem(spec1, "6392", LBIS.L["Waist"], "BIS") --Belt of Arugal
    LBIS:AddItem(spec1, "215366", LBIS.L["Waist"], "BIS") --Invoker's Cord
    LBIS:AddItem(spec1, "16975", LBIS.L["Waist"], "Alt") --Warsong Sash
    LBIS:AddItem(spec1, "209432", LBIS.L["Waist"], "Alt") --Ghamoo-ra's Cinch
    LBIS:AddItem(spec1, "4827", LBIS.L["Waist"], "Alt") --Wizard's Belt
    LBIS:AddItem(spec1, "2911", LBIS.L["Waist"], "Alt") --Keller's Girdle
    LBIS:AddItem(spec1, "4829", LBIS.L["Waist"], "Alt") --Dreamer's Belt
    LBIS:AddItem(spec1, "209684", LBIS.L["Legs"], "BIS") --Soul Leech Pants
    LBIS:AddItem(spec1, "209667", LBIS.L["Legs"], "BIS") --Gaze Dreamer Leggings
    LBIS:AddItem(spec1, "6282", LBIS.L["Legs"], "Alt") --Sacred Burial Trousers
    LBIS:AddItem(spec1, "4037", LBIS.L["Legs"], "Alt") --Silver-thread Pants
    LBIS:AddItem(spec1, "9797", LBIS.L["Legs"], "Alt") --Ivycloth Pants of the Owl
    LBIS:AddItem(spec1, "12987", LBIS.L["Legs"], "Alt") --Darkweave Breeches
    LBIS:AddItem(spec1, "2954", LBIS.L["Legs"], "Alt") --Night Watch Pantaloons
    LBIS:AddItem(spec1, "4316", LBIS.L["Legs"], "Alt") --Heavy Woolen Pants
    LBIS:AddItem(spec1, "210795", LBIS.L["Feet"], "BIS") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec1, "209669", LBIS.L["Feet"], "BIS") --Twilight Invoker's Shoes
    LBIS:AddItem(spec1, "6612", LBIS.L["Feet"], "Alt") --Sage's Boots of the Owl
    LBIS:AddItem(spec1, "4320", LBIS.L["Feet"], "Alt") --Spidersilk Boots
    LBIS:AddItem(spec1, "211465", LBIS.L["Feet"], "Alt") --Nimbus Boots of Insight
    LBIS:AddItem(spec1, "6394", LBIS.L["Feet"], "Alt") --Silver-thread Boots
    LBIS:AddItem(spec1, "209686", LBIS.L["Neck"], "BIS") --Jagged Bone Necklace
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace of the Owl
    LBIS:AddItem(spec1, "209825", LBIS.L["Neck"], "Alt") --Droplet Choker
    LBIS:AddItem(spec1, "5002", LBIS.L["Neck"], "Alt") --Glowing Green Talisman
    LBIS:AddItem(spec1, "20426", LBIS.L["Ring"], "BIS") --Advisor's Ring
    LBIS:AddItem(spec1, "20431", LBIS.L["Ring"], "BIS") --Lorekeeper's Ring
    LBIS:AddItem(spec1, "209668", LBIS.L["Ring"], "BIS") --Signet of the Twilight Lord
    LBIS:AddItem(spec1, "6463", LBIS.L["Ring"], "Alt") --Deep Fathom Ring
    LBIS:AddItem(spec1, "211462", LBIS.L["Ring"], "Alt") --Ever-Sustaining Ring
    LBIS:AddItem(spec1, "6750", LBIS.L["Ring"], "Alt") --Snake Hoop
    LBIS:AddItem(spec1, "1156", LBIS.L["Ring"], "Alt") --Lavishly Jeweled Ring
    LBIS:AddItem(spec1, "11984", LBIS.L["Ring"], "Alt") --Cobalt Ring of the Owl
    LBIS:AddItem(spec1, "2933", LBIS.L["Ring"], "Alt") --Seal of Wrynn
    LBIS:AddItem(spec1, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec1, "211451", LBIS.L["Trinket"], "BIS") --Acolyte's Void Pearl
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "BIS") --Minor Recombobulator
    LBIS:AddItem(spec1, "211420", LBIS.L["Trinket"], "Alt") --Shifting Scale Talisman
    LBIS:AddItem(spec1, "18862", LBIS.L["Trinket"], "Alt") --Insignia of the Alliance
    LBIS:AddItem(spec1, "18851", LBIS.L["Trinket"], "Alt") --Insignia of the Horde
    LBIS:AddItem(spec1, "21566", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec1, "211456", LBIS.L["Main Hand"], "BIS") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec1, "209694", LBIS.L["Main Hand"], "Alt") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec1, "209822", LBIS.L["Main Hand"], "Alt") --Strength of Purpose
    LBIS:AddItem(spec1, "2567", LBIS.L["Main Hand"], "Alt") --Evocator's Blade
    LBIS:AddItem(spec1, "7344", LBIS.L["Off Hand"], "BIS") --Torch of Holy Flame
    LBIS:AddItem(spec1, "209590", LBIS.L["Off Hand"], "Alt") --Cracked Water Globe
    LBIS:AddItem(spec1, "209570", LBIS.L["Off Hand"], "Alt") --Tome of Cavern Lore
    LBIS:AddItem(spec1, "16887", LBIS.L["Off Hand"], "Alt") --Witch's Finger
    LBIS:AddItem(spec1, "2943", LBIS.L["Off Hand"], "Alt") --Eye of Paleth
    LBIS:AddItem(spec1, "13031", LBIS.L["Off Hand"], "Alt") --Orb of Mistmantle
    LBIS:AddItem(spec1, "209561", LBIS.L["Two Hand"], "BIS") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec1, "209559", LBIS.L["Two Hand"], "Alt") --Twilight Sage's Walking Stick
    LBIS:AddItem(spec1, "209573", LBIS.L["Two Hand"], "Alt") --Wrathful Spire
    LBIS:AddItem(spec1, "2271", LBIS.L["Two Hand"], "Alt") --Staff of the Blessed Seer
    LBIS:AddItem(spec1, "212580", LBIS.L["Two Hand"], "Alt") --Lorekeeper's Staff
    LBIS:AddItem(spec1, "212584", LBIS.L["Two Hand"], "Alt") --Advisor's Gnarled Staff
    LBIS:AddItem(spec1, "6505", LBIS.L["Two Hand"], "Alt") --Crescent Staff
    LBIS:AddItem(spec1, "2042", LBIS.L["Two Hand"], "Alt") --Staff of Westfall
    LBIS:AddItem(spec1, "5201", LBIS.L["Two Hand"], "Alt") --Emberstone Staff
    LBIS:AddItem(spec1, "890", LBIS.L["Two Hand"], "Alt") --Twisted Chanter's Staff
    LBIS:AddItem(spec1, "209674", LBIS.L["Ranged/Relic"], "BIS") --Phoenix Ignition
    LBIS:AddItem(spec1, "211461", LBIS.L["Ranged/Relic"], "Alt") --Inscribed Gravestone Scepter
    LBIS:AddItem(spec1, "209571", LBIS.L["Ranged/Relic"], "Alt") --Deadlight
    LBIS:AddItem(spec1, "5246", LBIS.L["Ranged/Relic"], "Alt") --Excavation Rod
    LBIS:AddItem(spec1, "5198", LBIS.L["Ranged/Relic"], "Alt") --Cookie's Stirring Rod
    LBIS:AddItem(spec1, "5250", LBIS.L["Ranged/Relic"], "Alt") --Charred Wand

    LBIS:AddItem(spec2, "215111", LBIS.L["Head"], "BIS") --Gneuro-Linked Arcano-Filament Monocle
    LBIS:AddItem(spec2, "213281", LBIS.L["Head"], "Alt") --Electromagnetic Hyperflux Reactivator
    LBIS:AddItem(spec2, "217300", LBIS.L["Head"], "Alt") --Whitemane's Chapeau
    LBIS:AddItem(spec2, "211842", LBIS.L["Head"], "Alt") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec2, "209683", LBIS.L["Head"], "Alt") --Twilight Invoker's Shawl
    LBIS:AddItem(spec2, "10574", LBIS.L["Head"], "Alt") --Corpseshroud
    LBIS:AddItem(spec2, "2721", LBIS.L["Head"], "Alt") --Holy Shroud
    LBIS:AddItem(spec2, "213301", LBIS.L["Shoulder"], "BIS") --Synthetic Mantle
    LBIS:AddItem(spec2, "19507", LBIS.L["Shoulder"], "Alt") --Inquisitor's Shawl
    LBIS:AddItem(spec2, "217250", LBIS.L["Shoulder"], "Alt") --Crimson Silk Shoulders
    LBIS:AddItem(spec2, "215365", LBIS.L["Shoulder"], "Alt") --Invoker's Mantle
    LBIS:AddItem(spec2, "12998", LBIS.L["Shoulder"], "Alt") --Magician's Mantle
    LBIS:AddItem(spec2, "211468", LBIS.L["Shoulder"], "Alt") --Frayed Chestnut Mantle
    LBIS:AddItem(spec2, "4197", LBIS.L["Shoulder"], "Alt") --Berylline Pads
    LBIS:AddItem(spec2, "209679", LBIS.L["Shoulder"], "Alt") --Azshari Novice's Shoulderpads
    LBIS:AddItem(spec2, "216620", LBIS.L["Back"], "BIS") --Bloodrot Cloak
    LBIS:AddItem(spec2, "213309", LBIS.L["Back"], "BIS") --Cloak of Invention
    LBIS:AddItem(spec2, "213306", LBIS.L["Back"], "Alt") --Ingenuity's Cover
    LBIS:AddItem(spec2, "217252", LBIS.L["Back"], "Alt") --Long Silken Cloak
    LBIS:AddItem(spec2, "216623", LBIS.L["Back"], "Alt") --Cape of Hemostasis
    LBIS:AddItem(spec2, "19532", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec2, "19528", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec2, "209423", LBIS.L["Back"], "Alt") --Flowing Scarf
    LBIS:AddItem(spec2, "213311", LBIS.L["Chest"], "BIS") --Hyperconductive Robe
    LBIS:AddItem(spec2, "215377", LBIS.L["Chest"], "BIS") --Irradiated Robe
    LBIS:AddItem(spec2, "213310", LBIS.L["Chest"], "BIS") --Hyperconductive Shimmershirt
    LBIS:AddItem(spec2, "10021", LBIS.L["Chest"], "Alt") --Dreamweave Vest
    LBIS:AddItem(spec2, "217288", LBIS.L["Chest"], "Alt") --Robes of the Lich
    LBIS:AddItem(spec2, "1716", LBIS.L["Chest"], "Alt") --Robe of the Magi
    LBIS:AddItem(spec2, "7054", LBIS.L["Chest"], "Alt") --Robe of Power
    LBIS:AddItem(spec2, "209671", LBIS.L["Chest"], "Alt") --Twilight Invoker's Robes
    LBIS:AddItem(spec2, "217246", LBIS.L["Chest"], "Alt") --Black Mageweave Vest
    LBIS:AddItem(spec2, "19597", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "213415", LBIS.L["Wrist"], "BIS") --Tinker's Wrist Wraps
    LBIS:AddItem(spec2, "213285", LBIS.L["Wrist"], "Alt") --Lev's Oil-Stained Bindings
    LBIS:AddItem(spec2, "216702", LBIS.L["Wrist"], "Alt") --Sergeant Major's Silk Cuffs
    LBIS:AddItem(spec2, "216707", LBIS.L["Wrist"], "Alt") --First Sergeant's Silk Cuffs
    LBIS:AddItem(spec2, "11469", LBIS.L["Wrist"], "Alt") --Bloodband Bracers
    LBIS:AddItem(spec2, "10705", LBIS.L["Wrist"], "Alt") --Firwillow Wristbands
    LBIS:AddItem(spec2, "10019", LBIS.L["Hands"], "BIS") --Dreamweave Gloves
    LBIS:AddItem(spec2, "213300", LBIS.L["Hands"], "Alt") --Fighter Ace Gloves
    LBIS:AddItem(spec2, "10018", LBIS.L["Hands"], "Alt") --Red Mageweave Gloves
    LBIS:AddItem(spec2, "209672", LBIS.L["Hands"], "Alt") --Black Fingerless Gloves
    LBIS:AddItem(spec2, "216680", LBIS.L["Hands"], "Alt") --Shilly Mittens
    LBIS:AddItem(spec2, "10003", LBIS.L["Hands"], "Alt") --Black Mageweave Gloves
    LBIS:AddItem(spec2, "20098", LBIS.L["Waist"], "BIS") --Highlander's Cloth Girdle
    LBIS:AddItem(spec2, "20166", LBIS.L["Waist"], "BIS") --Defiler's Cloth Girdle
    LBIS:AddItem(spec2, "213414", LBIS.L["Waist"], "BIS") --Mech-Mender's Sash
    LBIS:AddItem(spec2, "217292", LBIS.L["Waist"], "Alt") --Deathmage Sash
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "213321", LBIS.L["Waist"], "Alt") --Volatile Concoction Belt
    LBIS:AddItem(spec2, "217255", LBIS.L["Waist"], "Alt") --Crimson Silk Belt
    LBIS:AddItem(spec2, "4329", LBIS.L["Waist"], "Alt") --Star Belt
    LBIS:AddItem(spec2, "215366", LBIS.L["Waist"], "Alt") --Invoker's Cord
    LBIS:AddItem(spec2, "213329", LBIS.L["Legs"], "BIS") --Hyperconductive Skirt
    LBIS:AddItem(spec2, "215379", LBIS.L["Legs"], "BIS") --Irradiated Trousers
    LBIS:AddItem(spec2, "213328", LBIS.L["Legs"], "BIS") --Hyperconductive Pantaloons
    LBIS:AddItem(spec2, "209684", LBIS.L["Legs"], "Alt") --Soul Leech Pants
    LBIS:AddItem(spec2, "10009", LBIS.L["Legs"], "Alt") --Red Mageweave Pants
    LBIS:AddItem(spec2, "209667", LBIS.L["Legs"], "Alt") --Gaze Dreamer Leggings
    LBIS:AddItem(spec2, "217247", LBIS.L["Legs"], "Alt") --Black Mageweave Leggings
    LBIS:AddItem(spec2, "217303", LBIS.L["Legs"], "Alt") --Stoneweaver Leggings
    LBIS:AddItem(spec2, "4044", LBIS.L["Legs"], "Alt") --Aurora Pants
    LBIS:AddItem(spec2, "213336", LBIS.L["Feet"], "BIS") --Hyperconductive Walkers
    LBIS:AddItem(spec2, "215378", LBIS.L["Feet"], "BIS") --Irradiated Boots
    LBIS:AddItem(spec2, "213337", LBIS.L["Feet"], "BIS") --Hyperconductive Sandals
    LBIS:AddItem(spec2, "210795", LBIS.L["Feet"], "Alt") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec2, "20095", LBIS.L["Feet"], "Alt") --Highlander's Cloth Boots
    LBIS:AddItem(spec2, "20641", LBIS.L["Feet"], "Alt") --Southsea Mojo Boots
    LBIS:AddItem(spec2, "13100", LBIS.L["Feet"], "Alt") --Furen's Boots
    LBIS:AddItem(spec2, "209669", LBIS.L["Feet"], "Alt") --Twilight Invoker's Shoes
    LBIS:AddItem(spec2, "213345", LBIS.L["Neck"], "BIS") --Piston Pendant
    LBIS:AddItem(spec2, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec2, "217296", LBIS.L["Neck"], "Alt") --Ghostshard Talisman
    LBIS:AddItem(spec2, "217301", LBIS.L["Neck"], "Alt") --Triune Amulet
    LBIS:AddItem(spec2, "1714", LBIS.L["Neck"], "Alt") --Necklace of Calisea
    LBIS:AddItem(spec2, "217290", LBIS.L["Neck"], "Alt") --Glowing Eye of Mordresh
    LBIS:AddItem(spec2, "11196", LBIS.L["Neck"], "Alt") --Mindburst Medallion
    LBIS:AddItem(spec2, "209825", LBIS.L["Neck"], "Alt") --Droplet Choker
    LBIS:AddItem(spec2, "213283", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec2, "19524", LBIS.L["Ring"], "BIS") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "213282", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Innovation
    LBIS:AddItem(spec2, "216519", LBIS.L["Ring"], "BIS") --Sanguine Shadow Band
    LBIS:AddItem(spec2, "216518", LBIS.L["Ring"], "BIS") --Blood Covenant Seal
    LBIS:AddItem(spec2, "19525", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec2, "213287", LBIS.L["Ring"], "Alt") --Electrocutioner Hexnut
    LBIS:AddItem(spec2, "209668", LBIS.L["Ring"], "Alt") --Signet of the Twilight Lord
    LBIS:AddItem(spec2, "213347", LBIS.L["Trinket"], "BIS") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec2, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec2, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec2, "213349", LBIS.L["Trinket"], "Alt") --Gniodine Pill Bottle
    LBIS:AddItem(spec2, "211420", LBIS.L["Trinket"], "Alt") --Shifting Scale Talisman
    LBIS:AddItem(spec2, "216938", LBIS.L["Trinket"], "Alt") --Greater Insignia of the Alliance
    LBIS:AddItem(spec2, "216939", LBIS.L["Trinket"], "Alt") --Greater Insignia of the Horde
    LBIS:AddItem(spec2, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec2, "213410", LBIS.L["Main Hand"], "BIS") --Glimmering Gizmoblade
    LBIS:AddItem(spec2, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec2, "7714", LBIS.L["Main Hand"], "Alt") --Hypnotic Blade
    LBIS:AddItem(spec2, "213352", LBIS.L["Main Hand"], "Alt") --Gear-Mender's Grace
    LBIS:AddItem(spec2, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec2, "7344", LBIS.L["Off Hand"], "BIS") --Torch of Holy Flame
    LBIS:AddItem(spec2, "213542", LBIS.L["Off Hand"], "BIS") --The Necro-Gnomicon
    LBIS:AddItem(spec2, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec2, "217291", LBIS.L["Off Hand"], "Alt") --Mordresh's Lifeless Skull
    LBIS:AddItem(spec2, "209570", LBIS.L["Off Hand"], "Alt") --Tome of Cavern Lore
    LBIS:AddItem(spec2, "213419", LBIS.L["Off Hand"], "Alt") --9-60 Repair Manual
    LBIS:AddItem(spec2, "209561", LBIS.L["Two Hand"], "BIS") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec2, "213353", LBIS.L["Two Hand"], "BIS") --Defibrillating Staff
    LBIS:AddItem(spec2, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec2, "213354", LBIS.L["Two Hand"], "Alt") --Staff of the Evil Genius
    LBIS:AddItem(spec2, "217299", LBIS.L["Two Hand"], "Alt") --Illusionary Rod
    LBIS:AddItem(spec2, "213559", LBIS.L["Ranged/Relic"], "BIS") --Mechanostrider Gear Shifter
    LBIS:AddItem(spec2, "217295", LBIS.L["Ranged/Relic"], "Alt") --Necrotic Wand
    LBIS:AddItem(spec2, "217287", LBIS.L["Ranged/Relic"], "Alt") --Greater Mystic Wand
    LBIS:AddItem(spec2, "213411", LBIS.L["Ranged/Relic"], "Alt") --Izzleflick's Inextinguishable Igniter
    LBIS:AddItem(spec2, "13064", LBIS.L["Ranged/Relic"], "Alt") --Jaina's Firestarter
    LBIS:AddItem(spec2, "209674", LBIS.L["Ranged/Relic"], "Alt") --Phoenix Ignition

    LBIS:AddItem(spec3, "220522", LBIS.L["Head"], "BIS") --Soulcatcher Crown
    LBIS:AddItem(spec3, "220523", LBIS.L["Head"], "BIS") --Visage of the Exiled
    LBIS:AddItem(spec3, "223193", LBIS.L["Head"], "Alt") --Crown of the Dreamweaver
    LBIS:AddItem(spec3, "221437", LBIS.L["Head"], "Alt") --Emerald Woven Circlet
    LBIS:AddItem(spec3, "220896", LBIS.L["Head"], "Alt") --Knight-Lieutenant's Satin Cover
    LBIS:AddItem(spec3, "220899", LBIS.L["Head"], "Alt") --Blood Guard's Satin Cover
    LBIS:AddItem(spec3, "13102", LBIS.L["Head"], "Alt") --Cassandra's Grace
    LBIS:AddItem(spec3, "215111", LBIS.L["Head"], "Alt") --Gneuro-Linked Arcano-Filament Monocle
    LBIS:AddItem(spec3, "223328", LBIS.L["Head"], "Alt") --Gemburst Circlet
    LBIS:AddItem(spec3, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec3, "213281", LBIS.L["Head"], "Alt") --Electromagnetic Hyperflux Reactivator
    LBIS:AddItem(spec3, "220907", LBIS.L["Head"], "Alt") --Blood Guard's Dreadweave Hat
    LBIS:AddItem(spec3, "220889", LBIS.L["Head"], "Alt") --Knight-Lieutenant's Dreadweave Hat
    LBIS:AddItem(spec3, "223519", LBIS.L["Head"], "Alt") --Eye of Theradras
    LBIS:AddItem(spec3, "221425", LBIS.L["Head"], "Alt") --Emerald Enchanted Circlet
    LBIS:AddItem(spec3, "220749", LBIS.L["Shoulder"], "BIS") --Mantle of Insanity
    LBIS:AddItem(spec3, "220750", LBIS.L["Shoulder"], "BIS") --Fractured Mind Pauldrons
    LBIS:AddItem(spec3, "220894", LBIS.L["Shoulder"], "Alt") --Knight-Lieutenant's Satin Pads
    LBIS:AddItem(spec3, "220901", LBIS.L["Shoulder"], "Alt") --Blood Guard's Satin Pads
    LBIS:AddItem(spec3, "221432", LBIS.L["Shoulder"], "Alt") --Emerald Woven Mantle
    LBIS:AddItem(spec3, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec3, "220751", LBIS.L["Shoulder"], "Alt") --Shoulderpads of the Deranged
    LBIS:AddItem(spec3, "223521", LBIS.L["Shoulder"], "Alt") --Rotgrip Mantle
    LBIS:AddItem(spec3, "220887", LBIS.L["Shoulder"], "Alt") --Knight-Lieutenant's Dreadweave Mantle
    LBIS:AddItem(spec3, "220905", LBIS.L["Shoulder"], "Alt") --Blood Guard's Dreadweave Mantle
    LBIS:AddItem(spec3, "221431", LBIS.L["Shoulder"], "Alt") --Emerald Enchanted Shoulders
    LBIS:AddItem(spec3, "220608", LBIS.L["Back"], "BIS") --Featherskin Drape
    LBIS:AddItem(spec3, "220611", LBIS.L["Back"], "BIS") --Hukku's Hex Cape
    LBIS:AddItem(spec3, "19531", LBIS.L["Back"], "Alt") --Caretaker's Cape
    LBIS:AddItem(spec3, "19527", LBIS.L["Back"], "Alt") --Battle Healer's Cloak
    LBIS:AddItem(spec3, "213309", LBIS.L["Back"], "Alt") --Cloak of Invention
    LBIS:AddItem(spec3, "216623", LBIS.L["Back"], "Alt") --Cape of Hemostasis
    LBIS:AddItem(spec3, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec3, "216620", LBIS.L["Back"], "Alt") --Bloodrot Cloak
    LBIS:AddItem(spec3, "213306", LBIS.L["Back"], "Alt") --Ingenuity's Cover
    LBIS:AddItem(spec3, "217252", LBIS.L["Back"], "Alt") --Long Silken Cloak
    LBIS:AddItem(spec3, "220534", LBIS.L["Chest"], "BIS") --Eternal Embrace of the Wind Serpent
    LBIS:AddItem(spec3, "220535", LBIS.L["Chest"], "BIS") --Garments of the Atal'ai Prophet
    LBIS:AddItem(spec3, "220683", LBIS.L["Chest"], "Alt") --Benevolent Prophet's Vest
    LBIS:AddItem(spec3, "223256", LBIS.L["Chest"], "Alt") --Fel Cloth Robes of Restoration
    LBIS:AddItem(spec3, "221434", LBIS.L["Chest"], "Alt") --Emerald Woven Robes
    LBIS:AddItem(spec3, "220892", LBIS.L["Chest"], "Alt") --Knight's Satin Armor
    LBIS:AddItem(spec3, "220903", LBIS.L["Chest"], "Alt") --Stone Guard's Satin Armor
    LBIS:AddItem(spec3, "213310", LBIS.L["Chest"], "Alt") --Hyperconductive Shimmershirt
    LBIS:AddItem(spec3, "220680", LBIS.L["Chest"], "Alt") --Malevolent Prophet's Vest
    LBIS:AddItem(spec3, "223535", LBIS.L["Chest"], "Alt") --Grimlok's Tribal Vestments
    LBIS:AddItem(spec3, "213311", LBIS.L["Chest"], "Alt") --Hyperconductive Robe
    LBIS:AddItem(spec3, "215377", LBIS.L["Chest"], "Alt") --Irradiated Robe
    LBIS:AddItem(spec3, "10021", LBIS.L["Chest"], "Alt") --Dreamweave Vest
    LBIS:AddItem(spec3, "221430", LBIS.L["Chest"], "Alt") --Emerald Enchanted Robes
    LBIS:AddItem(spec3, "220886", LBIS.L["Chest"], "Alt") --Knight's Dreadweave Vest
    LBIS:AddItem(spec3, "220904", LBIS.L["Chest"], "Alt") --Stone Guard's Dreadweave Vest
    LBIS:AddItem(spec3, "220536", LBIS.L["Wrist"], "BIS") --Atal'ai Medicine Man's Wrists
    LBIS:AddItem(spec3, "19596", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "221025", LBIS.L["Wrist"], "BIS") --Void-Powered Invoker's Vambraces
    LBIS:AddItem(spec3, "213415", LBIS.L["Wrist"], "Alt") --Tinker's Wrist Wraps
    LBIS:AddItem(spec3, "213285", LBIS.L["Wrist"], "Alt") --Lev's Oil-Stained Bindings
    LBIS:AddItem(spec3, "216702", LBIS.L["Wrist"], "Alt") --Sergeant Major's Silk Cuffs
    LBIS:AddItem(spec3, "216707", LBIS.L["Wrist"], "Alt") --First Sergeant's Silk Cuffs
    LBIS:AddItem(spec3, "11962", LBIS.L["Wrist"], "Alt") --Manacle Cuffs
    LBIS:AddItem(spec3, "11469", LBIS.L["Wrist"], "Alt") --Bloodband Bracers
    LBIS:AddItem(spec3, "10705", LBIS.L["Wrist"], "Alt") --Firwillow Wristbands
    LBIS:AddItem(spec3, "220547", LBIS.L["Hands"], "BIS") --Gloves of the Fallen Atal'ai Prophet
    LBIS:AddItem(spec3, "220548", LBIS.L["Hands"], "BIS") --Atal'ai Hexxer's Gloves
    LBIS:AddItem(spec3, "220897", LBIS.L["Hands"], "Alt") --Sergeant Major's Satin Gloves
    LBIS:AddItem(spec3, "220898", LBIS.L["Hands"], "Alt") --First Sergeant's Satin Gloves
    LBIS:AddItem(spec3, "221436", LBIS.L["Hands"], "Alt") --Emerald Woven Gloves
    LBIS:AddItem(spec3, "19116", LBIS.L["Hands"], "Alt") --Greenleaf Handwraps
    LBIS:AddItem(spec3, "223984", LBIS.L["Hands"], "Alt") --Silkweb Gloves
    LBIS:AddItem(spec3, "221427", LBIS.L["Hands"], "Alt") --Emerald Enchanted Gloves
    LBIS:AddItem(spec3, "220890", LBIS.L["Hands"], "Alt") --Sergeant Major's Dreadweave Gloves
    LBIS:AddItem(spec3, "220908", LBIS.L["Hands"], "Alt") --First Sergeant's Dreadweave Gloves
    LBIS:AddItem(spec3, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec3, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec3, "223534", LBIS.L["Hands"], "Alt") --Jumanza Grips
    LBIS:AddItem(spec3, "13863", LBIS.L["Hands"], "Alt") --Runecloth Gloves
    LBIS:AddItem(spec3, "220549", LBIS.L["Waist"], "BIS") --Dawnspire Strap
    LBIS:AddItem(spec3, "223192", LBIS.L["Waist"], "BIS") --Cord of the Untamed
    LBIS:AddItem(spec3, "213414", LBIS.L["Waist"], "Alt") --Mech-Mender's Sash
    LBIS:AddItem(spec3, "20097", LBIS.L["Waist"], "Alt") --Highlander's Cloth Girdle
    LBIS:AddItem(spec3, "20165", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "213321", LBIS.L["Waist"], "Alt") --Volatile Concoction Belt
    LBIS:AddItem(spec3, "217292", LBIS.L["Waist"], "Alt") --Deathmage Sash
    LBIS:AddItem(spec3, "217255", LBIS.L["Waist"], "Alt") --Crimson Silk Belt
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "220684", LBIS.L["Legs"], "BIS") --Benevolent Prophet's Leggings
    LBIS:AddItem(spec3, "220679", LBIS.L["Legs"], "BIS") --Malevolent Prophet's Leggings
    LBIS:AddItem(spec3, "220893", LBIS.L["Legs"], "Alt") --Knight's Satin Leggings
    LBIS:AddItem(spec3, "220902", LBIS.L["Legs"], "Alt") --Stone Guard's Satin Leggings
    LBIS:AddItem(spec3, "221435", LBIS.L["Legs"], "Alt") --Emerald Woven Pants
    LBIS:AddItem(spec3, "11841", LBIS.L["Legs"], "Alt") --Senior Designer's Pantaloons
    LBIS:AddItem(spec3, "223324", LBIS.L["Legs"], "Alt") --Rainstrider Leggings
    LBIS:AddItem(spec3, "223248", LBIS.L["Legs"], "Alt") --Fel Cloth Legs of Restoration
    LBIS:AddItem(spec3, "220556", LBIS.L["Legs"], "Alt") --Kilt of the Fallen Atal'ai Prophet
    LBIS:AddItem(spec3, "213328", LBIS.L["Legs"], "Alt") --Hyperconductive Pantaloons
    LBIS:AddItem(spec3, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec3, "221429", LBIS.L["Legs"], "Alt") --Emerald Enchanted Pants
    LBIS:AddItem(spec3, "220906", LBIS.L["Legs"], "Alt") --Stone Guard's Dreadweave Leggings
    LBIS:AddItem(spec3, "220888", LBIS.L["Legs"], "Alt") --Knight's Dreadweave Leggings
    LBIS:AddItem(spec3, "213329", LBIS.L["Legs"], "Alt") --Hyperconductive Skirt
    LBIS:AddItem(spec3, "215379", LBIS.L["Legs"], "Alt") --Irradiated Trousers
    LBIS:AddItem(spec3, "217303", LBIS.L["Legs"], "Alt") --Stoneweaver Leggings
    LBIS:AddItem(spec3, "10009", LBIS.L["Legs"], "Alt") --Red Mageweave Pants
    LBIS:AddItem(spec3, "220565", LBIS.L["Feet"], "BIS") --Ethereal Mistwalker Boots
    LBIS:AddItem(spec3, "220891", LBIS.L["Feet"], "BIS") --Sergeant Major's Dreadweave Boots
    LBIS:AddItem(spec3, "220909", LBIS.L["Feet"], "BIS") --First Sergeant's Dreadweave Boots
    LBIS:AddItem(spec3, "220685", LBIS.L["Feet"], "Alt") --Benevolent Prophet's Sandals
    LBIS:AddItem(spec3, "220900", LBIS.L["Feet"], "Alt") --First Sergeant's Satin Boots
    LBIS:AddItem(spec3, "220895", LBIS.L["Feet"], "Alt") --Sergeant Major's Satin Boots
    LBIS:AddItem(spec3, "221438", LBIS.L["Feet"], "Alt") --Emerald Woven Boots
    LBIS:AddItem(spec3, "213337", LBIS.L["Feet"], "Alt") --Hyperconductive Sandals
    LBIS:AddItem(spec3, "221426", LBIS.L["Feet"], "Alt") --Emerald Enchanted Boots
    LBIS:AddItem(spec3, "220681", LBIS.L["Feet"], "Alt") --Malevolent Prophet's Sandals
    LBIS:AddItem(spec3, "223543", LBIS.L["Feet"], "Alt") --Vinerot Sandals
    LBIS:AddItem(spec3, "213336", LBIS.L["Feet"], "Alt") --Hyperconductive Walkers
    LBIS:AddItem(spec3, "213290", LBIS.L["Feet"], "Alt") --Acidic Waders
    LBIS:AddItem(spec3, "215378", LBIS.L["Feet"], "Alt") --Irradiated Boots
    LBIS:AddItem(spec3, "20094", LBIS.L["Feet"], "Alt") --Highlander's Cloth Boots
    LBIS:AddItem(spec3, "20160", LBIS.L["Feet"], "Alt") --Defiler's Cloth Boots
    LBIS:AddItem(spec3, "20641", LBIS.L["Feet"], "Alt") --Southsea Mojo Boots
    LBIS:AddItem(spec3, "220622", LBIS.L["Neck"], "BIS") --Perfectly Preserved Dragon's Eye
    LBIS:AddItem(spec3, "220623", LBIS.L["Neck"], "BIS") --Jin'do's Lost Locket
    LBIS:AddItem(spec3, "213346", LBIS.L["Neck"], "Alt") --Pendant of Homecoming
    LBIS:AddItem(spec3, "217301", LBIS.L["Neck"], "Alt") --Triune Amulet
    LBIS:AddItem(spec3, "223541", LBIS.L["Neck"], "Alt") --Gemshard Heart
    LBIS:AddItem(spec3, "217290", LBIS.L["Neck"], "Alt") --Glowing Eye of Mordresh
    LBIS:AddItem(spec3, "213345", LBIS.L["Neck"], "Alt") --Piston Pendant
    LBIS:AddItem(spec3, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec3, "217296", LBIS.L["Neck"], "Alt") --Ghostshard Talisman
    LBIS:AddItem(spec3, "221459", LBIS.L["Ring"], "BIS") --Seal of the Sacrificed
    LBIS:AddItem(spec3, "220629", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Blood Prophet
    LBIS:AddItem(spec3, "223985", LBIS.L["Ring"], "BIS") --Cyclopean Band
    LBIS:AddItem(spec3, "220628", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Harbinger
    LBIS:AddItem(spec3, "213282", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Innovation
    LBIS:AddItem(spec3, "216518", LBIS.L["Ring"], "Alt") --Blood Covenant Seal
    LBIS:AddItem(spec3, "19523", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec3, "19519", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "7553", LBIS.L["Ring"], "Alt") --Band of the Unicorn
    LBIS:AddItem(spec3, "213283", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec3, "19524", LBIS.L["Ring"], "Alt") --Lorekeeper's Ring
    LBIS:AddItem(spec3, "19520", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "224006", LBIS.L["Ring"], "Alt") --Emerald Ring
    LBIS:AddItem(spec3, "213287", LBIS.L["Ring"], "Alt") --Electrocutioner Hexnut
    LBIS:AddItem(spec3, "221308", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Overgrowth
    LBIS:AddItem(spec3, "19990", LBIS.L["Trinket"], "BIS") --Blessed Prayer Beads
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS") --Breadth of the Beast
    LBIS:AddItem(spec3, "220634", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec3, "221443", LBIS.L["Trinket"], "Alt") --Roar of the Grove
    LBIS:AddItem(spec3, "213347", LBIS.L["Trinket"], "Alt") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec3, "211451", LBIS.L["Trinket"], "Alt") --Acolyte's Void Pearl
    LBIS:AddItem(spec3, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec3, "213349", LBIS.L["Trinket"], "Alt") --Gniodine Pill Bottle
    LBIS:AddItem(spec3, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec3, "211420", LBIS.L["Trinket"], "Alt") --Shifting Scale Talisman
    LBIS:AddItem(spec3, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec3, "220579", LBIS.L["Main Hand"], "BIS") --Witch Doctor's Stick of Mojo
    LBIS:AddItem(spec3, "223964", LBIS.L["Main Hand"], "BIS") --Blade of Eternal Darkness
    LBIS:AddItem(spec3, "220587", LBIS.L["Main Hand"], "Alt") --Sacrificial Dream Dagger
    LBIS:AddItem(spec3, "220586", LBIS.L["Main Hand"], "Alt") --Hubris, the Bandit Brander
    LBIS:AddItem(spec3, "213352", LBIS.L["Main Hand"], "Alt") --Gear-Mender's Grace
    LBIS:AddItem(spec3, "213410", LBIS.L["Main Hand"], "Alt") --Glimmering Gizmoblade
    LBIS:AddItem(spec3, "223518", LBIS.L["Main Hand"], "Alt") --Charstone Dirk
    LBIS:AddItem(spec3, "223524", LBIS.L["Main Hand"], "Alt") --Fist of Stone
    LBIS:AddItem(spec3, "7721", LBIS.L["Main Hand"], "Alt") --Hand of Righteousness
    LBIS:AddItem(spec3, "220580", LBIS.L["Main Hand"], "Alt") --Madness of the Avatar
    LBIS:AddItem(spec3, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec3, "7714", LBIS.L["Main Hand"], "Alt") --Hypnotic Blade
    LBIS:AddItem(spec3, "220599", LBIS.L["Off Hand"], "BIS") --Drakestone of the Blood Prophet
    LBIS:AddItem(spec3, "223539", LBIS.L["Off Hand"], "BIS") --Enthralled Sphere
    LBIS:AddItem(spec3, "15936", LBIS.L["Off Hand"], "Alt") --Duskwoven Branch
    LBIS:AddItem(spec3, "213419", LBIS.L["Off Hand"], "Alt") --9-60 Repair Manual
    LBIS:AddItem(spec3, "223523", LBIS.L["Off Hand"], "Alt") --Cloud Stone
    LBIS:AddItem(spec3, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec3, "223533", LBIS.L["Off Hand"], "Alt") --Desertwalker Cane
    LBIS:AddItem(spec3, "213542", LBIS.L["Off Hand"], "Alt") --The Necro-Gnomicon
    LBIS:AddItem(spec3, "7344", LBIS.L["Off Hand"], "Alt") --Torch of Holy Flame
    LBIS:AddItem(spec3, "2943", LBIS.L["Off Hand"], "Alt") --Eye of Paleth
    LBIS:AddItem(spec3, "7685", LBIS.L["Off Hand"], "Alt") --Orb of the Forgotten Seer
    LBIS:AddItem(spec3, "9393", LBIS.L["Off Hand"], "Alt") --Beacon of Hope
    LBIS:AddItem(spec3, "220591", LBIS.L["Two Hand"], "BIS") --Mijan's Restorative Rod
    LBIS:AddItem(spec3, "220595", LBIS.L["Two Hand"], "BIS") --Nightmare Focus Staff
    LBIS:AddItem(spec3, "213353", LBIS.L["Two Hand"], "Alt") --Defibrillating Staff
    LBIS:AddItem(spec3, "220590", LBIS.L["Two Hand"], "Alt") --Spire of Hakkari Worship
    LBIS:AddItem(spec3, "209561", LBIS.L["Two Hand"], "Alt") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec3, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan
    LBIS:AddItem(spec3, "213354", LBIS.L["Two Hand"], "Alt") --Staff of the Evil Genius
    LBIS:AddItem(spec3, "18082", LBIS.L["Two Hand"], "Alt") --Zum'rah's Vexing Cane
    LBIS:AddItem(spec3, "223538", LBIS.L["Two Hand"], "Alt") --Kindling Stave
    LBIS:AddItem(spec3, "217299", LBIS.L["Two Hand"], "Alt") --Illusionary Rod
    LBIS:AddItem(spec3, "220603", LBIS.L["Ranged/Relic"], "BIS") --Rod of Irreversible Corrosion
    LBIS:AddItem(spec3, "220604", LBIS.L["Ranged/Relic"], "BIS") --Nightmare Trophy
    LBIS:AddItem(spec3, "213559", LBIS.L["Ranged/Relic"], "Alt") --Mechanostrider Gear Shifter
    LBIS:AddItem(spec3, "213411", LBIS.L["Ranged/Relic"], "Alt") --Izzleflick's Inextinguishable Igniter
    LBIS:AddItem(spec3, "217295", LBIS.L["Ranged/Relic"], "Alt") --Necrotic Wand
    LBIS:AddItem(spec3, "217287", LBIS.L["Ranged/Relic"], "Alt") --Greater Mystic Wand
    LBIS:AddItem(spec3, "13064", LBIS.L["Ranged/Relic"], "Alt") --Jaina's Firestarter
end
if C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
