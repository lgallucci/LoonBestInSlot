// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using AddonManager.FileManagers;
using AddonManager.Models;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Controls.Primitives;
using Microsoft.UI.Xaml.Data;
using Microsoft.UI.Xaml.Input;
using Microsoft.UI.Xaml.Media;
using Microsoft.UI.Xaml.Navigation;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Security;
using Windows.Foundation;
using Windows.Foundation.Collections;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty window that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class MainWindow : Window
{

    public string[] SpecList = {"DeathKnightBlood", "DeathKnightFrost", "DeathKnightUnholy", "DruidBalance", "DruidBear", "DruidCat", "DruidRestoration",
                                "HunterBeastMastery", "HunterMarksmanship", "HunterSurvival", "MageArcane", "MageFrost", "MageFire", "PaladinHoly", "PaladinProtection",
                                "PaladinRetribution", "PriestHoly","PriestDiscipline", "PriestShadow", "RogueAssassination", "RogueSubtlety", "RogueCombat",
                                "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAffliction", "WarlockDemonology", "WarlockDestruction", "WarriorArms",
                                "WarriorFury", "WarriorProtection"};

    public string[] PhaseList = { "GemsEnchants", "Phase0", "Phase1" };

    public MainWindow()
    {
        this.InitializeComponent();
        cmbSpec.ItemsSource = SpecList;
        cmbPhase.ItemsSource = PhaseList;
    }

    private bool _importIsCanceled;
    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importIsCanceled = false;
        var phaseString = cmbPhase.SelectedValue.ToString();
        var phaseNumber = 0;
        if (phaseString.Contains("Phase"))
            phaseNumber = Int32.Parse(phaseString.Replace("Phase", ""));

        var spec = cmbSpec.SelectedValue.ToString();

        var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == phaseString);

        if (specMapping == null)
        {
            ConsoleOut.Text = $"ERROR! Can't find class / spec / phase: {spec}, {phaseString}";
            return;
        }

        try
        {
            if (phaseString == "GemsEnchants")
                ConsoleOut.Text = await WowheadImporter.ImportGemsAndEnchants(specMapping);
            else
                ConsoleOut.Text = await WowheadImporter.ImportClass(specMapping, phaseNumber);

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
        _importIsCanceled = false;
        var phaseString = cmbPhase.SelectedValue.ToString();
        var phaseNumber = 0;
        if (phaseString.Contains("Phase"))
            phaseNumber = Int32.Parse(phaseString.Replace("Phase", ""));

        foreach (string spec in SpecList)
        {
            try
            {
                if (_importIsCanceled)
                {
                    ConsoleOut.Text += $"Import Canceled!" + Environment.NewLine;
                    _importIsCanceled = false;
                    return;
                }

                var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}" && gm.Phase == phaseString);

                if (specMapping == null)
                {
                    ConsoleOut.Text += $"{spec} Failed! - Can't find Spec!" + Environment.NewLine;
                    continue;
                }

                string result = string.Empty;
                if (phaseString == "GemsEnchants")
                    result = await WowheadImporter.ImportGemsAndEnchants(specMapping);
                else
                    result = await WowheadImporter.ImportClass(specMapping, phaseNumber);

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
        ConsoleOut.Text += $"Done!" + Environment.NewLine;
    }

    private void Verify_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Verifying Guides...";
        foreach (string spec in SpecList)
        {
            try
            {
                var phaseString = cmbPhase.SelectedValue.ToString();

                if (phaseString == "GemsEnchants")
                {
                    ConsoleOut.Text = "Can't verify Gems";
                    return;
                }

                var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => spec == $"{gm.ClassName.Replace(" ", "")}{gm.SpecName.Replace(" ", "")}"
                    && gm.Phase == phaseString);

                var items = ItemSpecFileManager.ReadPhaseFromFile(Constants.AddonPath + $@"\Guides\Phase{phaseString.Replace("Phase", "")}\{specMapping.ClassName.Replace(" ", "")}{specMapping.SpecName.Replace(" ", "")}.lua");

                WowheadImporter.VerifyGuide(items);

                ConsoleOut.Text += $"{spec} Completed! - Verification Passed!" + Environment.NewLine;
            }
            catch (VerificationException vex)
            {
                ConsoleOut.Text += $"{spec} Completed! - Verification Failed! - {vex.Message}..." + Environment.NewLine;
            }
        }
    }

    private void Cancel_Click(object sender, RoutedEventArgs e)
    {
        _importIsCanceled = true;
    }

    private void Localize_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Localizing Addon...";
        LocalizationFileManager.WriteLocalizationFiles();
        ConsoleOut.Text = "Localize Complete!";
    }

    private void Converters_Click(object sender, RoutedEventArgs e)
    {
        //_ = this.Navigator()?.NavigateViewAsync<Importer>(this);
    }

    private void Refresh_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Refreshing Items...";

        WowheadImporter.RefreshItems();
       
        ConsoleOut.Text = "Items Refreshed";
    }

    private void Refresh_All_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = "Adding Phase 1 items to ItemSource...";

        //Read file into dictionary
        DatabaseItems dbItem;
        var jsonFileString = File.ReadAllText(@$"..\..\..\ItemDatabase\RaidItemList.json");
        dbItem = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        var itemSources = ItemSourceFileManager.ReadItemSources();

        foreach (var db in dbItem.Items)
        {
            if (!itemSources.ContainsKey(db.Key) && IsInPhase(1, db.Value.Source, db.Value.SourceLocation))
            {
                itemSources.Add(db.Key, new ItemSource
                {
                    ItemId = db.Key,
                    Name = db.Value.Name,
                    SourceType = "undefined",
                    Source = "undefined",
                    SourceNumber = "0",
                    SourceLocation = "undefined"
                });
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);

        ConsoleOut.Text = "Phase 1 items Added to ItemSource!";
    }

    private static bool IsInPhase(int phase, string bossName, string raidName)
    {
        List<string> phaseRaids;
        string vaultBoss;

        switch (phase)
        {
            case 1:
                vaultBoss = "Archavon the Stone Watcher";
                phaseRaids = new List<string> { "Naxxramas (10)", "Naxxramas (25)", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum (10)",
                    "The Obsidian Sanctum (25)", "The Eye of Eternity (10)", "The Eye of Eternity (25)" };
                break;
            case 2:
                vaultBoss = "Emalon the Storm Watcher";
                phaseRaids = new List<string> { "Naxxramas (10)", "Naxxramas (25)", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum (10)",
                    "The Obsidian Sanctum (25)", "The Eye of Eternity (10)", "The Eye of Eternity (25)", "Ulduar (10)", "Ulduar (25)" };
                break;
            case 3:
                vaultBoss = "Koralon the Flame Watcher";
                phaseRaids = new List<string> { "Naxxramas (10)", "Naxxramas (25)", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum (10)",
                    "The Obsidian Sanctum (25)", "The Eye of Eternity (10)", "The Eye of Eternity (25)", "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)"};
                break;
            case 4:
                vaultBoss = "Toravon the Ice Watcher";
                phaseRaids = new List<string> { "Naxxramas (10)", "Naxxramas (25)", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum (10)",
                    "The Obsidian Sanctum (25)", "The Eye of Eternity (10)", "The Eye of Eternity (25)", "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)", "Icecrown Citadel (10)", "Icecrown Citadel (25)", "Icecrown Citadel (Heroic 10)", "Icecrown Citadel (Heroic 25)" };
                break;
            default:
                vaultBoss = "Toravon the Ice Watcher";
                phaseRaids = new List<string> { "Naxxramas (10)", "Naxxramas (25)", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum (10)",
                    "The Obsidian Sanctum (25)", "The Eye of Eternity (10)", "The Eye of Eternity (25)", "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)", "Icecrown Citadel (10)", "Icecrown Citadel (25)", "Icecrown Citadel (Heroic 10)", "Icecrown Citadel (Heroic 25)",
                    "Ruby Sanctum (10)", "Ruby Sanctum (25)", "Ruby Sanctum (Heroic 10)", "Ruby Sanctum (Heroic 25)"};
                break;
        }

        return phaseRaids.Contains(raidName) && (raidName.Contains("Vault of Archavon") ? bossName.Contains(vaultBoss) : true);

    }
}