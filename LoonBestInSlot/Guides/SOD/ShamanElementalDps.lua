local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental Dps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental Dps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental Dps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental Dps"], "4")

    LBIS:AddEnchant(spec4, "22844", LBIS.L["Head"]) --Arcanum of Focus
    LBIS:AddEnchant(spec4, "446459", LBIS.L["Shoulder"]) --Atal'ai Signet of Mojo
    LBIS:AddEnchant(spec4, "461129", LBIS.L["Back"]) --Hydraxian Coronation
    LBIS:AddEnchant(spec4, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec4, "20008", LBIS.L["Wrist"]) --Enchant Bracer - Greater Intellect
    LBIS:AddEnchant(spec4, "19057", LBIS.L["Hands"]) --Armor +40
    LBIS:AddEnchant(spec4, "13890", LBIS.L["Feet"]) --Enchant Boots - Minor Speed
    LBIS:AddEnchant(spec4, "22749", LBIS.L["Main Hand"]) --Enchant Weapon - Spell Power
    LBIS:AddEnchant(spec4, "20017", LBIS.L["Off Hand"]) --Enchant Shield - Greater Stamina

    LBIS:AddItem(spec1, "211842", LBIS.L["Head"], "BIS") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec1, "211507", LBIS.L["Head"], "Alt") --Twilight Elementalist's Cowl
    LBIS:AddItem(spec1, "209683", LBIS.L["Head"], "Alt") --Twilight Invoker's Shawl
    LBIS:AddItem(spec1, "215365", LBIS.L["Shoulder"], "BIS") --Invoker's Mantle
    LBIS:AddItem(spec1, "12998", LBIS.L["Shoulder"], "BIS") --Magician's Mantle
    LBIS:AddItem(spec1, "211468", LBIS.L["Shoulder"], "Alt") --Frayed Chestnut Mantle
    LBIS:AddItem(spec1, "209423", LBIS.L["Back"], "BIS") --Flowing Scarf
    LBIS:AddItem(spec1, "213088", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "213087", LBIS.L["Back"], "BIS") --Sergeant's Cloak
    LBIS:AddItem(spec1, "209671", LBIS.L["Chest"], "BIS") --Twilight Invoker's Robes
    LBIS:AddItem(spec1, "211509", LBIS.L["Chest"], "BIS") --Twilight Elementalist's Robe
    LBIS:AddItem(spec1, "210781", LBIS.L["Wrist"], "BIS") --Phoenix Bindings
    LBIS:AddItem(spec1, "209578", LBIS.L["Wrist"], "Alt") --Glowing Leather Bands
    LBIS:AddItem(spec1, "1974", LBIS.L["Wrist"], "Alt") --Mindthrust Bracers
    LBIS:AddItem(spec1, "4036", LBIS.L["Wrist"], "Alt") --Silver-thread Cuffs
    LBIS:AddItem(spec1, "211455", LBIS.L["Hands"], "BIS") --Slick Fingerless Gloves
    LBIS:AddItem(spec1, "209672", LBIS.L["Hands"], "Alt") --Black Fingerless Gloves
    LBIS:AddItem(spec1, "209685", LBIS.L["Waist"], "BIS") --Ancient Moss Cinch
    LBIS:AddItem(spec1, "215366", LBIS.L["Waist"], "Alt") --Invoker's Cord
    LBIS:AddItem(spec1, "6392", LBIS.L["Waist"], "Alt") --Belt of Arugal
    LBIS:AddItem(spec1, "209684", LBIS.L["Legs"], "BIS") --Soul Leech Pants
    LBIS:AddItem(spec1, "209667", LBIS.L["Legs"], "Alt") --Gaze Dreamer Leggings
    LBIS:AddItem(spec1, "210795", LBIS.L["Feet"], "BIS") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec1, "209669", LBIS.L["Feet"], "Alt") --Twilight Invoker's Shoes
    LBIS:AddItem(spec1, "209686", LBIS.L["Neck"], "BIS") --Jagged Bone Necklace
    LBIS:AddItem(spec1, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace
    LBIS:AddItem(spec1, "20426", LBIS.L["Ring"], "BIS") --Advisor's Ring
    LBIS:AddItem(spec1, "209668", LBIS.L["Ring"], "BIS") --Signet of the Twilight Lord
    LBIS:AddItem(spec1, "1156", LBIS.L["Ring"], "Alt") --Lavishly Jeweled Ring
    LBIS:AddItem(spec1, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec1, "4381", LBIS.L["Trinket"], "BIS") --Minor Recombobulator
    LBIS:AddItem(spec1, "21566", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec1, "209561", LBIS.L["Main Hand"], "BIS") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec1, "211456", LBIS.L["Main Hand"], "Alt") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec1, "209573", LBIS.L["Main Hand"], "Alt") --Wrathful Spire
    LBIS:AddItem(spec1, "209694", LBIS.L["Main Hand"], "Alt") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec1, "5201", LBIS.L["Main Hand"], "Alt") --Emberstone Staff
    LBIS:AddItem(spec1, "890", LBIS.L["Main Hand"], "Alt") --Twisted Chanter's Staff
    LBIS:AddItem(spec1, "209570", LBIS.L["Off Hand"], "BIS") --Tome of Cavern Lore
    LBIS:AddItem(spec1, "6630", LBIS.L["Off Hand"], "Alt") --Seedcloud Buckler
    LBIS:AddItem(spec1, "209590", LBIS.L["Off Hand"], "Alt") --Cracked Water Globe
    LBIS:AddItem(spec1, "211460", LBIS.L["Off Hand"], "Alt") --Ancient Arctic Buckler
    LBIS:AddItem(spec1, "209575", LBIS.L["Ranged/Relic"], "BIS") --Carved Driftwood Icon

    LBIS:AddItem(spec2, "215114", LBIS.L["Head"], "BIS") --Glowing Hyperconductive Scale Coif
    LBIS:AddItem(spec2, "215111", LBIS.L["Head"], "BIS") --Gneuro-Linked Arcano-Filament Monocle
    LBIS:AddItem(spec2, "213279", LBIS.L["Head"], "Alt") --Reflective Skullcap
    LBIS:AddItem(spec2, "217300", LBIS.L["Head"], "Alt") --Whitemane's Chapeau
    LBIS:AddItem(spec2, "211842", LBIS.L["Head"], "Alt") --Rakkamar's Tattered Thinking Cap
    LBIS:AddItem(spec2, "211507", LBIS.L["Head"], "Alt") --Twilight Elementalist's Cowl
    LBIS:AddItem(spec2, "209683", LBIS.L["Head"], "Alt") --Twilight Invoker's Shawl
    LBIS:AddItem(spec2, "213303", LBIS.L["Shoulder"], "BIS") --Lightning Rod Spaulders
    LBIS:AddItem(spec2, "213301", LBIS.L["Shoulder"], "Alt") --Synthetic Mantle
    LBIS:AddItem(spec2, "19507", LBIS.L["Shoulder"], "Alt") --Inquisitor's Shawl
    LBIS:AddItem(spec2, "215365", LBIS.L["Shoulder"], "Alt") --Invoker's Mantle
    LBIS:AddItem(spec2, "12998", LBIS.L["Shoulder"], "Alt") --Magician's Mantle
    LBIS:AddItem(spec2, "211468", LBIS.L["Shoulder"], "Alt") --Frayed Chestnut Mantle
    LBIS:AddItem(spec2, "216620", LBIS.L["Back"], "BIS") --Bloodrot Cloak
    LBIS:AddItem(spec2, "209423", LBIS.L["Back"], "Alt") --Flowing Scarf
    LBIS:AddItem(spec2, "213088", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213087", LBIS.L["Back"], "Alt") --Sergeant's Cloak
    LBIS:AddItem(spec2, "213315", LBIS.L["Chest"], "BIS") --Electromantic Chainshirt
    LBIS:AddItem(spec2, "217289", LBIS.L["Chest"], "Alt") --Deathchill Armor
    LBIS:AddItem(spec2, "7054", LBIS.L["Chest"], "Alt") --Robe of Power
    LBIS:AddItem(spec2, "209671", LBIS.L["Chest"], "Alt") --Twilight Invoker's Robes
    LBIS:AddItem(spec2, "211509", LBIS.L["Chest"], "Alt") --Twilight Elementalist's Robe
    LBIS:AddItem(spec2, "19597", LBIS.L["Wrist"], "BIS") --Dryad's Wrist Bindings
    LBIS:AddItem(spec2, "213285", LBIS.L["Wrist"], "Alt") --Lev's Oil-Stained Bindings
    LBIS:AddItem(spec2, "212996", LBIS.L["Wrist"], "Alt") --Lightningcaller's Bindings
    LBIS:AddItem(spec2, "210781", LBIS.L["Wrist"], "Alt") --Phoenix Bindings
    LBIS:AddItem(spec2, "209578", LBIS.L["Wrist"], "Alt") --Glowing Leather Bands
    LBIS:AddItem(spec2, "1974", LBIS.L["Wrist"], "Alt") --Mindthrust Bracers
    LBIS:AddItem(spec2, "4036", LBIS.L["Wrist"], "Alt") --Silver-thread Cuffs
    LBIS:AddItem(spec2, "10019", LBIS.L["Hands"], "BIS") --Dreamweave Gloves
    LBIS:AddItem(spec2, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec2, "211455", LBIS.L["Hands"], "Alt") --Slick Fingerless Gloves
    LBIS:AddItem(spec2, "209672", LBIS.L["Hands"], "Alt") --Black Fingerless Gloves
    LBIS:AddItem(spec2, "213324", LBIS.L["Waist"], "BIS") --Electromagnetic Waistcord
    LBIS:AddItem(spec2, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec2, "217292", LBIS.L["Waist"], "Alt") --Deathmage Sash
    LBIS:AddItem(spec2, "209685", LBIS.L["Waist"], "Alt") --Ancient Moss Cinch
    LBIS:AddItem(spec2, "215366", LBIS.L["Waist"], "Alt") --Invoker's Cord
    LBIS:AddItem(spec2, "6392", LBIS.L["Waist"], "Alt") --Belt of Arugal
    LBIS:AddItem(spec2, "213334", LBIS.L["Legs"], "BIS") --Electromantic Gambeson
    LBIS:AddItem(spec2, "10009", LBIS.L["Legs"], "Alt") --Red Mageweave Pants
    LBIS:AddItem(spec2, "209684", LBIS.L["Legs"], "Alt") --Soul Leech Pants
    LBIS:AddItem(spec2, "209667", LBIS.L["Legs"], "Alt") --Gaze Dreamer Leggings
    LBIS:AddItem(spec2, "213338", LBIS.L["Feet"], "BIS") --Electromantic Grounding Boots
    LBIS:AddItem(spec2, "210795", LBIS.L["Feet"], "Alt") --Extraplanar Spidersilk Boots
    LBIS:AddItem(spec2, "20641", LBIS.L["Feet"], "Alt") --Southsea Mojo Boots
    LBIS:AddItem(spec2, "209669", LBIS.L["Feet"], "Alt") --Twilight Invoker's Shoes
    LBIS:AddItem(spec2, "213345", LBIS.L["Neck"], "BIS") --Piston Pendant
    LBIS:AddItem(spec2, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec2, "217296", LBIS.L["Neck"], "Alt") --Ghostshard Talisman
    LBIS:AddItem(spec2, "12047", LBIS.L["Neck"], "Alt") --Spectral Necklace
    LBIS:AddItem(spec2, "19520", LBIS.L["Ring"], "BIS") --Advisor's Ring
    LBIS:AddItem(spec2, "213283", LBIS.L["Ring"], "BIS") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec2, "209668", LBIS.L["Ring"], "Alt") --Signet of the Twilight Lord
    LBIS:AddItem(spec2, "1156", LBIS.L["Ring"], "Alt") --Lavishly Jeweled Ring
    LBIS:AddItem(spec2, "213347", LBIS.L["Trinket"], "BIS") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec2, "211450", LBIS.L["Trinket"], "BIS") --Invoker's Void Pearl
    LBIS:AddItem(spec2, "4381", LBIS.L["Trinket"], "Alt") --Minor Recombobulator
    LBIS:AddItem(spec2, "21565", LBIS.L["Trinket"], "Alt") --Rune of Perfection
    LBIS:AddItem(spec2, "213410", LBIS.L["Main Hand"], "BIS") --Glimmering Gizmoblade
    LBIS:AddItem(spec2, "209561", LBIS.L["Main Hand"], "Alt") --Rod of the Ancient Sleepwalker
    LBIS:AddItem(spec2, "7714", LBIS.L["Main Hand"], "Alt") --Hypnotic Blade
    LBIS:AddItem(spec2, "209573", LBIS.L["Main Hand"], "Alt") --Wrathful Spire
    LBIS:AddItem(spec2, "209694", LBIS.L["Main Hand"], "Alt") --Blackfathom Ritual Dagger
    LBIS:AddItem(spec2, "5201", LBIS.L["Main Hand"], "Alt") --Emberstone Staff
    LBIS:AddItem(spec2, "890", LBIS.L["Main Hand"], "Alt") --Twisted Chanter's Staff
    LBIS:AddItem(spec2, "216501", LBIS.L["Off Hand"], "BIS") --Bloodstorm Barrier
    LBIS:AddItem(spec2, "211456", LBIS.L["Off Hand"], "BIS") --Dagger of Willing Sacrifice
    LBIS:AddItem(spec2, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec2, "209570", LBIS.L["Off Hand"], "Alt") --Tome of Cavern Lore
    LBIS:AddItem(spec2, "209590", LBIS.L["Off Hand"], "Alt") --Cracked Water Globe
    LBIS:AddItem(spec2, "211460", LBIS.L["Off Hand"], "Alt") --Ancient Arctic Buckler
    LBIS:AddItem(spec2, "215436", LBIS.L["Ranged/Relic"], "BIS") --Totem of Invigorating Flame
    LBIS:AddItem(spec2, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec3, "215114", LBIS.L["Head"], "BIS") --Glowing Hyperconductive Scale Coif
    LBIS:AddItem(spec3, "220523", LBIS.L["Head"], "Alt") --Visage of the Exiled
    LBIS:AddItem(spec3, "220521", LBIS.L["Head"], "Alt") --Hakkari Ritualist's Headdress
    LBIS:AddItem(spec3, "223328", LBIS.L["Head"], "Alt") --Gemburst Circlet
    LBIS:AddItem(spec3, "10041", LBIS.L["Head"], "Alt") --Dreamweave Circlet
    LBIS:AddItem(spec3, "213279", LBIS.L["Head"], "Alt") --Reflective Skullcap
    LBIS:AddItem(spec3, "217300", LBIS.L["Head"], "Alt") --Whitemane's Chapeau
    LBIS:AddItem(spec3, "220745", LBIS.L["Shoulder"], "BIS") --Membrane of Dark Neurosis
    LBIS:AddItem(spec3, "11624", LBIS.L["Shoulder"], "Alt") --Kentic Amice
    LBIS:AddItem(spec3, "223521", LBIS.L["Shoulder"], "Alt") --Rotgrip Mantle
    LBIS:AddItem(spec3, "213301", LBIS.L["Shoulder"], "Alt") --Synthetic Mantle
    LBIS:AddItem(spec3, "213303", LBIS.L["Shoulder"], "Alt") --Lightning Rod Spaulders
    LBIS:AddItem(spec3, "220611", LBIS.L["Back"], "BIS") --Hukku's Hex Cape
    LBIS:AddItem(spec3, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec3, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec3, "220660", LBIS.L["Chest"], "BIS") --Shunned Devotee's Chainshirt
    LBIS:AddItem(spec3, "220535", LBIS.L["Chest"], "Alt") --Garments of the Atal'ai Prophet
    LBIS:AddItem(spec3, "223981", LBIS.L["Chest"], "Alt") --Flamestrider Robes
    LBIS:AddItem(spec3, "213315", LBIS.L["Chest"], "Alt") --Electromantic Chainshirt
    LBIS:AddItem(spec3, "220538", LBIS.L["Wrist"], "BIS") --Cursed Slimescale Bracers
    LBIS:AddItem(spec3, "221025", LBIS.L["Wrist"], "BIS") --Void-Powered Invoker's Vambraces
    LBIS:AddItem(spec3, "19596", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "213318", LBIS.L["Wrist"], "Alt") --Ornate Dark Iron Bangles
    LBIS:AddItem(spec3, "213285", LBIS.L["Wrist"], "Alt") --Lev's Oil-Stained Bindings
    LBIS:AddItem(spec3, "211502", LBIS.L["Hands"], "BIS") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec3, "220548", LBIS.L["Hands"], "BIS") --Atal'ai Hexxer's Gloves
    LBIS:AddItem(spec3, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec3, "220544", LBIS.L["Hands"], "Alt") --Bloodflare Talons
    LBIS:AddItem(spec3, "10019", LBIS.L["Hands"], "Alt") --Dreamweave Gloves
    LBIS:AddItem(spec3, "213320", LBIS.L["Hands"], "Alt") --Fingers of Arcane Accuracy
    LBIS:AddItem(spec3, "211455", LBIS.L["Hands"], "Alt") --Slick Fingerless Gloves
    LBIS:AddItem(spec3, "223192", LBIS.L["Waist"], "BIS") --Cord of the Untamed
    LBIS:AddItem(spec3, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec3, "213324", LBIS.L["Waist"], "Alt") --Electromagnetic Waistcord
    LBIS:AddItem(spec3, "215115", LBIS.L["Waist"], "Alt") --Hyperconductive Goldwrap
    LBIS:AddItem(spec3, "220661", LBIS.L["Legs"], "BIS") --Shunned Devotee's Legguards
    LBIS:AddItem(spec3, "220556", LBIS.L["Legs"], "Alt") --Kilt of the Fallen Atal'ai Prophet
    LBIS:AddItem(spec3, "9484", LBIS.L["Legs"], "Alt") --Spellshock Leggings
    LBIS:AddItem(spec3, "213334", LBIS.L["Legs"], "Alt") --Electromantic Gambeson
    LBIS:AddItem(spec3, "10009", LBIS.L["Legs"], "Alt") --Red Mageweave Pants
    LBIS:AddItem(spec3, "220662", LBIS.L["Feet"], "BIS") --Shunned Devotee's Scale Boots
    LBIS:AddItem(spec3, "223543", LBIS.L["Feet"], "Alt") --Vinerot Sandals
    LBIS:AddItem(spec3, "213338", LBIS.L["Feet"], "Alt") --Electromantic Grounding Boots
    LBIS:AddItem(spec3, "215378", LBIS.L["Feet"], "Alt") --Irradiated Boots
    LBIS:AddItem(spec3, "220623", LBIS.L["Neck"], "BIS") --Jin'do's Lost Locket
    LBIS:AddItem(spec3, "213345", LBIS.L["Neck"], "Alt") --Piston Pendant
    LBIS:AddItem(spec3, "209686", LBIS.L["Neck"], "Alt") --Jagged Bone Necklace
    LBIS:AddItem(spec3, "221440", LBIS.L["Ring"], "BIS") --Roar of the Dream
    LBIS:AddItem(spec3, "220628", LBIS.L["Ring"], "BIS") --Drakeclaw Band of the Harbinger
    LBIS:AddItem(spec3, "223985", LBIS.L["Ring"], "BIS") --Cyclopean Band
    LBIS:AddItem(spec3, "213283", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Conflagration
    LBIS:AddItem(spec3, "19519", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "19520", LBIS.L["Ring"], "Alt") --Advisor's Ring
    LBIS:AddItem(spec3, "220634", LBIS.L["Trinket"], "BIS") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec3, "223195", LBIS.L["Trinket"], "BIS") --Breadth of the Beast
    LBIS:AddItem(spec3, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec3, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec3, "213347", LBIS.L["Trinket"], "Alt") --Miniaturized Combustion Chamber
    LBIS:AddItem(spec3, "211450", LBIS.L["Trinket"], "Alt") --Invoker's Void Pearl
    LBIS:AddItem(spec3, "223964", LBIS.L["Main Hand"], "BIS") --Blade of Eternal Darkness
    LBIS:AddItem(spec3, "220586", LBIS.L["Main Hand"], "BIS") --Hubris, the Bandit Brander
    LBIS:AddItem(spec3, "213410", LBIS.L["Main Hand"], "Alt") --Glimmering Gizmoblade
    LBIS:AddItem(spec3, "220590", LBIS.L["Main Hand"], "Alt") --Spire of Hakkari Worship
    LBIS:AddItem(spec3, "220595", LBIS.L["Main Hand"], "Alt") --Nightmare Focus Staff
    LBIS:AddItem(spec3, "220601", LBIS.L["Off Hand"], "BIS") --Hakkari Witch Doctor's Guard
    LBIS:AddItem(spec3, "7714", LBIS.L["Off Hand"], "BIS") --Hypnotic Blade
    LBIS:AddItem(spec3, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec3, "220607", LBIS.L["Ranged/Relic"], "BIS") --Totem of Tormented Ancestry
    LBIS:AddItem(spec3, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame
    LBIS:AddItem(spec3, "209575", LBIS.L["Ranged/Relic"], "Alt") --Carved Driftwood Icon

    LBIS:AddItem(spec4, "226622", LBIS.L["Head"], "BIS") --Earthfury Visor
    LBIS:AddItem(spec4, "228677", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec4, "227002", LBIS.L["Head"], "Alt") --Coif of The Five Thunders
    LBIS:AddItem(spec4, "226624", LBIS.L["Shoulder"], "BIS") --Earthfury Mantle
    LBIS:AddItem(spec4, "228258", LBIS.L["Shoulder"], "Alt") --Deep Earth Spaulders
    LBIS:AddItem(spec4, "227003", LBIS.L["Shoulder"], "Alt") --Pauldrons of The Five Thunders
    LBIS:AddItem(spec4, "220745", LBIS.L["Shoulder"], "Alt") --Membrane of Dark Neurosis
    LBIS:AddItem(spec4, "228100", LBIS.L["Back"], "BIS") --Drape of the Fire Lord
    LBIS:AddItem(spec4, "227869", LBIS.L["Back"], "Alt") --Brilliant Chromatic Cloak
    LBIS:AddItem(spec4, "220611", LBIS.L["Back"], "Alt") --Hukku's Hex Cape
    LBIS:AddItem(spec4, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec4, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec4, "226619", LBIS.L["Chest"], "BIS") --Earthfury Ringmail
    LBIS:AddItem(spec4, "227004", LBIS.L["Chest"], "Alt") --Vest of The Five Thunders
    LBIS:AddItem(spec4, "220660", LBIS.L["Chest"], "Alt") --Shunned Devotee's Chainshirt
    LBIS:AddItem(spec4, "220535", LBIS.L["Chest"], "Alt") --Garments of the Atal'ai Prophet
    LBIS:AddItem(spec4, "223981", LBIS.L["Chest"], "Alt") --Flamestrider Robes
    LBIS:AddItem(spec4, "213315", LBIS.L["Chest"], "Alt") --Electromantic Chainshirt
    LBIS:AddItem(spec4, "226626", LBIS.L["Wrist"], "BIS") --Earthfury Wristbands
    LBIS:AddItem(spec4, "227001", LBIS.L["Wrist"], "BIS") --Bindings of The Five Thunders
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "221025", LBIS.L["Wrist"], "Alt") --Void-Powered Invoker's Vambraces
    LBIS:AddItem(spec4, "220538", LBIS.L["Wrist"], "Alt") --Cursed Slimescale Bracers
    LBIS:AddItem(spec4, "226621", LBIS.L["Hands"], "BIS") --Earthfury Hands
    LBIS:AddItem(spec4, "227006", LBIS.L["Hands"], "BIS") --Gauntlets of The Five Thunders
    LBIS:AddItem(spec4, "211502", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gauntlets
    LBIS:AddItem(spec4, "220548", LBIS.L["Hands"], "Alt") --Atal'ai Hexxer's Gloves
    LBIS:AddItem(spec4, "21318", LBIS.L["Hands"], "Alt") --Earth Warder's Gloves
    LBIS:AddItem(spec4, "220544", LBIS.L["Hands"], "Alt") --Bloodflare Talons
    LBIS:AddItem(spec4, "227008", LBIS.L["Waist"], "BIS") --Cord of The Five Thunders
    LBIS:AddItem(spec4, "226625", LBIS.L["Waist"], "Alt") --Earthfury Cord
    LBIS:AddItem(spec4, "227882", LBIS.L["Waist"], "Alt") --Girdle of Arcane Insight
    LBIS:AddItem(spec4, "223192", LBIS.L["Waist"], "Alt") --Cord of the Untamed
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "227005", LBIS.L["Legs"], "BIS") --Kilt of The Five Thunders
    LBIS:AddItem(spec4, "226623", LBIS.L["Legs"], "Alt") --Earthfury Leggings
    LBIS:AddItem(spec4, "220661", LBIS.L["Legs"], "Alt") --Shunned Devotee's Legguards
    LBIS:AddItem(spec4, "220556", LBIS.L["Legs"], "Alt") --Kilt of the Fallen Atal'ai Prophet
    LBIS:AddItem(spec4, "226620", LBIS.L["Feet"], "BIS") --Earthfury Walkers
    LBIS:AddItem(spec4, "227007", LBIS.L["Feet"], "BIS") --Slippers of The Five Thunders
    LBIS:AddItem(spec4, "220662", LBIS.L["Feet"], "Alt") --Shunned Devotee's Scale Boots
    LBIS:AddItem(spec4, "223543", LBIS.L["Feet"], "Alt") --Vinerot Sandals
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "228536", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec4, "220623", LBIS.L["Neck"], "Alt") --Jin'do's Lost Locket
    LBIS:AddItem(spec4, "213345", LBIS.L["Neck"], "Alt") --Piston Pendant
    LBIS:AddItem(spec4, "228287", LBIS.L["Ring"], "BIS") --Band of Sulfuras
    LBIS:AddItem(spec4, "228243", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec4, "228683", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "227279", LBIS.L["Ring"], "Alt") --Loop of the Magister
    LBIS:AddItem(spec4, "228046", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec4, "221440", LBIS.L["Ring"], "Alt") --Roar of the Dream
    LBIS:AddItem(spec4, "220628", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Harbinger
    LBIS:AddItem(spec4, "223985", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec4, "228255", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "228081", LBIS.L["Trinket"], "BIS") --Germinating Poisonseed
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "227972", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec4, "220634", LBIS.L["Trinket"], "Alt") --Atal'ai Blood Ritual Charm
    LBIS:AddItem(spec4, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec4, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec4, "221309", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec4, "228382", LBIS.L["Main Hand"], "BIS") --Fang of the Mystics
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "220586", LBIS.L["Main Hand"], "Alt") --Hubris, the Bandit Brander
    LBIS:AddItem(spec4, "223964", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Darkness
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "BIS") --Therazane's Touch
    LBIS:AddItem(spec4, "228142", LBIS.L["Off Hand"], "Alt") --Earth and Fire
    LBIS:AddItem(spec4, "228106", LBIS.L["Off Hand"], "Alt") --Shield of Life and Death
    LBIS:AddItem(spec4, "220601", LBIS.L["Off Hand"], "Alt") --Hakkari Witch Doctor's Guard
    LBIS:AddItem(spec4, "213351", LBIS.L["Off Hand"], "Alt") --Irradiated Tower Shield
    LBIS:AddItem(spec4, "228176", LBIS.L["Ranged/Relic"], "BIS") --Totem of Thunder
    LBIS:AddItem(spec4, "220607", LBIS.L["Ranged/Relic"], "BIS") --Totem of Tormented Ancestry
    LBIS:AddItem(spec4, "215436", LBIS.L["Ranged/Relic"], "Alt") --Totem of Invigorating Flame
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
