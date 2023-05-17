// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using AddonManager.FileManagers;
using AddonManager.Models;
using Microsoft.UI.Xaml;
using Microsoft.UI.Xaml.Controls;
using Microsoft.UI.Xaml.Media.Animation;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Security;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty page that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class GuideImporter : Page
{
    public string[] SpecList = {"DeathKnightBlood", "DeathKnightFrost", "DeathKnightUnholy", "DruidBalance", "DruidBear", "DruidCat", "DruidRestoration",
                                "HunterBeastMastery", "HunterMarksmanship", "HunterSurvival", "MageArcane", "MageFrost", "MageFire", "PaladinHoly", "PaladinProtection",
                                "PaladinRetribution", "PriestHoly","PriestDiscipline", "PriestShadow", "RogueAssassination", "RogueSubtlety", "RogueCombat",
                                "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAffliction", "WarlockDemonology", "WarlockDestruction", "WarriorArms",
                                "WarriorFury", "WarriorProtection"};

    public string[] PhaseList = { "GemsEnchants", "Phase0", "Phase1", "Phase2", "Phase3" };//, "Phase4" };

    public GuideImporter()
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

    private void Refresh_All_Click(object sender, RoutedEventArgs e)
    {
        //int phaseNumber = 3;
        //RefreshAllItemSources(phaseNumber);

        ConvertToCombinedGuides();
    }

    private void ConvertToCombinedGuides()
    {
        Tuple<string, string>[] specList = { new Tuple<string, string>("DeathKnight", "Blood"), new Tuple<string, string>("DeathKnight", "Frost"), 
            new Tuple<string, string>("DeathKnight", "Unholy"), new Tuple<string, string>("Druid", "Balance"), new Tuple<string, string>("Druid", "Bear"),
            new Tuple<string, string>("Druid", "Cat"), new Tuple<string, string>("Druid", "Restoration"), new Tuple<string, string>("Hunter", "BeastMastery"), 
            new Tuple<string, string>("Hunter", "Marksmanship"), new Tuple<string, string>("Hunter", "Survival"), new Tuple<string, string>("Mage", "Arcane"),
            new Tuple<string, string>("Mage", "Frost"), new Tuple<string, string>("Mage", "Fire"), new Tuple<string, string>("Paladin", "Holy"),
            new Tuple<string, string>("Paladin", "Protection"), new Tuple<string, string>("Paladin", "Retribution"), new Tuple<string, string>("Priest", "Holy"),
            new Tuple<string, string>("Priest", "Discipline"), new Tuple<string, string>("Priest", "Shadow"), new Tuple<string, string>("Rogue", "Assassination"),
            new Tuple<string, string>("Rogue", "Subtlety"), new Tuple<string, string>("Rogue", "Combat"), new Tuple<string, string>("Shaman", "Elemental"),
            new Tuple<string, string>("Shaman", "Enhancement"), new Tuple<string, string>("Shaman", "Restoration"), new Tuple<string, string>("Warlock", "Affliction"),
            new Tuple<string, string>("Warlock", "Demonology"), new Tuple<string, string>("Warlock", "Destruction"), new Tuple<string, string>("Warrior", "Arms"),
            new Tuple<string, string>("Warrior", "Fury"), new Tuple<string, string>("Warrior", "Protection") };

        foreach(var spec in specList)
        {
            List<Tuple<int, List<ItemSpec>>> itemsList = new List<Tuple<int, List<ItemSpec>>>();

            var gemsEnchants = ItemSpecFileManager.ReadGemEnchants(Constants.AddonPath + $@"\Guides\GemsAndEnchants\{spec.Item1}{spec.Item2}.lua");

            for (var phase = 0; phase < 4; phase++)
            {
                var items = ItemSpecFileManager.ReadPhaseFromFile(Constants.AddonPath + $@"\Guides\Phase{phase}\{spec.Item1}{spec.Item2}.lua");

                itemsList.Add(new Tuple<int, List<ItemSpec>>(phase, items.Values.ToList()));
            }

            ItemSpecFileManager.WriteItemSpec(Constants.AddonPath + $@"\Guides\{spec.Item1}{spec.Item2}.lua", spec.Item1, spec.Item2, 
                gemsEnchants.Item1, gemsEnchants.Item2, itemsList);
        }
    }

    private void RefreshAllItemSources(int phaseNumber)
    {
        ConsoleOut.Text = $"Adding Phase {phaseNumber} items to ItemSource...";

        //Read file into dictionary
        DatabaseItems dbItems;
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\RaidItemList.json");
        dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\DungeonItemList.json");
        var dungeonItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();
        dbItems.AddItems(dungeonItems);

        jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\TierSetList.json");
        var tierItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();
        SortedDictionary<int, TierSource> tierSources = new SortedDictionary<int, TierSource>();
        foreach (var tierItem in tierItems.Items)
        {
            var tierId = Int32.Parse(tierItem.Value.SourceNumber);
            if (!tierSources.ContainsKey(tierId))
                tierSources.Add(tierId, new TierSource { TierId = tierId, ItemIds = { tierItem.Key } });
            else
                tierSources[tierId].ItemIds.Add(tierItem.Key);
        }
        ItemSourceFileManager.WriteTierSources(tierSources);

        foreach (var converted in ItemSourceFileManager.ReadTBCItemSources())
        {
            if (!dbItems.Items.ContainsKey(converted.Key))
            {
                dbItems.Items.Add(converted.Key, new DatabaseItem()
                {
                    Name = converted.Value.Name,
                    Source = converted.Value.Source,
                    SourceType = converted.Value.SourceType,
                    SourceNumber = converted.Value.SourceNumber,
                    SourceLocation = converted.Value.SourceLocation
                });
            }
        }

        var itemSources = ItemSourceFileManager.ReadItemSources();

        foreach (var db in dbItems.Items)
        {
            string raidName, bossName;
            if (db.Value.SourceType == "TierToken")
            {
                var tokenId = Int32.Parse(db.Value.SourceNumber);
                var token = dbItems.Items[tokenId];
                bossName = token.Source;
                raidName = token.SourceLocation;
            }
            else
            {
                bossName = db.Value.Source;
                raidName = db.Value.SourceLocation;
            }
            if (!itemSources.ContainsKey(db.Key) && IsInPhase(phaseNumber, bossName, raidName))
            {
                itemSources.Add(db.Key, new ItemSource
                {
                    ItemId = db.Key,
                    Name = db.Value.Name,
                    SourceType = "unknown",
                    Source = "unknown",
                    SourceNumber = "0",
                    SourceLocation = "unknown"
                });
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);

        WowheadImporter.RefreshItems();

        ConsoleOut.Text = $"Phase {phaseNumber} items Added to ItemSource!";
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
                phaseRaids = new List<string> { "Naxxramas", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum", "The Eye of Eternity", 
                    "Ulduar (10)", "Ulduar (25)" };
                break;
            case 3:
                vaultBoss = "Koralon the Flame Watcher";
                phaseRaids = new List<string> { "Naxxramas", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum", "The Eye of Eternity", 
                    "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)"};
                break;
            case 4:
                vaultBoss = "Toravon the Ice Watcher";
                phaseRaids = new List<string> { "Naxxramas", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum", "The Eye of Eternity", 
                    "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)", "Icecrown Citadel (10)", "Icecrown Citadel (25)", "Icecrown Citadel (Heroic 10)", "Icecrown Citadel (Heroic 25)" };
                break;
            case 5:
                vaultBoss = "Toravon the Ice Watcher";
                phaseRaids = new List<string> { "Naxxramas", "Vault of Archavon (10)", "Vault of Archavon (25)", "The Obsidian Sanctum", "The Eye of Eternity", 
                    "Ulduar (10)", "Ulduar (25)",
                    "Trial of the Crusader (10)", "Trial of the Crusader (25)", "Trial of the Grand Crusader (10)", "Trial of the Grand Crusader (25)",
                    "Onyxia (10)", "Onyxia (25)", "Icecrown Citadel (10)", "Icecrown Citadel (25)", "Icecrown Citadel (Heroic 10)", "Icecrown Citadel (Heroic 25)",
                    "Ruby Sanctum (10)", "Ruby Sanctum (25)", "Ruby Sanctum (Heroic 10)", "Ruby Sanctum (Heroic 25)"};
                break;
            default:
                throw new ParseException(@$"Invalid Phase {phase}");
        }

        return phaseRaids.Contains(raidName) && (raidName.Contains("Vault of Archavon") ? bossName.Contains(vaultBoss) : true);

    }
}
