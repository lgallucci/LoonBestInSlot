local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "7")
    local spec8 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "8")

    LBIS:AddEnchant(spec6, "24163", LBIS.L["Head/Legs"]) --
    LBIS:AddEnchant(spec6, "29467", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec6, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec6, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec6, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec6, "25074", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec6, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec6, "22749", LBIS.L["Main Hand"]) --

    LBIS:AddItem(spec0, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec0, "10504", LBIS.L["Head"], "Alt") --Green Lens
    LBIS:AddItem(spec0, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec0, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec0, "12752", LBIS.L["Head"], "Alt") --Cap of the Scarlet Savant
    LBIS:AddItem(spec0, "23260", LBIS.L["Shoulder"], "Alt") --Champion's Mail Pauldrons
    LBIS:AddItem(spec0, "20680", LBIS.L["Shoulder"], "Alt") --Abyssal Mail Pauldrons
    LBIS:AddItem(spec0, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec0, "18494", LBIS.L["Shoulder"], "Alt") --Denwatcher's Shoulders
    LBIS:AddItem(spec0, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec0, "18528", LBIS.L["Shoulder"], "Alt") --Cyclone Spaulders
    LBIS:AddItem(spec0, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec0, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec0, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec0, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec0, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec0, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec0, "12624", LBIS.L["Chest"], "Alt") --Wildthorn Mail
    LBIS:AddItem(spec0, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec0, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec0, "11924", LBIS.L["Chest"], "Alt") --Robes of the Royal Crown
    LBIS:AddItem(spec0, "21186", LBIS.L["Wrist"], "Alt") --Rockfury Bracers
    LBIS:AddItem(spec0, "19597", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec0, "20684", LBIS.L["Wrist"], "Alt") --Abyssal Mail Armguards
    LBIS:AddItem(spec0, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec0, "11765", LBIS.L["Wrist"], "Alt") --Pyremail Wristguards
    LBIS:AddItem(spec0, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec0, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec0, "16519", LBIS.L["Hands"], "Alt") --Blood Guard's Mail Grips
    LBIS:AddItem(spec0, "13344", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec0, "18387", LBIS.L["Hands"], "Alt") --Brightspark Gloves
    LBIS:AddItem(spec0, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec0, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec0, "20163", LBIS.L["Waist"], "Alt") --Defiler's Cloth Girdle
    LBIS:AddItem(spec0, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec0, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec0, "19165", LBIS.L["Legs"], "Alt") --Flarecore Leggings
    LBIS:AddItem(spec0, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec0, "11823", LBIS.L["Legs"], "Alt") --Luminary Kilt
    LBIS:AddItem(spec0, "18378", LBIS.L["Legs"], "Alt") --Silvermoon Leggings
    LBIS:AddItem(spec0, "16523", LBIS.L["Legs"], "Alt") --Legionnaire's Mail Leggings
    LBIS:AddItem(spec0, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec0, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec0, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec0, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec0, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec0, "18289", LBIS.L["Neck"], "Alt") --Barbed Thorn Necklace
    LBIS:AddItem(spec0, "22403", LBIS.L["Neck"], "Alt") --Diana's Pearl Necklace
    LBIS:AddItem(spec0, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec0, "18317", LBIS.L["Neck"], "Alt") --Tempest Talisman
    LBIS:AddItem(spec0, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec0, "21190", LBIS.L["Ring"], "Alt") --Wrath of Cenarius
    LBIS:AddItem(spec0, "20682", LBIS.L["Ring"], "Alt") --Elemental Focus Band
    LBIS:AddItem(spec0, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec0, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec0, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec0, "11824", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec0, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec0, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec0, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec0, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec0, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec0, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec0, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec0, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec0, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec0, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec0, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec0, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec0, "16998", LBIS.L["Off Hand"], "Alt") --Sacred Protector
    LBIS:AddItem(spec0, "20069", LBIS.L["Two Hand"], "Alt") --Ironbark Staff
    LBIS:AddItem(spec0, "21188", LBIS.L["Two Hand"], "Alt") --Fist of Cenarius
    LBIS:AddItem(spec0, "23124", LBIS.L["Two Hand"], "Alt") --Staff of Balzaphon
    LBIS:AddItem(spec0, "22335", LBIS.L["Two Hand"], "Alt") --Lord Valthalak's Staff of Command
    LBIS:AddItem(spec0, "20258", LBIS.L["Two Hand"], "Alt") --Zulian Ceremonial Staff
    LBIS:AddItem(spec0, "20654", LBIS.L["Two Hand"], "Alt") --Amethyst War Staff
    LBIS:AddItem(spec0, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec0, "13161", LBIS.L["Two Hand"], "Alt") --Trindlehaven Staff
    LBIS:AddItem(spec0, "23199", LBIS.L["Ranged"], "Alt") --Totem of the Storm
    LBIS:AddItem(spec0, "22345", LBIS.L["Ranged"], "Alt") --Totem of Rebirth

    LBIS:AddItem(spec1, "16947", LBIS.L["Head"], "BIS") --Helmet of Ten Storms
    LBIS:AddItem(spec1, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec1, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec1, "18829", LBIS.L["Shoulder"], "BIS") --Deep Earth Spaulders
    LBIS:AddItem(spec1, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec1, "17078", LBIS.L["Back"], "BIS") --Sapphiron Drape
    LBIS:AddItem(spec1, "11623", LBIS.L["Back"], "Alt") --Spritecaster Cape
    LBIS:AddItem(spec1, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec1, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec1, "12624", LBIS.L["Chest"], "Alt") --Wildthorn Mail
    LBIS:AddItem(spec1, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec1, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec1, "13344", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec1, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec1, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec1, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec1, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec1, "13170", LBIS.L["Legs"], "BIS") --Skyshroud Leggings
    LBIS:AddItem(spec1, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec1, "11822", LBIS.L["Feet"], "BIS") --Omnicast Boots
    LBIS:AddItem(spec1, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec1, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec1, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec1, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec1, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec1, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec1, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec1, "11824", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec1, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec1, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec1, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec1, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec1, "17105", LBIS.L["Main Hand"], "BIS") --Aurastone Hammer
    LBIS:AddItem(spec1, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec1, "11904", LBIS.L["Off Hand"], "BIS") --Spirit of Aquementas
    LBIS:AddItem(spec1, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec1, "16998", LBIS.L["Off Hand"], "Alt") --Sacred Protector
    LBIS:AddItem(spec1, "18842", LBIS.L["Two Hand"], "BIS") --Staff of Dominance
    LBIS:AddItem(spec1, "13161", LBIS.L["Two Hand"], "Alt") --Trindlehaven Staff
    LBIS:AddItem(spec1, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan

    LBIS:AddItem(spec2, "18546", LBIS.L["Head"], "BIS") --Infernal Headcage
    LBIS:AddItem(spec2, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec2, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec2, "16521", LBIS.L["Head"], "Alt") --Champion's Mail Helm
    LBIS:AddItem(spec2, "18681", LBIS.L["Shoulder"], "BIS") --Burial Shawl
    LBIS:AddItem(spec2, "11623", LBIS.L["Back"], "BIS") --Spritecaster Cape
    LBIS:AddItem(spec2, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec2, "12624", LBIS.L["Chest"], "BIS") --Wildthorn Mail
    LBIS:AddItem(spec2, "16840", LBIS.L["Wrist"], "BIS") --Earthfury Bracers
    LBIS:AddItem(spec2, "2564", LBIS.L["Hands"], "BIS") --Elven Spirit Claws
    LBIS:AddItem(spec2, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec2, "16519", LBIS.L["Hands"], "Alt") --Blood Guard's Mail Grips
    LBIS:AddItem(spec2, "11662", LBIS.L["Waist"], "BIS") --Ban'thok Sash
    LBIS:AddItem(spec2, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec2, "18740", LBIS.L["Waist"], "Alt") --Thuzadin Sash
    LBIS:AddItem(spec2, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec2, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec2, "12965", LBIS.L["Legs"], "BIS") --Spiritshroud Leggings
    LBIS:AddItem(spec2, "16518", LBIS.L["Feet"], "BIS") --Blood Guard's Mail Walkers
    LBIS:AddItem(spec2, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec2, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec2, "19426", LBIS.L["Neck"], "BIS") --Orb of the Darkmoon
    LBIS:AddItem(spec2, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec2, "13001", LBIS.L["Ring"], "BIS") --Maiden's Circle
    LBIS:AddItem(spec2, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec2, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec2, "11824", LBIS.L["Ring"], "Alt") --Cyclopean Band
    LBIS:AddItem(spec2, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec2, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec2, "11832", LBIS.L["Trinket"], "Alt") --Burst of Knowledge
    LBIS:AddItem(spec2, "13964", LBIS.L["Main Hand"], "BIS") --Witchblade
    LBIS:AddItem(spec2, "17106", LBIS.L["Off Hand"], "BIS") --Malistar's Defender
    LBIS:AddItem(spec2, "13161", LBIS.L["Two Hand"], "BIS") --Trindlehaven Staff
    LBIS:AddItem(spec2, "873", LBIS.L["Two Hand"], "Alt") --Staff of Jordan

    LBIS:AddItem(spec3, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec3, "18546", LBIS.L["Head"], "Alt") --Infernal Headcage
    LBIS:AddItem(spec3, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec3, "16578", LBIS.L["Head"], "Alt") --Warlord's Mail Helm
    LBIS:AddItem(spec3, "18829", LBIS.L["Shoulder"], "BIS") --Deep Earth Spaulders
    LBIS:AddItem(spec3, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec3, "19378", LBIS.L["Back"], "BIS") --Cloak of the Brood Lord
    LBIS:AddItem(spec3, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec3, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec3, "16950", LBIS.L["Chest"], "BIS") --Breastplate of Ten Storms
    LBIS:AddItem(spec3, "16577", LBIS.L["Chest"], "Alt") --Warlord's Mail Armor
    LBIS:AddItem(spec3, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec3, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec3, "16943", LBIS.L["Wrist"], "Alt") --Bracers of Ten Storms
    LBIS:AddItem(spec3, "16948", LBIS.L["Hands"], "BIS") --Gauntlets of Ten Storms
    LBIS:AddItem(spec3, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec3, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec3, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec3, "16574", LBIS.L["Hands"], "Alt") --General's Mail Gauntlets
    LBIS:AddItem(spec3, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec3, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec3, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec3, "19134", LBIS.L["Waist"], "Alt") --Flayed Doomguard Belt
    LBIS:AddItem(spec3, "19393", LBIS.L["Waist"], "Alt") --Primalist's Linked Waistguard
    LBIS:AddItem(spec3, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec3, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec3, "16579", LBIS.L["Legs"], "Alt") --General's Mail Leggings
    LBIS:AddItem(spec3, "19401", LBIS.L["Legs"], "Alt") --Primalist's Linked Legguards
    LBIS:AddItem(spec3, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec3, "16949", LBIS.L["Feet"], "Alt") --Greaves of Ten Storms
    LBIS:AddItem(spec3, "16573", LBIS.L["Feet"], "Alt") --General's Mail Boots
    LBIS:AddItem(spec3, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec3, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec3, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec3, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec3, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec3, "19371", LBIS.L["Neck"], "Alt") --Pendant of the Fallen Dragon
    LBIS:AddItem(spec3, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec3, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec3, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec3, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec3, "18820", LBIS.L["Trinket"], "BIS") --Talisman of Ephemeral Power
    LBIS:AddItem(spec3, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec3, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec3, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec3, "19344", LBIS.L["Trinket"], "Alt") --Natural Alignment Crystal
    LBIS:AddItem(spec3, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec3, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec3, "19347", LBIS.L["Main Hand"], "BIS") --Claw of Chromaggus
    LBIS:AddItem(spec3, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec3, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec3, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec3, "19315", LBIS.L["Off Hand"], "BIS") --Therazane's Touch
    LBIS:AddItem(spec3, "19366", LBIS.L["Off Hand"], "BIS") --Master Dragonslayer's Orb
    LBIS:AddItem(spec3, "17106", LBIS.L["Off Hand"], "Alt") --Malistar's Defender
    LBIS:AddItem(spec3, "19356", LBIS.L["Two Hand"], "BIS") --Staff of the Shadow Flame
    LBIS:AddItem(spec3, "18874", LBIS.L["Two Hand"], "BIS") --High Warlord's War Staff
    LBIS:AddItem(spec3, "20069", LBIS.L["Two Hand"], "BIS") --Ironbark Staff
    LBIS:AddItem(spec3, "17113", LBIS.L["Two Hand"], "Alt") --Amberseal Keeper
    LBIS:AddItem(spec3, "19355", LBIS.L["Two Hand"], "Alt") --Shadow Wing Focus Staff

    LBIS:AddItem(spec4, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec4, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec4, "22097", LBIS.L["Head"], "Alt") --Coif of The Five Thunders
    LBIS:AddItem(spec4, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec4, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec4, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec4, "18829", LBIS.L["Shoulder"], "BIS") --Deep Earth Spaulders
    LBIS:AddItem(spec4, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec4, "23260", LBIS.L["Shoulder"], "Alt") --Champion's Mail Pauldrons
    LBIS:AddItem(spec4, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec4, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec4, "18494", LBIS.L["Shoulder"], "Alt") --Denwatcher's Shoulders
    LBIS:AddItem(spec4, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec4, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec4, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec4, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec4, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec4, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec4, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec4, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec4, "16950", LBIS.L["Chest"], "Alt") --Breastplate of Ten Storms
    LBIS:AddItem(spec4, "12624", LBIS.L["Chest"], "Alt") --Wildthorn Mail
    LBIS:AddItem(spec4, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec4, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec4, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec4, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec4, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec4, "18458", LBIS.L["Wrist"], "Alt") --Modest Armguards
    LBIS:AddItem(spec4, "22095", LBIS.L["Wrist"], "Alt") --Bindings of The Five Thunders
    LBIS:AddItem(spec4, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec4, "13253", LBIS.L["Hands"], "BIS") --Hands of Power
    LBIS:AddItem(spec4, "16948", LBIS.L["Hands"], "Alt") --Gauntlets of Ten Storms
    LBIS:AddItem(spec4, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec4, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec4, "13344", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec4, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec4, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec4, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec4, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec4, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec4, "19393", LBIS.L["Waist"], "Alt") --Primalist's Linked Waistguard
    LBIS:AddItem(spec4, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec4, "16579", LBIS.L["Legs"], "Alt") --General's Mail Leggings
    LBIS:AddItem(spec4, "16946", LBIS.L["Legs"], "Alt") --Legplates of Ten Storms
    LBIS:AddItem(spec4, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec4, "18378", LBIS.L["Legs"], "Alt") --Silvermoon Leggings
    LBIS:AddItem(spec4, "19401", LBIS.L["Legs"], "Alt") --Primalist's Linked Legguards
    LBIS:AddItem(spec4, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec4, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec4, "16573", LBIS.L["Feet"], "Alt") --General's Mail Boots
    LBIS:AddItem(spec4, "18322", LBIS.L["Feet"], "Alt") --Waterspout Boots
    LBIS:AddItem(spec4, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec4, "22231", LBIS.L["Feet"], "Alt") --Kayser's Boots of Precision
    LBIS:AddItem(spec4, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec4, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec4, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec4, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec4, "18289", LBIS.L["Neck"], "Alt") --Barbed Thorn Necklace
    LBIS:AddItem(spec4, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec4, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec4, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec4, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec4, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec4, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec4, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec4, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec4, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec4, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec4, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec4, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec4, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec4, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec4, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec4, "19344", LBIS.L["Trinket"], "Alt") --Natural Alignment Crystal
    LBIS:AddItem(spec4, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec4, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec4, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec4, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec4, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec4, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec4, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec4, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec4, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec4, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec4, "18534", LBIS.L["Main Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec4, "19315", LBIS.L["Off Hand"], "BIS") --Therazane's Touch
    LBIS:AddItem(spec4, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec4, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec4, "19142", LBIS.L["Off Hand"], "Alt") --Fire Runed Grimoire
    LBIS:AddItem(spec4, "22336", LBIS.L["Off Hand"], "Alt") --Draconian Aegis of the Legion
    LBIS:AddItem(spec4, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec4, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec4, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler

    LBIS:AddItem(spec5, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec5, "21372", LBIS.L["Head"], "BIS") --Stormcaller's Diadem
    LBIS:AddItem(spec5, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec5, "22097", LBIS.L["Head"], "Alt") --Coif of The Five Thunders
    LBIS:AddItem(spec5, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec5, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec5, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec5, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec5, "18829", LBIS.L["Shoulder"], "BIS") --Deep Earth Spaulders
    LBIS:AddItem(spec5, "21376", LBIS.L["Shoulder"], "BIS") --Stormcaller's Pauldrons
    LBIS:AddItem(spec5, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec5, "23260", LBIS.L["Shoulder"], "Alt") --Champion's Mail Pauldrons
    LBIS:AddItem(spec5, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec5, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec5, "18494", LBIS.L["Shoulder"], "Alt") --Denwatcher's Shoulders
    LBIS:AddItem(spec5, "22731", LBIS.L["Back"], "BIS") --Cloak of the Devoured
    LBIS:AddItem(spec5, "19857", LBIS.L["Back"], "BIS") --Cloak of Consumption
    LBIS:AddItem(spec5, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec5, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec5, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec5, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec5, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec5, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec5, "19145", LBIS.L["Chest"], "BIS") --Robe of Volatile Power
    LBIS:AddItem(spec5, "21374", LBIS.L["Chest"], "Alt") --Stormcaller's Hauberk
    LBIS:AddItem(spec5, "16950", LBIS.L["Chest"], "Alt") --Breastplate of Ten Storms
    LBIS:AddItem(spec5, "12624", LBIS.L["Chest"], "Alt") --Wildthorn Mail
    LBIS:AddItem(spec5, "19682", LBIS.L["Chest"], "Alt") --Bloodvine Vest
    LBIS:AddItem(spec5, "19828", LBIS.L["Chest"], "Alt") --Zandalar Augur's Hauberk
    LBIS:AddItem(spec5, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec5, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec5, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec5, "19374", LBIS.L["Wrist"], "BIS") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec5, "19595", LBIS.L["Wrist"], "Alt") --Dryad's Wrist Bindings
    LBIS:AddItem(spec5, "21464", LBIS.L["Wrist"], "Alt") --Shackles of the Unscarred
    LBIS:AddItem(spec5, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec5, "18458", LBIS.L["Wrist"], "Alt") --Modest Armguards
    LBIS:AddItem(spec5, "22095", LBIS.L["Wrist"], "Alt") --Bindings of The Five Thunders
    LBIS:AddItem(spec5, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec5, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec5, "21689", LBIS.L["Hands"], "Alt") --Gloves of Ebru
    LBIS:AddItem(spec5, "21624", LBIS.L["Hands"], "Alt") --Gauntlets of Kalimdor
    LBIS:AddItem(spec5, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec5, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec5, "16948", LBIS.L["Hands"], "Alt") --Gauntlets of Ten Storms
    LBIS:AddItem(spec5, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec5, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec5, "13344", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec5, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec5, "19136", LBIS.L["Waist"], "BIS") --Mana Igniting Cord
    LBIS:AddItem(spec5, "19400", LBIS.L["Waist"], "BIS") --Firemaw's Clutch
    LBIS:AddItem(spec5, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec5, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec5, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec5, "19393", LBIS.L["Waist"], "Alt") --Primalist's Linked Waistguard
    LBIS:AddItem(spec5, "19165", LBIS.L["Legs"], "BIS") --Flarecore Leggings
    LBIS:AddItem(spec5, "16579", LBIS.L["Legs"], "Alt") --General's Mail Leggings
    LBIS:AddItem(spec5, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec5, "21668", LBIS.L["Legs"], "Alt") --Scaled Leggings of Qiraji Fury
    LBIS:AddItem(spec5, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec5, "21698", LBIS.L["Legs"], "Alt") --Leggings of Immersion
    LBIS:AddItem(spec5, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec5, "18378", LBIS.L["Legs"], "Alt") --Silvermoon Leggings
    LBIS:AddItem(spec5, "19401", LBIS.L["Legs"], "Alt") --Primalist's Linked Legguards
    LBIS:AddItem(spec5, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec5, "21373", LBIS.L["Feet"], "BIS") --Stormcaller's Footguards
    LBIS:AddItem(spec5, "19131", LBIS.L["Feet"], "BIS") --Snowblind Shoes
    LBIS:AddItem(spec5, "16573", LBIS.L["Feet"], "Alt") --General's Mail Boots
    LBIS:AddItem(spec5, "21600", LBIS.L["Feet"], "Alt") --Boots of Epiphany
    LBIS:AddItem(spec5, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec5, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec5, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec5, "22231", LBIS.L["Feet"], "Alt") --Kayser's Boots of Precision
    LBIS:AddItem(spec5, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec5, "18814", LBIS.L["Neck"], "BIS") --Choker of the Fire Lord
    LBIS:AddItem(spec5, "21608", LBIS.L["Neck"], "Alt") --Amulet of Vek'nilash
    LBIS:AddItem(spec5, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec5, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec5, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec5, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec5, "18289", LBIS.L["Neck"], "Alt") --Barbed Thorn Necklace
    LBIS:AddItem(spec5, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec5, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec5, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec5, "19147", LBIS.L["Ring"], "BIS") --Ring of Spell Power
    LBIS:AddItem(spec5, "19403", LBIS.L["Ring"], "BIS") --Band of Forced Concentration
    LBIS:AddItem(spec5, "21836", LBIS.L["Ring"], "Alt") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec5, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec5, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec5, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec5, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec5, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec5, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec5, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec5, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec5, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec5, "12930", LBIS.L["Trinket"], "BIS") --Briarwood Reed
    LBIS:AddItem(spec5, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec5, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec5, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec5, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec5, "19344", LBIS.L["Trinket"], "Alt") --Natural Alignment Crystal
    LBIS:AddItem(spec5, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec5, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec5, "19360", LBIS.L["Main Hand"], "BIS") --Lok'amir il Romathis
    LBIS:AddItem(spec5, "23466", LBIS.L["Main Hand"], "BIS") --High Warlord's Spellblade
    LBIS:AddItem(spec5, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec5, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec5, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec5, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec5, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec5, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec5, "18534", LBIS.L["Main Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec5, "21597", LBIS.L["Off Hand"], "BIS") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec5, "19315", LBIS.L["Off Hand"], "BIS") --Therazane's Touch
    LBIS:AddItem(spec5, "19366", LBIS.L["Off Hand"], "Alt") --Master Dragonslayer's Orb
    LBIS:AddItem(spec5, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec5, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec5, "19142", LBIS.L["Off Hand"], "Alt") --Fire Runed Grimoire
    LBIS:AddItem(spec5, "22336", LBIS.L["Off Hand"], "Alt") --Draconian Aegis of the Legion
    LBIS:AddItem(spec5, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec5, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec5, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec5, "23199", LBIS.L["Ranged/Relic"], "BIS") --Totem of the Storm
    LBIS:AddItem(spec5, "22345", LBIS.L["Ranged/Relic"], "Alt") --Totem of Rebirth

    LBIS:AddItem(spec6, "19375", LBIS.L["Head"], "BIS") --Mish'undare, Circlet of the Mind Flayer
    LBIS:AddItem(spec6, "23035", LBIS.L["Head"], "Alt") --Preceptor's Hat
    LBIS:AddItem(spec6, "22267", LBIS.L["Head"], "Alt") --Spellweaver's Turban
    LBIS:AddItem(spec6, "21372", LBIS.L["Head"], "Alt") --Stormcaller's Diadem
    LBIS:AddItem(spec6, "22097", LBIS.L["Head"], "Alt") --Coif of The Five Thunders
    LBIS:AddItem(spec6, "18727", LBIS.L["Head"], "Alt") --Crimson Felt Hat
    LBIS:AddItem(spec6, "16947", LBIS.L["Head"], "Alt") --Helmet of Ten Storms
    LBIS:AddItem(spec6, "19886", LBIS.L["Head"], "Alt") --The Hexxer's Cover
    LBIS:AddItem(spec6, "18807", LBIS.L["Head"], "Alt") --Helm of Latent Power
    LBIS:AddItem(spec6, "23664", LBIS.L["Shoulder"], "BIS") --Pauldrons of Elemental Fury
    LBIS:AddItem(spec6, "22983", LBIS.L["Shoulder"], "Alt") --Rime Covered Mantle
    LBIS:AddItem(spec6, "18829", LBIS.L["Shoulder"], "Alt") --Deep Earth Spaulders
    LBIS:AddItem(spec6, "19370", LBIS.L["Shoulder"], "Alt") --Mantle of the Blackwing Cabal
    LBIS:AddItem(spec6, "21684", LBIS.L["Shoulder"], "Alt") --Mantle of the Desert's Fury
    LBIS:AddItem(spec6, "21376", LBIS.L["Shoulder"], "Alt") --Stormcaller's Pauldrons
    LBIS:AddItem(spec6, "23260", LBIS.L["Shoulder"], "Alt") --Champion's Mail Pauldrons
    LBIS:AddItem(spec6, "18681", LBIS.L["Shoulder"], "Alt") --Burial Shawl
    LBIS:AddItem(spec6, "13013", LBIS.L["Shoulder"], "Alt") --Elder Wizard's Mantle
    LBIS:AddItem(spec6, "18494", LBIS.L["Shoulder"], "Alt") --Denwatcher's Shoulders
    LBIS:AddItem(spec6, "23050", LBIS.L["Back"], "BIS") --Cloak of the Necropolis
    LBIS:AddItem(spec6, "22731", LBIS.L["Back"], "Alt") --Cloak of the Devoured
    LBIS:AddItem(spec6, "19857", LBIS.L["Back"], "Alt") --Cloak of Consumption
    LBIS:AddItem(spec6, "19378", LBIS.L["Back"], "Alt") --Cloak of the Brood Lord
    LBIS:AddItem(spec6, "23017", LBIS.L["Back"], "Alt") --Veil of Eclipse
    LBIS:AddItem(spec6, "17078", LBIS.L["Back"], "Alt") --Sapphiron Drape
    LBIS:AddItem(spec6, "20697", LBIS.L["Back"], "Alt") --Crystalline Threaded Cape
    LBIS:AddItem(spec6, "18350", LBIS.L["Back"], "Alt") --Amplifying Cloak
    LBIS:AddItem(spec6, "18496", LBIS.L["Back"], "Alt") --Heliotrope Cloak
    LBIS:AddItem(spec6, "19121", LBIS.L["Back"], "Alt") --Deep Woodlands Cloak
    LBIS:AddItem(spec6, "21838", LBIS.L["Chest"], "BIS") --Garb of Royal Ascension
    LBIS:AddItem(spec6, "19682", LBIS.L["Chest"], "BIS") --Bloodvine Vest
    LBIS:AddItem(spec6, "23220", LBIS.L["Chest"], "BIS") --Crystal Webbed Robe
    LBIS:AddItem(spec6, "20635", LBIS.L["Chest"], "Alt") --Jade Inlaid Vestments
    LBIS:AddItem(spec6, "19828", LBIS.L["Chest"], "Alt") --Zandalar Augur's Hauberk
    LBIS:AddItem(spec6, "21374", LBIS.L["Chest"], "Alt") --Stormcaller's Hauberk
    LBIS:AddItem(spec6, "19145", LBIS.L["Chest"], "Alt") --Robe of Volatile Power
    LBIS:AddItem(spec6, "16950", LBIS.L["Chest"], "Alt") --Breastplate of Ten Storms
    LBIS:AddItem(spec6, "12624", LBIS.L["Chest"], "Alt") --Wildthorn Mail
    LBIS:AddItem(spec6, "18385", LBIS.L["Chest"], "Alt") --Robe of Everlasting Night
    LBIS:AddItem(spec6, "18373", LBIS.L["Chest"], "Alt") --Chestplate of Tranquility
    LBIS:AddItem(spec6, "23085", LBIS.L["Chest"], "Alt") --Robe of Undead Cleansing
    LBIS:AddItem(spec6, "21186", LBIS.L["Wrist"], "BIS") --Rockfury Bracers
    LBIS:AddItem(spec6, "19374", LBIS.L["Wrist"], "Alt") --Bracers of Arcane Accuracy
    LBIS:AddItem(spec6, "23021", LBIS.L["Wrist"], "Alt") --The Soul Harvester's Bindings
    LBIS:AddItem(spec6, "21611", LBIS.L["Wrist"], "Alt") --Burrower Bracers
    LBIS:AddItem(spec6, "20626", LBIS.L["Wrist"], "Alt") --Black Bark Wristbands
    LBIS:AddItem(spec6, "21464", LBIS.L["Wrist"], "Alt") --Shackles of the Unscarred
    LBIS:AddItem(spec6, "18497", LBIS.L["Wrist"], "Alt") --Sublime Wristguards
    LBIS:AddItem(spec6, "18458", LBIS.L["Wrist"], "Alt") --Modest Armguards
    LBIS:AddItem(spec6, "22095", LBIS.L["Wrist"], "Alt") --Bindings of The Five Thunders
    LBIS:AddItem(spec6, "16840", LBIS.L["Wrist"], "Alt") --Earthfury Bracers
    LBIS:AddItem(spec6, "23091", LBIS.L["Wrist"], "Alt") --Bracers of Undead Cleansing
    LBIS:AddItem(spec6, "21585", LBIS.L["Hands"], "BIS") --Dark Storm Gauntlets
    LBIS:AddItem(spec6, "21689", LBIS.L["Hands"], "Alt") --Gloves of Ebru
    LBIS:AddItem(spec6, "19929", LBIS.L["Hands"], "Alt") --Bloodtinged Gloves
    LBIS:AddItem(spec6, "21624", LBIS.L["Hands"], "Alt") --Gauntlets of Kalimdor
    LBIS:AddItem(spec6, "20618", LBIS.L["Hands"], "Alt") --Gloves of Delusional Power
    LBIS:AddItem(spec6, "13253", LBIS.L["Hands"], "Alt") --Hands of Power
    LBIS:AddItem(spec6, "16948", LBIS.L["Hands"], "Alt") --Gauntlets of Ten Storms
    LBIS:AddItem(spec6, "16839", LBIS.L["Hands"], "Alt") --Earthfury Gauntlets
    LBIS:AddItem(spec6, "2564", LBIS.L["Hands"], "Alt") --Elven Spirit Claws
    LBIS:AddItem(spec6, "13344", LBIS.L["Hands"], "Alt") --Dracorian Gauntlets
    LBIS:AddItem(spec6, "23084", LBIS.L["Hands"], "Alt") --Gloves of Undead Cleansing
    LBIS:AddItem(spec6, "22730", LBIS.L["Waist"], "BIS") --Eyestalk Waist Cord
    LBIS:AddItem(spec6, "19400", LBIS.L["Waist"], "Alt") --Firemaw's Clutch
    LBIS:AddItem(spec6, "19136", LBIS.L["Waist"], "Alt") --Mana Igniting Cord
    LBIS:AddItem(spec6, "23663", LBIS.L["Waist"], "Alt") --Girdle of Elemental Fury
    LBIS:AddItem(spec6, "19388", LBIS.L["Waist"], "Alt") --Angelista's Grasp
    LBIS:AddItem(spec6, "18676", LBIS.L["Waist"], "Alt") --Sash of the Windreaver
    LBIS:AddItem(spec6, "11662", LBIS.L["Waist"], "Alt") --Ban'thok Sash
    LBIS:AddItem(spec6, "18721", LBIS.L["Waist"], "Alt") --Barrage Girdle
    LBIS:AddItem(spec6, "19393", LBIS.L["Waist"], "Alt") --Primalist's Linked Waistguard
    LBIS:AddItem(spec6, "23070", LBIS.L["Legs"], "BIS") --Leggings of Polarity
    LBIS:AddItem(spec6, "23665", LBIS.L["Legs"], "Alt") --Leggings of Elemental Fury
    LBIS:AddItem(spec6, "21461", LBIS.L["Legs"], "Alt") --Leggings of the Black Blizzard
    LBIS:AddItem(spec6, "19683", LBIS.L["Legs"], "Alt") --Bloodvine Leggings
    LBIS:AddItem(spec6, "21668", LBIS.L["Legs"], "Alt") --Scaled Leggings of Qiraji Fury
    LBIS:AddItem(spec6, "21375", LBIS.L["Legs"], "Alt") --Stormcaller's Leggings
    LBIS:AddItem(spec6, "21698", LBIS.L["Legs"], "Alt") --Leggings of Immersion
    LBIS:AddItem(spec6, "13170", LBIS.L["Legs"], "Alt") --Skyshroud Leggings
    LBIS:AddItem(spec6, "18378", LBIS.L["Legs"], "Alt") --Silvermoon Leggings
    LBIS:AddItem(spec6, "19401", LBIS.L["Legs"], "Alt") --Primalist's Linked Legguards
    LBIS:AddItem(spec6, "12965", LBIS.L["Legs"], "Alt") --Spiritshroud Leggings
    LBIS:AddItem(spec6, "21600", LBIS.L["Feet"], "BIS") --Boots of Epiphany
    LBIS:AddItem(spec6, "20634", LBIS.L["Feet"], "Alt") --Boots of Fright
    LBIS:AddItem(spec6, "19684", LBIS.L["Feet"], "Alt") --Bloodvine Boots
    LBIS:AddItem(spec6, "19131", LBIS.L["Feet"], "Alt") --Snowblind Shoes
    LBIS:AddItem(spec6, "19897", LBIS.L["Feet"], "Alt") --Betrayer's Boots
    LBIS:AddItem(spec6, "21373", LBIS.L["Feet"], "Alt") --Stormcaller's Footguards
    LBIS:AddItem(spec6, "11822", LBIS.L["Feet"], "Alt") --Omnicast Boots
    LBIS:AddItem(spec6, "22231", LBIS.L["Feet"], "Alt") --Kayser's Boots of Precision
    LBIS:AddItem(spec6, "13954", LBIS.L["Feet"], "Alt") --Verdant Footpads
    LBIS:AddItem(spec6, "21608", LBIS.L["Neck"], "BIS") --Amulet of Vek'nilash
    LBIS:AddItem(spec6, "18814", LBIS.L["Neck"], "Alt") --Choker of the Fire Lord
    LBIS:AddItem(spec6, "23057", LBIS.L["Neck"], "Alt") --Gem of Trapped Innocents
    LBIS:AddItem(spec6, "22943", LBIS.L["Neck"], "Alt") --Malice Stone Pendant
    LBIS:AddItem(spec6, "21504", LBIS.L["Neck"], "Alt") --Charm of the Shifting Sands
    LBIS:AddItem(spec6, "19426", LBIS.L["Neck"], "Alt") --Orb of the Darkmoon
    LBIS:AddItem(spec6, "19923", LBIS.L["Neck"], "Alt") --Jeklik's Opaline Talisman
    LBIS:AddItem(spec6, "17109", LBIS.L["Neck"], "Alt") --Choker of Enlightenment
    LBIS:AddItem(spec6, "18289", LBIS.L["Neck"], "Alt") --Barbed Thorn Necklace
    LBIS:AddItem(spec6, "22403", LBIS.L["Neck"], "Alt") --Nacreous Shell Necklace
    LBIS:AddItem(spec6, "12103", LBIS.L["Neck"], "Alt") --Star of Mystaria
    LBIS:AddItem(spec6, "21709", LBIS.L["Ring"], "BIS") --Ring of the Fallen God
    LBIS:AddItem(spec6, "23031", LBIS.L["Ring"], "BIS") --Band of the Inevitable
    LBIS:AddItem(spec6, "23025", LBIS.L["Ring"], "Alt") --Seal of the Damned
    LBIS:AddItem(spec6, "19403", LBIS.L["Ring"], "Alt") --Band of Forced Concentration
    LBIS:AddItem(spec6, "21190", LBIS.L["Ring"], "Alt") --Wrath of Cenarius
    LBIS:AddItem(spec6, "21836", LBIS.L["Ring"], "Alt") --Ritssyn's Ring of Chaos
    LBIS:AddItem(spec6, "22721", LBIS.L["Ring"], "Alt") --Band of Servitude
    LBIS:AddItem(spec6, "19893", LBIS.L["Ring"], "Alt") --Zanzil's Seal
    LBIS:AddItem(spec6, "22339", LBIS.L["Ring"], "Alt") --Rune Band of Wizardry
    LBIS:AddItem(spec6, "22433", LBIS.L["Ring"], "Alt") --Don Mauricio's Band of Domination
    LBIS:AddItem(spec6, "19397", LBIS.L["Ring"], "Alt") --Ring of Blackrock
    LBIS:AddItem(spec6, "13001", LBIS.L["Ring"], "Alt") --Maiden's Circle
    LBIS:AddItem(spec6, "12545", LBIS.L["Ring"], "Alt") --Eye of Orgrimmar
    LBIS:AddItem(spec6, "18103", LBIS.L["Ring"], "Alt") --Band of Rumination
    LBIS:AddItem(spec6, "19344", LBIS.L["Trinket"], "BIS") --Natural Alignment Crystal
    LBIS:AddItem(spec6, "23207", LBIS.L["Trinket"], "BIS") --Mark of the Champion
    LBIS:AddItem(spec6, "23046", LBIS.L["Trinket"], "BIS") --The Restrained Essence of Sapphiron
    LBIS:AddItem(spec6, "19379", LBIS.L["Trinket"], "BIS") --Neltharion's Tear
    LBIS:AddItem(spec6, "18820", LBIS.L["Trinket"], "Alt") --Talisman of Ephemeral Power
    LBIS:AddItem(spec6, "19950", LBIS.L["Trinket"], "Alt") --Zandalarian Hero Charm
    LBIS:AddItem(spec6, "12930", LBIS.L["Trinket"], "Alt") --Briarwood Reed
    LBIS:AddItem(spec6, "18471", LBIS.L["Trinket"], "Alt") --Royal Seal of Eldre'Thalas
    LBIS:AddItem(spec6, "13968", LBIS.L["Trinket"], "Alt") --Eye of the Beast
    LBIS:AddItem(spec6, "22268", LBIS.L["Trinket"], "Alt") --Draconic Infused Emblem
    LBIS:AddItem(spec6, "20503", LBIS.L["Trinket"], "Alt") --Enamored Water Spirit
    LBIS:AddItem(spec6, "22988", LBIS.L["Main Hand"], "BIS") --The End of Dreams
    LBIS:AddItem(spec6, "19360", LBIS.L["Main Hand"], "Alt") --Lok'amir il Romathis
    LBIS:AddItem(spec6, "22803", LBIS.L["Main Hand"], "Alt") --Midnight Haze
    LBIS:AddItem(spec6, "23466", LBIS.L["Main Hand"], "Alt") --High Warlord's Spellblade
    LBIS:AddItem(spec6, "19347", LBIS.L["Main Hand"], "Alt") --Claw of Chromaggus
    LBIS:AddItem(spec6, "17070", LBIS.L["Main Hand"], "Alt") --Fang of the Mystics
    LBIS:AddItem(spec6, "17105", LBIS.L["Main Hand"], "Alt") --Aurastone Hammer
    LBIS:AddItem(spec6, "20214", LBIS.L["Main Hand"], "Alt") --Mindfang
    LBIS:AddItem(spec6, "13964", LBIS.L["Main Hand"], "Alt") --Witchblade
    LBIS:AddItem(spec6, "18321", LBIS.L["Main Hand"], "Alt") --Energetic Rod
    LBIS:AddItem(spec6, "23049", LBIS.L["Off Hand"], "BIS") --Sapphiron's Left Eye
    LBIS:AddItem(spec6, "21597", LBIS.L["Off Hand"], "Alt") --Royal Scepter of Vek'lor
    LBIS:AddItem(spec6, "19891", LBIS.L["Off Hand"], "Alt") --Jin'do's Bag of Whammies
    LBIS:AddItem(spec6, "19315", LBIS.L["Off Hand"], "Alt") --Therazane's Touch
    LBIS:AddItem(spec6, "22329", LBIS.L["Off Hand"], "Alt") --Scepter of Interminable Focus
    LBIS:AddItem(spec6, "19142", LBIS.L["Off Hand"], "Alt") --Fire Runed Grimoire
    LBIS:AddItem(spec6, "22336", LBIS.L["Off Hand"], "Alt") --Draconian Aegis of the Legion
    LBIS:AddItem(spec6, "22253", LBIS.L["Off Hand"], "Alt") --Tome of the Lost
    LBIS:AddItem(spec6, "11904", LBIS.L["Off Hand"], "Alt") --Spirit of Aquementas
    LBIS:AddItem(spec6, "17718", LBIS.L["Off Hand"], "Alt") --Gizlock's Hypertech Buckler
    LBIS:AddItem(spec6, "22800", LBIS.L["Two Hand"], "BIS") --Brimstone Staff
    LBIS:AddItem(spec6, "22799", LBIS.L["Two Hand"], "Alt") --Soulseeker
    LBIS:AddItem(spec6, "21273", LBIS.L["Two Hand"], "Alt") --Blessed Qiraji Acolyte Staff
    LBIS:AddItem(spec6, "19356", LBIS.L["Two Hand"], "Alt") --Staff of the Shadow Flame
    LBIS:AddItem(spec6, "21452", LBIS.L["Two Hand"], "Alt") --Staff of the Ruins
    LBIS:AddItem(spec6, "18534", LBIS.L["Two Hand"], "Alt") --Rod of the Ogre Magi
    LBIS:AddItem(spec6, "23199", LBIS.L["Ranged/Relic"], "BIS") --Totem of the Storm
    LBIS:AddItem(spec6, "22345", LBIS.L["Ranged/Relic"], "Alt") --Totem of Rebirth
    LBIS:AddItem(spec6, "22396", LBIS.L["Ranged/Relic"], "Alt") --Totem of Life
    LBIS:AddItem(spec6, "22395", LBIS.L["Ranged/Relic"], "Alt") --Totem of Rage
end
if not LBIS.IsSOD then
    LoadData();
end
