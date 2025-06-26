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

        var spec = cmbSpec.SelectedValue.ToString();

        var specMapping = GetClassMappings().FirstOrDefault(gm => spec == $"{gm.ClassName}{gm.SpecName}");

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
    
    private IEnumerable<ClassGuideMapping> GetClassMappings()
    {
        return new ClassSpecGuideMappings().GuideMappings;
    }
    
    private async void ImportAllClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();

        string result = string.Empty;
        var specMappingList = GetClassMappings();
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

    private void RefreshClick(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Refreshing Items...";

        WowheadImporter.RefreshItems();

        ConsoleOut.Text = "Items Refreshed";
    }

    private async void RefreshAllClick(object sender, RoutedEventArgs e)
    {
        await RefreshAllItemSources();
    }

    private async Task RefreshAllItemSources()
    {
        _importCancelToken = new CancellationTokenSource();
        
        WowheadImporter.ImportNewItems();
        
        ConsoleOut.Text = string.Empty;
        await WowheadImporter.UpdateItemsFromWowhead(_importCancelToken.Token, (s) => { ConsoleOut.Text = s + Environment.NewLine + ConsoleOut.Text; });

        WowheadImporter.RefreshItems();

        ConsoleOut.Text += $"Refresh All Complete!";
    }

    private void VersionChanged(object sender, RoutedEventArgs e)
    {
        if (this.DataContext == null)
            return;
        ((GuideImporterViewModel)this.DataContext).SpecComboBoxItems.Clear();
        ((GuideImporterViewModel)this.DataContext).SpecComboBoxItems.AddRange(GetClassMappings().Select(gm => $"{gm.ClassName}{gm.SpecName}").Distinct());
    }
}
