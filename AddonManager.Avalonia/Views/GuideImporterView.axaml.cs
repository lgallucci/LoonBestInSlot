using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Security;
using System.Threading;
using System.Threading.Tasks;
using AddonManager.Avalonia.ViewModels;
using AddonManager.FileManagers;
using AddonManager.Models;
using Avalonia.Controls;
using Avalonia.Interactivity;
using DynamicData;

namespace AddonManager.Avalonia.Views;

public partial class GuideImporterView : UserControl
{

    public GuideImporterView()
    {
        InitializeComponent();
    }

    CancellationTokenSource _importCancelToken = new CancellationTokenSource();
    public async void ImportClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();

        var spec = cmbSpec?.SelectedValue?.ToString();
        var selectedPhase = cmbPhase.SelectedIndex;

        var specMapping = GetClassMappings(selectedPhase).FirstOrDefault(gm => spec == $"{gm.ClassName}{gm.SpecName}");

        if (specMapping == null)
        {
            ConsoleOut.Text = $"ERROR! Can't find class / spec / phase: {spec}";
            return;
        }

        try
        {
            await WowheadImporter.ImportClass(specMapping, specMapping.Phase, _importCancelToken.Token, (log) => ConsoleOut.Text += log + Environment.NewLine);

            ConsoleOut.Text += $"{spec} Completed! - Verification Passed!" + Environment.NewLine;
        }
        catch (VerificationException vex)
        {
            ConsoleOut.Text += $"{spec} Completed! - Verification Failed! - {vex.Message.Substring(0, vex.Message.Length > 150 ? 150 : vex.Message.Length - 1)}..." + Environment.NewLine;
        }
        catch (ParseException ex)
        {
            ConsoleOut.Text += $"{spec} Failed! - {ex.Message.Substring(0, 150)}..." + Environment.NewLine;
        }
    }
    
    private IEnumerable<ClassGuideMapping> GetClassMappings(int selectedPhase)
    {
        return new ClassSpecGuideMappings().GuideMappings.Where(cm => cm.Phase == selectedPhase);
    }
    
    private async void ImportAllClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();

        string result = string.Empty;
        var selectedPhase = cmbPhase.SelectedIndex;
        var specMappingList = GetClassMappings(selectedPhase);
        await WowheadImporter.ImportClasses(specMappingList, specMappingList.First().Phase, _importCancelToken.Token, (log) => ConsoleOut.Text += log + Environment.NewLine);
    }

    private void CancelClick(object sender, RoutedEventArgs e)
    {
        _importCancelToken.Cancel();
    }
    
    private void LocalizeClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Localizing Addon...";
        LocalizationFileManager.WriteLocalizationFiles();
        ConsoleOut.Text = "Localize Complete!";
    }

    private void VerifyClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        var selectedPhase = cmbPhase.SelectedIndex;

        var specMappingList = GetClassMappings(selectedPhase);

        foreach(var specMapping in specMappingList)
        {
            var className = $"{specMapping.ClassName.Replace(" ", "")}{specMapping.SpecName}";
            var guide = ItemSpecFileManager.ReadGuide(Constants.CombinePath(Constants.AddonPath, $@"\Guides\{className.Replace(" ", "")}.lua"));

            try
            {
                WowheadImporter.VerifyGuide(guide.Item3[selectedPhase].ToList());

                ConsoleOut.Text += $"{className}, Phase {selectedPhase} Verification Passed!" + Environment.NewLine;
            }
            catch (VerificationException vex)
            {
                ConsoleOut.Text += $"{className} Verification Failed! - {vex.Message.Substring(0, vex.Message.Length > 150 ? 150 : vex.Message.Length - 1)}..." + Environment.NewLine;
            }
        }

    }

    private void RefreshClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Refreshing Items...";

        WowheadImporter.RefreshItems();

        ConsoleOut.Text = "Items Refreshed";
    }

    private async void RefreshAllClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        await RefreshAllGemSources();
        await RefreshAllEnchantSources();
        await RefreshAllItemSources();

        ConsoleOut.Text = $"Refresh All Complete!" + Environment.NewLine + ConsoleOut.Text;
    }

    private async Task RefreshAllGemSources()
    {
        ConsoleOut.Text = $"Refreshing Gems..." + Environment.NewLine + ConsoleOut.Text;
        _importCancelToken = new CancellationTokenSource();
        await WowheadImporter.UpdateGemsFromWowhead(_importCancelToken.Token, (s) => { ConsoleOut.Text = s + Environment.NewLine + ConsoleOut.Text; });
    }

    private async Task RefreshAllEnchantSources()
    {
        ConsoleOut.Text = $"Refreshing Enchants..." + Environment.NewLine + ConsoleOut.Text;
        _importCancelToken = new CancellationTokenSource();
        await WowheadImporter.UpdateEnchantsFromWowhead(_importCancelToken.Token, (s) => { ConsoleOut.Text = s + Environment.NewLine + ConsoleOut.Text; });
    }

    private async Task RefreshAllItemSources()
    {
        ConsoleOut.Text = $"Refreshing Items..." + Environment.NewLine + ConsoleOut.Text;
        _importCancelToken = new CancellationTokenSource();

        WowheadImporter.ImportNewItems();

        await WowheadImporter.UpdateItemsFromWowhead(_importCancelToken.Token, (s) => { ConsoleOut.Text = s + Environment.NewLine + ConsoleOut.Text; });

        WowheadImporter.RefreshItems();
    }
}
