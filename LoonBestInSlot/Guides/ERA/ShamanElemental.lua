local function LoadData()
    local spec0 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "0")
    local spec1 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "1")
    local spec2 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "2")
    local spec3 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "3")
    local spec4 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "4")
    local spec5 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "5")
    local spec6 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "6")
    local spec7 = LBIS:RegisterSpec(LBIS.L["Shaman"], LBIS.L["Elemental"], "7")

    LBIS:AddEnchant(spec3, "22844", LBIS.L["Head"]) --
    LBIS:AddEnchant(spec3, "22599", LBIS.L["Shoulder"]) --
    LBIS:AddEnchant(spec3, "20014", LBIS.L["Back"]) --
    LBIS:AddEnchant(spec3, "20025", LBIS.L["Chest"]) --
    LBIS:AddEnchant(spec3, "20008", LBIS.L["Wrist"]) --
    LBIS:AddEnchant(spec3, "13947", LBIS.L["Hands"]) --
    LBIS:AddEnchant(spec3, "22844", LBIS.L["Legs"]) --
    LBIS:AddEnchant(spec3, "13890", LBIS.L["Feet"]) --
    LBIS:AddEnchant(spec3, "20034", LBIS.L["Main Hand"]) --
    LBIS:AddEnchant(spec3, "20017", LBIS.L["Off Hand"]) --
    LBIS:AddEnchant(spec3, "22749", LBIS.L["Two Hand"]) --
    LBIS:AddEnchant(spec3, "22749", LBIS.L["Main Hand"]) --

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
end
if not LBIS.IsSOD then
    LoadData();
end
