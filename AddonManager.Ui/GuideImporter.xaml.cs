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
public sealed partial class GuideImporter : Page
{
    public string[] SpecList = {"DeathKnightBlood", "DeathKnightFrost", "DeathKnightUnholy", "DruidBalance", "DruidBear", "DruidCat", "DruidRestoration",
                                "HunterBeastMastery", "HunterMarksmanship", "HunterSurvival", "MageArcane", "MageFrost", "MageFire", "PaladinHoly", "PaladinProtection",
                                "PaladinRetribution", "PriestHoly","PriestDiscipline", "PriestShadow", "RogueAssassination", "RogueSubtlety", "RogueCombat",
                                "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAffliction", "WarlockDemonology", "WarlockDestruction", "WarriorArms",
                                "WarriorFury", "WarriorProtection"};

    public string[] PhaseList = { "GemsEnchants", "Phase0", "Phase1", "Phase2", "Phase3",  "Phase4" };

    public GuideImporter()
    {
        this.InitializeComponent();
        cmbSpec.ItemsSource = SpecList;
        cmbPhase.ItemsSource = PhaseList;
    }

    CancellationTokenSource _importCancelToken = new CancellationTokenSource();
    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;
        _importCancelToken = new CancellationTokenSource();
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
                ConsoleOut.Text = await WowheadImporter.ImportGemsAndEnchants(specMapping, (log) => ConsoleOut.Text += log + Environment.NewLine);
            else
                ConsoleOut.Text = await WowheadImporter.ImportClass(specMapping, phaseNumber, (log) => ConsoleOut.Text += log + Environment.NewLine);

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
        var phaseString = cmbPhase.SelectedValue.ToString();
        var phaseNumber = 0;
        if (phaseString.Contains("Phase"))
            phaseNumber = Int32.Parse(phaseString.Replace("Phase", ""));

        string result = string.Empty;
        if (phaseString == "GemsEnchants")
            await WowheadImporter.ImportGemsAndEnchants(SpecList, _importCancelToken.Token, (log) => ConsoleOut.Text += log);
        else
            await WowheadImporter.ImportClasses(SpecList, phaseNumber, _importCancelToken.Token, (log) => ConsoleOut.Text += log);
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

                var items = ItemSpecFileManager.ReadGuide(Constants.AddonPath + $@"\Guides\{specMapping.ClassName.Replace(" ", "")}{specMapping.SpecName.Replace(" ", "")}.lua").Item3;

                WowheadImporter.VerifyGuide(items[Int32.Parse(phaseString.Replace("Phase", ""))]);

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

    private void Refresh_All_Click(object sender, RoutedEventArgs e)
    {
        int phaseNumber = 3;
        RefreshAllItemSources(phaseNumber);
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

    private async void Temp_Click(object sender, RoutedEventArgs e)
    {
        await TempImportOfEmblems();
    }

    private async Task TempImportOfEmblems()
    {
        var urls = new List<string>()
        {
            @"https://wotlk.evowow.com/?npc=35573#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35573#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35573#currency-for:100-2",
            @"https://wotlk.evowow.com/?npc=35579#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35579#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35577#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35577#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35580#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35580#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35578#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35578#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35574#currency-for:0-2",
            @"https://wotlk.evowow.com/?npc=35574#currency-for:50-2",
            @"https://wotlk.evowow.com/?npc=35574#currency-for:100-2"
        };

        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\EmblemItemList.json");
        DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        await Common.LoadFromWebPages(urls.ToList(), (uri, doc) =>
        {
            var rowElements = doc.QuerySelectorAll("#tab-currency-for .listview-mode-default tr");

            if (rowElements != null && rowElements.Length > 0)
            {
                foreach (var row in rowElements)
                {
                    var success = false;
                    var currencySource = "";
                    var currencyNumber = "";
                    var currencySourceLocation = "";
                    var sourceFaction = "B";
                    var itemName = "";

                    RecursiveBoxSearch(row.Children[2], (anchorObject) =>
                    {
                        if (success) return true;

                        var item = ((IHtmlAnchorElement)anchorObject).Search.Replace("?item=", "");
                        itemName = anchorObject.TextContent;

                        success = Int32.TryParse(item, out int itemId);

                        if (success)
                        {
                            var localItems = new DatabaseItems();
                            var itemName = anchorObject.TextContent;
                            var isPurple = anchorObject.ClassName.Contains("q4") || anchorObject.ClassName.Contains("q5");
                            if (!isPurple) return false;

                            if (row.Children[5].Children.Count() > 0)
                            {
                                var factionColumn = (IElement)row.Children[5].ChildNodes[0];
                                if (factionColumn?.ClassName == "icon-horde")
                                    sourceFaction = "H";
                                else if (factionColumn?.ClassName == "icon-alliance")
                                    sourceFaction = "A";
                            }

                            RecursiveBoxSearch(row.Children[10], (currencyObject) =>
                            {
                                var currency = ((IHtmlAnchorElement)currencyObject).Search.Replace("?currency=", "").Replace("?item=", "");
                                var currencySuccess = Int32.TryParse(currency, out int currencyId);
                                if (currencySuccess)
                                {
                                    var sourceText = currencyId == 101 ? "Emblem of Heroism" :
                                        currencyId == 102 ? "Emblem of Valor" :
                                        currencyId == 221 ? "Emblem of Conquest" :
                                        currencyId == 301 ? "Emblem of Triumph" :
                                        currencyId == 341 ? "Emblem of Frost" :
                                        currencyId == 2589 ? "Sidereal Essence" :
                                        currencyId == 47242 ? "Trophy of the Crusade" : "unknown";

                                    if (string.IsNullOrWhiteSpace(currencySource))
                                        currencySource = sourceText;
                                    else
                                        currencySource = $"{currencySource} & {sourceText}";

                                    if (string.IsNullOrWhiteSpace(currencyNumber))
                                        currencyNumber = currencyObject.TextContent;
                                    else
                                        currencyNumber = $"{currencyNumber} & {currencyObject.TextContent}";

                                    if (currencyId == 47242)
                                        currencySourceLocation = "Trial of the Crusader (25)";
                                    else if (string.IsNullOrWhiteSpace(currencySourceLocation))
                                        currencySourceLocation = "Emblem Vendor";                                    
                                }
                                return currencySuccess;
                            });

                            if (!dbItems.Items.ContainsKey(itemId))
                                dbItems.AddItem(itemId, new DatabaseItem
                                {
                                    Name = itemName,
                                    SourceNumber = currencyNumber,
                                    Source = currencySource,
                                    SourceLocation = currencySourceLocation,
                                    SourceType = "Dungeon Token",
                                    SourceFaction = sourceFaction
                                });
                        }
                        return success;
                    });
                }
            }
        }, (log) => ConsoleOut.Text += log);

        //write dictionary to file
        File.WriteAllText(@$"{Constants.ItemDbPath}\EmblemItemList.json", JsonConvert.SerializeObject(dbItems, Formatting.Indented));
    }

    private async Task TempImportRaidItems(Action<string> writeToLog)
    {
        var urls = new Dictionary<string, string>()
        {
            { @"https://wotlk.evowow.com/?object=195631#contains", "Faction Champions, Trial of the Crusader (10)" },
            { @"https://wotlk.evowow.com/?object=195632#contains", "Faction Champions, Trial of the Crusader (25)" },
            { @"https://wotlk.evowow.com/?object=195633#contains", "Faction Champions, Trial of the Grand Crusader (10)" },
            { @"https://wotlk.evowow.com/?object=195635#contains", "Faction Champions, Trial of the Grand Crusader (25)" },
        };

        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\RaidItemList.json");
        DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        await Common.LoadFromWebPages(urls.Keys.ToList(), (uri, doc) =>
        {
            var rowElements = doc.QuerySelectorAll("#tab-contains .listview-mode-default tr");

            if (rowElements != null && rowElements.Length > 0)
            {
                foreach (var row in rowElements)
                {
                    var success = false;
                    var itemId = 0; // Get ItemId from Row
                    var itemName = "";

                    RecursiveBoxSearch(row.Children[2], (anchorObject) =>
                    {
                        if (success) return true;

                        var item = ((IHtmlAnchorElement)anchorObject).Search.Replace("?item=", "");
                        itemName = anchorObject.TextContent;

                        success = Int32.TryParse(item, out itemId);

                        if (success)
                        {
                            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
                            var excludedWords = new List<string>()
                            {
                                "Emblem",
                                "Reins of the",
                                "Plans: ",
                                "Pattern: ",
                                "Formula: ",
                                "Trophy of the Crusade"
                            };

                            var localItems = new DatabaseItems();
                            var itemName = anchorObject.TextContent;
                            var isPurple = anchorObject.ClassName.Contains("q4") || anchorObject.ClassName.Contains("q5");
                            if (!isPurple) return false;
                            if (excludedWords.Any(w => itemName.Contains(w))) return false;

                            var sourceFaction = "B";
                            if (row.Children[5].Children.Count() > 0)
                            {
                                var factionColumn = (IElement)row.Children[5].ChildNodes[0];
                                if (factionColumn?.ClassName == "icon-horde")
                                    sourceFaction = "H";
                                else if (factionColumn?.ClassName == "icon-alliance")
                                    sourceFaction = "A";
                            }

                            var sourceSplit = urls[uri].Split(",");
                            var sourceName = sourceSplit[0].Trim();
                            if (!dbItems.Items.ContainsKey(itemId))
                                dbItems.AddItem(itemId, new DatabaseItem
                                {
                                    Name = itemName,
                                    SourceNumber = "0",
                                    Source = sourceName,
                                    SourceLocation = sourceSplit[1].Trim(),
                                    SourceType = "Drop",
                                    SourceFaction = sourceFaction
                                });
                        }
                        return success;
                    });
                }
            }
        }, writeToLog);

        //write dictionary to file
        File.WriteAllText(@$"{Constants.ItemDbPath}\RaidItemList.json", JsonConvert.SerializeObject(dbItems, Formatting.Indented));
    }

    internal static void RecursiveBoxSearch(IElement headerElement, Func<IElement, bool> action)
    {
        foreach (var boxElement in headerElement.Children)
        {
            if (boxElement is IHtmlAnchorElement)
            {
                bool goodAnchor = action(boxElement);
                if (!goodAnchor)
                    RecursiveBoxSearch(boxElement, action);
            }
            else
            {
                RecursiveBoxSearch(boxElement, action);
            }
        }
    }
}
