using Avalonia.Controls;
using Avalonia.Interactivity;
using AddonManager.Importers;
using System.Threading.Tasks;
using System;

namespace AddonManager.Avalonia.Views;

public partial class ItemImporter : UserControl
{
    public ItemImporter()
    {
        InitializeComponent();
    }

    public async void ConvertClick(object sender, RoutedEventArgs args)
    {
        var importerType = cmbImporterType.SelectedValue.ToString();
        lblStatus.Text = "Processing...";
        txtJsonToParse.Text = "";
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
                importer = new TierSetImporter();
                break;
            case "VendorImporter":
                importer = new VendorImporter();
                break;
            default:
                txtJsonToParse.Text = "Choose a Importer !";
                return;
        }

        //Read file into dictionary
        await importer.Convert((log) => { txtJsonToParse.Text = log + Environment.NewLine + txtJsonToParse.Text; });

        lblStatus.Text = "Done!";
    }
}