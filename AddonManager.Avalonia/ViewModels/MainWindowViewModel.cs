using AddonManager.Avalonia.ViewModels;
using DynamicData;
using ReactiveUI;
using System.Windows.Input;

namespace AddonManager.Avalonia.ViewModels;

public class MainWindowViewModel : ReactiveObject
{
    // A read.only array of possible pages
    private GuideImporterViewModel _GuideImporterViewModel = new GuideImporterViewModel();
    private ItemImporterViewModel _ItemImporterViewModel = new ItemImporterViewModel();

    public MainWindowViewModel()
    {
        // Set current page to first on start up
        _CurrentPage = _GuideImporterViewModel;

        // Create Observables which will activate to deactivate our commands based on CurrentPage state
        var canNavImport = this.WhenAnyValue(x => x.CurrentPage.CanNavigateImport);
        var canNavGuide = this.WhenAnyValue(x => x.CurrentPage.CanNavigateGuide);

        NavigateImporterCommand = ReactiveCommand.Create(ImportClick, canNavImport);
        NavigateGuideCommand = ReactiveCommand.Create(GuideClick, canNavGuide);
    }

    // The default is the first page
    private PageViewModelBase _CurrentPage;

    /// <summary>
    /// Gets the current page. The property is read-only
    /// </summary>
    public PageViewModelBase CurrentPage
    {
        get { return _CurrentPage; }
        private set { this.RaiseAndSetIfChanged(ref _CurrentPage, value); }
    }

    /// <summary>
    /// Gets a command that navigates to the next page
    /// </summary>
    public ICommand NavigateImporterCommand { get; }
    private void ImportClick()
    {
        //  /!\ Be aware that we have no check if the index is valid. You may want to add it on your own. /!\
        CurrentPage = _ItemImporterViewModel;
    }

    /// <summary>
    /// Gets a command that navigates to the next page
    /// </summary>
    public ICommand NavigateGuideCommand { get; }
    private void GuideClick()
    {
        //  /!\ Be aware that we have no check if the index is valid. You may want to add it on your own. /!\
        CurrentPage = _GuideImporterViewModel;
    }
}