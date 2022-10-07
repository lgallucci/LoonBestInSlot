using System.Windows;
using AddonManager.Models;

namespace AddonManager;
/// <summary>
/// Interaction logic for ConvertersWindow.xaml
/// </summary>
public partial class ConvertersWindow : Window
{
    public string[] ConverterList = { "EmblemConverter", "ProfessionConverter", "DungeonConverter", "RaidConverter", "PvPConverter" };

    public ConvertersWindow()
    {
        InitializeComponent();

        cmbConvertType.ItemsSource = ConverterList;
        cmbConvertType.Text = "EmblemConverter";
    }

    private async void Convert_Click(object sender, RoutedEventArgs e)
    {
        var converterType = cmbConvertType.SelectedValue.ToString();
        lblStatus.Content = "Processing...";

        LootConverter converter;
        switch (converterType)
        {
            case "EmblemConverter":
                converter = new EmblemConverter();
                break;
            case "ProfessionConverter":
                converter = new ProfessionConverter();
                break;
            case "DungeonConverter":
                converter = new DungeonConverter();
                break;
            case "RaidConverter":
                converter = new RaidConverter();
                break;
            case "PvPConverter":
                converter = new PvPConverter();
                break;
            default:
                txtJsonToParse.Text = "Choose a converter !";
                return;
        }

        //Read file into dictionary
        await converter.Convert(txtJsonToParse.Text);

        lblStatus.Content = "Done!";
    }
}
