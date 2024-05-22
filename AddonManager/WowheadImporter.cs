using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using System.IO;
using System.Security;
using AngleSharp.Html.Dom;

namespace AddonManager;
public static class WowheadImporter
{
    private class ImportItemSource
    {
        public string SourceType { get; set; } = string.Empty;
        public string Source { get; set; } = string.Empty;
        public string SourceNumber { get; set; } = string.Empty;
        public string SourceLocation { get; set; } = string.Empty;
        public string SourceFaction { get; set; } = "B";
    }

    private class CsvLootTable
    {
        public int ItemId { get; set; }
        public List<ImportItemSource> ItemSource { get; private set; } = new List<ImportItemSource>();
        public string Name { get; set; } = string.Empty;
        public bool IsLegacy { get; set; }

        internal void AddItem(ImportItemSource importItemSource)
        {
            if (!ItemSource.Any(i => i.Source == importItemSource.Source))
            {
                ItemSource.Add(importItemSource);
            }
        }
    }

    private static List<string> _allowedSlots = new List<string>()
    { "Head", "Shoulder", "Back", "Chest", "Wrist", "Hands", "Waist", "Legs", "Feet", "Neck", "Ring",
    "Trinket", "Main Hand", "Off Hand", "Main Hand/Off Hand", "Two Hand", "Ranged/Relic"};

    public static bool VerifyGuide(List<ItemSpec> items)
    {
        bool verificationSucceeded = true;
        var requiredWords = new string[] { "BIS", "Alt" };
        var allowableWords = new string[] { "Transmute", "Stam", "Mit", "Thrt", "FFB", "Melee", "Ranged" };

        foreach (var item in items)
        {
            if (!_allowedSlots.Contains(item.Slot))
                throw new VerificationException($"Item ({item.Name}) created with slot ({item.Slot})");

            foreach (var bisSlashSplit in item.BisStatus.Split("/"))
            {
                var firstWord = true;
                foreach (var bisWord in bisSlashSplit.Split(" "))
                {
                    if (firstWord)
                    {
                        if (bisWord != null && !requiredWords.Any((w) => w == bisWord))
                            throw new VerificationException($"Item ({item.Name}) created with word ({bisWord})");
                        firstWord = false;
                    }
                    else
                    {
                        if (bisWord != null && !allowableWords.Any((w) => w == bisWord))
                            throw new VerificationException($"Item ({item.Name}) created with word ({bisWord})");
                    }
                }
            }
        }
        return verificationSucceeded;
    }

    public static async Task ImportClasses(string[] specList, int phaseNumber, CancellationToken cancelToken, Action<string> logFunc)
    {
        var addresses = new List<string>();
        var addressToSpec = new Dictionary<string, ClassGuideMapping>();
        string phaseString = string.Empty;
        foreach (string spec in specList)
        {
            if (phaseNumber == 99)
                phaseString = "PrePatch";
            else 
                phaseString = $"Phase{phaseNumber}";

            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == phaseString);

            if (specMapping == null)
            {
                logFunc($"{spec} Failed! - Can't find Spec!");
                continue;
            } 
            else
            {
                addresses.Add(specMapping.WebAddress);
                addressToSpec.Add(specMapping.WebAddress, specMapping);
            }
        }

        await Common.LoadFromWebPages(addresses, async (address, doc) =>
        {
            var spec = addressToSpec[address];
            try
            {
                var result = await ImportClassInternal(spec, phaseNumber, doc, (s) => {});

                logFunc($"{spec.ClassName} {spec.SpecName} Completed! - Verification Passed!");
            }
            catch (VerificationException vex)
            {
                logFunc($"{spec.ClassName} {spec.SpecName} Completed! - Verification Failed! - {vex.Message.Substring(0, vex.Message.Length > 150 ? 150 : vex.Message.Length - 1)}...");
            }
            catch (ParseException ex)
            {
                logFunc($"{spec.ClassName} {spec.SpecName} Failed! - {ex.Message.Substring(0, 150)}...");
            }
        }, logFunc, cancelToken, false);

        logFunc($"Done!");
    }

    public static async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber, CancellationToken cancelToken, Action<string> logFunc)
    {
        var result = string.Empty;

        var doc =await Common.LoadFromWebPage(classGuide.WebAddress, logFunc, cancelToken, false);

        return await ImportClassInternal(classGuide, phaseNumber, doc, logFunc);
    }

    private static async Task<string> ImportClassInternal(ClassGuideMapping classGuideMapping, int phaseNumber, IHtmlDocument doc, Action<string> logFunc)
    {
        var sb = new StringBuilder();
        (Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>, Dictionary<int, ItemSpec>) itemsAndEnchants;
        try
        {
            var className = $"{classGuideMapping.ClassName.Replace(" ", "")}{classGuideMapping.SpecName}";

            if (classGuideMapping != null && classGuideMapping.WebAddress != "do_not_use")
            {
                var guide = ItemSpecFileManager.ReadGuide(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua");

                itemsAndEnchants = new WowheadGuideParser().ParseWowheadGuide(classGuideMapping, doc, logFunc);

                foreach(var gem in itemsAndEnchants.Item1) 
                {
                    if (!guide.Item1.Any(g => g.GemId == gem.Key))
                    {
                        guide.Item1.Add(await GetGemFromWowhead(gem.Key, logFunc));
                    }
                }

                guide.Item2.Clear();
                guide.Item2.AddRange(itemsAndEnchants.Item2.Values.ToList());
                if (!guide.Item3.ContainsKey(phaseNumber))
                    guide.Item3.Add(phaseNumber, new List<ItemSpec>());
                else
                    guide.Item3[phaseNumber].Clear();
                guide.Item3[phaseNumber].AddRange(itemsAndEnchants.Item3.Values.ToList());
                
                WriteGemsInternal(guide.Item1, logFunc);
                WriteEnchantsInternal(guide.Item2, logFunc);
                WriteItemsInternal(guide.Item3[phaseNumber], logFunc);

                ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua", classGuideMapping.ClassName, classGuideMapping.SpecName,
                    guide.Item1, guide.Item2, guide.Item3);
            }
            else
            {
                throw new ParseException($"Couldn't find spec: {className}");
            }
        }
        catch (Exception ex)
        {
            throw new ParseException(ex.ToString(), ex);
        }
        VerifyGuide(itemsAndEnchants.Item3.Values.ToList());
        return sb.ToString();
    }

    private static void WriteGemsInternal(List<GemSpec> gems, Action<string> logFunc)
    {
        var gemSources = ItemSourceFileManager.ReadGemSources();

        foreach (var gem in gems)
        {
            if (!gemSources.ContainsKey(gem.GemId) && gem.GemId > 0)
            {
                gemSources.Add(gem.GemId, new GemSource
                {
                    GemId = gem.GemId,
                    DesignId = 99999,
                    Name = gem.Name,
                    Source = "\"unknown\"",
                    SourceLocation = "\"unknown\"",
                });
            }

            logFunc($"{gem.GemId}: {gem.Name}");
        }

        ItemSourceFileManager.WriteGemSources(gemSources);
    }

    private static void WriteItemsInternal(List<ItemSpec> items, Action<string> logFunc)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();
        
        foreach (var item in items)
        {
            if (items.Count(i => i.Slot == item.Slot) == 1)
            {
                if (!itemSources.ContainsKey(item.ItemId) && item.ItemId > 0)
                {
                    itemSources.Add(item.ItemId, new ItemSource
                    {
                        ItemId = item.ItemId,
                        Name = item.Name,
                        SourceType = "LBIS.L[\"unknown\"]",
                        Source = "LBIS.L[\"unknown\"]",
                        SourceNumber = "0",
                        SourceLocation = "LBIS.L[\"unknown\"]"
                    });
                }
                item.BisStatus = "BIS";

                logFunc($"{item.ItemId}: {item.Name} - {item.Slot} - {item.BisStatus}");
            }
            if (!itemSources.ContainsKey(item.ItemId) && item.ItemId > 0)
            {
                itemSources.Add(item.ItemId, new ItemSource
                {
                    ItemId = item.ItemId,
                    Name = item.Name,
                    SourceType = "LBIS.L[\"unknown\"]",
                    Source = "LBIS.L[\"unknown\"]",
                    SourceNumber = "0",
                    SourceLocation = "LBIS.L[\"unknown\"]"
                });
            }

            logFunc($"{item.ItemId}: {item.Name} - {item.Slot} - {item.BisStatus}");
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    private static void WriteEnchantsInternal(List<EnchantSpec> enchants, Action<string> logFunc)
    {
        var enchantSources = ItemSourceFileManager.ReadEnchantSources();

        foreach (var enchant in enchants)
        {
            if (!enchantSources.ContainsKey(enchant.EnchantId) && enchant.EnchantId > 0)
            {
                enchantSources.Add(enchant.EnchantId, new EnchantSource
                {
                    EnchantId = enchant.EnchantId,
                    DesignId = 99999,
                    Name = enchant.Name,
                    Source = "\"unknown\"",
                    SourceLocation = "\"unknown\"",
                    TextureId = enchant.TextureId
                });
            }

            logFunc($"{enchant.EnchantId}: {enchant.Name} - {enchant.Slot}");
        }

        ItemSourceFileManager.WriteEnchantSources(enchantSources);
    }

    public static void RefreshItems()
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();
        var csvLootTable = new Dictionary<int, CsvLootTable>();

        GetItems(csvLootTable, "DungeonItemList");
        GetItems(csvLootTable, "RaidItemList");
        GetItems(csvLootTable, "EmblemItemList");
        GetItems(csvLootTable, "PvPItemList");
        GetItems(csvLootTable, "ReputationItemList");
        GetItems(csvLootTable, "ProfessionItemList");

        var tokenKeys = UpdateTierPieces(csvLootTable, itemSources);

        foreach (var csvItem in csvLootTable)
        {
            if (!itemSources.ContainsKey(csvItem.Key))
            {
                itemSources.Add(csvItem.Key, new ItemSource
                {                    
                    ItemId = csvItem.Value.ItemId,
                    Name = csvItem.Value.Name,
                    SourceType = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.SourceType)).Distinct()),
                    Source = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.Source))),
                    SourceNumber = string.Join("~", csvItem.Value.ItemSource.Select(s => s.SourceNumber)),
                    SourceLocation = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.SourceLocation))),
                    SourceFaction = string.Join("..\"~\"..", csvItem.Value.ItemSource.First().SourceFaction)
                });
            } else
            {                
                if (itemSources[csvItem.Key].SourceType == "LBIS.L[\"PvP\"]")
                {
                    itemSources[csvItem.Key].Source = AddLocalizeText("Unavailable");
                    itemSources[csvItem.Key].SourceLocation = AddLocalizeText("Unavailable");
                }
                else if (itemSources[csvItem.Key].SourceType.Contains("PvP"))
                {
                    itemSources[csvItem.Key].SourceType = AddLocalizeText("unknown");
                    itemSources[csvItem.Key].SourceNumber = "unknown";
                    itemSources[csvItem.Key].Source = AddLocalizeText("unknown");
                    itemSources[csvItem.Key].SourceLocation = AddLocalizeText("unknown");
                }

                //TODO ADD THE LBIS.L HERE AND NOWHERE ELSE !
                if (csvItem.Value.IsLegacy)
                {
                    itemSources[csvItem.Key].SourceType = "LBIS.L[\"Legacy\"]";
                    itemSources[csvItem.Key].Source = "\"\""; //string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSources[csvItem.Key].SourceNumber = ""; //string.Join("~", csvItem.ItemSource.Select(s => s.SourceNumber));
                    itemSources[csvItem.Key].SourceLocation = "\"\""; //string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                }
                else
                {
                    itemSources[csvItem.Key].SourceType = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.SourceType)).Distinct());
                    itemSources[csvItem.Key].Source = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSources[csvItem.Key].SourceNumber = string.Join("~", csvItem.Value.ItemSource.Select(s => s.SourceNumber));
                    itemSources[csvItem.Key].SourceLocation = string.Join("..\"~\"..", csvItem.Value.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                    itemSources[csvItem.Key].SourceFaction = string.Join("..\"~\"..", csvItem.Value.ItemSource.First().SourceFaction);

                    if (tokenKeys.Contains(csvItem.Key) && csvItem.Key != 47242)
                    {
                        itemSources[csvItem.Key].SourceType = "LBIS.L[\"Token\"]";
                    }
                }
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    public static async Task<GemSpec?> GetGemFromWowhead(int gemId, Action<string> writeToLog)
    {
        GemSpec? gemSpec = null;
        try 
        {
            IHtmlDocument? doc = await Common.LoadFromWebPage($"https://www.wowhead.com/cata/item={gemId}#taught-by-item", writeToLog);

            if (doc != null)
            {
                var name = doc.Title?.Split("-")[0].Trim() ?? "unknown";
                var isMeta = doc.QuerySelector("#main-precontents div span ~ span ~ span ~ span")?.TextContent == "Meta";
                var quality = doc.QuerySelector(".wowhead-tooltip b")?.ClassName;

                int itemQuality = 0;
                if (quality?.Contains("q1") ?? false)
                    itemQuality = 1;
                else if (quality?.Contains("q2") ?? false)
                    itemQuality = 2;
                else if (quality?.Contains("q3") ?? false)
                    itemQuality = 3;
                else if (quality?.Contains("q4") ?? false)
                    itemQuality = 4;

                gemSpec = new GemSpec {
                    GemId = gemId,
                    Name = name,
                    IsMeta = isMeta,
                    Phase = 0,
                    Quality = itemQuality
                };
            }
        } catch
        { 
            writeToLog("Error !");
        }
        return gemSpec;
    }

    public static async Task UpdateItemsFromWowhead(CancellationToken cancelToken, Action<string> writeToLog)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();

        var sources = new Dictionary<int, List<(string, string)>>();

        var webAddresses = itemSources.Where((i) => i.Value.SourceType == @"LBIS.L[""unknown""]")
                                           .Select((i) => $"https://www.wowhead.com/cata/item={i.Key}/");
        try 
        {
            await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
            {
                var name = doc.Title?.Split("-")[0].Trim() ?? "unknown";
                var itemId = Int32.Parse(uri.Replace("https://www.wowhead.com/cata/item=", "").TrimEnd('/'));
                var rowElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");
                
                itemSources[itemId].Name = name;
                if (rowElements != null && rowElements.Length > 0)
                {
                    var source = rowElements[0].Children[0].TextContent.Trim();
                    var location = rowElements[0].Children[2].TextContent.Trim();

                    if (rowElements.Length == 1)
                    {
                        if (location == "Blackfathom Deeps")
                            location = "Blackfathom Deeps (dungeon)";

                        itemSources[itemId].SourceType = AddLocalizeText("Drop");
                        itemSources[itemId].Source = AddLocalizeText(source);
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = AddLocalizeText(location);
                        itemSources[itemId].SourceFaction = "B";
                    }
                    else if (rowElements.All(r => r.Children[2].TextContent.Trim() == location))
                    {
                        if (IsDungeonName(location))
                            itemSources[itemId].Source = AddLocalizeText("Trash Mobs");
                        else
                            itemSources[itemId].Source = AddLocalizeText("World Drop");
                        
                        if (location.ToLower() == "the temple of atal'hakkar")
                            location = "Sunken Temple";

                        itemSources[itemId].SourceType = AddLocalizeText("Drop");
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = AddLocalizeText(location);
                        itemSources[itemId].SourceFaction = "B";
                    }
                    else
                    {
                        itemSources[itemId].SourceType = AddLocalizeText("Drop");
                        itemSources[itemId].Source = AddLocalizeText("World Drop");
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = string.Empty;
                        itemSources[itemId].SourceFaction = "B";
                    }
                }
                else 
                {                
                    rowElements = doc.QuerySelectorAll("#tab-reward-from-q .listview-mode-default .listview-row");
                    if (rowElements != null && rowElements.Length > 0)
                    {
                        var source = string.Empty;
                        var faction = string.Empty;
                        var sourceLocation = string.Empty;
                        foreach(var row in rowElements)
                        {
                            if (row.Children[3].Children.Length > 0 && row.Children[3].Children[0].ClassName == "icon-alliance" && string.IsNullOrWhiteSpace(faction))
                                faction = "A";
                            else if (row.Children[3].Children.Length > 0 && row.Children[3].Children[0].ClassName == "icon-horde" && string.IsNullOrWhiteSpace(faction))
                                faction = "H";
                            else 
                                faction = "B";

                            if (row.Children[0].TextContent.Trim() != source)
                            {
                                if (!string.IsNullOrWhiteSpace(source))
                                    source += " & ";
                                source += row.Children[0].TextContent.Trim();
                            }

                            if (row.Children[7].TextContent.Trim() != sourceLocation)
                            {
                                if (!string.IsNullOrWhiteSpace(sourceLocation))
                                    sourceLocation += " & ";
                                sourceLocation += row.Children[7].TextContent.Trim();
                            }
                        }
                        
                        itemSources[itemId].SourceType = AddLocalizeText("Quest");
                        itemSources[itemId].Source = AddLocalizeText(source);
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = AddLocalizeText(sourceLocation);
                        itemSources[itemId].SourceFaction = faction;
                    } 
                }
            }, writeToLog, cancelToken);
            
        } catch
        { 
            writeToLog("Error !");
        }
        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    private static List<string> _dungeons = new List<string>() {"ragefire chasm", "the deadmines", "wailing caverns", 
                                                                "shadowfang keep", "the stockade", "razorfen kraul", 
                                                                "scarlet monastery", "razorfen downs", "uldaman", 
                                                                "zul'farrak", "the temple of atal'hakkar", "blackrock depths", 
                                                                "lower blackrock spire", "upper blackrock spire", "scholomance",
                                                                "stratholme live", "stratholme undead",
                                                                "dire maul: east", "dire maul: west", "dire maul: north" };
    private static bool IsDungeonName(string location)
    {
        return _dungeons.Contains(location.ToLower());
    }

    private static string AddLocalizeText(string source)
    {
        if (string.IsNullOrWhiteSpace(source))
            return "\"\"";
        else if (Int32.TryParse(source, out int result))
            return $"\"{source}\"";

        StringBuilder sb = new StringBuilder();
        if (source.Contains("&"))
        {
            var stringSplit = source.Split('&');

            var first = true;
            foreach (var split in stringSplit)
            {
                if (first != true)
                    sb.Append("..\" & \"..");

                sb.Append($"LBIS.L[\"{split.Replace("\"", "\\\"").Trim()}\"]");

                first = false;
            }
        }
        else
        {
            var stringSplit = source.Split("~");
            var first = true;
            foreach (var split in stringSplit)
            {
                if (first != true)
                    sb.Append("..\"~\"..");

                sb.Append($"LBIS.L[\"{split.Replace("\"", "\\\"").Trim()}\"]");

                first = false;
            }
        }

        return sb.ToString();
    }

    private static HashSet<int> UpdateTierPieces(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\TierSetList.json");
        DatabaseItems tierPieces = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        var tokenKeys = new HashSet<int>();
        foreach (var tierPiece in tierPieces.Items)
        {
            var tokenKey = Int32.Parse(tierPiece.Value.SourceNumber);
            if (!tokenKeys.Contains(tokenKey))
            {
                tokenKeys.Add(tokenKey);
            }
            if (itemSources.ContainsKey(tierPiece.Key))
            {
                if (csvLootTable.ContainsKey(tierPiece.Key))
                {
                    if (!csvLootTable[tierPiece.Key].IsLegacy)
                    {
                        foreach (var source in csvLootTable[tokenKey].ItemSource)
                        {
                            csvLootTable[tierPiece.Key].AddItem(new ImportItemSource
                            {
                                SourceType = source.SourceType,
                                Source = source.Source,
                                SourceNumber = source.SourceNumber,
                                SourceLocation = source.SourceLocation,
                                SourceFaction = tierPiece.Value.SourceFaction
                            });
                        }
                    }
                }
                else
                {
                    var newLootTable = new CsvLootTable
                    {
                        ItemId = tierPiece.Key,
                        Name = itemSources[tierPiece.Key].Name
                    };
                    foreach (var source in csvLootTable[tokenKey].ItemSource)
                    {
                        newLootTable.AddItem(new ImportItemSource
                        {
                            SourceType = source.SourceType,
                            Source = source.Source,
                            SourceNumber = source.SourceNumber,
                            SourceLocation = source.SourceLocation,
                            SourceFaction = tierPiece.Value.SourceFaction
                        });
                    }
                    csvLootTable.Add(tierPiece.Key, newLootTable);
                }
            }
        }
        return tokenKeys;
    }

    private static void GetItems(Dictionary<int, CsvLootTable> csvLootTable, string fileName)
    {
        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\{fileName}.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        AddToCsvLootTable(dbItem, csvLootTable);
    }

    private static void AddToCsvLootTable(DatabaseItems dbItem, Dictionary<int, CsvLootTable> csvLootTable)
    {
        foreach (var item in dbItem.Items)
        {
            var sourceSplit = item.Value.Source.Split("~");
            var sourceNumberSplit = item.Value.SourceNumber.Split("~");
            var sourceLocationSplit = item.Value.SourceLocation.Split("~");

            for (int i = 0; i < sourceSplit.Length; i++)
            {
                if (csvLootTable.ContainsKey(item.Key))
                {
                    csvLootTable[item.Key].AddItem(new ImportItemSource
                    {
                        SourceType = item.Value.SourceType,
                        Source = sourceSplit[i],
                        SourceNumber = sourceNumberSplit[i],
                        SourceLocation = sourceLocationSplit[i],
                        SourceFaction = item.Value.SourceFaction
                    });
                }
                else
                {
                    csvLootTable.Add(item.Key, new CsvLootTable
                    {
                        ItemId = item.Key,
                        Name = item.Value.Name,
                        ItemSource = { new ImportItemSource
                        {
                            SourceType = item.Value.SourceType,
                            Source = sourceSplit[i],
                            SourceNumber = sourceNumberSplit[i],
                            SourceLocation = sourceLocationSplit[i],
                            SourceFaction = item.Value.SourceFaction
                        } }
                    });
                }
            }
        }
    }

}
