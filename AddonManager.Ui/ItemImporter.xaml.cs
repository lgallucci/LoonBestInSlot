// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using System.Threading;
using AddonManager.Importers;
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
        _importCancelToken = new CancellationTokenSource();
        var importerType = cmbImporterType.SelectedValue.ToString();
        lblStatus.Text = "Processing...";
        txtJsonToParse.Text = "";
        LootImporter importer;
        switch (importerType)
        {
            case "EmblemImporter":
                importer = new EmblemImporter(_importCancelToken.Token);
                break;
            case "ProfessionImporter":
                importer = new ProfessionImporter(_importCancelToken.Token);
                break;
            case "DungeonImporter":
                importer = new DungeonImporter(_importCancelToken.Token);
                break;
            case "RaidImporter":
                importer = new RaidImporter(_importCancelToken.Token);
                break;
            case "PvPImporter":
                importer = new PvPImporter(_importCancelToken.Token);
                break;
            case "ReputationImporter":
                importer = new ReputationImporter(_importCancelToken.Token);
                break;
            case "TierSetImporter":
                importer = new TierSetImporter(_importCancelToken.Token);
                break;
            default:
                txtJsonToParse.Text = "Choose a Importer !";
                return;
        }

        //Read file into dictionary
        await importer.Convert((log) => { txtJsonToParse.Text = log + Environment.NewLine + txtJsonToParse.Text; });

        lblStatus.Text = "Done!";
    }

    private void Importers_Click(object sender, RoutedEventArgs e)
    {
        this.Frame.Navigate(typeof(GuideImporter), null, new DrillInNavigationTransitionInfo());
    }

    CancellationTokenSource _importCancelToken = new CancellationTokenSource();
    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        _importCancelToken.Cancel();
    }
}
