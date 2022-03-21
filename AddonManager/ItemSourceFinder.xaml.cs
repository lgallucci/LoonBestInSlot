using System.IO;
using System.Text.RegularExpressions;
using System.Windows;
using AddonManager.FileManagers;

namespace AddonManager;

public class CsvLootTable
{
    public int ItemId { get;set; }
    public string ItemName { get;set; } 
    public string InstanceName { get;set; } 
    public string SourceName { get;set; }
}

/// <summary>
/// Interaction logic for ItemSourceFinder.xaml
/// </summary>
public partial class ItemSourceFinder : Window
{
    public ItemSourceFinder()
    {
        InitializeComponent();
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
                            csvLootTable[itemId].InstanceName += $", {values[0]}";
                        if (csvLootTable[itemId].SourceName != values[1])
                            csvLootTable[itemId].SourceName += $", {values[1]}";
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

        foreach (var itemSource in itemSources.Where(i => i.Value.SourceType == "undefined"))
        {

            if (csvLootTable.ContainsKey(itemSource.Key))
            {
                var csvItem = csvLootTable[itemSource.Key];
                itemSource.Value.SourceType = "Drop";
                itemSource.Value.Source = csvItem.SourceName.Trim().Trim('"');
                itemSource.Value.SourceLocation = csvItem.InstanceName.Trim().Trim('"');
            }
        }

        new ItemSourceFileManager().WriteItemSources(itemSources);
    }

    private void Import_Click(object sender, RoutedEventArgs e)
    {

    }

    private async void Read_Click(object sender, RoutedEventArgs e)
    {
        //int itemId = 0;

        //Int32.TryParse(txtItemId.Text, out itemId);

        //if (itemId > 0)
        //    ConsoleOut.Text = await new WowheadItemParser().ReadWowheadItem(itemId);
        //else
            ConsoleOut.Text = "CANT READ";
    }
}
