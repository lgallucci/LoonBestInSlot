function LBIS:LoadPaladinProtection()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "0", "https://www.wowhead.com/forever/guide/classes/paladin/tank-talent-builds-pve")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Paladin"], LBIS.L["Protection"], "1", "https://www.wowhead.com/forever/guide/classes/paladin/tank-talent-builds-pve")

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
end
