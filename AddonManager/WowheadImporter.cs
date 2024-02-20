using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using System.IO;
using System.Security;
using System.Linq;
using AngleSharp.Html.Parser;
using AngleSharp.Html.Dom;
using AngleSharp.Dom;

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
        foreach (string spec in specList)
        {
            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == $"Phase{phaseNumber}");

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

        await Common.LoadFromWebPages(addresses, (address, doc) =>
        {
            var spec = addressToSpec[address];
            try
            {
                var result = ImportClassInternal(spec, phaseNumber, doc, (s) => {});

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
        }, logFunc, cancelToken);

        logFunc($"Done!");
    }

    public static async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber, Action<string> logFunc)
    {
        var result = string.Empty;
        await Common.LoadFromWebPage(classGuide.WebAddress, (doc) =>
        {
            result = ImportClassInternal(classGuide, phaseNumber, doc, logFunc);
        }, logFunc);

        return result;
    }

    private static string ImportClassInternal(ClassGuideMapping classGuideMapping, int phaseNumber, IHtmlDocument doc, Action<string> logFunc)
    {
        var sb = new StringBuilder();
        (Dictionary<int, ItemSpec>, Dictionary<string, EnchantSpec>) itemsAndEnchants;
        try
        {
            var className = $"{classGuideMapping.ClassName.Replace(" ", "")}{classGuideMapping.SpecName}";

            if (classGuideMapping != null && classGuideMapping.WebAddress != "do_not_use")
            {
                var guide = ItemSpecFileManager.ReadGuide(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua");

                itemsAndEnchants = new WowheadGuideParser().ParseWowheadGuide(classGuideMapping, doc);

                WriteEnchantsInternal(itemsAndEnchants.Item2, logFunc);

                WriteItemsInternal(itemsAndEnchants.Item1, logFunc);
                
                guide.Item1.Clear();
                guide.Item1.AddRange(itemsAndEnchants.Item2.Values.ToList());
                guide.Item2[phaseNumber] = itemsAndEnchants.Item1.Values.ToList();

                ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua", classGuideMapping.ClassName, classGuideMapping.SpecName,
                    guide.Item1, guide.Item2);
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
        VerifyGuide(itemsAndEnchants.Item1.Values.ToList());
        return sb.ToString();
    }

    private static void WriteItemsInternal(Dictionary<int, ItemSpec> items, Action<string> logFunc)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();
        
        foreach (var item in items)
        {
            if (items.Count(i => i.Value.Slot == item.Value.Slot) == 1)
            {
                if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
                {
                    itemSources.Add(item.Value.ItemId, new ItemSource
                    {
                        ItemId = item.Value.ItemId,
                        Name = item.Value.Name,
                        SourceType = "LBIS.L[\"unknown\"]",
                        Source = "LBIS.L[\"unknown\"]",
                        SourceNumber = "0",
                        SourceLocation = "LBIS.L[\"unknown\"]"
                    });
                }
                item.Value.BisStatus = "BIS";

                logFunc($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
            }
            if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
            {
                itemSources.Add(item.Value.ItemId, new ItemSource
                {
                    ItemId = item.Value.ItemId,
                    Name = item.Value.Name,
                    SourceType = "LBIS.L[\"unknown\"]",
                    Source = "LBIS.L[\"unknown\"]",
                    SourceNumber = "0",
                    SourceLocation = "LBIS.L[\"unknown\"]"
                });
            }

            logFunc($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    private static void WriteEnchantsInternal(Dictionary<string, EnchantSpec> enchants, Action<string> logFunc)
    {
        var enchantSources = ItemSourceFileManager.ReadEnchantSources();

        foreach (var enchant in enchants)
        {
            if (!enchantSources.ContainsKey(enchant.Value.EnchantId) && enchant.Value.EnchantId > 0)
            {
                enchantSources.Add(enchant.Value.EnchantId, new EnchantSource
                {
                    EnchantId = enchant.Value.EnchantId,
                    DesignId = 99999,
                    Name = enchant.Value.Name,
                    Source = "\"unknown\"",
                    SourceLocation = "\"unknown\"",
                    TextureId = enchant.Value.TextureId
                });
            }

            logFunc($"{enchant.Value.EnchantId}: {enchant.Value.Name} - {enchant.Value.Slot}");
        }

        ItemSourceFileManager.WriteEnchantSources(enchantSources);
    }

    public static void ImportNewItems()
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();
        var csvLootTable = new Dictionary<int, CsvLootTable>();

        GetItems(csvLootTable, "DungeonItemList");
        GetItems(csvLootTable, "RaidItemList");
        GetItems(csvLootTable, "EmblemItemList");
        GetItems(csvLootTable, "PvPItemList");
        GetItems(csvLootTable, "ReputationItemList");
        GetItems(csvLootTable, "ProfessionItemList");
        
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
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
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

        foreach (var itemSource in itemSources)
        {
            if (itemSource.Value.SourceType == "LBIS.L[\"PvP\"]")
            {
                itemSource.Value.Source = AddLocalizeText("Unavailable");
                itemSource.Value.SourceLocation = AddLocalizeText("Unavailable");
            }
            else if (itemSource.Value.SourceType.Contains("PvP"))
            {
                itemSource.Value.SourceType = AddLocalizeText("unknown");
                itemSource.Value.SourceNumber = "unknown";
                itemSource.Value.Source = AddLocalizeText("unknown");
                itemSource.Value.SourceLocation = AddLocalizeText("unknown");
            }

            if (csvLootTable.ContainsKey(itemSource.Key))
            {
                //TODO ADD THE LBIS.L HERE AND NOWHERE ELSE !
                var csvItem = csvLootTable[itemSource.Key];
                if (csvItem.IsLegacy)
                {
                    itemSource.Value.SourceType = "LBIS.L[\"Legacy\"]";
                    itemSource.Value.Source = "\"\""; //string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSource.Value.SourceNumber = ""; //string.Join("~", csvItem.ItemSource.Select(s => s.SourceNumber));
                    itemSource.Value.SourceLocation = "\"\""; //string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                }
                else
                {
                    itemSource.Value.SourceType = string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceType)).Distinct());
                    itemSource.Value.Source = string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSource.Value.SourceNumber = string.Join("~", csvItem.ItemSource.Select(s => s.SourceNumber));
                    itemSource.Value.SourceLocation = string.Join("..\"~\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                    itemSource.Value.SourceFaction = string.Join("..\"~\"..", csvItem.ItemSource.First().SourceFaction);

                    if (tokenKeys.Contains(itemSource.Key) && itemSource.Key != 47242)
                    {
                        itemSource.Value.SourceType = "LBIS.L[\"Token\"]";
                    }
                }
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    public static async Task UpdateItemsFromWowhead(CancellationToken cancelToken, Action<string> writeToLog)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();

        var sources = new Dictionary<int, List<(string, string)>>();

        var webAddresses = itemSources.Where((i) => i.Value.SourceType == @"LBIS.L[""unknown""]")
                                           .Select((i) => $"https://www.wowhead.com/classic/item={i.Key}/");
        try {
            
            await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
            {
                var itemId = Int32.Parse(uri.Replace("https://www.wowhead.com/classic/item=", "").TrimEnd('/'));
                    var rowElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");
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
                    }
                    else if (rowElements.All(r => r.Children[2].TextContent.Trim() == location))
                    {
                        if (IsDungeonName(location))
                            itemSources[itemId].Source = AddLocalizeText("Trash Mobs");
                        else
                            itemSources[itemId].Source = AddLocalizeText("World Drop");

                        itemSources[itemId].SourceType = AddLocalizeText("Drop");
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = AddLocalizeText(location);
                    }
                    else
                    {
                        itemSources[itemId].SourceType = AddLocalizeText("Drop");
                        itemSources[itemId].Source = AddLocalizeText("World Drop");
                        itemSources[itemId].SourceNumber = "0";
                        itemSources[itemId].SourceLocation = string.Empty;
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
                            if (row.Children[3].HasChildNodes && row.Children[3].Children[0].ClassName == "icon-alliance" && string.IsNullOrWhiteSpace(faction))
                                faction = "A";
                            else if (row.Children[3].HasChildNodes && row.Children[3].Children[0].ClassName == "icon-horde" && string.IsNullOrWhiteSpace(faction))
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
                                                                "zul'farrak"};
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

                sb.Append($"LBIS.L[\"{split.Trim()}\"]");

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

                sb.Append($"LBIS.L[\"{split.Trim()}\"]");

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

