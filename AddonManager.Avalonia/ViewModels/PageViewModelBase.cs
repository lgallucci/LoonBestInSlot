using System;
using ReactiveUI;

namespace AddonManager.Avalonia.ViewModels;

public abstract class PageViewModelBase : ReactiveObject
{
    /// <summary>
    /// Gets if the user can navigate to the next page
    /// </summary>
    public abstract bool CanNavigateImport { get; protected set; }

    /// <summary>
    /// Gets if the user can navigate to the previous page
    /// </summary>
    public abstract bool CanNavigateGuide { get; protected set; }
}