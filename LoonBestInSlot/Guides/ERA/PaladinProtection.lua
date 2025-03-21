local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "7")

    LBIS:AddEnchant(spec3, "15389", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "20015", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20026", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "13931", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "20012", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "15389", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "20017", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec3, "20013", LBIS.L["Hands"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
