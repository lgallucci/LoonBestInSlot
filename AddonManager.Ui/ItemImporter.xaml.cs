// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using AddonManager.Models;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Media.Animation;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty page that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class ItemImporter : Page
{
    public string[] ImporterList = { "EmblemImporter", "ProfessionImporter", "DungeonImporter", "RaidImporter", "PvPImporter", "ReputationImporter", "TierSetImporter" };

    public ItemImporter()
    {
        this.InitializeComponent();

        cmbImporterType.ItemsSource = ImporterList;
        cmbImporterType.Text = "EmblemImporter";
    }

    private async void Convert_Click(object sender, RoutedEventArgs e)
    {
        var importerType = cmbImporterType.SelectedValue.ToString();
        lblStatus.Text = "Processing...";

        LootImporter importer;
        switch (importerType)
        {
            case "EmblemImporter":
                importer = new EmblemImporter();
                break;
            case "ProfessionImporter":
                importer = new ProfessionImporter();
                break;
            case "DungeonImporter":
                importer = new DungeonImporter();
                break;
            case "RaidImporter":
                importer = new RaidImporter();
                break;
            case "PvPImporter":
                importer = new PvPImporter();
                break;
            case "ReputationImporter":
                importer = new ReputationImporter();
                break;
            case "TierSetImporter":
                await new TierSetImporter().Convert(txtJsonToParse.Text);
                lblStatus.Text = "Done!";
                return;
            default:
                txtJsonToParse.Text = "Choose a Importer !";
                return;
        }

        //Read file into dictionary
        await importer.Convert(txtJsonToParse.Text);

        lblStatus.Text = "Done!";
    }

    private void Importers_Click(object sender, RoutedEventArgs e)
    {
        this.Frame.Navigate(typeof(GuideImporter), null, new DrillInNavigationTransitionInfo());
    }
}
