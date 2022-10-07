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
        { 31058, new (31099, "Leggings of the Forgotten Vanquisher")}, //Leggings of the Tempest

        //T6 Sunwell
        { 34435 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Cuffs of Absolution
        { 34434 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Bracers of Absolution
        { 34431 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Lightbringer Bands
        { 34432 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Lightbringer Bracers
        { 34433 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Lightbringer Wristguards
        { 34436 ,new (34848, "Bracers of the Forgotten Conqueror") }, //Bracers of the Malefic
        { 34527 ,new (34848, "Belt of the Forgotten Conqueror")}, //Belt of Absolution
        { 34528 ,new (34848, "Belt of the Forgotten Conqueror")}, //Cord of Absolution
        { 34487 ,new (34848, "Belt of the Forgotten Conqueror")}, //Lightbringer Belt
        { 34488 ,new (34848, "Belt of the Forgotten Conqueror")}, //Lightbringer Waistguard
        { 34485 ,new (34848, "Belt of the Forgotten Conqueror")}, //Lightbringer Girdle
        { 34541 ,new (34848, "Belt of the Forgotten Conqueror")}, //Belt of the Malefic
        { 34563 ,new (34856, "Boots of the Forgotten Conqueror")}, //Treads of Absolution
        { 34562 ,new (34856, "Boots of the Forgotten Conqueror")}, //Boots of Absolution
        { 34560 ,new (34856, "Boots of the Forgotten Conqueror")}, //Lightbringer Stompers
        { 34559 ,new (34856, "Boots of the Forgotten Conqueror")}, //Lightbringer Treads
        { 34561 ,new (34856, "Boots of the Forgotten Conqueror")}, //Lightbringer Boots
        { 34564 ,new (34856, "Boots of the Forgotten Conqueror")}, //Boots of the Malefic

        { 34441 ,new (34851, "Bracers of the Forgotten Protector") }, //Onslaught Bracers
        { 34442 ,new (34851, "Bracers of the Forgotten Protector") }, //Onslaught Wristguards
        { 34443 ,new (34851, "Bracers of the Forgotten Protector") }, //Gronnstalker's Bracers
        { 34439 ,new (34851, "Bracers of the Forgotten Protector") }, //Skyshatter Wristguards
        { 34438 ,new (34851, "Bracers of the Forgotten Protector") }, //Skyshatter Bracers
        { 34437 ,new (34851, "Bracers of the Forgotten Protector") }, //Skyshatter Bands
        { 34547 ,new(34854, "Belt of the Forgotten Protector") }, //Onslaught Waistguard
        { 34546 ,new(34854, "Belt of the Forgotten Protector") }, //Onslaught Belt
        { 34549 ,new(34854, "Belt of the Forgotten Protector") }, //Gronnstalker's Belt
        { 34545 ,new(34854, "Belt of the Forgotten Protector") }, //Skyshatter Girdle
        { 34543 ,new(34854, "Belt of the Forgotten Protector") }, //Skyshatter Belt
        { 34542 ,new(34854, "Belt of the Forgotten Protector") }, //Skyshatter Cord
        { 34568 ,new(34857, "Boots of the Forgotten Protector") }, //Onslaught Boots
        { 34569 ,new(34857, "Boots of the Forgotten Protector") }, //Onslaught Treads
        { 34570 ,new(34857, "Boots of the Forgotten Protector") }, //Gronnstalker's Boots
        { 34565 ,new(34857, "Boots of the Forgotten Protector") }, //Skyshatter Boots
        { 34566 ,new(34857, "Boots of the Forgotten Protector") }, //Skyshatter Treads
        { 34567 ,new(34857, "Boots of the Forgotten Protector") }, //Skyshatter Greaves

        { 34444 ,new (34852, "Bracers of the Forgotten Vanquisher") }, //Thunderheart Wristguards
        { 34445 ,new (34852, "Bracers of the Forgotten Vanquisher") }, //Thunderheart Bracers
        { 34446 ,new (34852, "Bracers of the Forgotten Vanquisher") }, //Thunderheart Bands
        { 34448 ,new (34852, "Bracers of the Forgotten Vanquisher") }, //Slayer's Bracers
        { 34447 ,new (34852, "Bracers of the Forgotten Vanquisher") }, //Bracers of the Tempest
        { 34556 ,new (34855, "Belt of the Forgotten Vanquisher") }, //Thunderheart Waistguard
        { 34555 ,new (34855, "Belt of the Forgotten Vanquisher") }, //Thunderheart Cord
        { 34554 ,new (34855, "Belt of the Forgotten Vanquisher") }, //Thunderheart Belt
        { 34558 ,new (34855, "Belt of the Forgotten Vanquisher") }, //Slayer's Belt
        { 34557 ,new (34855, "Belt of the Forgotten Vanquisher") }, //Belt of the Tempest
        { 34573 ,new (34858, "Boots of the Forgotten Vanquisher") }, //Thunderheart Treads
        { 34572 ,new (34858, "Boots of the Forgotten Vanquisher") }, //Thunderheart Footwraps
        { 34571 ,new (34858, "Boots of the Forgotten Vanquisher") }, //Thunderheart Boots
        { 34575 ,new (34858, "Boots of the Forgotten Vanquisher") }, //Slayer's Boots
        { 34574 ,new (34858, "Boots of the Forgotten Vanquisher") },  //Boots of the Tempest

        //T7
        { 39531, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Dreamwalker Headpiece
        { 39545, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Dreamwalker Cover
        { 39553, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Dreamwalker Headguard
        { 39561, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Bonescythe Helmet
        { 39491, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Frostfire Circlet
        { 39619, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Scourgeborne Helmet
        { 39625, new (40618, "Helm of the Lost Vanquisher")}, //Heroes' Scourgeborne Faceguard
        { 39542, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Dreamwalker Spaulders
        { 39548, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Dreamwalker Mantle
        { 39556, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Dreamwalker Shoulderpads
        { 39565, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Bonescythe Pauldrons
        { 39494, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Frostfire Shoulderpads
        { 39621, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Scourgeborne Shoulderplates
        { 39627, new (40624, "Spaulders of the Lost Vanquisher")}, //Heroes' Scourgeborne Pauldrons
        { 39538, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Dreamwalker Robe
        { 39547, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Dreamwalker Vestments
        { 39554, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Dreamwalker Raiments
        { 39558, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Bonescythe Breastplate
        { 39492, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Frostfire Robe
        { 39617, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Scourgeborne Battleplate
        { 39623, new (40612, "Chestguard of the Lost Vanquisher")}, //Heroes' Scourgeborne Chestguard
        { 39543, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Dreamwalker Handguards
        { 39544, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Dreamwalker Gloves
        { 39557, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Dreamwalker Handgrips
        { 39560, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Bonescythe Gauntlets
        { 39495, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Frostfire Gloves
        { 39618, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Scourgeborne Gauntlets
        { 39624, new (40615, "Gloves of the Lost Vanquisher")}, //Heroes' Scourgeborne Handguards
        { 39539, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Dreamwalker Leggings
        { 39546, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Dreamwalker Trousers
        { 39555, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Dreamwalker Legguards
        { 39564, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Bonescythe Legplates
        { 39493, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Frostfire Leggings
        { 39620, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Scourgeborne Legplates
        { 39626, new (40621, "Leggings of the Lost Vanquisher") }, //Heroes' Scourgeborne Legguards
        { 40461, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Dreamwalker Headpiece
        { 40467, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Dreamwalker Cover
        { 40473, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Dreamwalker Headguard
        { 40499, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Bonescythe Helmet
        { 40416, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Frostfire Circlet
        { 40554, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Scourgeborne Helmet
        { 40565, new (40633, "Crown of the Lost Vanquisher")}, //Valorous Scourgeborne Faceguard
        { 40465, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Dreamwalker Spaulders
        { 40470, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Dreamwalker Mantle
        { 40494, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Dreamwalker Shoulderpads
        { 40502, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Bonescythe Pauldrons
        { 40419, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Frostfire Shoulderpads
        { 40557, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Scourgeborne Shoulderplates
        { 40568, new (40639, "Mantle of the Lost Vanquisher")}, //Valorous Scourgeborne Pauldrons
        { 40463, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Dreamwalker Robe
        { 40469, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Dreamwalker Vestments
        { 40471, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Dreamwalker Raiments
        { 40495, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Bonescythe Breastplate
        { 40418, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Frostfire Robe
        { 40550, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Scourgeborne Battleplate
        { 40559, new (40627, "Breastplate of the Lost Vanquisher")}, //Valorous Scourgeborne Chestguard
        { 40460, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Dreamwalker Handguards
        { 40466, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Dreamwalker Gloves
        { 40472, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Dreamwalker Handgrips
        { 40496, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Bonescythe Gauntlets
        { 40415, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Frostfire Gloves
        { 40552, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Scourgeborne Gauntlets
        { 40563, new (40630, "Gauntlets of the Lost Vanquisher")}, //Valorous Scourgeborne Handguards
        { 40462, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Dreamwalker Leggings
        { 40468, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Dreamwalker Trousers
        { 40493, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Dreamwalker Legguards
        { 40500, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Bonescythe Legplates
        { 40417, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Frostfire Leggings
        { 40556, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Scourgeborne Legplates
        { 40567, new (40636, "Legplates of the Lost Vanquisher") }, //Valorous Scourgeborne Legguards

        { 39496, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Plagueheart Circlet
        { 39514, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Crown of Faith
        { 39521, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Circlet of Faith
        { 39628, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Redemption Headpiece
        { 39635, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Redemption Helm
        { 39640, new (40616, "Helm of the Lost Conqueror")}, //Heroes' Redemption Faceguard
        { 39499, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Plagueheart Shoulderpads
        { 39518, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Shoulderpads of Faith
        { 39529, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Mantle of Faith
        { 39631, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Redemption Spaulders
        { 39637, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Redemption Shoulderplates
        { 39642, new (40622, "Spaulders of the Lost Conqueror")}, //Heroes' Redemption Shoulderguards
        { 39497, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Plagueheart Robe
        { 39515, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Robe of Faith
        { 39523, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Raiments of Faith
        { 39629, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Redemption Tunic
        { 39633, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Redemption Chestpiece
        { 39638, new (40610, "Chestguard of the Lost Conqueror")}, //Heroes' Redemption Breastplate
        { 39500, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Plagueheart Gloves
        { 39519, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Gloves of Faith
        { 39530, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Handwraps of Faith
        { 39632, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Redemption Gloves
        { 39634, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Redemption Gauntlets
        { 39639, new (40613, "Gloves of the Lost Conqueror")}, //Heroes' Redemption Handguards
        { 39498, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Plagueheart Leggings
        { 39517, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Leggings of Faith
        { 39528, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Pants of Faith
        { 39630, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Redemption Greaves
        { 39636, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Redemption Legplates
        { 39641, new (40619, "Leggings of the Lost Conqueror")}, //Heroes' Redemption Legguards        
        { 40421, new (40631, "Crown of the Lost Conqueror")}, //Valorous Plagueheart Circlet
        { 40447, new (40631, "Crown of the Lost Conqueror")}, //Valorous Crown of Faith
        { 40456, new (40631, "Crown of the Lost Conqueror")}, //Valorous Circlet of Faith
        { 40571, new (40631, "Crown of the Lost Conqueror")}, //Valorous Redemption Headpiece
        { 40576, new (40631, "Crown of the Lost Conqueror")}, //Valorous Redemption Helm
        { 40581, new (40631, "Crown of the Lost Conqueror")}, //Valorous Redemption Faceguard
        { 40424, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Plagueheart Shoulderpads
        { 40450, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Shoulderpads of Faith
        { 40459, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Mantle of Faith
        { 40573, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Redemption Spaulders
        { 40578, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Redemption Shoulderplates
        { 40584, new (40637, "Mantle of the Lost Conqueror")}, //Valorous Redemption Shoulderguards
        { 40423, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Plagueheart Robe
        { 40449, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Robe of Faith
        { 40458, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Raiments of Faith
        { 40569, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Redemption Tunic
        { 40574, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Redemption Chestpiece
        { 40579, new (40625, "Breastplate of the Lost Conqueror")}, //Valorous Redemption Breastplate
        { 40420, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Plagueheart Gloves
        { 40445, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Gloves of Faith
        { 40454, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Handwraps of Faith
        { 40570, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Redemption Gloves
        { 40575, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Redemption Gauntlets
        { 40580, new (40628, "Gauntlets of the Lost Conqueror")}, //Valorous Redemption Handguards
        { 40422, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Plagueheart Leggings
        { 40448, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Leggings of Faith
        { 40457, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Pants of Faith
        { 40572, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Redemption Greaves
        { 40577, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Redemption Legplates
        { 40583, new (40634, "Legplates of the Lost Conqueror")}, //Valorous Redemption Legguards
          
        { 39605, new (40617, "Helm of the Lost Protector")}, //Heroes' Dreadnaught Helmet
        { 39610, new (40617, "Helm of the Lost Protector")}, //Heroes' Dreadnaught Greathelm
        { 39578, new (40617, "Helm of the Lost Protector")}, //Heroes' Cryptstalker Headpiece
        { 39583, new (40617, "Helm of the Lost Protector")}, //Heroes' Earthshatter Headpiece
        { 39594, new (40617, "Helm of the Lost Protector")}, //Heroes' Earthshatter Helm
        { 39602, new (40617, "Helm of the Lost Protector")}, //Heroes' Earthshatter Faceguard
        { 39608, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Dreadnaught Shoulderplates
        { 39613, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Dreadnaught Pauldrons
        { 39581, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Cryptstalker Spaulders
        { 39590, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Earthshatter Spaulders
        { 39596, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Earthshatter Shoulderpads
        { 39604, new (40623, "Spaulders of the Lost Protector")}, //Heroes' Earthshatter Shoulderguards
        { 39606, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Dreadnaught Battleplate
        { 39611, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Dreadnaught Breastplate
        { 39579, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Cryptstalker Tunic
        { 39588, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Earthshatter Tunic
        { 39592, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Earthshatter Hauberk
        { 39597, new (40611, "Chestguard of the Lost Protector")}, //Heroes' Earthshatter Chestguard
        { 39609, new (40614, "Gloves of the Lost Protector")}, //Heroes' Dreadnaught Gauntlets
        { 39622, new (40614, "Gloves of the Lost Protector")}, //Heroes' Dreadnaught Handguards
        { 39582, new (40614, "Gloves of the Lost Protector")}, //Heroes' Cryptstalker Handguards
        { 39591, new (40614, "Gloves of the Lost Protector")}, //Heroes' Earthshatter Handguards
        { 39593, new (40614, "Gloves of the Lost Protector")}, //Heroes' Earthshatter Gloves
        { 39601, new (40614, "Gloves of the Lost Protector")}, //Heroes' Earthshatter Grips
        { 39607, new (40620, "Leggings of the Lost Protector")}, //Heroes' Dreadnaught Legplates
        { 39612, new (40620, "Leggings of the Lost Protector")}, //Heroes' Dreadnaught Legguards
        { 39580, new (40620, "Leggings of the Lost Protector")}, //Heroes' Cryptstalker Legguards
        { 39589, new (40620, "Leggings of the Lost Protector")}, //Heroes' Earthshatter Legguards
        { 39595, new (40620, "Leggings of the Lost Protector")}, //Heroes' Earthshatter Kilt
        { 39603, new (40620, "Leggings of the Lost Protector")}, //Heroes' Earthshatter War-Kilt
        { 40528, new (40632, "Crown of the Lost Protector")}, //Valorous Dreadnaught Helmet
        { 40546, new (40632, "Crown of the Lost Protector")}, //Valorous Dreadnaught Greathelm
        { 40505, new (40632, "Crown of the Lost Protector")}, //Valorous Cryptstalker Headpiece
        { 40510, new (40632, "Crown of the Lost Protector")}, //Valorous Earthshatter Headpiece
        { 40516, new (40632, "Crown of the Lost Protector")}, //Valorous Earthshatter Helm
        { 40521, new (40632, "Crown of the Lost Protector")}, //Valorous Earthshatter Faceguard
        { 40530, new (40638, "Mantle of the Lost Protector")}, //Valorous Dreadnaught Shoulderplates
        { 40548, new (40638, "Mantle of the Lost Protector")}, //Valorous Dreadnaught Pauldrons
        { 40507, new (40638, "Mantle of the Lost Protector")}, //Valorous Cryptstalker Spaulders
        { 40513, new (40638, "Mantle of the Lost Protector")}, //Valorous Earthshatter Spaulders
        { 40518, new (40638, "Mantle of the Lost Protector")}, //Valorous Earthshatter Shoulderpads
        { 40524, new (40638, "Mantle of the Lost Protector")}, //Valorous Earthshatter Shoulderguards
        { 40525, new (40626, "Breastplate of the Lost Protector")}, //Valorous Dreadnaught Battleplate
        { 40544, new (40626, "Breastplate of the Lost Protector")}, //Valorous Dreadnaught Breastplate
        { 40508, new (40626, "Breastplate of the Lost Protector")}, //Valorous Cryptstalker Tunic
        { 40503, new (40626, "Breastplate of the Lost Protector")}, //Valorous Earthshatter Tunic
        { 40514, new (40626, "Breastplate of the Lost Protector")}, //Valorous Earthshatter Hauberk
        { 40523, new (40626, "Breastplate of the Lost Protector")}, //Valorous Earthshatter Chestguard
        { 40527, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Dreadnaught Gauntlets
        { 40545, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Dreadnaught Handguards
        { 40504, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Cryptstalker Handguards
        { 40509, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Earthshatter Handguards
        { 40515, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Earthshatter Gloves
        { 40520, new (40629, "Gauntlets of the Lost Protector")}, //Valorous Earthshatter Grips
        { 40529, new (40635, "Legplates of the Lost Protector")}, //Valorous Dreadnaught Legplates
        { 40547, new (40635, "Legplates of the Lost Protector")}, //Valorous Dreadnaught Legguards
        { 40506, new (40635, "Legplates of the Lost Protector")}, //Valorous Cryptstalker Legguards
        { 40512, new (40635, "Legplates of the Lost Protector")}, //Valorous Earthshatter Legguards
        { 40517, new (40635, "Legplates of the Lost Protector")}, //Valorous Earthshatter Kilt
        { 40522, new (40635, "Legplates of the Lost Protector")}, //Valorous Earthshatter War-Kilt

        //T8
        //{ , new (, "")}, //
        
        //T9
        //{ , new (, "")}, //
        
        //T10
        //{ , new (, "")}, //
    };

    public static readonly Dictionary<int, (int, string)> Transmutes = new Dictionary<int, (int, string)>()
    {
        { 34405, (34339, "Cowl of Light's Purity") }, //Helm of Arcane Purity
        { 34406, (34342, "Handguards of the Dawn") }, //Gloves of Tyri's Power
        { 34381, (34180, "Felfury Legplates") }, //Felstrength Legplates
        { 34382, (34167, "Legplates of the Holy Juggernaut") }, //Judicator's Legguards
        { 34383, (34186, "Chain Links of the Tumultuous Storm") }, // Kilt of Spiritual Reconstruction
        { 34384, (34169, "Breeches of Natural Aggression") }, //Breeches of Natural Splendor
        { 34385, (34188, "Leggings of the Immortal Night") }, //Leggings of the Immortal Beast
        { 34386, (34170, "Pantaloons of Calming Strife") }, //Pantaloons of Growing Strife
        { 34388, (34192, "Pauldrons of Perseverance") }, //Pauldrons of Berserking
        { 34389, (34193, "Spaulders of the Thalassian Savior") }, //Spaulders of the Thalassian Defender
        { 34390, (34208, "Equilibrium Epaulets") }, //Erupting Epaulets
        { 34391, (34209, "Spaulders of Reclamation") }, //Spaulders of Devastation
        { 34392, (34195, "Shoulderpads of Vehemence") }, //Demontooth Shoulderpads
        { 34393, (34202, "Shawl of Wonderment") }, //Shoulderpads of Knowledge's Pursuit
        { 34394, (34215, "Warharness of Reckless Fury") }, //Breastplate of Agony's Aversion
        { 34395, (34216, "Heroic Judicator's Chestguard") }, //Noble Judicator's Chestguard
        { 34396, (34229, "Garments of Serene Shores") }, //Garments of Crashing Shores
        { 34397, (34211, "Harness of Carnal Instinct") }, //Bladed Chaos Tunic
        { 34398, (34212, "Sunglow Vest") }, //Utopian Tunic of Elune
        { 34399, (34233, "Robes of Faltered Light") }, //Robes of Ghostly Hatred
        { 34400, (34345, "Crown of Anasterian") }, //Crown of Dath'Remar
        { 34401, (34243, "Helm of Burning Righteousness") }, //Helm of Uther's Resolve
        { 34402, (34332, "Cowl of Gul'dan") }, //Shroud of Chieftain Ner'zhul
        { 34403, (34245, "Cover of Ursol the Wise") }, //Cover of Ursoc the Mighty
        { 34404, (34244, "Duplicitous Guise") }, //Mask of the Fury Hunter
        { 34408, (34234, "Shadowed Gauntlets of Paroxysm") }, //Gloves of the Forest Drifter
        { 34409, (34350, "Gauntlets of the Ancient Shadowmoon") }, //Gauntlets of the Ancient Frostwolf
        { 34407, (34351, "Tranquil Majesty Wraps") }, //Tranquil Moonlight Wraps
    };
}
