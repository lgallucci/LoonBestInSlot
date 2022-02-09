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

    public WowheadReader()
    {
        InitializeComponent();
        cmbSpec.ItemsSource = SpecList;
    }

    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        try
        {
            var phaseNumber = Int32.Parse(txtPhase.Text.Replace("Phase", ""));
            var itemSources = new ItemSourceFileManager().ReadItemSources();

            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == $"{cmbSpec.SelectedValue.ToString()}{txtPhase.Text}");

            if (specMapping == null)
                specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == cmbSpec.SelectedValue.ToString());

            if (specMapping != null)
            {
                var items = await new WowheadGuideParser().ParseWowheadGuide(specMapping, cmbSpec.SelectedValue.ToString(), txtPhase.Text);

                var oldPhaseNumber = phaseNumber - 2;

                Dictionary<int, ItemSpec> oldItems = new Dictionary<int, ItemSpec>();
                if (oldPhaseNumber >= 0)
                {
                    for (int i = 0; i <= oldPhaseNumber; i++)
                    {
                        var phaseItems = new ItemSpecFileManager().ReadPhaseFromFile(Constants.AddonPath + $@"Guides\Phase{i}\{cmbSpec.SelectedValue.ToString()}.lua");

                        foreach (var item in phaseItems)
                            if (!oldItems.ContainsKey(item.Key))
                                oldItems.Add(item.Key, item.Value);
                            else
                                oldItems[item.Key].BisStatus = item.Value.BisStatus;
                    }
                }

                foreach (var item in items)
                {
                    if (!oldItems.ContainsKey(item.Value.ItemId) || oldItems[item.Value.ItemId].BisStatus.Contains("BIS"))
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

                        ConsoleOut.Text += $"{item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}\n";
                    }
                    else
                    {
                        items.Remove(item.Value.ItemId);
                        ConsoleOut.Text += $"Skipped: {item.Value.ItemId}: {item.Value.Name} - {item.Value.Slot} - {item.Value.BisStatus}\n";
                    }
                }

                new ItemSpecFileManager().WriteItemSpec(Constants.AddonPath + $@"Guides\Phase{phaseNumber}\{cmbSpec.SelectedValue.ToString()}.lua", specMapping.ClassName, specMapping.SpecName, txtPhase.Text, items);

                new ItemSourceFileManager().WriteItemSources(itemSources);
            }
            else
            {
                ConsoleOut.Text = $"Couldn't find spec: {cmbSpec.SelectedValue.ToString()}";
            }
        }
        catch (Exception ex)
        {
            ConsoleOut.Text = ex.ToString();
        }
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
}
