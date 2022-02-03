using System.Windows;
using AddonManager.FileManagers;
using AddonManager.ItemMigration;
using AddonManager.Models;

namespace AddonManager;

/// <summary>
/// Interaction logic for ItemMigrationWindow.xaml
/// </summary>
public partial class ItemMigrationWindow : Window
{
    public string[] SpecList = {"DruidBalance", "DruidBear", "DruidCat", "DruidRestoration", "Hunter", "Mage", "PaladinHoly",
                                "PaladinProtection", "PaladinRetribution", "PriestHoly", "PriestShadow", "Rogue", "ShamanElemental",
                                "ShamanEnhancement", "ShamanRestoration", "Warlock", "WarriorDPS", "WarriorProtection"};
    public SortedDictionary<int, ItemSource> ItemSources;

    public ItemMigrationWindow()
    {
        InitializeComponent();

        ItemSources = new SortedDictionary<int, ItemSource>();
    }

    private void Button_Click(object sender, RoutedEventArgs e)
    {
        var migrationReader = new MigrationSpecReader();
        var itemSourceSuccess = false;
        foreach (var spec in SpecList)
        {
            var itemSpecs = migrationReader.ReadFile(spec);
            foreach (var itemSpec in itemSpecs)
            {
                ItemSources[itemSpec.Item1.ItemId] = itemSpec.Item2;
                itemSourceSuccess = itemSourceSuccess && CheckItemSources(itemSpec.Item2);
            }
            ConsoleOut.Text += $"Import Success: {spec}\n";
        }         

        if (!itemSourceSuccess)
        {
            new ItemSourceFileManager().WriteItemSources(ItemSources);
            ConsoleOut.Text += $"File Write: Success";
        }
        else
        {
            ConsoleOut.Text += $"File Write: Failed";
        }
    }

    private bool CheckItemSources(ItemSource source)
    {
        var itemSourceError = false;

        if (source.ItemId <= 0 ||
            string.IsNullOrWhiteSpace(source.Name) ||
            string.IsNullOrWhiteSpace(source.SourceType) ||
            string.IsNullOrWhiteSpace(source.Source) ||
            source.SourceLocation == null)
        {
            ConsoleOut.Text += $"Error: {source.ItemId} - {source.Name} - {source.SourceType} - " +
                $"{source.Source} - {source.SourceLocation}\n";
            itemSourceError = true;
        }
        return itemSourceError;
    }
}
