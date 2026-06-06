using Avalonia.Controls;
using Avalonia.Interactivity;
using AddonManager.Importers;
using System;
using System.Threading;

namespace AddonManager.Avalonia.Views;

public partial class ItemImporterView : UserControl
{
    public ItemImporterView()
    {
        InitializeComponent();
    }

    private CancellationTokenSource _cancellationTokenSource = new CancellationTokenSource();
    public void CancelClick(object sender, RoutedEventArgs args)
    {
        _cancellationTokenSource?.Cancel();
        lblStatus.Text = "Cancelled!";
    }

    public async void ConvertClick(object sender, RoutedEventArgs args)
    {
        var importerType = ((ComboBoxItem?)cmbImporterType?.SelectedValue)?.Content?.ToString();
        lblStatus.Text = "Processing...";
        txtJsonToParse.Text = "";
        LootImporter importer;
        _cancellationTokenSource = new System.Threading.CancellationTokenSource();
        switch (importerType)
        {
            case "EmblemImporter":
                importer = new EmblemImporter(_cancellationTokenSource.Token);
                break;
            case "ProfessionImporter":
                importer = new ProfessionImporter(_cancellationTokenSource.Token);
                break;
            case "DungeonImporter":
                importer = new DungeonImporter(_cancellationTokenSource.Token);
                break;
            case "RaidImporter":
                importer = new RaidImporter(_cancellationTokenSource.Token);
                break;
            case "PvPImporter":
                importer = new PvPImporter(_cancellationTokenSource.Token);
                break;
            case "ReputationImporter":
                importer = new ReputationImporter(_cancellationTokenSource.Token);
                break;
            case "TierSetImporter":
                importer = new TierSetImporter(_cancellationTokenSource.Token);
                break;
            case "VendorImporter":
                importer = new VendorImporter(_cancellationTokenSource.Token);
                break;
            case "ItemLinkImporter":
                importer = new LinkedItemImporter(_cancellationTokenSource.Token);
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