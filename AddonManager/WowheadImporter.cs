using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using System.IO;
using System.Security;

namespace AddonManager;
public static class WowheadImporter
{
    private class ImportItemSource
    {
        public string SourceType { get; set; } = string.Empty;
        public string Source { get; set; } = string.Empty;
        public string SourceNumber { get; set; } = string.Empty;
        public string SourceLocation { get; set; } = string.Empty;
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

    public static bool VerifyGuide(Dictionary<int, ItemSpec> items)
    {
        bool verificationSucceeded = true;
        var requiredWords = new string[] { "BIS", "Alt" };
        var allowableWords = new string[] { "Transmute", "Stam", "Mit", "Thrt" };

        foreach (var item in items)
        {
            var firstWord = true;
            foreach (var bisWord in item.Value.BisStatus.Split(" "))
            {
                if (firstWord)
                {
                    if (bisWord != null && !requiredWords.Any((w) => w == bisWord))
                        throw new VerificationException($"Spec ({item.Value.Name}) created with word ({bisWord})");
                    firstWord = false;
                }
                else
                {
                    if (bisWord != null && !allowableWords.Any((w) => w == bisWord))
                        throw new VerificationException($"Spec ({item.Value.Name}) created with word ({bisWord})");
                }
            }
        }
        return verificationSucceeded;
    }

    public static async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber)
    {
        var sb = new StringBuilder();
        var items = new Dictionary<int, ItemSpec>();
        try
        {
            var itemSources = ItemSourceFileManager.ReadItemSources();

            var className = $"{classGuide.ClassName.Replace(" ", "")}{classGuide.SpecName}";

            if (classGuide != null)
            {
                items = await new WowheadGuideParser().ParseWowheadGuide(classGuide);

                var oldItems = ExcludeItemsFromPhaseGuide(items, phaseNumber, className);

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
                                SourceType = "undefined",
                                Source = "undefined",
                                SourceNumber = "0",
                                SourceLocation = "undefined"
                            });
                        }
                        item.Value.BisStatus = "BIS";

                        sb.AppendLine($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
                    }
                    else if (!oldItems.ContainsKey(item.Value.ItemId) || oldItems[item.Value.ItemId].BisStatus.Contains("BIS") || item.Value.BisStatus.Contains("BIS"))
                    {
                        if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
                        {
                            itemSources.Add(item.Value.ItemId, new ItemSource
                            {
                                ItemId = item.Value.ItemId,
                                Name = item.Value.Name,
                                SourceType = "undefined",
                                Source = "undefined",
                                SourceNumber = "0",
                                SourceLocation = "undefined"
                            });
                        }

                        sb.AppendLine($"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
                    }
                    else
                    {
                        items.Remove(item.Value.ItemId);
                        sb.AppendLine($"Skipped: {item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}");
                    }
                }

                ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\Phase{phaseNumber}\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName, $"Phase {phaseNumber}", items.Values.ToList());

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
        VerifyGuide(items);
        return sb.ToString();
    }

    public static async Task<string> ImportGemsAndEnchants(ClassGuideMapping classGuide)
    {
        var sb = new StringBuilder();
        try
        {
            var className = $"{classGuide.ClassName}{classGuide.SpecName}";
            var gemSources = ItemSourceFileManager.ReadGemSources();
            var enchantSources = ItemSourceFileManager.ReadEnchantSources();
            var gemsEnchants = await new WowheadGuideParser().ParseGemEnchantsWowheadGuide(classGuide);

            foreach (var gem in gemsEnchants.Item1)
            {
                if (!gemSources.ContainsKey(gem.Value.GemId) && gem.Value.GemId > 0)
                {
                    gemSources.Add(gem.Value.GemId, new GemSource
                    {
                        GemId = gem.Value.GemId,
                        DesignId = 99999,
                        Name = gem.Value.Name,
                        Source = "undefined",
                        SourceLocation = "undefined"
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
                        Source = "undefined",
                        SourceLocation = "undefined",
                        IsSpell = enchant.Value.IsSpell
                    });
                }

                sb.AppendLine($"{enchant.Value.EnchantId}: {enchant.Value.Name} - {enchant.Value.Slot}");
            }

            ItemSpecFileManager.WriteGemAndEnchantSpec(Constants.AddonPath + $@"\Guides\GemsAndEnchants\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName, gemsEnchants.Item1, gemsEnchants.Item2);

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
        var oldSources = ItemSourceFileManager.ReadTBCItemSources();

        foreach (var oldSource in oldSources)
        {
            csvLootTable.Add(oldSource.Key, new CsvLootTable
            {
                ItemId = oldSource.Key,
                Name = "",
                IsLegacy = true,
                ItemSource = { new ImportItemSource
                {
                    SourceType = oldSource.Value.SourceType,
                    Source = oldSource.Value.Source,
                    SourceNumber = oldSource.Value.SourceNumber,
                    SourceLocation = oldSource.Value.SourceLocation,
                } }
            });
        }

        GetItems(csvLootTable, "DungeonItemList");
        GetItems(csvLootTable, "RaidItemList");
        GetItems(csvLootTable, "EmblemItemList");
        GetItems(csvLootTable, "PvPItemList");
        GetItems(csvLootTable, "ReputationItemList");

        //UpdateProfessionItems(csvLootTable);

        var tokenKeys = UpdateTierPieces(csvLootTable, itemSources);
        var transmuteKeys = UpdateTransmuteKeys(csvLootTable, itemSources);

        foreach (var itemSource in itemSources)
        {
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

                    if (tokenKeys.Contains(itemSource.Key))
                    {
                        itemSource.Value.SourceType = "LBIS.L[\"Token\"]";
                    }
                    else if (transmuteKeys.Contains(itemSource.Key))
                    {
                        itemSource.Value.SourceType = "LBIS.L[\"Transmute\"]";
                    }
                }
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    private static Dictionary<int, ItemSpec> ExcludeItemsFromPhaseGuide(Dictionary<int, ItemSpec> items, int phaseNumber, string specName)
    {
        var oldPhaseNumber = phaseNumber - 1;

        Dictionary<int, ItemSpec> oldItems = new Dictionary<int, ItemSpec>();
        if (oldPhaseNumber >= 0)
        {
            for (int i = 0; i <= oldPhaseNumber; i++)
            {
                var phaseItems = ItemSpecFileManager.ReadPhaseFromFile(Constants.AddonPath + $@"\Guides\Phase{i}\{specName.Replace(" ", "")}.lua");

                foreach (var item in phaseItems)
                    if (!oldItems.ContainsKey(item.Key))
                        oldItems.Add(item.Key, item.Value);
                    else
                        oldItems[item.Key].BisStatus = item.Value.BisStatus;
            }
        }

        return oldItems;
    }

    private static string? AddLocalizeText(string source)
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

    private static HashSet<int> UpdateTransmuteKeys(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        var transmuteKeys = new HashSet<int>();
        foreach (var transmutePiece in TierPiecesAndTokens.Transmutes)
        {
            if (!transmuteKeys.Contains(transmutePiece.Key))
            {
                transmuteKeys.Add(transmutePiece.Key);
            }
            if (itemSources.ContainsKey(transmutePiece.Key) && csvLootTable.ContainsKey(transmutePiece.Value.Item1) && !csvLootTable.ContainsKey(transmutePiece.Key))
            {
                var newLootTable = new CsvLootTable
                {
                    ItemId = transmutePiece.Key,
                    Name = itemSources[transmutePiece.Key].Name
                };
                foreach (var source in csvLootTable[transmutePiece.Value.Item1].ItemSource)
                {
                    newLootTable.AddItem(new ImportItemSource
                    {
                        SourceType = source.SourceType,
                        Source = transmutePiece.Value.Item1.ToString(),
                        SourceNumber = source.SourceNumber,
                        SourceLocation = $"{source.Source} - {source.SourceLocation}"
                    });
                }
                csvLootTable.Add(transmutePiece.Key, newLootTable);
            }
        }
        return transmuteKeys;
    }

    private static HashSet<int> UpdateTierPieces(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        var tokenKeys = new HashSet<int>();
        foreach (var tierPiece in TierPiecesAndTokens.TierPieces)
        {
            if (!tokenKeys.Contains(tierPiece.Value.Item1))
            {
                tokenKeys.Add(tierPiece.Value.Item1);
            }
            if (itemSources.ContainsKey(tierPiece.Key))
            {
                if (csvLootTable.ContainsKey(tierPiece.Key))
                {
                    if (!csvLootTable[tierPiece.Key].IsLegacy)
                    {
                        foreach (var source in csvLootTable[tierPiece.Value.Item1].ItemSource)
                        {
                            csvLootTable[tierPiece.Key].AddItem(new ImportItemSource
                            {
                                SourceType = source.SourceType,
                                Source = source.Source,
                                SourceNumber = source.SourceNumber,
                                SourceLocation = source.SourceLocation
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
                    foreach (var source in csvLootTable[tierPiece.Value.Item1].ItemSource)
                    {
                        newLootTable.AddItem(new ImportItemSource
                        {
                            SourceType = source.SourceType,
                            Source = source.Source,
                            SourceNumber = source.SourceNumber,
                            SourceLocation = source.SourceLocation
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
                        SourceLocation = sourceLocationSplit[i]
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
                            SourceLocation = sourceLocationSplit[i]
                        } }
                    });
                }
            }
        }
    }
}

