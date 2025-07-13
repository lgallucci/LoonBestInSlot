using ReactiveUI;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Reflection.Metadata.Ecma335;
using System.Windows.Input;
using Avalonia.Controls;
using Avalonia.Interactivity;
using AddonManager.Models;
using System.Linq;
using DynamicData;

namespace AddonManager.Avalonia.ViewModels;

/// <summary>
///  This is our ViewModel for the second page
/// </summary>
public class GuideImporterViewModel : PageViewModelBase
{
    public GuideImporterViewModel()
    {
        SpecComboBoxItems.AddRange(new ClassSpecGuideMappings().GuideMappings.Select(gm => $"{gm.ClassName}{gm.SpecName}").Distinct());
        PhaseComboBoxItems.AddRange(["PreRaid", "Phase 1", "Phase 2", "Phase 3", "Phase 4", "Phase 5"]);
        PhaseComboBoxSelectedIndex = 0;
    }
    public ObservableCollection<string> SpecComboBoxItems { get; set; } = new ObservableCollection<string>();
    public ObservableCollection<string> PhaseComboBoxItems { get; set; } = new ObservableCollection<string>();
    public int PhaseComboBoxSelectedIndex { get; set; }
    
    public override bool CanNavigateImport { get => true; protected set => throw new NotImplementedException(); }
    public override bool CanNavigateGuide { get => false; protected set => throw new NotImplementedException(); }

    
}