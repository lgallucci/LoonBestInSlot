using System.IO;
using System.Text.RegularExpressions;
using System.Windows;
using AddonManager.FileManagers;
using AddonManager.Models;

namespace AddonManager;
/// <summary>
/// Interaction logic for WowheadReader.xaml
/// </summary>
public partial class WowheadReader : Window
{
    public string[] SpecList = {"DruidBalance", "DruidBear", "DruidCat", "DruidRestoration", "HunterBM", "HunterMarks", "HunterSurvival",
                                "MageFrost", "MageFire", "MageArcane", "PaladinHoly", "PaladinProtection", "PaladinRetribution", "PriestHoly",
                                "PriestShadow", "Rogue", "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAfflic",
                                "WarlockDemo", "WarlockDestro", "WarriorDPSArms", "WarriorDPSFury", "WarriorProtection"};
    public class CsvLootTable
    {
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public string InstanceName { get; set; }
        public string SourceName { get; set; }
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

        ConsoleOut.Text = await ImportClass(cmbSpec.SelectedValue.ToString(), phaseNumber);
    }

    private async void ImportAll_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var phaseNumber = Int32.Parse(txtPhase.Text.Replace("Phase", ""));

        foreach (string spec in SpecList)
        {
            var result = await ImportClass(spec, phaseNumber);
            if (result.StartsWith("System.Exception"))
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
            ConsoleOut.Text = await new WowheadGuideParser().ReadWowheadGuide(specMapping, cmbSpec.SelectedValue.ToString(), txtPhase.Text);
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

        using (var streamReader = new StreamReader(@"..\..\..\burning-crusade-loot-table.csv"))
        {
            while (!streamReader.EndOfStream)
            {
                var line = streamReader.ReadLine();

                if (!readHeaderRow)
                {
                    readHeaderRow = true;
                    continue;
                }

                Regex CSVParser = new Regex(",(?=(?:[^\"]*\"[^\"]*\")*(?![^\"]*\"))");
                var values = CSVParser.Split(line);

                if (values != null)
                {
                    var itemId = Int32.Parse(values[4]);

                    if (csvLootTable.ContainsKey(itemId))
                    {
                        if (csvLootTable[itemId].InstanceName != values[0])
                            csvLootTable[itemId].InstanceName += $" / {values[0]}";
                        if (csvLootTable[itemId].SourceName != values[1])
                            csvLootTable[itemId].SourceName += $" / {values[1]}";
                    }
                    else
                    {
                        csvLootTable.Add(itemId, new CsvLootTable
                        {
                            ItemId = itemId,
                            ItemName = values[2],
                            InstanceName = values[0],
                            SourceName = values[1]
                        });
                    }
                }
            }
        }

        var tokenKeys = new HashSet<int>();
        foreach (var tierPiece in TierPiecesAndTokens.TierPieces)
        {
            if (!tokenKeys.Contains(tierPiece.Value.Item1))
            {
                tokenKeys.Add(tierPiece.Value.Item1);
            }
            csvLootTable.Add(tierPiece.Key, new CsvLootTable
            {
                ItemId = tierPiece.Key,
                ItemName = csvLootTable[tierPiece.Key].ItemName,
                InstanceName = csvLootTable[tierPiece.Value.Item1].InstanceName, 
                SourceName = csvLootTable[tierPiece.Value.Item1].SourceName,
            });
        }

        foreach (var itemSource in itemSources)
        {
            var sourceType = "Drop";
            if (tokenKeys.Contains(itemSource.Key))
            {
                sourceType = "Token";
            }

            if (csvLootTable.ContainsKey(itemSource.Key))
            {
                var csvItem = csvLootTable[itemSource.Key];
                itemSource.Value.SourceType = sourceType;
                itemSource.Value.Source = csvItem.SourceName.Trim().Trim('"');
                itemSource.Value.SourceLocation = csvItem.InstanceName.Trim().Trim('"');
            }
        }

        new ItemSourceFileManager().WriteItemSources(itemSources);
    }
}
