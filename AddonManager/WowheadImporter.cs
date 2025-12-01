using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using System.IO;
using System.Security;
using AngleSharp.Html.Dom;
using AngleSharp.Dom;

namespace AddonManager;

public class SlotSwaps
{
    private Dictionary<string, string> _slotSwaps = new Dictionary<string, string>()
    {
        { "Head", "Head" },
        { "Helm", "Head" },
        { "Shoulder", "Shoulder" },
        { "Shoulders", "Shoulder" },
        { "Back", "Back" },
        { "Chest", "Chest" },
        { "Wrist", "Wrist" },
        { "Wrists", "Wrist" },
        { "Hands", "Hands" },
        { "Waist", "Waist" },
        { "Legs", "Legs" },
        { "Feet", "Feet" },
        { "Neck", "Neck" },
        { "Ring", "Ring" },
        { "Rings", "Ring" },
        { "Trinket", "Trinket" },
        { "Trinkets", "Trinket" },
        { "1-Handed", "Main Hand" },
        { "Main", "Main Hand" },
        { "Shields", "Off Hand" },
        { "Shield", "Off Hand" },
        { "Off", "Off Hand" },
        { "Offhands", "Off Hand" },
        { "Two", "Two Hand" },
        { "2-Handed", "Two Hand" },
        { "Staves", "Two Hand" },
        { "Two-Handed Maces", "Two Hand" },
        { "Two-Handed Axes", "Two Hand" },
        { "Two-Handed Swords", "Two Hand" },
        { "Polearms", "Two Hand" },
        { "Bows", "Ranged/Relic" },
        { "Guns", "Ranged/Relic" },
        { "Crossbows", "Ranged/Relic" },
        { "Idols", "Ranged/Relic" },
        { "Totems", "Ranged/Relic" },
        { "Librams", "Ranged/Relic" },
        { "Ranged/Relic", "Ranged/Relic" }
    };
    
    // Setting up indexers
    public string this[string i]
    {
        // get indexer allows square brackets to read data
        get
        {
            if (this._slotSwaps.ContainsKey(i))
                return _slotSwaps[i];
            else if (string.IsNullOrWhiteSpace(i))
                return "unknown";
            throw new KeyNotFoundException($"Slot '{i}' not found in slot swaps.");
        }
    }

    public string GetSlot(string slotName)
    {
        if (this._slotSwaps.ContainsKey(slotName))
            return _slotSwaps[slotName];
        else if (string.IsNullOrWhiteSpace(slotName))
            return "unknown";
        else 
            return string.Empty;
    }
}

public static class WowheadImporter
{
    private static SlotSwaps _slotSwaps = new SlotSwaps();
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
    "Trinket", "Main Hand", "Off Hand", "Two Hand", "Main Hand~Off Hand", "Ranged/Relic"};

    private static HashSet<int> _tierPieces = new HashSet<int>
    {
        //Tier 4
        29761, //helm-of-the-fallen-defender
        29764, //pauldrons-of-the-fallen-defender
        29753, //chestguard-of-the-fallen-defender
        29758, //gloves-of-the-fallen-defender
        29767, //leggings-of-the-fallen-defender

        29759, //helm-of-the-fallen-hero
        29762, //pauldrons-of-the-fallen-hero
        29755, //chestguard-of-the-fallen-hero
        29756, //gloves-of-the-fallen-hero
        29765, //leggings-of-the-fallen-hero

        29760, //helm-of-the-shadowy-protector
        29763, //pauldrons-of-the-shadowy-protector
        29754, //chestguard-of-the-shadowy-protector
        29757, //gloves-of-the-shadowy-protector
        29766, //leggings-of-the-shadowy-protector

        //Tier 5
        30242, //helm-of-the-vanquished-champion
        30248, //pauldrons-of-the-vanquished-champion
        30236, //chestguard-of-the-vanquished-champion
        30239, //gloves-of-the-vanquished-champion
        30245, //leggings-of-the-vanquished-champion

        30244, //helm-of-the-vanquished-hero
        30250, //pauldrons-of-the-vanquished-hero
        30238, //chestguard-of-the-vanquished-hero
        30241, //gloves-of-the-vanquished-hero
        30247, //leggings-of-the-vanquished-hero

        30243, //helm-of-the-vanquished-defender
        30249, //pauldrons-of-the-vanquished-defender
        30237, //chestguard-of-the-vanquished-defender
        30240, //gloves-of-the-vanquished-defender
        30246, //leggings-of-the-vanquished-defender

        //Tier 6
        31096, //helm-of-the-forgotten-vanquisher
        31102, //pauldrons-of-the-forgotten-vanquisher
        31090, //chestguard-of-the-forgotten-vanquisher
        31093, //gloves-of-the-forgotten-vanquisher
        31099, //leggings-of-the-forgotten-vanquisher
        34858, //boots-of-the-forgotten-vanquisher
        34852, //bracers-of-the-forgotten-vanquisher
        34855, //belt-of-the-forgotten-vanquisher

        31095, //helm-of-the-forgotten-protector
        31103, //pauldrons-of-the-forgotten-protector
        31091, //chestguard-of-the-forgotten-protector
        31094, //gloves-of-the-forgotten-protector
        31100, //leggings-of-the-forgotten-protector
        34857, //boots-of-the-forgotten-protector
        34851, //bracers-of-the-forgotten-protector
        34854, //belt-of-the-forgotten-protector

        31097, //helm-of-the-forgotten-conqueror
        31101, //pauldrons-of-the-forgotten-conqueror
        31089, //chestguard-of-the-forgotten-conqueror
        31092, //gloves-of-the-forgotten-conqueror
        31098, //leggings-of-the-forgotten-conqueror
        34856, //boots-of-the-forgotten-conqueror
        34848, //bracers-of-the-forgotten-conqueror
        34853, //belt-of-the-forgotten-conqueror
    };

    public static bool VerifyGuide(List<ItemSpec> items)
    {
        bool verificationSucceeded = true;
        var requiredWords = new string[] { "BIS", "Alt" };
        var allowableWords = new string[] { "Stam", "Mit", "Thrt", "FFB", "Melee", "Ranged" };

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

    public static async Task ImportClasses(IEnumerable<ClassGuideMapping> specList, int phaseNumber, CancellationToken cancelToken, Action<string> logFunc)
    {
        var addresses = new List<string>();
        var addressToSpec = new Dictionary<string, List<ClassGuideMapping>>();
        foreach (var specMapping in specList)
        {
            if (!addresses.Contains(specMapping.WebAddress))
            {
                addresses.Add(specMapping.WebAddress);
                addressToSpec.Add(specMapping.WebAddress, new List<ClassGuideMapping> { specMapping });
            } else
            {
                addressToSpec[specMapping.WebAddress].Add(specMapping);
            }            
        }

        await Common.LoadFromWebPages(addresses, async (address, doc) =>
        {
            var addressSpecList = addressToSpec[address];
            foreach(var spec in addressSpecList)
            {
                try
                {
                    string result = await ImportClassInternal(spec, phaseNumber, doc, (s) => { });

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
            }
        }, logFunc, cancelToken);

        logFunc($"Done!");
    }

    public static async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber, CancellationToken cancelToken, Action<string> logFunc)
    {
        var result = string.Empty;

        var doc = await Common.LoadFromWebPage(classGuide.WebAddress, logFunc, cancelToken);

        if (doc != null)
            result = await ImportClassInternal(classGuide, phaseNumber, doc, logFunc);

        return result;
    }
    private static Dictionary<int, GemSpec> _gemSources = new Dictionary<int, GemSpec>();
    private static async Task<string> ImportClassInternal(ClassGuideMapping classGuideMapping, int phaseNumber, IHtmlDocument doc, Action<string> logFunc)
    {
        var sb = new StringBuilder();
        (Dictionary<int, GemSpec>, Dictionary<int, EnchantSpec>, Dictionary<int, ItemSpec>) itemsAndEnchants;
        try
        {
            var className = $"{classGuideMapping.ClassName.Replace(" ", "")}{classGuideMapping.SpecName}";
            if (classGuideMapping != null && classGuideMapping.WebAddress != "do_not_use")
            {
                var guide = ItemSpecFileManager.ReadGuide(Constants.CombinePath(Constants.AddonPath, $@"\Guides\{className.Replace(" ", "")}.lua"));

                itemsAndEnchants = new WowheadGuideParser().ParseWowheadGuide(classGuideMapping, doc, logFunc);

                var gemSources = new List<GemSpec>();
                foreach (var gem in itemsAndEnchants.Item1)
                {
                    if (!guide.Item1.Any(g => g.GemId == gem.Key))
                    {
                        if (_gemSources.ContainsKey(gem.Key))
                        {
                            gemSources.Add(_gemSources[gem.Key]);
                        }
                        else
                        {
                            var gemSource = await GetGemFromWowhead(gem.Key, logFunc);
                            if (gemSource != null)
                            {
                                gemSources.Add(gemSource);
                                _gemSources.Add(gem.Key, gemSource);
                            }
                        }
                    }
                }
                guide.Item1.AddRange(gemSources);

                var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"));
                var itemSlots = JsonConvert.DeserializeObject<Dictionary<int, string>>(jsonFileString) ?? new Dictionary<int, string>();
                foreach (var item in itemsAndEnchants.Item3)
                {
                    if (item.Value.Slot == "unknown")
                    {
                        if (itemSlots.ContainsKey(item.Value.ItemId))
                        {
                            item.Value.Slot = itemSlots[item.Value.ItemId];
                        }
                        else
                        {
                            item.Value.Slot = await GetSlotFromItemId(item.Value.ItemId, logFunc);
                            itemSlots.TryAdd(item.Value.ItemId, item.Value.Slot);
                        }   
                    }
                }
                File.WriteAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"), JsonConvert.SerializeObject(itemSlots, Formatting.Indented));

                foreach (var enchant in itemsAndEnchants.Item2)
                {
                    if (!guide.Item2.Any(e => e.EnchantId == enchant.Key))
                    {
                        guide.Item2.Add(enchant.Value);
                    }
                }

                if (!guide.Item3.ContainsKey(phaseNumber))
                    guide.Item3.Add(phaseNumber, new List<ItemSpec>());
                else
                    guide.Item3[phaseNumber].Clear();
                guide.Item3[phaseNumber].AddRange(itemsAndEnchants.Item3.Values.ToList());

                WriteGemsInternal(guide.Item1, logFunc);
                WriteEnchantsInternal(guide.Item2, logFunc);
                WriteItemsInternal(guide.Item3[phaseNumber], logFunc);
                ItemSpecFileManager.WriteItemSpec(Constants.CombinePath(Constants.AddonPath, $@"\Guides\{className.Replace(" ", "")}.lua"), classGuideMapping.ClassName, classGuideMapping.SpecName,
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

    private static async Task<string> GetSlotFromItemId(int itemId, Action<string> writeToLog)
    {
        var doc = await Common.LoadFromWebPage($"https://www.wowhead.com/tbc/item={itemId}", writeToLog);

        if (doc == null)
        {
            throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
        }

        var breadcrumb = doc.QuerySelector(".breadcrumb");
        if (breadcrumb == null)
        {
            throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
        }

        var lastBreadcrumb = breadcrumb.LastElementChild;
        if (lastBreadcrumb == null)
        {
            throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
        }
        
        if (lastBreadcrumb.TextContent.Contains("..."))
        {
            lastBreadcrumb = lastBreadcrumb.PreviousElementSibling;
        }

        return _slotSwaps[lastBreadcrumb?.TextContent?.Trim() ?? ""];
    }

    private static void UpdateEnchants(List<EnchantSpec> guide, Dictionary<int, EnchantSpec> itemsAndEnchants)
    {
        foreach (var enchant in itemsAndEnchants)
        {
            if (!guide.Any(g => g.EnchantId == enchant.Value.EnchantId))
            {
                guide.Add(enchant.Value);
            }
            else
            {
                var matchingEnchant = guide.First(g => g.EnchantId == enchant.Value.EnchantId);

                var newSlotList = enchant.Value.Slot.Split("~")
                                                    .Union(matchingEnchant.Slot.Split("~")).Distinct()
                                                    .ToList();
                newSlotList.Sort((x, y) =>
                {
                    return ItemSpec.SortOrder[x] > ItemSpec.SortOrder[y] ? 1 :
                    ItemSpec.SortOrder[x] == ItemSpec.SortOrder[y] ? 0 : -1;
                });

                matchingEnchant.Slot = string.Join("~", newSlotList);
            }
        }
    }

    public static async Task<GemSpec?> GetGemFromWowhead(int gemId, Action<string> writeToLog)
    {
        GemSpec? gemSpec = null;
        try
        {
            IHtmlDocument? doc = await Common.LoadFromWebPage($"https://www.wowhead.com/tbc/item={gemId}#taught-by-item", writeToLog);

            if (doc != null)
            {
                var name = doc.Title?.Split("-")[0].Trim() ?? "unknown";
                var breadcrumb = doc.QuerySelector(".breadcrumb");
                var isMeta = breadcrumb?.LastElementChild?.TextContent == "Meta";
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
                else if (quality?.Contains("q5") ?? false)
                    itemQuality = 5;

                gemSpec = new GemSpec
                {
                    GemId = gemId,
                    Name = name,
                    IsMeta = isMeta,
                    Phase = 0,
                    Quality = itemQuality
                };
            }
        }
        catch
        {
            writeToLog("Error !");
        }
        return gemSpec;
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
        GetItems(csvLootTable, "VendorItemList");

        UpdateTierPieces(csvLootTable, itemSources);

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
            else
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
                }
            }
            if (_tierPieces.Contains(csvItem.Key))
            {
                itemSources[csvItem.Key].SourceType = "LBIS.L[\"Token\"]";
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    private static List<string> _dungeons = new List<string>() { "zul'gurub", "zul'aman", };

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

    private static void UpdateTierPieces(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\TierSetList.json"));
        DatabaseItems tierPieces = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        foreach (var tierPiece in tierPieces.Items)
        {
            int tokenKey = -99;
            var tokenKeys = tierPiece.Value.SourceNumber.Split("~");
            foreach (var key in tokenKeys)
            {
                var intKey = Int32.Parse(key);
                if (_tierPieces.Contains(intKey))
                    tokenKey = intKey;
                continue;
            }

            if (itemSources.ContainsKey(tierPiece.Key) && _tierPieces.Contains(tokenKey))
            {
                if (csvLootTable.ContainsKey(tierPiece.Key))
                {
                    if (!csvLootTable[tierPiece.Key].IsLegacy)
                    {
                        //only if tokenKey is actual token
                        foreach (var source in csvLootTable[tokenKey].ItemSource)
                        {
                            csvLootTable[tierPiece.Key].AddItem(new ImportItemSource
                            {
                                SourceType = tierPiece.Value.SourceType,
                                Source = source.Source,
                                SourceNumber = tierPiece.Value.SourceNumber,
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
                        var sourceText = source.Source;
                        if (source.SourceType == "Dungeon Token")
                        { 
                            sourceText = sourceText + " (" + source.SourceNumber + ")";
                        }

                        newLootTable.AddItem(new ImportItemSource
                        {
                            SourceType = tierPiece.Value.SourceType,
                            Source = sourceText,
                            SourceNumber = tierPiece.Value.SourceNumber,
                            SourceLocation = source.SourceLocation,
                            SourceFaction = tierPiece.Value.SourceFaction
                        });
                    }
                    csvLootTable.Add(tierPiece.Key, newLootTable);
                }
            }
        }
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

    private static void GetItems(Dictionary<int, CsvLootTable> csvLootTable, string fileName)
    {
        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\{fileName}.json"));
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

    public static async Task UpdateItemsFromWowhead(CancellationToken cancelToken, Action<string> writeToLog)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();

        var sources = new Dictionary<int, List<(string, string)>>();

        var webAddresses = itemSources.Where((i) => i.Value.SourceType == @"LBIS.L[""unknown""]")
                                           .Select((i) => $"https://www.wowhead.com/tbc/item={i.Key}/");
        try
        {
            await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
            {
                var name = doc.Title?.Replace(" - Item - Mists of Pandaria Classic", "").Trim() ?? "\"unknown\"";
                var itemId = Int32.Parse(uri.Replace("https://www.wowhead.com/tbc/item=", "").TrimEnd('/'));
                var rowElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");

                itemSources[itemId].Name = name;
                if (rowElements != null && rowElements.Length > 0)
                {
                    var source = rowElements[0].Children[0].TextContent.Trim();
                    var location = rowElements[0].Children[2].TextContent.Trim();

                    if (rowElements.Length == 1)
                    {
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
                        foreach (var row in rowElements)
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

        }
        catch
        {
            writeToLog("Error !");
        }
        ItemSourceFileManager.WriteItemSources(itemSources);
    }

    public static async Task UpdateGemsFromWowhead(CancellationToken cancelToken, Action<object> writeToLog)
    {
        var gemSources = ItemSourceFileManager.ReadGemSources();

        var sources = new Dictionary<int, List<(string, string)>>();
        var webAddresses = gemSources.Where((i) => i.Value.Source == "unknown")
                                     .Select((i) => $"https://www.wowhead.com/tbc/item={i.Key}#taught-by-item");

        var designAddresses = new Dictionary<string, int>();

        try
        {
            await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
            {
                var name = doc.Title?.Replace(" - Item - Mists of Pandaria Classic", "").Trim() ?? "\"unknown\"";
                var itemId = Int32.Parse(uri.Replace("https://www.wowhead.com/tbc/item=", "").Replace("#taught-by-item", "").TrimEnd('/'));
                var taughtElements = doc.QuerySelectorAll("#tab-taught-by-item .listview-mode-default .listview-row");
                var soldElements = doc.QuerySelectorAll("#tab-sold-by .listview-mode-default .listview-row");

                var designId = 99999;
                gemSources[itemId].Name = name;
                if (taughtElements != null && taughtElements.Length > 0)
                {
                    if (taughtElements.Length == 1)
                    {
                        Common.RecursiveBoxSearch(taughtElements[0].Children[2], (anchor) =>
                        {
                            var item = anchor.PathName.Replace("/wotlk", "").Replace("/tbc/", "/").Replace("/item=", "").Replace("/spell=", "");
                            var itemIdIndex = item.IndexOf("/");
                            if (itemIdIndex == -1)
                                itemIdIndex = item.IndexOf("&");
                            item = item.Substring(0, itemIdIndex);
                            designId = Int32.Parse(item);

                            designAddresses.Add(anchor.Href, itemId);

                            return true;
                        });
                    }
                }
                else if (soldElements.Any(se => se.TextContent.Contains("Engineering Supplies")))
                {
                    gemSources[itemId].Source = AddLocalizeText("Engineering Supplies");
                    gemSources[itemId].SourceLocation = AddLocalizeText("Faction Capital");
                }
                gemSources[itemId].DesignId = designId;

            }, writeToLog, cancelToken);

            await Common.LoadFromWebPages(designAddresses.Keys.ToList(), (uri, doc) =>
            {
                var name = doc.Title?.Replace(" - Item - Mists of Pandaria Classic", "").Trim() ?? "\"unknown\"";
                var soldElements = doc.QuerySelectorAll("#tab-sold-by .listview-mode-default .listview-row");
                var dropElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");
                var itemId = designAddresses[uri];

                if (soldElements.Any(re => re.Children[0].TextContent.Trim().Contains("Jewelcrafting Supplies")))
                {
                    gemSources[itemId].Source = AddLocalizeText("Jewelcrafting Supplies");
                    gemSources[itemId].SourceLocation = AddLocalizeText("Faction Capital");
                }
                else if (soldElements.Any(re => re.Children[0].TextContent.Trim().Contains("Engineering Supplies")))
                {
                    gemSources[itemId].Source = AddLocalizeText("Engineering Supplies");
                    gemSources[itemId].SourceLocation = AddLocalizeText("Faction Capital");
                }
                else if (dropElements.Count() > 5)
                {
                    gemSources[itemId].Source = AddLocalizeText("World Drop");
                    gemSources[itemId].SourceLocation = "\"\"";
                }
                else if (dropElements.Count() == 1)
                {
                    gemSources[itemId].Source = AddLocalizeText(dropElements[0].Children[0].TextContent.Trim());
                    gemSources[itemId].SourceLocation = AddLocalizeText(dropElements[0].Children[2].TextContent.Trim());
                }
            }, writeToLog, cancelToken);
        } catch (Exception ex)
        {
            writeToLog($"Error ! {ex.Message}");
        }

        ItemSourceFileManager.WriteGemSources(gemSources);
    }

    public static async Task UpdateEnchantsFromWowhead(CancellationToken cancelToken, Action<object> writeToLog)
    {
        var enchantSources = ItemSourceFileManager.ReadEnchantSources();

        var sources = new Dictionary<int, List<(string, string)>>();
        var webAddresses = enchantSources.Where((i) => i.Value.Source == "unknown")
                                     .Select((i) => $"https://www.wowhead.com/tbc/spell={i.Key}/");

        var scrollAddresses = new Dictionary<string, int>();

        try
        {
            await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
            {
                var name = doc.Title?.Replace(" - Spell - Mists of Pandaria Classic", "").Trim() ?? "\"unknown\"";
                var spellId = Int32.Parse(uri.Replace("https://www.wowhead.com/tbc/spell=", "").TrimEnd('/'));
                var taughtElements = doc.QuerySelectorAll("#tab-taught-by-npc .listview-mode-default .listview-row");
                var taughtItemElements = doc.QuerySelectorAll("#tab-taught-by-item .listview-mode-default .listview-row");
                var usedByElements = doc.QuerySelectorAll("#tab-used-by-item .listview-mode-default .listview-row");
                var recipeElements = doc.QuerySelectorAll("#tab-recipes .listview-mode-default .listview-row");

                enchantSources[spellId].Name = name;

                if (taughtItemElements.Any(re => re.Children[9].TextContent.Trim().Contains("Enchanting Formula")))
                {
                    Common.RecursiveBoxSearch(taughtItemElements[0].Children[2], (anchor) =>
                    {
                        var item = anchor.PathName.Replace("/wotlk", "").Replace("/tbc/", "/").Replace("/item=", "").Replace("/spell=", "");
                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        var designId = Int32.Parse(item);

                        scrollAddresses.Add(anchor.Href, spellId);

                        enchantSources[spellId].DesignId = designId;
                        enchantSources[spellId].TextureId = designId.ToString();
                        return true;
                    });
                } 
                else if (taughtElements.Any(re => re.Children[0].TextContent.Trim().Contains("Engineering Trainer") ||
                                                    re.Children[8].TextContent.Trim().Contains("Inscription Trainer") ||
                                                    re.Children[8].TextContent.Trim().Contains("Tailoring Trainer") ||
                                                    re.Children[8].TextContent.Trim().Contains("Engineering Trainer")))
                {
                    var source = taughtElements[0].Children[8].TextContent.Trim().Contains("Leatherworking") ? "Leatherworking Trainer" : "";
                    source = taughtElements[0].Children[8].TextContent.Trim().Contains("Inscription") ? "Inscription Trainer" : source;
                    source = taughtElements[0].Children[8].TextContent.Trim().Contains("Tailoring") ? "Tailoring Trainer" : source;
                    source = taughtElements[0].Children[8].TextContent.Trim().Contains("Engineering") ? "Engineering Trainer" : source;

                    enchantSources[spellId].Source = AddLocalizeText(source);
                    enchantSources[spellId].SourceLocation = AddLocalizeText("Faction Capital");
                    enchantSources[spellId].DesignId = 99999;
                    enchantSources[spellId].TextureId = "";
                }
                else if (usedByElements.Any(re => re.Children[8].TextContent.Trim().Contains("Leatherworking") ||
                                                    re.Children[8].TextContent.Trim().Contains("Inscription") ||
                                                    re.Children[8].TextContent.Trim().Contains("Tailoring") ||
                                                    re.Children[8].TextContent.Trim().Contains("Engineering")))
                {
                    Common.RecursiveBoxSearch(usedByElements[0].Children[2], (anchor) =>
                    {
                        var item = anchor.PathName.Replace("/wotlk", "").Replace("/tbc/", "/").Replace("/item=", "").Replace("/spell=", "");
                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        var designId = Int32.Parse(item);

                        var source = usedByElements[0].Children[8].TextContent.Trim().Contains("Leatherworking") ? "Leatherworking Trainer" : "";
                        source = usedByElements[0].Children[8].TextContent.Trim().Contains("Inscription") ? "Inscription Trainer" : source;
                        source = usedByElements[0].Children[8].TextContent.Trim().Contains("Tailoring") ? "Tailoring Trainer" : source;
                        source = usedByElements[0].Children[8].TextContent.Trim().Contains("Engineering") ? "Engineering Trainer" : source;

                        enchantSources[spellId].Source = AddLocalizeText(source);
                        enchantSources[spellId].SourceLocation = AddLocalizeText("Faction Capital");
                        enchantSources[spellId].DesignId = designId;
                        enchantSources[spellId].TextureId = designId.ToString();
                        return true;
                    });
                } else if (recipeElements.Any(re => re.Children[4].TextContent.Trim().Contains("Engineering") ||
                                                    re.Children[4].TextContent.Trim().Contains("Inscription") ||
                                                    re.Children[4].TextContent.Trim().Contains("Tailoring") ||
                                                    re.Children[4].TextContent.Trim().Contains("Engineering")))
                {
                    
                        var source = recipeElements[0].Children[4].TextContent.Trim().Contains("Leatherworking") ? "Leatherworking Trainer" : "";
                        source = recipeElements[0].Children[4].TextContent.Trim().Contains("Inscription") ? "Inscription Trainer" : source;
                        source = recipeElements[0].Children[4].TextContent.Trim().Contains("Tailoring") ? "Tailoring Trainer" : source;
                        source = recipeElements[0].Children[4].TextContent.Trim().Contains("Engineering") ? "Engineering Trainer" : source;


                    enchantSources[spellId].Source = AddLocalizeText(source);
                    enchantSources[spellId].SourceLocation = AddLocalizeText("Faction Capital");
                    enchantSources[spellId].DesignId = 99999;
                    enchantSources[spellId].TextureId = "";
                }

            }, writeToLog, cancelToken);

            await Common.LoadFromWebPages(scrollAddresses.Keys, (uri, doc) =>
            {
                var spellId = scrollAddresses[uri];
                var dropElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");

                if (dropElements.Count() > 5)
                {
                    enchantSources[spellId].Source = AddLocalizeText("World Drop");
                    enchantSources[spellId].SourceLocation = "\"\"";
                }
                else if (dropElements.Count() == 1)
                {
                    enchantSources[spellId].Source = AddLocalizeText(dropElements[0].Children[0].TextContent.Trim());
                    enchantSources[spellId].SourceLocation = AddLocalizeText(dropElements[0].Children[2].TextContent.Trim());
                }
                else {
                    enchantSources[spellId].Source = AddLocalizeText("Enchanting Trainer");
                    enchantSources[spellId].SourceLocation = AddLocalizeText("Faction Capital");
                }

            }, writeToLog, cancelToken);
        } catch (Exception ex)
        {
            writeToLog($"Error ! {ex.Message}");
        }
        ItemSourceFileManager.WriteEnchantSources(enchantSources);
    }
}
