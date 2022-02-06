﻿using System.Windows;
using AddonManager.FileManagers;
using AddonManager.Models;

namespace AddonManager;
/// <summary>
/// Interaction logic for WowheadReader.xaml
/// </summary>
public partial class WowheadReader : Window
{
    public string[] SpecList = {"DruidBalance", "DruidBear", "DruidCat", "DruidRestoration", "HunterBM", "HunterMarks", "HunterSurvival",
                                "MageFrost", "MageFire", "MageArcane", "PaladinHoly", "PaladinProtection", "PaladinRetribution", "PriestHoly",
                                "PriestShadow", "Rogue", "ShamanElemental", "ShamanEnhancement", "ShamanRestoration", "WarlockAfflic",
                                "WarlockDemo", "WarlockDestro", "WarriorDPSArms", "WarriorDPSFury", "WarriorProtection"};

    public WowheadReader()
    {
        InitializeComponent();
        cmbSpec.ItemsSource = SpecList;
    }

    private async void Import_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        try
        {
            var itemSources = new ItemSourceFileManager().ReadItemSources();

            var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == $"{cmbSpec.SelectedValue.ToString()}{txtPhase.Text}");

            if (specMapping == null)
                specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == cmbSpec.SelectedValue.ToString());

            if (specMapping != null)
            {
                var items = await new WowheadGuideParser().ParseWowheadGuide(specMapping, cmbSpec.SelectedValue.ToString(), txtPhase.Text);

                items.ForEach(item =>
                {
                    if (!itemSources.ContainsKey(item.ItemId) && item.ItemId != 99999)
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

                new ItemSpecFileManager().WriteItemSpec(Constants.AddonPath + $@"Guides\{txtPhase.Text}\{cmbSpec.SelectedValue.ToString()}.lua", specMapping.ClassName, specMapping.SpecName, txtPhase.Text, items);

                new ItemSourceFileManager().WriteItemSources(itemSources);
            }
            else
            {
                ConsoleOut.Text = $"Couldn't find spec: {cmbSpec.SelectedValue.ToString()}";
            }
        }
        catch (Exception ex)
        {
            ConsoleOut.Text = ex.ToString();
        }
    }

    private async void Read_Click(object sender, RoutedEventArgs e)
    {
        ConsoleOut.Text = string.Empty;

        var specMapping = new ClassSpecGuideMappings().GuideMappings.FirstOrDefault(gm => gm.FileName == cmbSpec.SelectedValue.ToString());

        if (specMapping != null)
        {
            ConsoleOut.Text = await new WowheadGuideParser().ReadWowheadGuide(specMapping, cmbSpec.SelectedValue.ToString(), txtPhase.Text);
        }
        else
        {
            ConsoleOut.Text = $"Couldn't find spec: {cmbSpec.SelectedValue.ToString()}";
        }
    }
}
