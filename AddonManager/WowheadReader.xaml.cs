using System.IO;
using System.Text.RegularExpressions;
using System.Windows;
using AddonManager.FileManagers;
using AddonManager.Models;
using Newtonsoft.Json;

namespace AddonManager;
/// <summary>
/// Interaction logic for WowheadReader.xaml
/// </summary>
public partial class WowheadReader : Window
{
    public string[] SpecList = {"DeathKnightBlood", "DeathKnightFrost", "DeathKnightUnholy", "DruidBalance", "DruidBear", "DruidCat", "DruidRestoration", 
                                "HunterBM", "HunterMarks", "HunterSurvival", "MageFrost", "MageFire", "MageArcane", "PaladinHoly", "PaladinProtection", 
                                "PaladinRetribution", "PriestHoly","PriestDiscipline", "PriestShadow", "RogueAssassination", "RogueSubtlety", "RogueCombat",
                                "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAfflic", "WarlockDemo", "WarlockDestro", "WarriorArms", 
                                "WarriorFury", "WarriorProtection"};
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
    }

    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        var phaseNumber = Int32.Parse(txtPhase.Text.Replace("Phase", ""));

        ConsoleOut.Text = await ImportClass(cmbSpec.SelectedValue.ToString() ?? string.Empty, phaseNumber);
    }

    private async void ImportAll_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var phaseNumber = Int32.Parse(txtPhase.Text.Replace("Phase", ""));

        foreach (string spec in SpecList)
        {
            var result = await ImportClass(spec, phaseNumber);
            if (result.Contains("Exception"))
            {
                ConsoleOut.Text += $"{spec} Failed!" + Environment.NewLine;

            }
            else
            {
                ConsoleOut.Text += $"{spec} Completed!" + Environment.NewLine;
            }
        }
    }

    private async Task<string> ImportClass(string className, int phaseNumber)
    {
        var sb = new StringBuilder();
        try
        {
            var itemSources = new ItemSourceFileManager().ReadItemSources();

            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == $"{className}Phase{phaseNumber}");

            if (specMapping == null)
                specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == className);

            if (specMapping != null)
            {
                var items = await new WowheadGuideParser().ParseWowheadGuide(specMapping, className, txtPhase.Text);

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

                new ItemSpecFileManager().WriteItemSpec(Constants.AddonPath + $@"Guides\Phase{phaseNumber}\{className}.lua", specMapping.ClassName, specMapping.SpecName, txtPhase.Text, items);

                new ItemSourceFileManager().WriteItemSources(itemSources);
            }
            else
            {
                sb.AppendLine($"System.Exception: Couldn't find spec: {className}");
            }
        }
        catch (Exception ex)
        {
            sb.AppendLine(ex.ToString());
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
                var phaseItems = new ItemSpecFileManager().ReadPhaseFromFile(Constants.AddonPath + $@"Guides\Phase{i}\{specName}.lua");

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

    private async void Read_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == cmbSpec.SelectedValue.ToString());

        if (specMapping != null)
        {
            ConsoleOut.Text = await new WowheadGuideParser().ReadWowheadGuide(specMapping, cmbSpec.SelectedValue.ToString() ?? string.Empty, txtPhase.Text);
        }
        else
        {
            ConsoleOut.Text = $"Couldn't find spec: {cmbSpec.SelectedValue.ToString()}";
        }
    }

    private void Update_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var itemSources = new ItemSourceFileManager().ReadItemSources();

        var csvLootTable = new Dictionary<int, CsvLootTable>();
        var readHeaderRow = false;

        var oldSources = new ItemSourceFileManager().ReadItemSources(@"..\..\..\ItemDatabase\TBCItemSources.lua");

        foreach(var oldSource in oldSources)
        {
            csvLootTable.Add(oldSource.Key, new CsvLootTable
            {
                ItemId = oldSource.Key,
                SourceType = oldSource.Value.SourceType,
                ItemName = oldSource.Value.Name,
                InstanceName = oldSource.Value.SourceLocation,
                SourceName = oldSource.Value.Source,
                SourceNumber = oldSource.Value.SourceNumber
            });
        }

        GetDungeonItems(csvLootTable);
        GetProfessionItems(csvLootTable, itemSources);

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

        foreach (var itemSource in itemSources)
        {
            if (csvLootTable.ContainsKey(itemSource.Key))
            {
                var csvItem = csvLootTable[itemSource.Key];
                var sourceType = csvItem.SourceType;
                if (tokenKeys.Contains(itemSource.Key))
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

    private void GetDungeonItems(Dictionary<int, CsvLootTable> csvLootTable)
    {
        using (StreamReader r = new StreamReader(@"..\..\..\ItemDatabase\DungeonItemlist.json"))
        {
            string json = r.ReadToEnd();
            List<DungeonItem> items = JsonConvert.DeserializeObject<List<DungeonItem>>(json);

            foreach (var item in items)
            {
                if (csvLootTable.ContainsKey(item.ItemId))
                {
                    if (csvLootTable[item.ItemId].InstanceName != item.Zone)
                        csvLootTable[item.ItemId].InstanceName += $"/{item.Zone}";
                    if (csvLootTable[item.ItemId].SourceName != item.AcquisitionName)
                        csvLootTable[item.ItemId].SourceName += $"/{item.AcquisitionName}";
                }
                else
                {
                    if (item.Acquisitions == "Boss")
                    {
                        csvLootTable.Add(item.ItemId, new CsvLootTable
                        {
                            ItemId = item.ItemId,
                            SourceType = "Drop",
                            ItemName = item.Name,
                            InstanceName = item.Zone,
                            SourceName = item.AcquisitionName,
                        });
                    }
                    else if (item.Acquisitions == "Quest")
                    {
                        csvLootTable.Add(item.ItemId, new CsvLootTable
                        {
                            ItemId = item.ItemId,
                            SourceType = "Quest",
                            ItemName = item.Name,
                            InstanceName = item.Zone,
                            SourceName = item.AcquisitionName,
                        });
                    }
                }
            }
        }
    }

    private void GetProfessionItems(Dictionary<int, CsvLootTable> csvLootTable, SortedDictionary<int, ItemSource> itemSources)
    {
        using (StreamReader r = new StreamReader(@"..\..\..\ItemDatabase\ProfessionItemlist.json"))
        {
            string json = r.ReadToEnd();
            List<ProfessionItem> items = JsonConvert.DeserializeObject<List<ProfessionItem>>(json);

            foreach (var item in items)
            {
                var itemSource = itemSources.FirstOrDefault(s => s.Value.Name == item.Name);
                if (itemSource.Key > 0)
                {
                    var itemId = itemSource.Key;
                    csvLootTable.Add(itemId, new CsvLootTable
                    {
                        ItemId = itemId,
                        SourceType = "Profession",
                        ItemName = item.Name,
                        InstanceName = "",
                        SourceName = item.Source,
                        SourceNumber = item.SourceType.Split('(')[1].TrimEnd(')')
                    });
                }
            }
        }
    }

    private void Localize_Click(object sender, RoutedEventArgs e)
    {
        LocalizationFileManager.WriteLocalizationFiles();
    }
}
