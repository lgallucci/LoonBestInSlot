// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using AddonManager.FileManagers;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Media.Animation;
using Newtonsoft.Json;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Security;
using System.Threading;
using Windows.Security.Cryptography.Core;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty page that can be used on its own or navigated to within a Frame.
/// </summary>
public partial class GuideImporter : Page
{
      
    public string[] Versions = { "SOD", "Classic" };
    public string[] PhaseList = {  "CurrentPhase", "PreRaid" };

    public GuideImporter()
    {
        this.InitializeComponent();
        cmbVersions.ItemsSource = Versions;
        cmbPhase.ItemsSource = PhaseList;
    }

    private void Version_Changed(object sender, RoutedEventArgs e) 
    {
        cmbSpec.ItemsSource = GetClassMappings().Select(gm => $"{gm.ClassName}{gm.SpecName}").Distinct();
    }

    private IEnumerable<ClassGuideMapping> GetClassMappings()
    {
        if (cmbVersions.SelectedItem == "SOD")
        {
            return new ClassSpecGuideMappings().SODGuideMappings;
        }

        return new ClassSpecGuideMappings().ClassicGuideMappings;
    }

    CancellationTokenSource _importCancelToken = new CancellationTokenSource();
    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();
        var mappingType = cmbPhase.SelectedValue.ToString();

        var spec = cmbSpec.SelectedValue.ToString();

        var specMapping = GetClassMappings().FirstOrDefault(gm => spec == $"{gm.ClassName}{gm.SpecName}" && gm.MappingType == mappingType);

        if (specMapping == null)
        {
            ConsoleOut.Text = $"ERROR! Can't find class / spec / phase: {spec}, {mappingType}";
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

    private async void ImportAll_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();
        var mappingType = cmbPhase.SelectedValue.ToString();

        string result = string.Empty;
        var specMappingList = GetClassMappings().Where(gm => gm.MappingType == mappingType);
        await WowheadImporter.ImportClasses(specMappingList, specMappingList.First().Phase, _importCancelToken.Token, (log) => ConsoleOut.Text += log + Environment.NewLine);
    }

    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        _importCancelToken.Cancel();
    }

    private void Localize_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Localizing Addon...";
        LocalizationFileManager.WriteLocalizationFiles();
        ConsoleOut.Text = "Localize Complete!";
    }

    private void Importers_Click(object sender, RoutedEventArgs e)
    {
        this.Frame.Navigate(typeof(ItemImporter), null, new DrillInNavigationTransitionInfo());
    }

    private void Refresh_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Refreshing Items...";

        WowheadImporter.RefreshItems();

        ConsoleOut.Text = "Items Refreshed";
    }

    private async void Refresh_All_Click(object sender, RoutedEventArgs e)
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
}
