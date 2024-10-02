local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Hunter"], LBIS.L["MeleeDps"], "6")

    LBIS:AddEnchant(spec5, "468383", LBIS.L["Head"]) --Falcon's Fury
    LBIS:AddEnchant(spec5, "24422", LBIS.L["Shoulder"]) --Zandalar Signet of Might
    LBIS:AddEnchant(spec5, "13882", LBIS.L["Back"]) --Enchant Cloak - Lesser Agility
    LBIS:AddEnchant(spec5, "20025", LBIS.L["Chest"]) --Enchant Chest - Greater Stats
    LBIS:AddEnchant(spec5, "20010", LBIS.L["Wrist"]) --Enchant Bracer - Superior Strength
    LBIS:AddEnchant(spec5, "20012", LBIS.L["Hands"]) --Enchant Gloves - Greater Agility
    LBIS:AddEnchant(spec5, "468383", LBIS.L["Legs"]) --Falcon's Fury
    LBIS:AddEnchant(spec5, "20023", LBIS.L["Feet"]) --Enchant Boots - Greater Agility
    LBIS:AddEnchant(spec5, "23800", LBIS.L["Main Hand"]) --Enchant Weapon - Agility
    LBIS:AddEnchant(spec5, "23800", LBIS.L["Off Hand"]) --Enchant Weapon - Agility
    LBIS:AddEnchant(spec5, "27837", LBIS.L["Two Hand"]) --Enchant 2H Weapon - Agility

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
    LBIS:AddItem(spec0, "15411", LBIS.L["Neck"], "BIS") --Mark of Fordring
    LBIS:AddItem(spec0, "213344", LBIS.L["Neck"], "Alt") --Gnomeregan Peace Officer's Torque
    LBIS:AddItem(spec0, "13089", LBIS.L["Neck"], "Alt Melee") --Skibi's Pendant
    LBIS:AddItem(spec0, "19534", LBIS.L["Neck"], "Alt") --Scout's Medallion
    LBIS:AddItem(spec0, "19538", LBIS.L["Neck"], "Alt") --Sentinel's Medallion
    LBIS:AddItem(spec0, "228080", LBIS.L["Ring"], "BIS") --Resin Loop
    LBIS:AddItem(spec0, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec0, "17713", LBIS.L["Ring"], "Alt") --Blackstone Ring
    LBIS:AddItem(spec0, "220626", LBIS.L["Ring"], "Alt") --Drakeclaw Band of the Berserker
    LBIS:AddItem(spec0, "213284", LBIS.L["Ring"], "Alt") --Hypercharged Gear of Devastation
    LBIS:AddItem(spec0, "19511", LBIS.L["Ring"], "Alt") --Legionnaire's Band
    LBIS:AddItem(spec0, "19516", LBIS.L["Ring"], "Alt") --Protector's Band
    LBIS:AddItem(spec0, "221307", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Decay
    LBIS:AddItem(spec0, "221309", LBIS.L["Trinket"], "BIS") --Darkmoon Card: Sandstorm
    LBIS:AddItem(spec0, "19991", LBIS.L["Trinket"], "Alt") --Devilsaur Eye
    LBIS:AddItem(spec0, "223195", LBIS.L["Trinket"], "Alt") --Breadth of the Beast
    LBIS:AddItem(spec0, "19120", LBIS.L["Trinket"], "Alt") --Rune of the Guard Captain
    LBIS:AddItem(spec0, "211449", LBIS.L["Trinket"], "Alt") --Avenger's Void Pearl
    LBIS:AddItem(spec0, "213348", LBIS.L["Trinket"], "Alt") --Gyromatic Experiment 420b
    LBIS:AddItem(spec0, "220588", LBIS.L["Main Hand"], "BIS") --Cobra Fang Claw
    LBIS:AddItem(spec0, "228653", LBIS.L["Main Hand"], "Alt") --Dal'Rend's Sacred Charge
    LBIS:AddItem(spec0, "220576", LBIS.L["Main Hand"], "Alt Melee") --Axe of the Atal'ai Executioner
    LBIS:AddItem(spec0, "213409", LBIS.L["Main Hand"], "Alt") --Mekkatorque's Arcano-Shredder
    LBIS:AddItem(spec0, "224409", LBIS.L["Off Hand"], "BIS") --Serpent's Striker
    LBIS:AddItem(spec0, "228652", LBIS.L["Off Hand"], "Alt") --Dal'Rend's Tribal Guardian
    LBIS:AddItem(spec0, "220582", LBIS.L["Off Hand"], "Alt") --Dragon's Cry
    LBIS:AddItem(spec0, "19550", LBIS.L["Off Hand"], "Alt") --Legionnaire's Sword
    LBIS:AddItem(spec0, "19554", LBIS.L["Off Hand"], "Alt") --Protector's Sword
    LBIS:AddItem(spec0, "9480", LBIS.L["Two Hand"], "BIS") --Eyegouger
    LBIS:AddItem(spec0, "220566", LBIS.L["Two Hand"], "Alt") --Smolder Claw
    LBIS:AddItem(spec0, "220567", LBIS.L["Two Hand"], "Alt") --Bloodied Headspike
    LBIS:AddItem(spec0, "19107", LBIS.L["Ranged/Relic"], "BIS") --Bloodseeker
    LBIS:AddItem(spec0, "221450", LBIS.L["Ranged/Relic"], "Alt") --Gurubashi Pit Fighter's Bow

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
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() == Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
