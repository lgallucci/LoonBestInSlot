namespace AddonManager.Models;

internal class TierPiecesAndTokens
{
    public static readonly Dictionary<int, (int, string)> TierPieces = new Dictionary<int, (int, string)>()
    {
        //Boss Tokens
        { 28791, new (32385, "Magtheridon's Head")}, //Ring of the Recalcitrant
        { 28790, new (32385, "Magtheridon's Head")}, //Naaru Lightwarden's Band
        { 28793, new (32385, "Magtheridon's Head")}, //Band of Crimson Fury
        { 28792, new (32385, "Magtheridon's Head")}, //A'dal's Signet of Defense
        { 30018, new (32405, "Verdant Sphere")}, //Lord Sanguinar's Claim
        { 30017, new (32405, "Verdant Sphere")}, //Telonicus's Pendant of Mayhem
        { 30007, new (32405, "Verdant Sphere")}, //The Darkener's Grasp
        { 30015, new (32405, "Verdant Sphere")}, //The Sun King's Talisman


        //Tier 4        
        { 28963, new (29759, "Helm of the Fallen Hero")}, //Voidheart Crown
        { 29076, new (29759, "Helm of the Fallen Hero")}, //Collar of the Aldor
        { 29081, new (29759, "Helm of the Fallen Hero")}, //Demon Stalker Greathelm
        { 28967, new (29762, "Pauldrons of the Fallen Hero")}, //Voidheart Mantle
        { 29079, new (29762, "Pauldrons of the Fallen Hero")}, //Pauldrons of the Aldor
        { 29084, new (29762, "Pauldrons of the Fallen Hero")}, //Demon Stalker Shoulderguards
        { 28964, new (29755, "Chestguard of the Fallen Hero")}, //Voidheart Robe
        { 29077, new (29755, "Chestguard of the Fallen Hero")}, //Vestments of the Aldor
        { 29082, new (29755, "Chestguard of the Fallen Hero")}, //Demon Stalker Harness
        { 28968, new (29756, "Gloves of the Fallen Hero")}, //Voidheart Gloves
        { 29080, new (29756, "Gloves of the Fallen Hero")}, //Gloves of the Aldor
        { 29085, new (29756, "Gloves of the Fallen Hero")}, //Demon Stalker Gauntlets
        { 28966, new (29765, "Leggings of the Fallen Hero")}, //Voidheart Leggings
        { 29078, new (29765, "Leggings of the Fallen Hero")}, //Legwraps of the Aldor
        { 29083, new (29765, "Leggings of the Fallen Hero")}, //Demon Stalker Greaves

        { 29068, new (29760, "Helm of the Fallen Champion")}, //Justicar Faceguard
        { 29073, new (29760, "Helm of the Fallen Champion")}, //Justicar Crown
        { 29061, new (29760, "Helm of the Fallen Champion")}, //Justicar Diadem
        { 29028, new (29760, "Helm of the Fallen Champion")}, //Cyclone Headdress
        { 29035, new (29760, "Helm of the Fallen Champion")}, //Cyclone Faceguard
        { 29040, new (29760, "Helm of the Fallen Champion")}, //Cyclone Helm
        { 29044, new (29760, "Helm of the Fallen Champion")}, //Netherblade Facemask
        { 29070, new (29763, "Pauldrons of the Fallen Champion")}, // Justicar Shoulderguards
        { 29075, new (29763, "Pauldrons of the Fallen Champion")}, // Justicar Shoulderplates
        { 29064, new (29763, "Pauldrons of the Fallen Champion")}, // Justicar Pauldrons
        { 29031, new (29763, "Pauldrons of the Fallen Champion")}, // Cyclone Shoulderpads
        { 29037, new (29763, "Pauldrons of the Fallen Champion")}, // Cyclone Shoulderguards
        { 29043, new (29763, "Pauldrons of the Fallen Champion")}, // Cyclone Shoulderplates
        { 29047, new (29763, "Pauldrons of the Fallen Champion")}, // Netherblade Shoulderpads
        { 29066, new (29754, "Chestguard of the Fallen Champion")}, //Justicar Chestguard
        { 29071, new (29754, "Chestguard of the Fallen Champion")}, //Justicar Breastplate
        { 29062, new (29754, "Chestguard of the Fallen Champion")}, //Justicar Chestpiece
        { 29029, new (29754, "Chestguard of the Fallen Champion")}, //Cyclone Hauberk
        { 29033, new (29754, "Chestguard of the Fallen Champion")}, //Cyclone Chestguard
        { 29038, new (29754, "Chestguard of the Fallen Champion")}, //Cyclone Breastplate
        { 29045, new (29754, "Chestguard of the Fallen Champion")}, //Netherblade Chestpiece
        { 29067, new (29757, "Gloves of the Fallen Champion")}, //Justicar Handguards
        { 29072, new (29757, "Gloves of the Fallen Champion")}, //Justicar Gauntlets
        { 29065, new (29757, "Gloves of the Fallen Champion")}, //Justicar Gloves
        { 29032, new (29757, "Gloves of the Fallen Champion")}, //Cyclone Gloves
        { 29034, new (29757, "Gloves of the Fallen Champion")}, //Cyclone Handguards
        { 29039, new (29757, "Gloves of the Fallen Champion")}, //Cyclone Gauntlets
        { 29048, new (29757, "Gloves of the Fallen Champion")}, //Netherblade Gloves
        { 29069, new (29766, "Leggings of the Fallen Champion")}, //Justicar Legguards
        { 29074, new (29766, "Leggings of the Fallen Champion")}, //Justicar Greaves
        { 29063, new (29766, "Leggings of the Fallen Champion")}, //Justicar Leggings
        { 29030, new (29766, "Leggings of the Fallen Champion")}, //Cyclone Kilt
        { 29036, new (29766, "Leggings of the Fallen Champion")}, //Cyclone Legguards
        { 29042, new (29766, "Leggings of the Fallen Champion")}, //Cyclone War-Kilt
        { 29046, new (29766, "Leggings of the Fallen Champion")}, //Netherblade Breeches

        { 29098, new (29761, "Helm of the Fallen Defender")}, //Stag-Helm of Malorne
        { 29086, new (29761, "Helm of the Fallen Defender")}, //Crown of Malorne
        { 29093, new (29761, "Helm of the Fallen Defender")}, //Antlers of Malorne
        { 29011, new (29761, "Helm of the Fallen Defender")}, //Warbringer Greathelm
        { 29021, new (29761, "Helm of the Fallen Defender")}, //Warbringer Battle-Helm
        { 29049, new (29761, "Helm of the Fallen Defender")}, //Light-Collar of the Incarnate
        { 29058, new (29761, "Helm of the Fallen Defender")}, //Soul-Collar of the Incarnate
        { 29100, new (29764, "Pauldrons of the Fallen Defender")}, // Mantle of Malorne
        { 29089, new (29764, "Pauldrons of the Fallen Defender")}, // Shoulderguards of Malorne
        { 29095, new (29764, "Pauldrons of the Fallen Defender")}, // Pauldrons of Malorne
        { 29016, new (29764, "Pauldrons of the Fallen Defender")}, // Warbringer Shoulderguards
        { 29023, new (29764, "Pauldrons of the Fallen Defender")}, // Warbringer Shoulderplates
        { 29054, new (29764, "Pauldrons of the Fallen Defender")}, // Light-Mantle of the Incarnate
        { 29060, new (29764, "Pauldrons of the Fallen Defender")}, // Soul-Mantle of the Incarnate
        { 29096, new (29753, "Chestguard of the Fallen Defender")}, //Breastplate of Malorne
        { 29087, new (29753, "Chestguard of the Fallen Defender")}, //Chestguard of Malorne
        { 29091, new (29753, "Chestguard of the Fallen Defender")}, //Chestpiece of Malorne
        { 29012, new (29753, "Chestguard of the Fallen Defender")}, //Warbringer Chestguard
        { 29019, new (29753, "Chestguard of the Fallen Defender")}, //Warbringer Breastplate
        { 29050, new (29753, "Chestguard of the Fallen Defender")}, //Robes of the Incarnate
        { 29056, new (29753, "Chestguard of the Fallen Defender")}, //Shroud of the Incarnate
        { 29097, new (29758, "Gloves of the Fallen Defender")}, //Gauntlets of Malorne
        { 29090, new (29758, "Gloves of the Fallen Defender")}, //Handguards of Malorne
        { 29092, new (29758, "Gloves of the Fallen Defender")}, //Gloves of Malorne
        { 29017, new (29758, "Gloves of the Fallen Defender")}, //Warbringer Handguards
        { 29020, new (29758, "Gloves of the Fallen Defender")}, //Warbringer Gauntlets
        { 29055, new (29758, "Gloves of the Fallen Defender")}, //Handwraps of the Incarnate
        { 29057, new (29758, "Gloves of the Fallen Defender")}, //Gloves of the Incarnate
        { 29099, new (29767, "Leggings of the Fallen Defender")}, //Greaves of Malorne
        { 29088, new (29767, "Leggings of the Fallen Defender")}, //Legguards of Malorne
        { 29094, new (29767, "Leggings of the Fallen Defender")}, //Britches of Malorne
        { 29015, new (29767, "Leggings of the Fallen Defender")}, //Warbringer Legguards
        { 29022, new (29767, "Leggings of the Fallen Defender")}, //Warbringer Greaves
        { 29053, new (29767, "Leggings of the Fallen Defender")}, //Trousers of the Incarnate
        { 29059, new (29767, "Leggings of the Fallen Defender")}, //Leggings of the Incarnate


        //Tier 5
        { 30141, new (30244, "Helm of the Vanquished Hero")}, //Rift Stalker Helm
        { 30206, new (30244, "Helm of the Vanquished Hero")}, //Cowl of Tirisfal
        { 30212, new (30244, "Helm of the Vanquished Hero")}, //Hood of the Corruptor
        { 30143, new (30250, "Pauldrons of the Vanquished Hero")}, // Rift Stalker Mantle
        { 30210, new (30250, "Pauldrons of the Vanquished Hero")}, // Mantle of Tirisfal
        { 30215, new (30250, "Pauldrons of the Vanquished Hero")}, // Mantle of the Corruptor
        { 30139, new (30238, "Chestguard of the Vanquished Hero")}, //Rift Stalker Hauberk
        { 30196, new (30238, "Chestguard of the Vanquished Hero")}, //Robes of Tirisfal
        { 30214, new (30238, "Chestguard of the Vanquished Hero")}, //Robe of the Corruptor
        { 30140, new (30241, "Gloves of the Vanquished Hero")}, //Rift Stalker Gauntlets
        { 30205, new (30241, "Gloves of the Vanquished Hero")}, //Gloves of Tirisfal
        { 30211, new (30241, "Gloves of the Vanquished Hero")}, //Gloves of the Corruptor
        { 30142, new (30247, "Leggings of the Vanquished Hero")}, //Rift Stalker Leggings
        { 30207, new (30247, "Leggings of the Vanquished Hero")}, //Leggings of Tirisfal
        { 30213, new (30247, "Leggings of the Vanquished Hero")}, //Leggings of the Corruptor
        
        { 30125, new (30242, "Helm of the Vanquished Champion")}, //Crystalforge Faceguard
        { 30131, new (30242, "Helm of the Vanquished Champion")}, //Crystalforge War-Helm
        { 30136, new (30242, "Helm of the Vanquished Champion")}, //Crystalforge Greathelm
        { 30146, new (30242, "Helm of the Vanquished Champion")}, //Deathmantle Helm
        { 30166, new (30242, "Helm of the Vanquished Champion")}, //Cataclysm Headguard
        { 30171, new (30242, "Helm of the Vanquished Champion")}, //Cataclysm Headpiece
        { 30190, new (30242, "Helm of the Vanquished Champion")}, //Cataclysm Helm
        { 30127, new (30248, "Pauldrons of the Vanquished Champion")}, // Crystalforge Shoulderguards
        { 30133, new (30248, "Pauldrons of the Vanquished Champion")}, // Crystalforge Shoulderbraces
        { 30138, new (30248, "Pauldrons of the Vanquished Champion")}, // Crystalforge Pauldrons
        { 30149, new (30248, "Pauldrons of the Vanquished Champion")}, // Deathmantle Shoulderpads
        { 30168, new (30248, "Pauldrons of the Vanquished Champion")}, // Cataclysm Shoulderguards
        { 30173, new (30248, "Pauldrons of the Vanquished Champion")}, // Cataclysm Shoulderpads
        { 30194, new (30248, "Pauldrons of the Vanquished Champion")}, // Cataclysm Shoulderplates
        { 30123, new (30236, "Chestguard of the Vanquished Champion")}, //Crystalforge Chestguard
        { 30129, new (30236, "Chestguard of the Vanquished Champion")}, //Crystalforge Breastplate
        { 30134, new (30236, "Chestguard of the Vanquished Champion")}, //Crystalforge Chestpiece
        { 30144, new (30236, "Chestguard of the Vanquished Champion")}, //Deathmantle Chestguard
        { 30164, new (30236, "Chestguard of the Vanquished Champion")}, //Cataclysm Chestguard
        { 30169, new (30236, "Chestguard of the Vanquished Champion")}, //Cataclysm Chestpiece
        { 30185, new (30236, "Chestguard of the Vanquished Champion")}, //Cataclysm Chestplate
        { 30124, new (30239, "Gloves of the Vanquished Champion")}, //Crystalforge Handguards
        { 30130, new (30239, "Gloves of the Vanquished Champion")}, //Crystalforge Gauntlets
        { 30135, new (30239, "Gloves of the Vanquished Champion")}, //Crystalforge Gloves
        { 30145, new (30239, "Gloves of the Vanquished Champion")}, //Deathmantle Handguards
        { 30165, new (30239, "Gloves of the Vanquished Champion")}, //Cataclysm Gloves
        { 30170, new (30239, "Gloves of the Vanquished Champion")}, //Cataclysm Handgrips
        { 30189, new (30239, "Gloves of the Vanquished Champion")}, //Cataclysm Gauntlets
        { 30126, new (30245, "Leggings of the Vanquished Champion")}, //Crystalforge Legguards
        { 30132, new (30245, "Leggings of the Vanquished Champion")}, //Crystalforge Greaves
        { 30137, new (30245, "Leggings of the Vanquished Champion")}, //Crystalforge Leggings
        { 30148, new (30245, "Leggings of the Vanquished Champion")}, //Deathmantle Legguards
        { 30167, new (30245, "Leggings of the Vanquished Champion")}, //Cataclysm Legguards
        { 30172, new (30245, "Leggings of the Vanquished Champion")}, //Cataclysm Leggings
        { 30192, new (30245, "Leggings of the Vanquished Champion")}, //Cataclysm Legplates

        { 30115, new (30243, "Helm of the Vanquished Defender")}, //Destroyer Greathelm
        { 30120, new (30243, "Helm of the Vanquished Defender")}, //Destroyer Battle-Helm
        { 30152, new (30243, "Helm of the Vanquished Defender")}, //Cowl of the Avatar
        { 30161, new (30243, "Helm of the Vanquished Defender")}, //Hood of the Avatar
        { 30219, new (30243, "Helm of the Vanquished Defender")}, //Nordrassil Headguard
        { 30228, new (30243, "Helm of the Vanquished Defender")}, //Nordrassil Headdress
        { 30233, new (30243, "Helm of the Vanquished Defender")}, //Nordrassil Headpiece
        { 30117, new (30249, "Pauldrons of the Vanquished Defender")}, // Destroyer Shoulderguards
        { 30122, new (30249, "Pauldrons of the Vanquished Defender")}, // Destroyer Shoulderblades
        { 30154, new (30249, "Pauldrons of the Vanquished Defender")}, // Mantle of the Avatar
        { 30163, new (30249, "Pauldrons of the Vanquished Defender")}, // Wings of the Avatar
        { 30221, new (30249, "Pauldrons of the Vanquished Defender")}, // Nordrassil Life-Mantle
        { 30230, new (30249, "Pauldrons of the Vanquished Defender")}, // Nordrassil Feral-Mantle
        { 30235, new (30249, "Pauldrons of the Vanquished Defender")}, // Nordrassil Wrath-Mantle
        { 30113, new (30237, "Chestguard of the Vanquished Defender") }, //Destroyer Chestguard
        { 30118, new (30237, "Chestguard of the Vanquished Defender") }, //Destroyer Breastplate
        { 30150, new (30237, "Chestguard of the Vanquished Defender") }, //Vestments of the Avatar
        { 30159, new (30237, "Chestguard of the Vanquished Defender") }, //Shroud of the Avatar
        { 30216, new (30237, "Chestguard of the Vanquished Defender") }, //Nordrassil Chestguard
        { 30222, new (30237, "Chestguard of the Vanquished Defender") }, //Nordrassil Chestplate
        { 30231, new (30237, "Chestguard of the Vanquished Defender") }, //Nordrassil Chestpiece
        { 30114, new (30240, "Gloves of the Vanquished Defender")}, //Destroyer Handguards
        { 30119, new (30240, "Gloves of the Vanquished Defender")}, //Destroyer Gauntlets
        { 30151, new (30240, "Gloves of the Vanquished Defender")}, //Gloves of the Avatar
        { 30160, new (30240, "Gloves of the Vanquished Defender")}, //Handguards of the Avatar
        { 30217, new (30240, "Gloves of the Vanquished Defender")}, //Nordrassil Gloves
        { 30223, new (30240, "Gloves of the Vanquished Defender")}, //Nordrassil Handgrips
        { 30232, new (30240, "Gloves of the Vanquished Defender")}, //Nordrassil Gauntlets
        { 30116, new (30246, "Leggings of the Vanquished Defender")}, //Destroyer Legguards
        { 30121, new (30246, "Leggings of the Vanquished Defender")}, //Destroyer Greaves
        { 30153, new (30246, "Leggings of the Vanquished Defender")}, //Breeches of the Avatar
        { 30162, new (30246, "Leggings of the Vanquished Defender")}, //Leggings of the Avatar
        { 30220, new (30246, "Leggings of the Vanquished Defender")}, //Nordrassil Life-Kilt
        { 30229, new (30246, "Leggings of the Vanquished Defender")}, //Nordrassil Feral-Kilt
        { 30234, new (30246, "Leggings of the Vanquished Defender")}, //Nordrassil Wrath-Kilt


        //Tier 6
        { 30972, new (31095, "Helm of the Forgotten Protector")}, //Onslaught Battle-Helm
        { 30974, new (31095, "Helm of the Forgotten Protector")}, //Onslaught Greathelm
        { 31003, new (31095, "Helm of the Forgotten Protector")}, //Gronnstalker's Helmet
        { 31012, new (31095, "Helm of the Forgotten Protector")}, //Skyshatter Helmet
        { 31014, new (31095, "Helm of the Forgotten Protector")}, //Skyshatter Headguard
        { 31015, new (31095, "Helm of the Forgotten Protector")}, //Skyshatter Cover
        { 30979, new (31103, "Pauldrons of the Forgotten Protector")}, //Onslaught Shoulderblades
        { 30980, new (31103, "Pauldrons of the Forgotten Protector")}, //Onslaught Shoulderguards
        { 31006, new (31103, "Pauldrons of the Forgotten Protector")}, //Gronnstalker's Spaulders
        { 31022, new (31103, "Pauldrons of the Forgotten Protector")}, //Skyshatter Shoulderpads
        { 31023, new (31103, "Pauldrons of the Forgotten Protector")}, //Skyshatter Mantle
        { 31024, new (31103, "Pauldrons of the Forgotten Protector")}, //Skyshatter Pauldrons
        { 30975, new (31091, "Chestguard of the Forgotten Protector")}, //Onslaught Breastplate
        { 30976, new (31091, "Chestguard of the Forgotten Protector")}, //Onslaught Chestguard
        { 31004, new (31091, "Chestguard of the Forgotten Protector")}, //Gronnstalker's Chestguard
        { 31016, new (31091, "Chestguard of the Forgotten Protector")}, //Skyshatter Chestguard
        { 31017, new (31091, "Chestguard of the Forgotten Protector")}, //Skyshatter Breastplate
        { 31018, new (31091, "Chestguard of the Forgotten Protector")}, //Skyshatter Tunic
        { 30969, new (31094, "Gloves of the Forgotten Protector")}, //Onslaught Gauntlets
        { 30970, new (31094, "Gloves of the Forgotten Protector")}, //Onslaught Handguards
        { 31001, new (31094, "Gloves of the Forgotten Protector")}, //Gronnstalker's Gloves
        { 31007, new (31094, "Gloves of the Forgotten Protector")}, //Skyshatter Gloves
        { 31008, new (31094, "Gloves of the Forgotten Protector") }, //Skyshatter Gauntlets
        { 31011, new (31094, "Gloves of the Forgotten Protector")}, //Skyshatter Grips
        { 30977, new (31100, "Leggings of the Forgotten Protector") }, //Onslaught Greaves
        { 30978, new (31100, "Leggings of the Forgotten Protector") }, //Onslaught Legguards
        { 31005, new (31100, "Leggings of the Forgotten Protector") }, //Gronnstalker's Leggings
        { 31019, new (31100, "Leggings of the Forgotten Protector") }, //Skyshatter Leggings
        { 31020, new (31100, "Leggings of the Forgotten Protector") }, //Skyshatter Legguards
        { 31021, new (31100, "Leggings of the Forgotten Protector") }, //Skyshatter Pants

        { 30987, new (31097, "Helm of the Forgotten Conqueror")}, //Lightbringer Faceguard
        { 30988, new (31097, "Helm of the Forgotten Conqueror")}, //Lightbringer Greathelm
        { 30989, new (31097, "Helm of the Forgotten Conqueror")}, //Lightbringer War-Helm
        { 31051, new (31097, "Helm of the Forgotten Conqueror")}, //Hood of the Malefic
        { 31063, new (31097, "Helm of the Forgotten Conqueror")}, //Cowl of Absolution
        { 31064, new (31097, "Helm of the Forgotten Conqueror")}, //Hood of Absolution
        { 30996, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Lightbringer Pauldrons
        { 30997, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Lightbringer Shoulderbraces
        { 30998, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Lightbringer Shoulderguards
        { 31054, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Mantle of the Malefic
        { 31069, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Mantle of Absolution
        { 31070, new (31101, "Pauldrons of the Forgotten Conqueror")}, //Shoulderpads of Absolution
        { 30990, new (31089, "Chestguard of the Forgotten Conqueror")}, //Lightbringer Breastplate
        { 30991, new (31089, "Chestguard of the Forgotten Conqueror")}, //Lightbringer Chestguard
        { 30992, new (31089, "Chestguard of the Forgotten Conqueror")}, //Lightbringer Chestpiece
        { 31052, new (31089, "Chestguard of the Forgotten Conqueror")}, //Robe of the Malefic
        { 31065, new (31089, "Chestguard of the Forgotten Conqueror")}, //Shroud of Absolution
        { 31066, new (31089, "Chestguard of the Forgotten Conqueror")}, //Vestments of Absolution
        { 30982, new (31092, "Gloves of the Forgotten Conqueror")}, //Lightbringer Gauntlets
        { 30983, new (31092, "Gloves of the Forgotten Conqueror")}, //Lightbringer Gloves
        { 30985, new (31092, "Gloves of the Forgotten Conqueror")}, //Lightbringer Handguards
        { 31050, new (31092, "Gloves of the Forgotten Conqueror")}, //Gloves of the Malefic
        { 31060, new (31092, "Gloves of the Forgotten Conqueror")}, //Gloves of Absolution
        { 31061, new (31092, "Gloves of the Forgotten Conqueror")}, //Handguards of Absolution
        { 30993, new (31098, "Leggings of the Forgotten Conqueror")}, //Lightbringer Greaves
        { 30994, new (31098, "Leggings of the Forgotten Conqueror")}, //Lightbringer Leggings
        { 30995, new (31098, "Leggings of the Forgotten Conqueror")}, //Lightbringer Legguards
        { 31053, new (31098, "Leggings of the Forgotten Conqueror")}, //Leggings of the Malefic
        { 31067, new (31098, "Leggings of the Forgotten Conqueror")}, //Leggings of Absolution
        { 31068, new (31098, "Leggings of the Forgotten Conqueror")}, //Breeches of Absolution
        
        { 31027, new (31096, "Helm of the Forgotten Vanquisher")}, //Slayer's Helm
        { 31037, new (31096, "Helm of the Forgotten Vanquisher")}, //Thunderheart Helmet
        { 31039, new (31096, "Helm of the Forgotten Vanquisher")}, //Thunderheart Cover
        { 31040, new (31096, "Helm of the Forgotten Vanquisher")}, //Thunderheart Headguard
        { 31056, new (31096, "Helm of the Forgotten Vanquisher")}, //Cowl of the Tempest
        { 31030, new (31102, "Pauldrons of the Forgotten Vanquisher")}, //Slayer's Shoulderpads
        { 31047, new (31102, "Pauldrons of the Forgotten Vanquisher")}, //Thunderheart Spaulders
        { 31048, new (31102, "Pauldrons of the Forgotten Vanquisher")}, //Thunderheart Pauldrons
        { 31049, new (31102, "Pauldrons of the Forgotten Vanquisher")}, //Thunderheart Shoulderpads
        { 31059, new (31102, "Pauldrons of the Forgotten Vanquisher")}, //Mantle of the Tempest
        { 31028, new (31090, "Chestguard of the Forgotten Vanquisher")}, //Slayer's Chestguard
        { 31041, new (31090, "Chestguard of the Forgotten Vanquisher")}, //Thunderheart Tunic
        { 31042, new (31090, "Chestguard of the Forgotten Vanquisher")}, //Thunderheart Chestguard
        { 31043, new (31090, "Chestguard of the Forgotten Vanquisher")}, //Thunderheart Vest
        { 31057, new (31090, "Chestguard of the Forgotten Vanquisher")}, //Robes of the Tempest
        { 31026, new (31093, "Gloves of the Forgotten Vanquisher")}, //Slayer's Handguards
        { 31032, new (31093, "Gloves of the Forgotten Vanquisher")}, //Thunderheart Gloves
        { 31034, new (31093, "Gloves of the Forgotten Vanquisher")}, //Thunderheart Gauntlets
        { 31035, new (31093, "Gloves of the Forgotten Vanquisher")}, //Thunderheart Handguards
        { 31055, new (31093, "Gloves of the Forgotten Vanquisher")}, //Gloves of the Tempest
        { 31029, new (31099, "Leggings of the Forgotten Vanquisher")}, //Slayer's Legguards
        { 31044, new (31099, "Leggings of the Forgotten Vanquisher")}, //Thunderheart Leggings
        { 31045, new (31099, "Leggings of the Forgotten Vanquisher")}, //Thunderheart Legguards
        { 31046, new (31099, "Leggings of the Forgotten Vanquisher")}, //Thunderheart Pants
        { 31058, new (31099, "Leggings of the Forgotten Vanquisher")} //Leggings of the Tempest
    };
}
