using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using System.IO;
using System.Security;
using System.Linq;

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
        var allowableWords = new string[] { "Transmute", "Stam", "Mit", "Thrt", "FFB" };

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


    public static async Task ImportGemsAndEnchants(string[] specList, CancellationToken cancelToken, Action<string> logMethod)
    {
        var addresses = new List<string>();
        var addressToSpec = new Dictionary<string, ClassGuideMapping>();
        foreach (string spec in specList)
        {
            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == "GemsEnchants");

            if (specMapping == null)
            {
                logMethod($"{spec} Failed! - Can't find Spec!" + Environment.NewLine);
                continue;
            }
            else
            {
                addresses.Add(specMapping.WebAddress);
                addressToSpec.Add(specMapping.WebAddress, specMapping);
            }
        }

        await Common.LoadFromWebPages(addresses, async (address, content) =>
        {
            var spec = addressToSpec[address];
            try
            {
                var result = await ImportGemsAndEnchantsInternal(spec, content);

                logMethod($"{spec.ClassName} {spec.SpecName} Completed! - Verification Passed!" + Environment.NewLine);
            }
            catch (VerificationException vex)
            {
                logMethod($"{spec.ClassName} {spec.SpecName} Completed! - Verification Failed! - {vex.Message.Substring(0, vex.Message.Length > 150 ? 150 : vex.Message.Length - 1)}..." + Environment.NewLine);
            }
            catch (ParseException ex)
            {
                logMethod($"{spec.ClassName} {spec.SpecName} Failed! - {ex.Message.Substring(0, 150)}..." + Environment.NewLine);
            }
        }, cancelToken);

        logMethod($"Done!" + Environment.NewLine);
    }

    public static async Task ImportClasses(string[] specList, int phaseNumber, CancellationToken cancelToken, Action<string> logMethod)
    {
        var addresses = new List<string>();
        var addressToSpec = new Dictionary<string, ClassGuideMapping>();
        foreach (string spec in specList)
        {
            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == $"Phase{phaseNumber}");

            if (specMapping == null)
            {
                logMethod($"{spec} Failed! - Can't find Spec!" + Environment.NewLine);
                continue;
            } 
            else
            {
                addresses.Add(specMapping.WebAddress);
                addressToSpec.Add(specMapping.WebAddress, specMapping);
            }
        }

        await Common.LoadFromWebPages(addresses, async (address, content) =>
        {
            var spec = addressToSpec[address];
            try
            {
                var result = await ImportClassInternal(spec, phaseNumber, content);

                logMethod($"{spec.ClassName} {spec.SpecName} Completed! - Verification Passed!" + Environment.NewLine);
            }
            catch (VerificationException vex)
            {
                logMethod($"{spec.ClassName} {spec.SpecName} Completed! - Verification Failed! - {vex.Message.Substring(0, vex.Message.Length > 150 ? 150 : vex.Message.Length - 1)}..." + Environment.NewLine);
            }
            catch (ParseException ex)
            {
                logMethod($"{spec.ClassName} {spec.SpecName} Failed! - {ex.Message.Substring(0, 150)}..." + Environment.NewLine);
            }
        }, cancelToken);

        logMethod($"Done!" + Environment.NewLine);
    }

    public static async Task<string> ImportGemsAndEnchants(ClassGuideMapping classGuide)
    {
        var result = string.Empty;
        await Common.LoadFromWebPage(classGuide.WebAddress, async (content) =>
        {
            result = await ImportGemsAndEnchantsInternal(classGuide, content);
        });

        return result;
    }

    public static async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber)
    {
        var result = string.Empty;
        await Common.LoadFromWebPage(classGuide.WebAddress, async (content) =>
        {
            result = await ImportClassInternal(classGuide, phaseNumber, content);
        });

        return result;
    }

    private static async Task<string> ImportClassInternal(ClassGuideMapping classGuide, int phaseNumber, string content)
    {
        var sb = new StringBuilder();
        var items = new Dictionary<int, ItemSpec>();
        try
        {
            var itemSources = ItemSourceFileManager.ReadItemSources();

            var className = $"{classGuide.ClassName.Replace(" ", "")}{classGuide.SpecName}";

            if (classGuide != null && classGuide.WebAddress != "do_not_use")
            {
                var guide = ItemSpecFileManager.ReadGuide(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua");

                if (phaseNumber == 0)
                    items = await new WowheadGuideParser().ParsePreRaidWowheadGuide(className, guide, content);
                else
                    items = await new WowheadGuideParser().ParseWowheadGuide(classGuide, content);

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

                        sb.AppendLine($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
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

                    sb.AppendLine($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
                }

                guide.Item3[phaseNumber] = items.Values.ToList();

                ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName,
                    guide.Item1, guide.Item2, guide.Item3);

                ItemSourceFileManager.WriteItemSources(itemSources);
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
        VerifyGuide(items.Values.ToList());
        return sb.ToString();
    }

    private static async Task<string> ImportGemsAndEnchantsInternal(ClassGuideMapping classGuide, string content)
    {
        var sb = new StringBuilder();
        try
        {
            var className = $"{classGuide.ClassName}{classGuide.SpecName}";
            var gemSources = ItemSourceFileManager.ReadGemSources();
            var enchantSources = ItemSourceFileManager.ReadEnchantSources();
            var gemsEnchants = await new WowheadGuideParser().ParseGemEnchantsWowheadGuide(classGuide, content);

            var guide = ItemSpecFileManager.ReadGuide(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua");

            foreach (var gem in gemsEnchants.Item1)
            {
                if (!gemSources.ContainsKey(gem.Value.GemId) && gem.Value.GemId > 0)
                {
                    gemSources.Add(gem.Value.GemId, new GemSource
                    {
                        GemId = gem.Value.GemId,
                        DesignId = 99999,
                        Name = gem.Value.Name,
                        Source = "unknown",
                        SourceLocation = "unknown"
                    });
                }

                sb.AppendLine($"{gem.Value.GemId}: {gem.Value.Name} - {gem.Value.Quality} - {gem.Value.IsMeta}");
            }

            foreach (var enchant in gemsEnchants.Item2)
            {
                if (!enchantSources.ContainsKey(enchant.Value.EnchantId) && enchant.Value.EnchantId > 0)
                {
                    enchantSources.Add(enchant.Value.EnchantId, new EnchantSource
                    {
                        EnchantId = enchant.Value.EnchantId,
                        DesignId = 99999,
                        Name = enchant.Value.Name,
                        Source = "unknown",
                        SourceLocation = "unknown",
                        TextureId = enchant.Value.TextureId
                    });
                }

                sb.AppendLine($"{enchant.Value.EnchantId}: {enchant.Value.Name} - {enchant.Value.Slot}");
            }

            ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName,
                gemsEnchants.Item1, gemsEnchants.Item2, guide.Item3);

            ItemSourceFileManager.WriteGemSources(gemSources);
            ItemSourceFileManager.WriteEnchantSources(enchantSources);
        }
        catch (Exception ex)
        {
            throw new ParseException(ex.ToString(), ex);
        }
        return sb.ToString();
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
        UpdateProfessionItems(csvLootTable);

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
                    itemSource.Value.Source = "\"\""; //string.Join("..\"/\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSource.Value.SourceNumber = ""; //string.Join("/", csvItem.ItemSource.Select(s => s.SourceNumber));
                    itemSource.Value.SourceLocation = "\"\""; //string.Join("..\"/\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                }
                else
                {
                    itemSource.Value.SourceType = string.Join("..\"/\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceType)).Distinct());
                    itemSource.Value.Source = string.Join("..\"/\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.Source)));
                    itemSource.Value.SourceNumber = string.Join("/", csvItem.ItemSource.Select(s => s.SourceNumber));
                    itemSource.Value.SourceLocation = string.Join("..\"/\"..", csvItem.ItemSource.Select(s => AddLocalizeText(s.SourceLocation)));
                    itemSource.Value.SourceFaction = string.Join("..\"/\"..", csvItem.ItemSource.First().SourceFaction);

                    if (tokenKeys.Contains(itemSource.Key) && itemSource.Key != 47242)
                    {
                        itemSource.Value.SourceType = "LBIS.L[\"Token\"]";
                    }
                }
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    public static async Task UpdateItemsFromWowhead()
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();

        var sources = new Dictionary<int, List<(string, string)>>();
        await Common.ReadWowheadDroppedByList(itemSources.Where((i) => i.Value.SourceType == @"LBIS[""unknown""]")
                                           .Select((itemId, _) => $"https://www.wowhead.com/classic/item={itemId}/"),
                (webAddress, row, itemId, item) =>
                {
                    if (sources.ContainsKey(itemId))
                    {
                        sources[itemId].Add((item.TextContent.Trim(), row.Children[2].TextContent.Trim()));
                    }
                    else 
                    {
                        sources.Add(itemId, new List<(string, string)> {
                            (item.TextContent.Trim(), row.Children[2].TextContent.Trim())
                        });
                    }
                },
                (log) => {});

        foreach(var source in sources)
        {
            if (source.Value.Count > 20)
            {
                itemSources[source.Key].SourceType = AddLocalizeText("Drop");
                itemSources[source.Key].Source = AddLocalizeText("World Drop");
                itemSources[source.Key].SourceNumber = "0";
                itemSources[source.Key].SourceLocation = string.Empty;
            } 
            else if (source.Value.Count == 1)
            {
                itemSources[source.Key].SourceType = AddLocalizeText("Drop");
                itemSources[source.Key].Source = source.Value[0].Item1;
                itemSources[source.Key].SourceNumber = "0";
                itemSources[source.Key].SourceLocation = source.Value[0].Item2;
            }
        }
        
        ItemSourceFileManager.WriteItemSources(itemSources);
    }    

    private static void UpdateProfessionItems(Dictionary<int, CsvLootTable> csvLootTable)
    {
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\ProfessionItemList.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        foreach (var item in dbItem.Items)
        {
            var ids = item.Value.SourceNumber.Split(",");
            var itemId = Int32.Parse(ids[0]);
            int spellId = 0;
            if (ids.Length > 1)
                spellId = Int32.Parse(ids[1]);
            if (itemId > 0)
            {
                var itemName = item.Value.Name.Split(":")[1].Trim();
                csvLootTable.Add(itemId, new CsvLootTable
                {
                    ItemId = itemId,
                    Name = itemName,
                    ItemSource =
                    {
                        new ImportItemSource
                        {
                            SourceType = "Profession",
                            Source = item.Value.Source,
                            SourceNumber = item.Key.ToString(),
                            SourceLocation = spellId.ToString(),
                            SourceFaction = item.Value.SourceFaction
                        }
                    }
                });

                csvLootTable.Add(item.Key, new CsvLootTable
                {
                    ItemId = item.Key,
                    Name = item.Value.Name,
                    ItemSource =
                    {
                        new ImportItemSource
                        {
                            SourceType = "Profession",
                            Source = item.Value.Source,
                            SourceNumber = "0",
                            SourceLocation = item.Value.SourceLocation,
                            SourceFaction = item.Value.SourceFaction
                        }
                    }
                });
            }
        }
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
            var stringSplit = source.Split('/');
            var first = true;
            foreach (var split in stringSplit)
            {
                if (first != true)
                    sb.Append("..\"/\"..");

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
            var sourceSplit = item.Value.Source.Split("/");
            var sourceNumberSplit = item.Value.SourceNumber.Split("/");
            var sourceLocationSplit = item.Value.SourceLocation.Split("/");

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

