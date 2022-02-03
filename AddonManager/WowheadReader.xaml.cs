using System.Windows;
using AddonManager.FileManagers;
using AddonManager.Models;

namespace AddonManager;
/// <summary>
/// Interaction logic for WowheadReader.xaml
/// </summary>
public partial class WowheadReader : Window
{
    public WowheadReader()
    {
        InitializeComponent();
    }

    private async void Button_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var itemSources = new ItemSourceFileManager().ReadItemSources();

        var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == txtSpec.Text);

        if (specMapping != null)
        {
            var items = await new WowheadGuideParser().ParseWowheadGuide(txtUrl.Text, specMapping, txtSpec.Text, txtPhase.Text);

            items.ForEach(item =>
            {
                if (!itemSources.ContainsKey(item.ItemId))
                {
                    itemSources.Add(item.ItemId, new ItemSource
                    {
                        ItemId = item.ItemId,
                        Name = item.Name,
                        SourceType = "undefined",
                        Source = "undefined",
                        SourceLocation = "undefined"
                    });
                }

                ConsoleOut.Text += $"{item.ItemId}: {item.Name} - {item.Slot} - {item.BisStatus}\n";
            });

            new ItemSpecFileManager().WriteItemSpec(Constants.AddonPath + $@"Guides\{txtPhase.Text}\{txtSpec.Text}.lua", specMapping.ClassName, specMapping.SpecName, items);

            new ItemSourceFileManager().WriteItemSources(itemSources);
        } 
        else
        {
            ConsoleOut.Text = $"Couldn't find spec: {txtSpec.Text}";
        }

    }
}
