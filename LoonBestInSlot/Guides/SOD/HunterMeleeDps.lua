local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "7")

    LBIS:AddEnchant(spec7, "468383", LBIS.L["Head"]) --Falcon's Fury
    LBIS:AddEnchant(spec7, "468325", LBIS.L["Head"]) --Falcon's Call
    LBIS:AddEnchant(spec7, "1219823", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219820", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219512", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "1219587", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec7, "1213616", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec7, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec7, "1217203", LBIS.L["Wrist"]) --Enchant Bracer - Agility
    LBIS:AddEnchant(spec7, "25080", LBIS.L["Hands"]) --Enchant Gloves - Superior Agility
    LBIS:AddEnchant(spec7, "468383", LBIS.L["Legs"]) --Falcon's Fury
    LBIS:AddEnchant(spec7, "468325", LBIS.L["Legs"]) --Falcon's Call
    LBIS:AddEnchant(spec7, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec7, "20034", LBIS.L["Main Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec7, "20034", LBIS.L["Off Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec7, "27837", LBIS.L["Two Hand"]) --Enchant 2H Weapon - Agility
    LBIS:AddEnchant(spec7, "20034", LBIS.L["Two Hand"]) --Enchant Weapon - Crusader
    LBIS:AddEnchant(spec7, "1217206", LBIS.L["Ranged/Relic"]) --Obsidian Scope
    LBIS:AddEnchant(spec7, "15402", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec7, "446451", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec7, "13882", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec7, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec7, "20012", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec7, "15402", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec7, "12460", LBIS.L["Ranged/Relic"]) --

    LBIS:AddItem(spec0, "227086", LBIS.L["Head"], "BIS") --Lieutenant Commander's Chain Greathelm
    LBIS:AddItem(spec0, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec0, "228111", LBIS.L["Head"], "Alt") --Mask of the Godslayer
    LBIS:AddItem(spec0, "221782", LBIS.L["Head"], "Alt") --Helm of Exile
    LBIS:AddItem(spec0, "9479", LBIS.L["Head"], "Alt") --Embrace of the Lycan
    LBIS:AddItem(spec0, "227084", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Chain Pauldrons
    LBIS:AddItem(spec0, "227078", LBIS.L["Shoulder"], "BIS") --Champion's Chain Pauldrons
    LBIS:AddItem(spec0, "226891", LBIS.L["Shoulder"], "Alt") --Beastmaster's Pauldrons
    LBIS:AddItem(spec0, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec0, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec0, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec0, "13340", LBIS.L["Back"], "BIS") --Cape of the Black Baron
    LBIS:AddItem(spec0, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec0, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec0, "220615", LBIS.L["Back"], "Alt") --Panther Fur Cloak
    LBIS:AddItem(spec0, "12552", LBIS.L["Back"], "Alt") --Blisterbane Wrap
    LBIS:AddItem(spec0, "226896", LBIS.L["Chest"], "BIS") --Beastmaster's Chain
    LBIS:AddItem(spec0, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec0, "227083", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Armor
    LBIS:AddItem(spec0, "227089", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Armor
    LBIS:AddItem(spec0, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec0, "226889", LBIS.L["Wrist"], "BIS") --Beastmaster's Bracers
    LBIS:AddItem(spec0, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec0, "221026", LBIS.L["Wrist"], "Alt") --Void-Powered Slayer's Vambraces
    LBIS:AddItem(spec0, "18375", LBIS.L["Wrist"], "Alt") --Bracers of the Eclipse
    LBIS:AddItem(spec0, "13120", LBIS.L["Wrist"], "Alt") --Deepfury Bracers
    LBIS:AddItem(spec0, "213278", LBIS.L["Hands"], "BIS") --Bonk-Maestro's Handguards
    LBIS:AddItem(spec0, "21319", LBIS.L["Hands"], "Alt") --Gloves of the Pathfinder
    LBIS:AddItem(spec0, "220545", LBIS.L["Hands"], "Alt") --Foul Smelling Fighter's Gloves
    LBIS:AddItem(spec0, "211423", LBIS.L["Hands"], "Alt") --Void-Touched Leather Gloves
    LBIS:AddItem(spec0, "228595", LBIS.L["Waist"], "BIS") --Marksman's Girdle
    LBIS:AddItem(spec0, "11686", LBIS.L["Waist"], "Alt") --Girdle of Beastial Fury
    LBIS:AddItem(spec0, "17778", LBIS.L["Waist"], "Alt") --Sagebrush Girdle
    LBIS:AddItem(spec0, "226892", LBIS.L["Legs"], "BIS") --Beastmaster's Leggings
    LBIS:AddItem(spec0, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec0, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec0, "220667", LBIS.L["Legs"], "Alt") --Dread Hunter's Chausses
    LBIS:AddItem(spec0, "216676", LBIS.L["Legs"], "Alt") --Nimble Triprunner Dungarees
    LBIS:AddItem(spec0, "220558", LBIS.L["Legs"], "Alt") --Atal'ai Assassin's Leggings
    LBIS:AddItem(spec0, "228091", LBIS.L["Feet"], "BIS") --Thorned Boots
    LBIS:AddItem(spec0, "220668", LBIS.L["Feet"], "Alt") --Dread Hunter's Greaves
    LBIS:AddItem(spec0, "223962", LBIS.L["Feet"], "Alt Melee") --Sandstalker Ankleguards
    LBIS:AddItem(spec0, "19491", LBIS.L["Neck"], "BIS") --Amulet of the Darkmoon
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec0, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec0, "13089", LBIS.L["Neck"], "Alt Melee") --Skibi's Pendant
    LBIS:AddItem(spec0, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec0, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec0, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec0, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec0, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec0, "19991", LBIS.L["Trinket"], "BIS") --Devilsaur Eye
    LBIS:AddItem(spec0, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec0, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec0, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec0, "228094", LBIS.L["Main Hand/Off Hand"], "BIS") --Dreadlord's Blade
    LBIS:AddItem(spec0, "228653", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "220576", LBIS.L["Main Hand"], "Alt Melee") --Axe of the Atal'ai Executioner
    LBIS:AddItem(spec0, "213409", LBIS.L["Main Hand"], "Alt") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec0, "224409", LBIS.L["Off Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec0, "228652", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "220582", LBIS.L["Off Hand"], "Alt") --Dragon's Cry
    LBIS:AddItem(spec0, "19550", LBIS.L["Off Hand"], "Alt") --Legionnaire's Sword
    LBIS:AddItem(spec0, "19554", LBIS.L["Off Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec0, "220566", LBIS.L["Two Hand"], "BIS") --Smolder Claw
    LBIS:AddItem(spec0, "220567", LBIS.L["Two Hand"], "Alt") --Bloodied Headspike
    LBIS:AddItem(spec0, "9480", LBIS.L["Two Hand"], "Alt") --Eyegouger
    LBIS:AddItem(spec0, "221450", LBIS.L["Ranged/Relic"], "BIS") --Gurubashi Pit Fighter's Bow
    LBIS:AddItem(spec0, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker

    LBIS:AddItem(spec5, "232115", LBIS.L["Head"], "BIS") --Dragonstalker's Skullcap
    LBIS:AddItem(spec5, "226536", LBIS.L["Head"], "BIS") --Giantstalker's Guise
    LBIS:AddItem(spec5, "23306", LBIS.L["Head"], "BIS") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec5, "227067", LBIS.L["Head"], "BIS") --Champion's Chain Helm
    LBIS:AddItem(spec5, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec5, "231066", LBIS.L["Shoulder"], "BIS") --Dragonstalker's Pauldrons
    LBIS:AddItem(spec5, "226527", LBIS.L["Shoulder"], "BIS") --Giantstalker's Epaulets
    LBIS:AddItem(spec5, "23307", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec5, "23252", LBIS.L["Shoulder"], "BIS") --Champion's Chain Shoulders
    LBIS:AddItem(spec5, "226891", LBIS.L["Shoulder"], "Alt") --Beastmaster's Pauldrons
    LBIS:AddItem(spec5, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec5, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec5, "228583", LBIS.L["Shoulder"], "Alt") --Truestrike Shoulders
    LBIS:AddItem(spec5, "230842", LBIS.L["Back"], "BIS") --Cloak of Draconic Might
    LBIS:AddItem(spec5, "228290", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec5, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec5, "20073", LBIS.L["Back"], "Alt") --Cloak of the Honor Guard
    LBIS:AddItem(spec5, "20068", LBIS.L["Back"], "Alt") --Deathguard's Cloak
    LBIS:AddItem(spec5, "231071", LBIS.L["Chest"], "BIS") --Dragonstalker's Armor
    LBIS:AddItem(spec5, "232118", LBIS.L["Chest"], "BIS") --Dragonstalker's Armor
    LBIS:AddItem(spec5, "226534", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec5, "226886", LBIS.L["Chest"], "Alt") --Beastmaster's Tunic
    LBIS:AddItem(spec5, "226896", LBIS.L["Chest"], "Alt") --Beastmaster's Chain
    LBIS:AddItem(spec5, "226723", LBIS.L["Chest"], "Alt") --Beaststalker's Tunic
    LBIS:AddItem(spec5, "227089", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Armor
    LBIS:AddItem(spec5, "227083", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Armor
    LBIS:AddItem(spec5, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec5, "231063", LBIS.L["Wrist"], "BIS") --Dragonstalker's Vambraces
    LBIS:AddItem(spec5, "232111", LBIS.L["Wrist"], "BIS") --Dragonstalker's Vambraces
    LBIS:AddItem(spec5, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec5, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec5, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec5, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec5, "232116", LBIS.L["Hands"], "BIS") --Dragonstalker's Grips
    LBIS:AddItem(spec5, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec5, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec5, "226894", LBIS.L["Hands"], "Alt") --Beastmaster's Fists
    LBIS:AddItem(spec5, "231065", LBIS.L["Waist"], "BIS") --Dragonstalker's Girdle
    LBIS:AddItem(spec5, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec5, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec5, "228595", LBIS.L["Waist"], "Alt") --Marksman's Girdle
    LBIS:AddItem(spec5, "231067", LBIS.L["Legs"], "BIS") --Dragonstalker's Pants
    LBIS:AddItem(spec5, "226532", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec5, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec5, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec5, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec5, "231070", LBIS.L["Feet"], "BIS") --Dragonstalker's Sabatons
    LBIS:AddItem(spec5, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec5, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec5, "231803", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec5, "231320", LBIS.L["Neck"], "BIS") --Maelstrom's Wrath
    LBIS:AddItem(spec5, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec5, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec5, "15411", LBIS.L["Neck"], "Alt") --Mark of Fordring
    LBIS:AddItem(spec5, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec5, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec5, "230734", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec5, "228261", LBIS.L["Ring"], "BIS") --Quick Strike Ring
    LBIS:AddItem(spec5, "228286", LBIS.L["Ring"], "BIS") --Band of Accuria
    LBIS:AddItem(spec5, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec5, "227284", LBIS.L["Ring"], "Alt") --Band of the Beast
    LBIS:AddItem(spec5, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec5, "230282", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec5, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec5, "18473", LBIS.L["Trinket"], "BIS") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "221307", LBIS.L["Trinket"], "Alt") --Darkmoon Card: Decay
    LBIS:AddItem(spec5, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec5, "231754", LBIS.L["Main Hand"], "BIS") --Kestrel
    LBIS:AddItem(spec5, "230925", LBIS.L["Main Hand"], "Alt") --Thekal's Grasp
    LBIS:AddItem(spec5, "231755", LBIS.L["Off Hand"], "BIS") --Peregrine
    LBIS:AddItem(spec5, "230934", LBIS.L["Off Hand"], "Alt") --Arlokk's Grasp
    LBIS:AddItem(spec5, "230818", LBIS.L["Two Hand"], "BIS") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec5, "228299", LBIS.L["Two Hand"], "Alt") --Spinal Reaper
    LBIS:AddItem(spec5, "231315", LBIS.L["Two Hand"], "Alt") --Zin'rokh, Destroyer of Worlds
    LBIS:AddItem(spec5, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec5, "22314", LBIS.L["Two Hand"], "Alt") --Huntsman's Harpoon
    LBIS:AddItem(spec5, "230726", LBIS.L["Ranged/Relic"], "BIS") --Dragonbreath Hand Cannon
    LBIS:AddItem(spec5, "221450", LBIS.L["Ranged/Relic"], "BIS") --Gurubashi Pit Fighter's Bow
    LBIS:AddItem(spec5, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec5, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec5, "220573", LBIS.L["Ranged/Relic"], "Alt") --Dreadstalker's Hunting Bow

    LBIS:AddItem(spec6, "233666", LBIS.L["Head"], "BIS") --Striker's Visor
    LBIS:AddItem(spec6, "231068", LBIS.L["Head"], "Alt") --Dragonstalker's Skullcap
    LBIS:AddItem(spec6, "226536", LBIS.L["Head"], "Alt") --Giantstalker's Guise
    LBIS:AddItem(spec6, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec6, "227067", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec6, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec6, "233668", LBIS.L["Shoulder"], "BIS") --Striker's Spaulders
    LBIS:AddItem(spec6, "231066", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Pauldrons
    LBIS:AddItem(spec6, "226527", LBIS.L["Shoulder"], "Alt") --Giantstalker's Epaulets
    LBIS:AddItem(spec6, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec6, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec6, "226891", LBIS.L["Shoulder"], "Alt") --Beastmaster's Pauldrons
    LBIS:AddItem(spec6, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec6, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec6, "234802", LBIS.L["Back"], "BIS") --Cloak of the Fallen God
    LBIS:AddItem(spec6, "233420", LBIS.L["Back"], "BIS") --Cloak of the Unseen Path
    LBIS:AddItem(spec6, "230842", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec6, "228290", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec6, "233958", LBIS.L["Back"], "Alt") --Qiraji Silk Cape
    LBIS:AddItem(spec6, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec6, "232311", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec6, "233664", LBIS.L["Chest"], "BIS") --Striker's Ringmail
    LBIS:AddItem(spec6, "231071", LBIS.L["Chest"], "Alt") --Dragonstalker's Armor
    LBIS:AddItem(spec6, "232118", LBIS.L["Chest"], "Alt") --Dragonstalker's Armor
    LBIS:AddItem(spec6, "226534", LBIS.L["Chest"], "Alt") --Giantstalker's Breastplate
    LBIS:AddItem(spec6, "226896", LBIS.L["Chest"], "Alt") --Beastmaster's Chain
    LBIS:AddItem(spec6, "227089", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Armor
    LBIS:AddItem(spec6, "227083", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Armor
    LBIS:AddItem(spec6, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec6, "231063", LBIS.L["Wrist"], "BIS") --Dragonstalker's Vambraces
    LBIS:AddItem(spec6, "233612", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec6, "226530", LBIS.L["Wrist"], "Alt") --Giantstalker's Bracers
    LBIS:AddItem(spec6, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec6, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec6, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec6, "231069", LBIS.L["Hands"], "BIS") --Dragonstalker's Grips
    LBIS:AddItem(spec6, "232116", LBIS.L["Hands"], "BIS") --Dragonstalker's Grips
    LBIS:AddItem(spec6, "226528", LBIS.L["Hands"], "Alt") --Giantstalker's Gloves
    LBIS:AddItem(spec6, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec6, "226894", LBIS.L["Hands"], "Alt") --Beastmaster's Fists
    LBIS:AddItem(spec6, "231065", LBIS.L["Waist"], "BIS") --Dragonstalker's Girdle
    LBIS:AddItem(spec6, "232112", LBIS.L["Waist"], "BIS") --Dragonstalker's Girdle
    LBIS:AddItem(spec6, "234110", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec6, "226529", LBIS.L["Waist"], "Alt") --Giantstalker's Belt
    LBIS:AddItem(spec6, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec6, "231067", LBIS.L["Legs"], "BIS") --Dragonstalker's Pants
    LBIS:AddItem(spec6, "233667", LBIS.L["Legs"], "Alt") --Striker's Chain Legplates
    LBIS:AddItem(spec6, "226532", LBIS.L["Legs"], "Alt") --Giantstalker's Leggings
    LBIS:AddItem(spec6, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec6, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec6, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec6, "233665", LBIS.L["Feet"], "BIS") --Striker's Treads
    LBIS:AddItem(spec6, "231070", LBIS.L["Feet"], "Alt") --Dragonstalker's Sabatons
    LBIS:AddItem(spec6, "226531", LBIS.L["Feet"], "Alt") --Giantstalker's Boots
    LBIS:AddItem(spec6, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec6, "231803", LBIS.L["Neck"], "BIS") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec6, "231320", LBIS.L["Neck"], "BIS") --Maelstrom's Wrath
    LBIS:AddItem(spec6, "233587", LBIS.L["Neck"], "BIS") --Barbed Choker
    LBIS:AddItem(spec6, "231307", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec6, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec6, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec6, "230734", LBIS.L["Ring"], "BIS") --Circle of Applied Force
    LBIS:AddItem(spec6, "233422", LBIS.L["Ring"], "BIS") --Signet of the Unseen Path
    LBIS:AddItem(spec6, "233600", LBIS.L["Ring"], "BIS") --Ring of the Qiraji Fury
    LBIS:AddItem(spec6, "234202", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec6, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec6, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec6, "227284", LBIS.L["Ring"], "Alt") --Band of the Beast
    LBIS:AddItem(spec6, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec6, "233627", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec6, "231288", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Ravaging
    LBIS:AddItem(spec6, "233990", LBIS.L["Trinket"], "BIS") --Speedstone
    LBIS:AddItem(spec6, "230282", LBIS.L["Trinket"], "BIS") --Drake Fang Talisman
    LBIS:AddItem(spec6, "228722", LBIS.L["Trinket"], "BIS") --Hand of Justice
    LBIS:AddItem(spec6, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec6, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec6, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec6, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "233585", LBIS.L["Main Hand"], "BIS") --Ancient Qiraji Ripper
    LBIS:AddItem(spec6, "231754", LBIS.L["Main Hand"], "Alt") --Kestrel
    LBIS:AddItem(spec6, "230925", LBIS.L["Main Hand"], "Alt") --Thekal's Grasp
    LBIS:AddItem(spec6, "233421", LBIS.L["Off Hand"], "BIS") --Scythe of the Unseen Path
    LBIS:AddItem(spec6, "231755", LBIS.L["Off Hand"], "Alt") --Peregrine
    LBIS:AddItem(spec6, "230934", LBIS.L["Off Hand"], "Alt") --Arlokk's Grasp
    LBIS:AddItem(spec6, "233640", LBIS.L["Two Hand"], "BIS") --Dark Edge of Insanity
    LBIS:AddItem(spec6, "230818", LBIS.L["Two Hand"], "Alt") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec6, "233586", LBIS.L["Two Hand"], "Alt") --Jaw of the Sand Reaver
    LBIS:AddItem(spec6, "228299", LBIS.L["Two Hand"], "Alt") --Spinal Reaper
    LBIS:AddItem(spec6, "231315", LBIS.L["Two Hand"], "Alt") --Zin'rokh, Destroyer of Worlds
    LBIS:AddItem(spec6, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec6, "221450", LBIS.L["Ranged/Relic"], "BIS") --Gurubashi Pit Fighter's Bow
    LBIS:AddItem(spec6, "233605", LBIS.L["Ranged/Relic"], "BIS") --Huhuran's Stinger
    LBIS:AddItem(spec6, "228252", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec6, "231278", LBIS.L["Ranged/Relic"], "Alt") --Hoodoo Hunting Bow
    LBIS:AddItem(spec6, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec6, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec6, "220573", LBIS.L["Ranged/Relic"], "Alt") --Dreadstalker's Hunting Bow

    LBIS:AddItem(spec7, "236054", LBIS.L["Head"], "BIS") --Cryptstalker Visor
    LBIS:AddItem(spec7, "233666", LBIS.L["Head"], "Alt") --Striker's Visor
    LBIS:AddItem(spec7, "231068", LBIS.L["Head"], "Alt") --Dragonstalker's Skullcap
    LBIS:AddItem(spec7, "226536", LBIS.L["Head"], "Alt") --Giantstalker's Guise
    LBIS:AddItem(spec7, "23306", LBIS.L["Head"], "Alt") --Lieutenant Commander's Chain Helm
    LBIS:AddItem(spec7, "227067", LBIS.L["Head"], "Alt") --Champion's Chain Helm
    LBIS:AddItem(spec7, "226887", LBIS.L["Head"], "Alt") --Beastmaster's Cap
    LBIS:AddItem(spec7, "236052", LBIS.L["Shoulder"], "BIS") --Cryptstalker Pauldrons
    LBIS:AddItem(spec7, "233668", LBIS.L["Shoulder"], "Alt") --Striker's Spaulders
    LBIS:AddItem(spec7, "231066", LBIS.L["Shoulder"], "Alt") --Dragonstalker's Pauldrons
    LBIS:AddItem(spec7, "226543", LBIS.L["Shoulder"], "Alt") --Giantstalker's Spauldrons
    LBIS:AddItem(spec7, "23307", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Chain Shoulders
    LBIS:AddItem(spec7, "23252", LBIS.L["Shoulder"], "Alt") --Champion's Chain Shoulders
    LBIS:AddItem(spec7, "226891", LBIS.L["Shoulder"], "Alt") --Beastmaster's Pauldrons
    LBIS:AddItem(spec7, "20059", LBIS.L["Shoulder"], "Alt") --Highlander's Leather Shoulders
    LBIS:AddItem(spec7, "20175", LBIS.L["Shoulder"], "Alt") --Defiler's Lizardhide Shoulders
    LBIS:AddItem(spec7, "236333", LBIS.L["Back"], "BIS") --Shroud of Dominion
    LBIS:AddItem(spec7, "233420", LBIS.L["Back"], "BIS") --Cloak of the Unseen Path
    LBIS:AddItem(spec7, "234802", LBIS.L["Back"], "Alt") --Cloak of the Fallen God
    LBIS:AddItem(spec7, "230842", LBIS.L["Back"], "Alt") --Cloak of Draconic Might
    LBIS:AddItem(spec7, "228290", LBIS.L["Back"], "Alt") --Cloak of the Shrouded Mists
    LBIS:AddItem(spec7, "233958", LBIS.L["Back"], "Alt") --Qiraji Silk Cape
    LBIS:AddItem(spec7, "13340", LBIS.L["Back"], "Alt") --Cape of the Black Baron
    LBIS:AddItem(spec7, "236272", LBIS.L["Back"], "Alt") --Cloak of the Scourge
    LBIS:AddItem(spec7, "232311", LBIS.L["Back"], "Alt") --Zulian Tigerhide Cloak
    LBIS:AddItem(spec7, "236058", LBIS.L["Chest"], "BIS") --Cryptstalker Breastplate
    LBIS:AddItem(spec7, "233664", LBIS.L["Chest"], "Alt") --Striker's Ringmail
    LBIS:AddItem(spec7, "231071", LBIS.L["Chest"], "Alt") --Dragonstalker's Armor
    LBIS:AddItem(spec7, "232118", LBIS.L["Chest"], "Alt") --Dragonstalker's Armor
    LBIS:AddItem(spec7, "236709", LBIS.L["Chest"], "Alt") --Chestguard of Undead Slaying
    LBIS:AddItem(spec7, "226535", LBIS.L["Chest"], "Alt") --Giantstalker's Chainmail
    LBIS:AddItem(spec7, "226896", LBIS.L["Chest"], "Alt") --Beastmaster's Chain
    LBIS:AddItem(spec7, "227089", LBIS.L["Chest"], "Alt") --Knight-Captain's Chain Armor
    LBIS:AddItem(spec7, "227083", LBIS.L["Chest"], "Alt") --Legionnaire's Chain Armor
    LBIS:AddItem(spec7, "11726", LBIS.L["Chest"], "Alt") --Savage Gladiator Chain
    LBIS:AddItem(spec7, "231063", LBIS.L["Wrist"], "BIS") --Dragonstalker's Vambraces
    LBIS:AddItem(spec7, "236050", LBIS.L["Wrist"], "BIS") --Cryptstalker Vambraces
    LBIS:AddItem(spec7, "233612", LBIS.L["Wrist"], "Alt") --Qiraji Execution Bracers
    LBIS:AddItem(spec7, "236710", LBIS.L["Wrist"], "Alt") --Wristguards of Undead Slaying
    LBIS:AddItem(spec7, "226541", LBIS.L["Wrist"], "Alt") --Giantstalker's Wristguards
    LBIS:AddItem(spec7, "228284", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec7, "19587", LBIS.L["Wrist"], "Alt") --Forest Stalker's Bracers
    LBIS:AddItem(spec7, "226889", LBIS.L["Wrist"], "Alt") --Beastmaster's Bracers
    LBIS:AddItem(spec7, "236055", LBIS.L["Hands"], "BIS") --Cryptstalker Gauntlets
    LBIS:AddItem(spec7, "235876", LBIS.L["Hands"], "BIS") --Sinner's Handguards
    LBIS:AddItem(spec7, "231069", LBIS.L["Hands"], "Alt") --Dragonstalker's Grips
    LBIS:AddItem(spec7, "232116", LBIS.L["Hands"], "Alt") --Dragonstalker's Grips
    LBIS:AddItem(spec7, "236715", LBIS.L["Hands"], "Alt") --Handguards of Undead Slaying
    LBIS:AddItem(spec7, "226540", LBIS.L["Hands"], "Alt") --Giantstalker's Handguards
    LBIS:AddItem(spec7, "228351", LBIS.L["Hands"], "Alt") --Doomhide Gauntlets
    LBIS:AddItem(spec7, "226894", LBIS.L["Hands"], "Alt") --Beastmaster's Fists
    LBIS:AddItem(spec7, "236051", LBIS.L["Waist"], "BIS") --Cryptstalker Belt
    LBIS:AddItem(spec7, "231065", LBIS.L["Waist"], "Alt") --Dragonstalker's Girdle
    LBIS:AddItem(spec7, "232112", LBIS.L["Waist"], "Alt") --Dragonstalker's Girdle
    LBIS:AddItem(spec7, "234110", LBIS.L["Waist"], "Alt") --Ossirian's Binding
    LBIS:AddItem(spec7, "226542", LBIS.L["Waist"], "Alt") --Giantstalker's Girdle
    LBIS:AddItem(spec7, "19163", LBIS.L["Waist"], "Alt") --Molten Belt
    LBIS:AddItem(spec7, "236053", LBIS.L["Legs"], "BIS") --Cryptstalker Leggings
    LBIS:AddItem(spec7, "233667", LBIS.L["Legs"], "BIS") --Striker's Chain Legplates
    LBIS:AddItem(spec7, "231067", LBIS.L["Legs"], "Alt") --Dragonstalker's Pants
    LBIS:AddItem(spec7, "226537", LBIS.L["Legs"], "Alt") --Giantstalker's Chain Leggings
    LBIS:AddItem(spec7, "226900", LBIS.L["Legs"], "Alt") --Beastmaster's Legs
    LBIS:AddItem(spec7, "227085", LBIS.L["Legs"], "Alt") --Knight-Captain's Chain Legplates
    LBIS:AddItem(spec7, "227079", LBIS.L["Legs"], "Alt") --Legionnaire's Chain Legplates
    LBIS:AddItem(spec7, "233665", LBIS.L["Feet"], "BIS") --Striker's Treads
    LBIS:AddItem(spec7, "231070", LBIS.L["Feet"], "BIS") --Dragonstalker's Sabatons
    LBIS:AddItem(spec7, "236057", LBIS.L["Feet"], "Alt") --Cryptstalker Greaves
    LBIS:AddItem(spec7, "226538", LBIS.L["Feet"], "Alt") --Giantstalker's Sabatons
    LBIS:AddItem(spec7, "226881", LBIS.L["Feet"], "Alt") --Beastmaster's Treads
    LBIS:AddItem(spec7, "235886", LBIS.L["Neck"], "BIS") --Kaigy's Clasp
    LBIS:AddItem(spec7, "236342", LBIS.L["Neck"], "BIS") --Stormrage's Talisman of Seething
    LBIS:AddItem(spec7, "236316", LBIS.L["Neck"], "Alt") --Sadist's Collar
    LBIS:AddItem(spec7, "231803", LBIS.L["Neck"], "Alt") --Prestor's Talisman of Connivery
    LBIS:AddItem(spec7, "231320", LBIS.L["Neck"], "Alt") --Maelstrom's Wrath
    LBIS:AddItem(spec7, "233587", LBIS.L["Neck"], "Alt") --Barbed Choker
    LBIS:AddItem(spec7, "231307", LBIS.L["Neck"], "Alt") --The Eye of Hakkar
    LBIS:AddItem(spec7, "228685", LBIS.L["Neck"], "Alt") --Onyxia Tooth Pendant
    LBIS:AddItem(spec7, "19491", LBIS.L["Neck"], "Alt") --Amulet of the Darkmoon
    LBIS:AddItem(spec7, "236056", LBIS.L["Ring"], "BIS") --Band of the Cryptstalker
    LBIS:AddItem(spec7, "236286", LBIS.L["Ring"], "BIS") --Band of Unnatural Forces
    LBIS:AddItem(spec7, "236291", LBIS.L["Ring"], "BIS") --Band of Reanimation
    LBIS:AddItem(spec7, "233422", LBIS.L["Ring"], "BIS") --Signet of the Unseen Path
    LBIS:AddItem(spec7, "230734", LBIS.L["Ring"], "Alt") --Circle of Applied Force
    LBIS:AddItem(spec7, "233600", LBIS.L["Ring"], "Alt") --Ring of the Qiraji Fury
    LBIS:AddItem(spec7, "234202", LBIS.L["Ring"], "Alt") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec7, "228261", LBIS.L["Ring"], "Alt") --Quick Strike Ring
    LBIS:AddItem(spec7, "228286", LBIS.L["Ring"], "Alt") --Band of Accuria
    LBIS:AddItem(spec7, "235885", LBIS.L["Ring"], "Alt") --Ghastly Ring
    LBIS:AddItem(spec7, "227455", LBIS.L["Ring"], "Alt") --Ocean's Breeze
    LBIS:AddItem(spec7, "227284", LBIS.L["Ring"], "Alt") --Band of the Beast
    LBIS:AddItem(spec7, "228469", LBIS.L["Ring"], "Alt") --Tarnished Elven Ring
    LBIS:AddItem(spec7, "236334", LBIS.L["Trinket"], "BIS") --Slayer's Crest
    LBIS:AddItem(spec7, "231288", LBIS.L["Trinket"], "BIS") --Renataki's Charm of Ravaging
    LBIS:AddItem(spec7, "236352", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec7, "233627", LBIS.L["Trinket"], "BIS") --Jom Gabbar
    LBIS:AddItem(spec7, "233990", LBIS.L["Trinket"], "Alt") --Speedstone
    LBIS:AddItem(spec7, "230282", LBIS.L["Trinket"], "Alt") --Drake Fang Talisman
    LBIS:AddItem(spec7, "228722", LBIS.L["Trinket"], "Alt") --Hand of Justice
    LBIS:AddItem(spec7, "234462", LBIS.L["Trinket"], "Alt") --Earthstrike
    LBIS:AddItem(spec7, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec7, "228078", LBIS.L["Trinket"], "Alt") --Accursed Chalice
    LBIS:AddItem(spec7, "18473", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec7, "236339", LBIS.L["Main Hand"], "BIS") --Gressil, Dawn of Ruin
    LBIS:AddItem(spec7, "233585", LBIS.L["Main Hand"], "Alt") --Ancient Qiraji Ripper
    LBIS:AddItem(spec7, "231754", LBIS.L["Main Hand"], "Alt") --Kestrel
    LBIS:AddItem(spec7, "230925", LBIS.L["Main Hand"], "Alt") --Thekal's Grasp
    LBIS:AddItem(spec7, "236341", LBIS.L["Off Hand"], "BIS") --The Hungering Cold
    LBIS:AddItem(spec7, "231755", LBIS.L["Off Hand"], "BIS") --Peregrine
    LBIS:AddItem(spec7, "233421", LBIS.L["Off Hand"], "BIS") --Scythe of the Unseen Path
    LBIS:AddItem(spec7, "230934", LBIS.L["Off Hand"], "Alt") --Arlokk's Grasp
    LBIS:AddItem(spec7, "237512", LBIS.L["Two Hand"], "BIS") --Blade of Inquisition
    LBIS:AddItem(spec7, "233640", LBIS.L["Two Hand"], "Alt") --Dark Edge of Insanity
    LBIS:AddItem(spec7, "230818", LBIS.L["Two Hand"], "Alt") --Ashkandi, Greatsword of the Brotherhood
    LBIS:AddItem(spec7, "233586", LBIS.L["Two Hand"], "Alt") --Jaw of the Sand Reaver
    LBIS:AddItem(spec7, "228299", LBIS.L["Two Hand"], "Alt") --Spinal Reaper
    LBIS:AddItem(spec7, "231315", LBIS.L["Two Hand"], "Alt") --Zin'rokh, Destroyer of Worlds
    LBIS:AddItem(spec7, "228332", LBIS.L["Two Hand"], "Alt") --Lok'delar, Stave of the Ancient Keepers
    LBIS:AddItem(spec7, "221450", LBIS.L["Ranged/Relic"], "BIS") --Gurubashi Pit Fighter's Bow
    LBIS:AddItem(spec7, "236322", LBIS.L["Ranged/Relic"], "BIS") --Soulstring
    LBIS:AddItem(spec7, "235892", LBIS.L["Ranged/Relic"], "Alt") --Darkrider's Spine
    LBIS:AddItem(spec7, "233605", LBIS.L["Ranged/Relic"], "Alt") --Huhuran's Stinger
    LBIS:AddItem(spec7, "228252", LBIS.L["Ranged/Relic"], "Alt") --Striker's Mark
    LBIS:AddItem(spec7, "236344", LBIS.L["Ranged/Relic"], "Alt") --Nerubian Slavemaker
    LBIS:AddItem(spec7, "231278", LBIS.L["Ranged/Relic"], "Alt") --Hoodoo Hunting Bow
    LBIS:AddItem(spec7, "228334", LBIS.L["Ranged/Relic"], "Alt") --Rhok'delar, Longbow of the Ancient Keepers
    LBIS:AddItem(spec7, "19107", LBIS.L["Ranged/Relic"], "Alt") --Bloodseeker
    LBIS:AddItem(spec7, "220573", LBIS.L["Ranged/Relic"], "Alt") --Dreadstalker's Hunting Bow
end
if LBIS.IsSOD then
    LoadData();
end
