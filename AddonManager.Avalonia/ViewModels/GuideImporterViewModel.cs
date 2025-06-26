using ReactiveUI;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.Reflection.Metadata.Ecma335;
using System.Windows.Input;
using Avalonia.Controls;
using Avalonia.Interactivity;

namespace AddonManager.Avalonia.ViewModels;

/// <summary>
///  This is our ViewModel for the second page
/// </summary>
public class GuideImporterViewModel : PageViewModelBase
{
    public GuideImporterViewModel()
    {
        VersionComboBoxItems.Add("SOD");
        VersionComboBoxItems.Add("Classic");
        
        PhaseComboBoxItems.Add("CurrentPhase");
        PhaseComboBoxItems.Add("PreRaid");
    }

    public ObservableCollection<string> VersionComboBoxItems { get; set; } = new ObservableCollection<string>();
    public ObservableCollection<string> SpecComboBoxItems { get; set; } = new ObservableCollection<string>();
    public ObservableCollection<string> PhaseComboBoxItems { get; set; } = new ObservableCollection<string>();
    
    public override bool CanNavigateImport { get => true; protected set => throw new NotImplementedException(); }
    public override bool CanNavigateGuide { get => false; protected set => throw new NotImplementedException(); }

    
}