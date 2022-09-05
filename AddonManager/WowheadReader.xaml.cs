using System.IO;
using System.Windows;
using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;
using PuppeteerSharp;

namespace AddonManager;
/// <summary>
/// Interaction logic for WowheadReader.xaml
/// </summary>
public partial class WowheadReader : Window
{
    public string[] SpecList = {"DeathKnightBlood", "DeathKnightFrost", "DeathKnightUnholy", "DruidBalance", "DruidBear", "DruidCat", "DruidRestoration",
                                "HunterBeastMastery", "HunterMarksmanship", "HunterSurvival", "MageFrost", "MageFire", "MageArcane", "PaladinHoly", "PaladinProtection",
                                "PaladinRetribution", "PriestHoly","PriestDiscipline", "PriestShadow", "RogueAssassination", "RogueSubtlety", "RogueCombat",
                                "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAffliction", "WarlockDemonology", "WarlockDestruction", "WarriorArms",
                                "WarriorFury", "WarriorProtection"};

    public string[] PhaseList = { "GemsEnchants", "Phase0", "Phase1" };

    public static Browser? Browser { get; set; }

    public class CsvLootTable
    {
        public int ItemId { get; set; }
        public string SourceType { get; set; } = "Drop";
        public string SourceNumber { get; set; } = string.Empty;
        public string ItemName { get; set; } = string.Empty;
        public string InstanceName { get; set; } = string.Empty;
        public string SourceName { get; set; } = string.Empty;
    }

    public WowheadReader()
    {
        InitializeComponent();
        cmbSpec.ItemsSource = SpecList;
        cmbPhase.ItemsSource = PhaseList;
    }

    private async void Window_Loaded(object sender, RoutedEventArgs e)
    {
        btnImport.IsEnabled = true;
        btnImportAll.IsEnabled = true;
        btnLocalize.IsEnabled = true;
        btnRefreshItems.IsEnabled = true;
        btnConverters.IsEnabled = true;
    }

    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var phaseString = cmbPhase.SelectedValue.ToString();
        var phaseNumber = 0;
        if (phaseString.Contains("Phase"))
            phaseNumber = Int32.Parse(phaseString.Replace("Phase", ""));

        var spec = cmbSpec.SelectedValue.ToString();

        var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == phaseString);

        if (specMapping == null)
        {
            ConsoleOut.Text = $"ERROR! Can't find class / spec / phase: {spec}, {phaseString}";
            return;
        }

        try
        {
            if (phaseString == "GemsEnchants")
                ConsoleOut.Text = await ImportGemsAndEnchants(specMapping);
            else
                ConsoleOut.Text = await ImportClass(specMapping, phaseNumber);
        }
        catch (ParseException ex)
        {
            ConsoleOut.Text += $"{spec} Failed! - {ex.Message.Substring(0, 150)}..." + Environment.NewLine;
        }
    }

    private async void ImportAll_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var phaseString = cmbPhase.SelectedValue.ToString();
        var phaseNumber = 0;
        if (phaseString.Contains("Phase"))
            phaseNumber = Int32.Parse(phaseString.Replace("Phase", ""));

        foreach (string spec in SpecList)
        {
            try
            {
                var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == phaseString);

                if (specMapping == null)
                {
                    ConsoleOut.Text += $"{spec} Failed! - Can't find Spec!" + Environment.NewLine;
                    continue;
                }

                string result = string.Empty;
                if (phaseString == "GemsEnchants")
                    result = await ImportGemsAndEnchants(specMapping);
                else
                    result = await ImportClass(specMapping, phaseNumber);

                ConsoleOut.Text += $"{spec} Completed!" + Environment.NewLine;
            }
            catch (ParseException ex)
            {
                ConsoleOut.Text += $"{spec} Failed! - {ex.Message.Substring(0, 150)}..." + Environment.NewLine;
            }
        }
        ConsoleOut.Text += $"Done!" + Environment.NewLine;
    }

    private async Task<string> ImportGemsAndEnchants(ClassGuideMapping classGuide)
    {
        var sb = new StringBuilder();
        try
        {
            var className = $"{classGuide.ClassName}{classGuide.SpecName}";
            var gemSources = new ItemSourceFileManager().ReadGemSources();
            var enchantSources = new ItemSourceFileManager().ReadEnchantSources();
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

            new ItemSpecFileManager().WriteGemAndEnchantSpec(Constants.AddonPath + $@"Guides\GemsAndEnchants\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName, gemsEnchants.Item1, gemsEnchants.Item2);

            new ItemSourceFileManager().WriteGemSources(gemSources);
            new ItemSourceFileManager().WriteEnchantSources(enchantSources);
        }
        catch (Exception ex)
        {
            throw new ParseException(ex.ToString(), ex);
        }
        return sb.ToString();
    }

    private async Task<string> ImportClass(ClassGuideMapping classGuide, int phaseNumber)
    {
        var sb = new StringBuilder();
        try
        {
            var itemSources = new ItemSourceFileManager().ReadItemSources();

            var className = $"{classGuide.ClassName.Replace(" ", "")}{classGuide.SpecName}";

            if (classGuide != null)
            {
                var items = await new WowheadGuideParser().ParseWowheadGuide(classGuide);

                var oldItems = ExcludeItemsFromPhaseGuide(items, phaseNumber, className);

                foreach (var item in items)
                {
                    if (!oldItems.ContainsKey(item.Value.ItemId) || oldItems[item.Value.ItemId].BisStatus.Contains("BIS") || item.Value.BisStatus.Contains("BIS"))
                    {
                        if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
                        {
                            itemSources.Add(item.Value.ItemId, new ItemSource
                            {
                                ItemId = item.Value.ItemId,
                                Name = item.Value.Name,
                                SourceType = "undefined",
                                Source = "undefined",
                                SourceNumber = "",
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

                new ItemSpecFileManager().WriteItemSpec(Constants.AddonPath + $@"Guides\Phase{phaseNumber}\{className.Replace(" ", "")}.lua", classGuide.ClassName, classGuide.SpecName, cmbPhase.SelectedValue.ToString(), items);

                new ItemSourceFileManager().WriteItemSources(itemSources);
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
        return sb.ToString();
    }

    private Dictionary<int, ItemSpec> ExcludeItemsFromPhaseGuide(Dictionary<int, ItemSpec> items, int phaseNumber, string specName)
    {
        var oldPhaseNumber = phaseNumber - 1;

        Dictionary<int, ItemSpec> oldItems = new Dictionary<int, ItemSpec>();
        if (oldPhaseNumber >= 0)
        {
            for (int i = 0; i <= oldPhaseNumber; i++)
            {
                var phaseItems = new ItemSpecFileManager().ReadPhaseFromFile(Constants.AddonPath + $@"Guides\Phase{i}\{specName.Replace(" ", "")}.lua");

                //TODO: VALIDATE FILE ONLY CONTAINS "BIS" AND "ALT" BIS STATUSES FIRST

                foreach (var item in phaseItems)
                    if (!oldItems.ContainsKey(item.Key))
                        oldItems.Add(item.Key, item.Value);
                    else
                        oldItems[item.Key].BisStatus = item.Value.BisStatus;
            }
        }

        return oldItems;
    }

    private void Update_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var itemSources = new ItemSourceFileManager().ReadItemSources();
        var csvLootTable = new Dictionary<int, CsvLootTable>();
        var oldSources = new ItemSourceFileManager().ReadItemSources(@"..\..\..\ItemDatabase\TBCItemSources.lua");

        foreach (var oldSource in oldSources)
        {
            csvLootTable.Add(oldSource.Key, new CsvLootTable
            {
                ItemId = oldSource.Key,
                SourceType = "Legacy",
                ItemName = oldSource.Value.Name,
                InstanceName = oldSource.Value.SourceLocation,
                SourceName = oldSource.Value.Source,
                SourceNumber = oldSource.Value.SourceNumber
            });
        }

        GetItems(csvLootTable, "DungeonItemList");
        GetItems(csvLootTable, "RaidItemList");
        GetItems(csvLootTable, "EmblemItemList");

        //UpdateProfessionItems(csvLootTable);

        var tokenKeys = UpdateTierPieces(csvLootTable, itemSources);
        var transmuteKeys = UpdateTransmuteKeys(csvLootTable, itemSources);

        foreach (var itemSource in itemSources)
        {
            if (csvLootTable.ContainsKey(itemSource.Key))
            {
                var csvItem = csvLootTable[itemSource.Key];
                var sourceType = csvItem.SourceType;
                if (sourceType == "Legacy") { }
                else if (tokenKeys.Contains(itemSource.Key))
                {
                    sourceType = "Token";
                }
                else if (transmuteKeys.Contains(itemSource.Key))
                {
                    sourceType = "Transmute";
                }

                itemSource.Value.SourceType = sourceType;
                itemSource.Value.Source = csvItem.SourceName.Trim().Trim('"');
                itemSource.Value.SourceNumber = csvItem.SourceNumber.Trim().Trim('"');
                itemSource.Value.SourceLocation = csvItem.InstanceName.Trim().Trim('"');
            }
        }

        new ItemSourceFileManager().WriteItemSources(itemSources);
    }

    private void UpdateProfessionItems(Dictionary<int, CsvLootTable> csvLootTable)
    {
        GetItems(csvLootTable, "ProfessionItemList");
    }

    private HashSet<int> UpdateTransmuteKeys(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
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
                csvLootTable.Add(transmutePiece.Key, new CsvLootTable
                {
                    ItemId = transmutePiece.Key,
                    ItemName = itemSources[transmutePiece.Key].Name,
                    InstanceName = $"{csvLootTable[transmutePiece.Value.Item1].SourceName} - {csvLootTable[transmutePiece.Value.Item1].InstanceName}",
                    SourceName = transmutePiece.Value.Item1.ToString(),
                });
            }
        }
        return transmuteKeys;
    }

    private HashSet<int> UpdateTierPieces(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        var tokenKeys = new HashSet<int>();
        foreach (var tierPiece in TierPiecesAndTokens.TierPieces)
        {
            if (!tokenKeys.Contains(tierPiece.Value.Item1))
            {
                tokenKeys.Add(tierPiece.Value.Item1);
            }
            if (itemSources.ContainsKey(tierPiece.Key) && !csvLootTable.ContainsKey(tierPiece.Key))
            {
                csvLootTable.Add(tierPiece.Key, new CsvLootTable
                {
                    ItemId = tierPiece.Key,
                    ItemName = itemSources[tierPiece.Key].Name,
                    InstanceName = csvLootTable[tierPiece.Value.Item1].InstanceName,
                    SourceName = csvLootTable[tierPiece.Value.Item1].SourceName,
                });
            }
        }
        return tokenKeys;
    }

    private void GetItems(Dictionary<int, CsvLootTable> csvLootTable, string fileName)
    {
        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"..\..\..\ItemDatabase\{fileName}.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        AddToCsvLootTable(dbItem, csvLootTable);
    }

    private void AddToCsvLootTable(DatabaseItems dbItem, Dictionary<int, CsvLootTable> csvLootTable)
    {
        foreach (var item in dbItem.Items)
        {
            if (csvLootTable.ContainsKey(item.Key))
            {
                if (csvLootTable[item.Key].InstanceName != item.Value.SourceLocation)
                    csvLootTable[item.Key].InstanceName += $"/{item.Value.SourceLocation}";
                if (csvLootTable[item.Key].SourceName != item.Value.Source)
                    csvLootTable[item.Key].SourceName += $"/{item.Value.Source}";
                if (csvLootTable[item.Key].SourceNumber != item.Value.SourceNumber)
                    csvLootTable[item.Key].SourceNumber += $"/{item.Value.SourceNumber}";
            }
            else
            {
                csvLootTable.Add(item.Key, new CsvLootTable
                {
                    ItemId = item.Key,
                    SourceType = item.Value.SourceType,
                    ItemName = item.Value.Name,
                    InstanceName = item.Value.SourceLocation,
                    SourceName = item.Value.Source,
                    SourceNumber = item.Value.SourceNumber
                });
            }
        }
    }

    private void GetProfessionItems(Dictionary<int, CsvLootTable> csvLootTable)
    {
        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"..\..\..\ItemDatabase\ProfessionItemList.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        foreach (var item in dbItem.Items)
        {
            csvLootTable.Add(item.Key, new CsvLootTable
            {
                ItemId = item.Key,
                SourceType = item.Value.SourceType,
                ItemName = item.Value.Name,
                InstanceName = "",
                SourceName = item.Value.Source,
                SourceNumber = item.Value.SourceNumber
            });
        }
    }

    private void Localize_Click(object sender, RoutedEventArgs e)
    {
        LocalizationFileManager.WriteLocalizationFiles();
    }

    private void Converters_Click(object sender, RoutedEventArgs e)
    {
        var converters = new ConvertersWindow();
        converters.Show();
    }
}
