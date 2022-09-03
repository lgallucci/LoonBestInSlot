using System.Windows;
using AddonManager.Models;
using System.IO;
using Newtonsoft.Json;

namespace AddonManager;
/// <summary>
/// Interaction logic for ConvertersWindow.xaml
/// </summary>
public partial class ConvertersWindow : Window
{
    public string[] ConverterList = { "EmblemConverter", "ProfessionConverter", "DungeonConverter", "RaidConverter" };

    public ConvertersWindow()
    {
        InitializeComponent();

        cmbConvertType.ItemsSource = ConverterList;
        cmbConvertType.Text = "EmblemConverter";
    }

    private void Convert_Click(object sender, RoutedEventArgs e)
    {
        var converterType = cmbConvertType.SelectedValue.ToString();

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
            default:
                txtJsonToParse.Text = "Choose a converter !";
                return;
        }

        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"..\..\..\ItemDatabase\{converter.FileName}.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        //run converter from dictionary
        var convertedDbItem = converter.Convert(txtJsonToParse.Text);
        dbItem.AddItems(convertedDbItem);

        //write dictionary to file
        File.WriteAllText(@$"..\..\..\ItemDatabase\{converter.FileName}.json", JsonConvert.SerializeObject(dbItem, Formatting.Indented));

    }
}
