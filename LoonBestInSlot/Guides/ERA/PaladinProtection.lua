local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "8")

    LBIS:AddEnchant(spec6, "24160", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "24421", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "25086", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20010", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25072", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec6, "13689", LBIS.L["Off Hand"]) --

    LBIS:AddItem(spec0, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec0, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec0, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec0, "18313", LBIS.L["Head"], "Alt") --Helm of Awareness
    LBIS:AddItem(spec0, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec0, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec0, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec0, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec0, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec0, "16342", LBIS.L["Back"], "Alt") --Sergeant's Cape
    LBIS:AddItem(spec0, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec0, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec0, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec0, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec0, "18503", LBIS.L["Chest"], "Alt") --Kromcrush's Chestplate
    LBIS:AddItem(spec0, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec0, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec0, "16722", LBIS.L["Wrist"], "Alt") --Lightforge Bracers
    LBIS:AddItem(spec0, "18754", LBIS.L["Wrist"], "Alt") --Fel Hardened Bracers
    LBIS:AddItem(spec0, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec0, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec0, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec0, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec0, "18383", LBIS.L["Hands"], "Alt") --Force Imbued Gauntlets
    LBIS:AddItem(spec0, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec0, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec0, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec0, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec0, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec0, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec0, "11910", LBIS.L["Legs"], "Alt") --Bejeweled Legguards
    LBIS:AddItem(spec0, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec0, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec0, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec0, "13381", LBIS.L["Feet"], "Alt") --Master Cannoneer Boots
    LBIS:AddItem(spec0, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec0, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec0, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec0, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec0, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec0, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec0, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec0, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec0, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec0, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec0, "17904", LBIS.L["Trinket"], "Alt") --Stormpike Insignia Rank 6
    LBIS:AddItem(spec0, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec0, "18370", LBIS.L["Trinket"], "Alt") --Vigilance Charm
    LBIS:AddItem(spec0, "18371", LBIS.L["Trinket"], "Alt") --Mindtap Talisman
    LBIS:AddItem(spec0, "871", LBIS.L["Main Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec0, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec0, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec0, "18498", LBIS.L["Main Hand"], "Alt") --Hedgecutter
    LBIS:AddItem(spec0, "15806", LBIS.L["Main Hand"], "Alt") --Mirah's Song
    LBIS:AddItem(spec0, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec0, "18499", LBIS.L["Off Hand"], "Alt") --Barrier Shield
    LBIS:AddItem(spec0, "13243", LBIS.L["Off Hand"], "Alt") --Argent Defender
    LBIS:AddItem(spec0, "2040", LBIS.L["Off Hand"], "Alt") --Troll Protector

    LBIS:AddItem(spec1, "16955", LBIS.L["Head"], "BIS") --Judgement Crown
    LBIS:AddItem(spec1, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec1, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec1, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec1, "14552", LBIS.L["Shoulder"], "BIS") --Stockade Pauldrons
    LBIS:AddItem(spec1, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec1, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec1, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec1, "11930", LBIS.L["Back"], "BIS") --The Emperor's New Cape
    LBIS:AddItem(spec1, "14624", LBIS.L["Chest"], "BIS") --Deathbone Chestplate
    LBIS:AddItem(spec1, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec1, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec1, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec1, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec1, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec1, "14622", LBIS.L["Hands"], "BIS") --Deathbone Gauntlets
    LBIS:AddItem(spec1, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec1, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec1, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec1, "14620", LBIS.L["Waist"], "BIS") --Deathbone Girdle
    LBIS:AddItem(spec1, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec1, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec1, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec1, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec1, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec1, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec1, "11910", LBIS.L["Legs"], "Alt") --Bejeweled Legguards
    LBIS:AddItem(spec1, "18806", LBIS.L["Feet"], "BIS") --Core Forged Greaves
    LBIS:AddItem(spec1, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec1, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec1, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec1, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec1, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec1, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec1, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec1, "11669", LBIS.L["Ring"], "BIS") --Naglering
    LBIS:AddItem(spec1, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec1, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec1, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec1, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec1, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec1, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec1, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec1, "871", LBIS.L["Main Hand"], "Alt") --Flurry Axe
    LBIS:AddItem(spec1, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec1, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec1, "17066", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec1, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec1, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec1, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender

    LBIS:AddItem(spec2, "16955", LBIS.L["Head"], "BIS") --Judgement Crown
    LBIS:AddItem(spec2, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec2, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec2, "16727", LBIS.L["Head"], "Alt") --Lightforge Helm
    LBIS:AddItem(spec2, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec2, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec2, "16436", LBIS.L["Shoulder"], "BIS") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec2, "14552", LBIS.L["Shoulder"], "BIS") --Stockade Pauldrons
    LBIS:AddItem(spec2, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec2, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec2, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec2, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec2, "18495", LBIS.L["Back"], "BIS") --Redoubt Cloak
    LBIS:AddItem(spec2, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec2, "23272", LBIS.L["Chest"], "BIS") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec2, "16726", LBIS.L["Chest"], "BIS") --Lightforge Breastplate
    LBIS:AddItem(spec2, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec2, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec2, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec2, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec2, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec2, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec2, "23274", LBIS.L["Hands"], "BIS") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec2, "14525", LBIS.L["Hands"], "BIS") --Boneclenched Gauntlets
    LBIS:AddItem(spec2, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec2, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec2, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec2, "18547", LBIS.L["Waist"], "BIS") --Unmelting Ice Girdle
    LBIS:AddItem(spec2, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec2, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec2, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec2, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec2, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec2, "23273", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec2, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec2, "16728", LBIS.L["Legs"], "Alt") --Lightforge Legplates
    LBIS:AddItem(spec2, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec2, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec2, "18806", LBIS.L["Feet"], "BIS") --Core Forged Greaves
    LBIS:AddItem(spec2, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec2, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec2, "16725", LBIS.L["Feet"], "Alt") --Lightforge Boots
    LBIS:AddItem(spec2, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec2, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec2, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec2, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec2, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec2, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec2, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec2, "18879", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec2, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec2, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec2, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec2, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec2, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec2, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec2, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec2, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec2, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec2, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec2, "18348", LBIS.L["Main Hand"], "BIS") --Quel'Serrar
    LBIS:AddItem(spec2, "871", LBIS.L["Main Hand"], "BIS") --Flurry Axe
    LBIS:AddItem(spec2, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec2, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec2, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec2, "17066", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec2, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec2, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec2, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender

    LBIS:AddItem(spec3, "16955", LBIS.L["Head"], "BIS") --Judgement Crown
    LBIS:AddItem(spec3, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec3, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec3, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec3, "16727", LBIS.L["Head"], "Alt") --Lightforge Helm
    LBIS:AddItem(spec3, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec3, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec3, "16953", LBIS.L["Shoulder"], "BIS") --Judgement Spaulders
    LBIS:AddItem(spec3, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec3, "16436", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec3, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec3, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec3, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec3, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec3, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec3, "18495", LBIS.L["Back"], "BIS") --Redoubt Cloak
    LBIS:AddItem(spec3, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec3, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec3, "16958", LBIS.L["Chest"], "BIS") --Judgement Breastplate
    LBIS:AddItem(spec3, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec3, "16726", LBIS.L["Chest"], "Alt") --Lightforge Breastplate
    LBIS:AddItem(spec3, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec3, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec3, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec3, "16951", LBIS.L["Wrist"], "BIS") --Judgement Bindings
    LBIS:AddItem(spec3, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec3, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec3, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec3, "16471", LBIS.L["Hands"], "BIS") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec3, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec3, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec3, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec3, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec3, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec3, "16952", LBIS.L["Waist"], "BIS") --Judgement Belt
    LBIS:AddItem(spec3, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec3, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec3, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec3, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec3, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec3, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec3, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec3, "23273", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec3, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec3, "16728", LBIS.L["Legs"], "Alt") --Lightforge Legplates
    LBIS:AddItem(spec3, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec3, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec3, "18806", LBIS.L["Feet"], "BIS") --Core Forged Greaves
    LBIS:AddItem(spec3, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec3, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec3, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec3, "16725", LBIS.L["Feet"], "Alt") --Lightforge Boots
    LBIS:AddItem(spec3, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec3, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec3, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec3, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec3, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec3, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec3, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec3, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec3, "18879", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec3, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec3, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec3, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec3, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec3, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec3, "19431", LBIS.L["Trinket"], "BIS") --Styleen's Impeding Scarab
    LBIS:AddItem(spec3, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec3, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec3, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec3, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec3, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec3, "23456", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec3, "18348", LBIS.L["Main Hand"], "BIS") --Quel'Serrar
    LBIS:AddItem(spec3, "871", LBIS.L["Main Hand"], "BIS") --Flurry Axe
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec3, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec3, "19349", LBIS.L["Off Hand"], "BIS") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec3, "17066", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec3, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec3, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec3, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender

    LBIS:AddItem(spec4, "16955", LBIS.L["Head"], "BIS") --Judgement Crown
    LBIS:AddItem(spec4, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec4, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec4, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec4, "16727", LBIS.L["Head"], "Alt") --Lightforge Helm
    LBIS:AddItem(spec4, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec4, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec4, "16953", LBIS.L["Shoulder"], "BIS") --Judgement Spaulders
    LBIS:AddItem(spec4, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec4, "16436", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec4, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec4, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec4, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec4, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec4, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec4, "19888", LBIS.L["Back"], "BIS") --Overlord's Embrace
    LBIS:AddItem(spec4, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec4, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec4, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec4, "16958", LBIS.L["Chest"], "BIS") --Judgement Breastplate
    LBIS:AddItem(spec4, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec4, "16726", LBIS.L["Chest"], "Alt") --Lightforge Breastplate
    LBIS:AddItem(spec4, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec4, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec4, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec4, "16951", LBIS.L["Wrist"], "BIS") --Judgement Bindings
    LBIS:AddItem(spec4, "18812", LBIS.L["Wrist"], "Alt") --Wristguards of True Flight
    LBIS:AddItem(spec4, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec4, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec4, "16471", LBIS.L["Hands"], "BIS") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec4, "19894", LBIS.L["Hands"], "BIS") --Bloodsoaked Gauntlets
    LBIS:AddItem(spec4, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec4, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec4, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec4, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec4, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec4, "16952", LBIS.L["Waist"], "BIS") --Judgement Belt
    LBIS:AddItem(spec4, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec4, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec4, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec4, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec4, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec4, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec4, "231299", LBIS.L["Legs"], "BIS") --Bloodsoaked Legplates
    LBIS:AddItem(spec4, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec4, "23273", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec4, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec4, "16728", LBIS.L["Legs"], "Alt") --Lightforge Legplates
    LBIS:AddItem(spec4, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec4, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec4, "18806", LBIS.L["Feet"], "BIS") --Core Forged Greaves
    LBIS:AddItem(spec4, "19913", LBIS.L["Feet"], "BIS") --Bloodsoaked Greaves
    LBIS:AddItem(spec4, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec4, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec4, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec4, "16725", LBIS.L["Feet"], "Alt") --Lightforge Boots
    LBIS:AddItem(spec4, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec4, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec4, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec4, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec4, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec4, "19871", LBIS.L["Neck"], "Alt") --Talisman of Protection
    LBIS:AddItem(spec4, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec4, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec4, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec4, "18879", LBIS.L["Ring"], "BIS") --Heavy Dark Iron Ring
    LBIS:AddItem(spec4, "19873", LBIS.L["Ring"], "BIS") --Overlord's Crimson Band
    LBIS:AddItem(spec4, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec4, "19912", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec4, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec4, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec4, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec4, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec4, "19431", LBIS.L["Trinket"], "BIS") --Styleen's Impeding Scarab
    LBIS:AddItem(spec4, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec4, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec4, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec4, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec4, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec4, "23456", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec4, "18348", LBIS.L["Main Hand"], "BIS") --Quel'Serrar
    LBIS:AddItem(spec4, "871", LBIS.L["Main Hand"], "BIS") --Flurry Axe
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "19867", LBIS.L["Main Hand"], "Alt") --Bloodlord's Defender
    LBIS:AddItem(spec4, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec4, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec4, "19349", LBIS.L["Off Hand"], "BIS") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec4, "17066", LBIS.L["Off Hand"], "BIS") --Drillborer Disk
    LBIS:AddItem(spec4, "19862", LBIS.L["Off Hand"], "Alt") --Aegis of the Blood God
    LBIS:AddItem(spec4, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec4, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec4, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender

    LBIS:AddItem(spec5, "21387", LBIS.L["Head"], "BIS") --Avenger's Crown
    LBIS:AddItem(spec5, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec5, "16955", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec5, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec5, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec5, "16727", LBIS.L["Head"], "Alt") --Lightforge Helm
    LBIS:AddItem(spec5, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec5, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec5, "21391", LBIS.L["Shoulder"], "BIS") --Avenger's Pauldrons
    LBIS:AddItem(spec5, "16953", LBIS.L["Shoulder"], "BIS") --Judgement Spaulders
    LBIS:AddItem(spec5, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec5, "19878", LBIS.L["Shoulder"], "Alt") --Bloodsoaked Pauldrons
    LBIS:AddItem(spec5, "16436", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec5, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec5, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec5, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec5, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec5, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec5, "21621", LBIS.L["Back"], "BIS") --Cloak of the Golden Hive
    LBIS:AddItem(spec5, "21456", LBIS.L["Back"], "Alt") --Sandstorm Cloak
    LBIS:AddItem(spec5, "21397", LBIS.L["Back"], "Alt") --Cape of Eternal Justice
    LBIS:AddItem(spec5, "19888", LBIS.L["Back"], "Alt") --Overlord's Embrace
    LBIS:AddItem(spec5, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec5, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec5, "21389", LBIS.L["Chest"], "BIS") --Avenger's Breastplate
    LBIS:AddItem(spec5, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec5, "16958", LBIS.L["Chest"], "Alt") --Judgement Breastplate
    LBIS:AddItem(spec5, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec5, "16726", LBIS.L["Chest"], "Alt") --Lightforge Breastplate
    LBIS:AddItem(spec5, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec5, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec5, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec5, "21652", LBIS.L["Chest"], "Alt") --Silithid Carapace Chestguard
    LBIS:AddItem(spec5, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec5, "16951", LBIS.L["Wrist"], "Alt") --Judgement Bindings
    LBIS:AddItem(spec5, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec5, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec5, "21674", LBIS.L["Hands"], "BIS") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec5, "21479", LBIS.L["Hands"], "BIS") --Gauntlets of the Immovable
    LBIS:AddItem(spec5, "16471", LBIS.L["Hands"], "Alt") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec5, "19894", LBIS.L["Hands"], "Alt") --Bloodsoaked Gauntlets
    LBIS:AddItem(spec5, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec5, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec5, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec5, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec5, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec5, "21691", LBIS.L["Hands"], "Alt") --Ooze-ridden Gauntlets
    LBIS:AddItem(spec5, "21598", LBIS.L["Waist"], "BIS") --Royal Qiraji Belt
    LBIS:AddItem(spec5, "16952", LBIS.L["Waist"], "Alt") --Judgement Belt
    LBIS:AddItem(spec5, "21503", LBIS.L["Waist"], "Alt") --Belt of the Sand Reaver
    LBIS:AddItem(spec5, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec5, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec5, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec5, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec5, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec5, "21390", LBIS.L["Legs"], "BIS") --Avenger's Legguards
    LBIS:AddItem(spec5, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec5, "231299", LBIS.L["Legs"], "Alt") --Bloodsoaked Legplates
    LBIS:AddItem(spec5, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec5, "23273", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec5, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec5, "16728", LBIS.L["Legs"], "Alt") --Lightforge Legplates
    LBIS:AddItem(spec5, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec5, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec5, "21388", LBIS.L["Feet"], "BIS") --Avenger's Greaves
    LBIS:AddItem(spec5, "19913", LBIS.L["Feet"], "BIS") --Bloodsoaked Greaves
    LBIS:AddItem(spec5, "21706", LBIS.L["Feet"], "Alt") --Boots of the Unwavering Will
    LBIS:AddItem(spec5, "18806", LBIS.L["Feet"], "Alt") --Core Forged Greaves
    LBIS:AddItem(spec5, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec5, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec5, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec5, "16725", LBIS.L["Feet"], "Alt") --Lightforge Boots
    LBIS:AddItem(spec5, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec5, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec5, "22732", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec5, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec5, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec5, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec5, "19871", LBIS.L["Neck"], "Alt") --Talisman of Protection
    LBIS:AddItem(spec5, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec5, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec5, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec5, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec5, "21695", LBIS.L["Ring"], "BIS") --Angelista's Touch
    LBIS:AddItem(spec5, "21601", LBIS.L["Ring"], "BIS") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec5, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec5, "21396", LBIS.L["Ring"], "Alt") --Ring of Eternal Justice
    LBIS:AddItem(spec5, "18879", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec5, "19873", LBIS.L["Ring"], "Alt") --Overlord's Crimson Band
    LBIS:AddItem(spec5, "19912", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec5, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec5, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec5, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec5, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec5, "19431", LBIS.L["Trinket"], "BIS") --Styleen's Impeding Scarab
    LBIS:AddItem(spec5, "21180", LBIS.L["Trinket"], "BIS Thrt") --Earthstrike
    LBIS:AddItem(spec5, "11815", LBIS.L["Trinket"], "BIS Thrt") --Hand of Justice
    LBIS:AddItem(spec5, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec5, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec5, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec5, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec5, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec5, "19019", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec5, "871", LBIS.L["Main Hand"], "BIS") --Flurry Axe
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "23456", LBIS.L["Main Hand"], "BIS") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec5, "18348", LBIS.L["Main Hand"], "BIS") --Quel'Serrar
    LBIS:AddItem(spec5, "21395", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Justice
    LBIS:AddItem(spec5, "19867", LBIS.L["Main Hand"], "Alt") --Bloodlord's Defender
    LBIS:AddItem(spec5, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec5, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec5, "21269", LBIS.L["Off Hand"], "BIS") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec5, "19349", LBIS.L["Off Hand"], "Alt") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec5, "21485", LBIS.L["Off Hand"], "Alt") --Buru's Skull Fragment
    LBIS:AddItem(spec5, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec5, "19862", LBIS.L["Off Hand"], "Alt") --Aegis of the Blood God
    LBIS:AddItem(spec5, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec5, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec5, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender

    LBIS:AddItem(spec6, "21387", LBIS.L["Head"], "BIS") --Avenger's Crown
    LBIS:AddItem(spec6, "16474", LBIS.L["Head"], "Alt") --Field Marshal's Lamellar Faceguard
    LBIS:AddItem(spec6, "16955", LBIS.L["Head"], "Alt") --Judgement Crown
    LBIS:AddItem(spec6, "23019", LBIS.L["Head"], "Alt") --Icebane Helmet
    LBIS:AddItem(spec6, "23276", LBIS.L["Head"], "Alt") --Lieutenant Commander's Lamellar Headguard
    LBIS:AddItem(spec6, "12620", LBIS.L["Head"], "Alt") --Enchanted Thorium Helm
    LBIS:AddItem(spec6, "16727", LBIS.L["Head"], "Alt") --Lightforge Helm
    LBIS:AddItem(spec6, "12952", LBIS.L["Head"], "Alt") --Gyth's Skull
    LBIS:AddItem(spec6, "11746", LBIS.L["Head"], "Alt") --Golem Skull Helm
    LBIS:AddItem(spec6, "21391", LBIS.L["Shoulder"], "BIS") --Avenger's Pauldrons
    LBIS:AddItem(spec6, "16476", LBIS.L["Shoulder"], "BIS") --Field Marshal's Lamellar Pauldrons
    LBIS:AddItem(spec6, "23667", LBIS.L["Shoulder"], "Alt") --Spaulders of the Grand Crusader
    LBIS:AddItem(spec6, "16953", LBIS.L["Shoulder"], "Alt") --Judgement Spaulders
    LBIS:AddItem(spec6, "22940", LBIS.L["Shoulder"], "Alt") --Icebane Pauldrons
    LBIS:AddItem(spec6, "19878", LBIS.L["Shoulder"], "Alt") --Bloodsoaked Pauldrons
    LBIS:AddItem(spec6, "16436", LBIS.L["Shoulder"], "Alt") --Lieutenant Commander's Lamellar Shoulders
    LBIS:AddItem(spec6, "14552", LBIS.L["Shoulder"], "Alt") --Stockade Pauldrons
    LBIS:AddItem(spec6, "18384", LBIS.L["Shoulder"], "Alt") --Bile-etched Spaulders
    LBIS:AddItem(spec6, "13405", LBIS.L["Shoulder"], "Alt") --Wailing Nightbane Pauldrons
    LBIS:AddItem(spec6, "13955", LBIS.L["Shoulder"], "Alt") --Stoneform Shoulders
    LBIS:AddItem(spec6, "16733", LBIS.L["Shoulder"], "Alt") --Spaulders of Valor
    LBIS:AddItem(spec6, "22938", LBIS.L["Back"], "BIS") --Cryptfiend Silk Cloak
    LBIS:AddItem(spec6, "21621", LBIS.L["Back"], "Alt") --Cloak of the Golden Hive
    LBIS:AddItem(spec6, "21456", LBIS.L["Back"], "Alt") --Sandstorm Cloak
    LBIS:AddItem(spec6, "21397", LBIS.L["Back"], "Alt") --Cape of Eternal Justice
    LBIS:AddItem(spec6, "22658", LBIS.L["Back"], "Alt") --Glacial Cloak
    LBIS:AddItem(spec6, "19888", LBIS.L["Back"], "Alt") --Overlord's Embrace
    LBIS:AddItem(spec6, "18495", LBIS.L["Back"], "Alt") --Redoubt Cloak
    LBIS:AddItem(spec6, "11930", LBIS.L["Back"], "Alt") --The Emperor's New Cape
    LBIS:AddItem(spec6, "21389", LBIS.L["Chest"], "BIS") --Avenger's Breastplate
    LBIS:AddItem(spec6, "16473", LBIS.L["Chest"], "BIS") --Field Marshal's Lamellar Chestplate
    LBIS:AddItem(spec6, "16958", LBIS.L["Chest"], "Alt") --Judgement Breastplate
    LBIS:AddItem(spec6, "23272", LBIS.L["Chest"], "Alt") --Knight-Captain's Lamellar Breastplate
    LBIS:AddItem(spec6, "16726", LBIS.L["Chest"], "Alt") --Lightforge Breastplate
    LBIS:AddItem(spec6, "14624", LBIS.L["Chest"], "Alt") --Deathbone Chestplate
    LBIS:AddItem(spec6, "22669", LBIS.L["Chest"], "Alt") --Icebane Breastplate
    LBIS:AddItem(spec6, "12618", LBIS.L["Chest"], "Alt") --Enchanted Thorium Breastplate
    LBIS:AddItem(spec6, "15413", LBIS.L["Chest"], "Alt") --Ornate Adamantium Breastplate
    LBIS:AddItem(spec6, "21652", LBIS.L["Chest"], "Alt") --Silithid Carapace Chestguard
    LBIS:AddItem(spec6, "18812", LBIS.L["Wrist"], "BIS") --Wristguards of True Flight
    LBIS:AddItem(spec6, "16951", LBIS.L["Wrist"], "Alt") --Judgement Bindings
    LBIS:AddItem(spec6, "22671", LBIS.L["Wrist"], "Alt") --Icebane Bracers
    LBIS:AddItem(spec6, "13951", LBIS.L["Wrist"], "Alt") --Vigorsteel Vambraces
    LBIS:AddItem(spec6, "16735", LBIS.L["Wrist"], "Alt") --Bracers of Valor
    LBIS:AddItem(spec6, "21674", LBIS.L["Hands"], "BIS") --Gauntlets of Steadfast Determination
    LBIS:AddItem(spec6, "21479", LBIS.L["Hands"], "BIS") --Gauntlets of the Immovable
    LBIS:AddItem(spec6, "16471", LBIS.L["Hands"], "Alt") --Marshal's Lamellar Gloves
    LBIS:AddItem(spec6, "19894", LBIS.L["Hands"], "Alt") --Bloodsoaked Gauntlets
    LBIS:AddItem(spec6, "23274", LBIS.L["Hands"], "Alt") --Knight-Lieutenant's Lamellar Gauntlets
    LBIS:AddItem(spec6, "14525", LBIS.L["Hands"], "Alt") --Boneclenched Gauntlets
    LBIS:AddItem(spec6, "14622", LBIS.L["Hands"], "Alt") --Deathbone Gauntlets
    LBIS:AddItem(spec6, "13072", LBIS.L["Hands"], "Alt") --Stonegrip Gauntlets
    LBIS:AddItem(spec6, "13963", LBIS.L["Hands"], "Alt") --Voone's Vice Grips
    LBIS:AddItem(spec6, "21691", LBIS.L["Hands"], "Alt") --Ooze-ridden Gauntlets
    LBIS:AddItem(spec6, "21598", LBIS.L["Waist"], "BIS") --Royal Qiraji Belt
    LBIS:AddItem(spec6, "16952", LBIS.L["Waist"], "Alt") --Judgement Belt
    LBIS:AddItem(spec6, "21503", LBIS.L["Waist"], "Alt") --Belt of the Sand Reaver
    LBIS:AddItem(spec6, "18547", LBIS.L["Waist"], "Alt") --Unmelting Ice Girdle
    LBIS:AddItem(spec6, "13142", LBIS.L["Waist"], "Alt") --Brigam Girdle
    LBIS:AddItem(spec6, "14620", LBIS.L["Waist"], "Alt") --Deathbone Girdle
    LBIS:AddItem(spec6, "12115", LBIS.L["Waist"], "Alt") --Stalwart Clutch
    LBIS:AddItem(spec6, "16723", LBIS.L["Waist"], "Alt") --Lightforge Belt
    LBIS:AddItem(spec6, "21390", LBIS.L["Legs"], "BIS") --Avenger's Legguards
    LBIS:AddItem(spec6, "16954", LBIS.L["Legs"], "BIS") --Judgement Legplates
    LBIS:AddItem(spec6, "231299", LBIS.L["Legs"], "Alt") --Bloodsoaked Legplates
    LBIS:AddItem(spec6, "16475", LBIS.L["Legs"], "Alt") --Marshal's Lamellar Legplates
    LBIS:AddItem(spec6, "23273", LBIS.L["Legs"], "Alt") --Knight-Captain's Lamellar Leggings
    LBIS:AddItem(spec6, "22699", LBIS.L["Legs"], "Alt") --Icebane Leggings
    LBIS:AddItem(spec6, "12619", LBIS.L["Legs"], "Alt") --Enchanted Thorium Leggings
    LBIS:AddItem(spec6, "16728", LBIS.L["Legs"], "Alt") --Lightforge Legplates
    LBIS:AddItem(spec6, "14623", LBIS.L["Legs"], "Alt") --Deathbone Legguards
    LBIS:AddItem(spec6, "11927", LBIS.L["Legs"], "Alt") --Legplates of the Eternal Guardian
    LBIS:AddItem(spec6, "21388", LBIS.L["Feet"], "BIS") --Avenger's Greaves
    LBIS:AddItem(spec6, "19913", LBIS.L["Feet"], "BIS") --Bloodsoaked Greaves
    LBIS:AddItem(spec6, "21706", LBIS.L["Feet"], "Alt") --Boots of the Unwavering Will
    LBIS:AddItem(spec6, "18806", LBIS.L["Feet"], "Alt") --Core Forged Greaves
    LBIS:AddItem(spec6, "16472", LBIS.L["Feet"], "Alt") --Marshal's Lamellar Boots
    LBIS:AddItem(spec6, "23275", LBIS.L["Feet"], "Alt") --Knight-Lieutenant's Lamellar Sabatons
    LBIS:AddItem(spec6, "14621", LBIS.L["Feet"], "Alt") --Deathbone Sabatons
    LBIS:AddItem(spec6, "16725", LBIS.L["Feet"], "Alt") --Lightforge Boots
    LBIS:AddItem(spec6, "11787", LBIS.L["Feet"], "Alt") --Shalehusk Boots
    LBIS:AddItem(spec6, "14549", LBIS.L["Feet"], "Alt") --Boots of Avoidance
    LBIS:AddItem(spec6, "22981", LBIS.L["Neck"], "BIS") --Gluth's Missing Collar
    LBIS:AddItem(spec6, "22732", LBIS.L["Neck"], "BIS") --Mark of C'Thun
    LBIS:AddItem(spec6, "17065", LBIS.L["Neck"], "BIS") --Medallion of Steadfast Might
    LBIS:AddItem(spec6, "19383", LBIS.L["Neck"], "Alt") --Master Dragonslayer's Medallion
    LBIS:AddItem(spec6, "13091", LBIS.L["Neck"], "Alt") --Medallion of Grand Marshal Morris
    LBIS:AddItem(spec6, "19871", LBIS.L["Neck"], "Alt") --Talisman of Protection
    LBIS:AddItem(spec6, "18381", LBIS.L["Neck"], "Alt") --Evil Eye Pendant
    LBIS:AddItem(spec6, "13177", LBIS.L["Neck"], "Alt") --Talisman of Evasion
    LBIS:AddItem(spec6, "11755", LBIS.L["Neck"], "Alt") --Verek's Collar
    LBIS:AddItem(spec6, "21205", LBIS.L["Ring"], "BIS") --Signet Ring of the Bronze Dragonflight
    LBIS:AddItem(spec6, "21695", LBIS.L["Ring"], "BIS") --Angelista's Touch
    LBIS:AddItem(spec6, "21601", LBIS.L["Ring"], "BIS") --Ring of Emperor Vek'lor
    LBIS:AddItem(spec6, "19325", LBIS.L["Ring"], "BIS") --Don Julio's Band
    LBIS:AddItem(spec6, "21396", LBIS.L["Ring"], "Alt") --Ring of Eternal Justice
    LBIS:AddItem(spec6, "18879", LBIS.L["Ring"], "Alt") --Heavy Dark Iron Ring
    LBIS:AddItem(spec6, "19873", LBIS.L["Ring"], "Alt") --Overlord's Crimson Band
    LBIS:AddItem(spec6, "19912", LBIS.L["Ring"], "Alt") --Overlord's Onyx Band
    LBIS:AddItem(spec6, "11669", LBIS.L["Ring"], "Alt") --Naglering
    LBIS:AddItem(spec6, "18674", LBIS.L["Ring"], "Alt") --Hardened Stone Band
    LBIS:AddItem(spec6, "15855", LBIS.L["Ring"], "Alt") --Ring of Protection
    LBIS:AddItem(spec6, "2246", LBIS.L["Ring"], "Alt") --Myrmidon's Signet
    LBIS:AddItem(spec6, "19431", LBIS.L["Trinket"], "BIS") --Styleen's Impeding Scarab
    LBIS:AddItem(spec6, "21180", LBIS.L["Trinket"], "BIS Thrt") --Earthstrike
    LBIS:AddItem(spec6, "11815", LBIS.L["Trinket"], "BIS Thrt") --Hand of Justice
    LBIS:AddItem(spec6, "18406", LBIS.L["Trinket"], "BIS") --Onyxia Blood Talisman
    LBIS:AddItem(spec6, "23040", LBIS.L["Trinket"], "BIS Mit") --Glyph of Deflection
    LBIS:AddItem(spec6, "11810", LBIS.L["Trinket"], "Alt") --Force of Will
    LBIS:AddItem(spec6, "18537", LBIS.L["Trinket"], "Alt") --Counterattack Lodestone
    LBIS:AddItem(spec6, "4130", LBIS.L["Trinket"], "Alt") --Smotts' Compass
    LBIS:AddItem(spec6, "17774", LBIS.L["Trinket"], "Alt") --Mark of the Chosen
    LBIS:AddItem(spec6, "19019", LBIS.L["Main Hand"], "BIS") --Thunderfury, Blessed Blade of the Windseeker
    LBIS:AddItem(spec6, "22988", LBIS.L["Main Hand"], "BIS") --The End of Dreams
    LBIS:AddItem(spec6, "871", LBIS.L["Main Hand"], "BIS") --Flurry Axe
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "21395", LBIS.L["Main Hand"], "Alt") --Blade of Eternal Justice
    LBIS:AddItem(spec6, "23456", LBIS.L["Main Hand"], "Alt") --Grand Marshal's Swiftblade
    LBIS:AddItem(spec6, "18348", LBIS.L["Main Hand"], "Alt") --Quel'Serrar
    LBIS:AddItem(spec6, "19867", LBIS.L["Main Hand"], "Alt") --Bloodlord's Defender
    LBIS:AddItem(spec6, "18048", LBIS.L["Main Hand"], "Alt") --Mastersmith's Hammer
    LBIS:AddItem(spec6, "11784", LBIS.L["Main Hand"], "Alt") --Arbiter's Blade
    LBIS:AddItem(spec6, "23043", LBIS.L["Off Hand"], "BIS") --The Face of Death
    LBIS:AddItem(spec6, "21269", LBIS.L["Off Hand"], "Alt") --Blessed Qiraji Bulwark
    LBIS:AddItem(spec6, "19349", LBIS.L["Off Hand"], "Alt") --Elementium Reinforced Bulwark
    LBIS:AddItem(spec6, "21485", LBIS.L["Off Hand"], "Alt") --Buru's Skull Fragment
    LBIS:AddItem(spec6, "17066", LBIS.L["Off Hand"], "Alt") --Drillborer Disk
    LBIS:AddItem(spec6, "19862", LBIS.L["Off Hand"], "Alt") --Aegis of the Blood God
    LBIS:AddItem(spec6, "18168", LBIS.L["Off Hand"], "Alt") --Force Reactive Disk
    LBIS:AddItem(spec6, "12602", LBIS.L["Off Hand"], "Alt") --Draconian Deflector
    LBIS:AddItem(spec6, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
end
if not LBIS.IsSOD then
    LoadData();
end
