using ReactiveUI;
using System;
using System.ComponentModel.DataAnnotations;

namespace AddonManager.Avalonia.ViewModels;

/// <summary>
///  This is our ViewModel for the second page
/// </summary>
public class ItemImporterViewModel : PageViewModelBase
{
    public ItemImporterViewModel()
    {

    }
    
    public override bool CanNavigateImport { get => false; protected set => throw new NotImplementedException(); }
    public override bool CanNavigateGuide { get => true; protected set => throw new NotImplementedException(); }
}
