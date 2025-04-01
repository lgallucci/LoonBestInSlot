using AddonManager.Avalonia.ViewModels;
using DynamicData;
using ReactiveUI;
using System.Windows.Input;

namespace AddonManager.Avalonia.ViewModels;

public class MainWindowViewModel : ReactiveObject
{
    public MainWindowViewModel()
    {
        // Set current page to first on start up
        _CurrentPage = Pages[0];
        
        ImportClickCommand = ReactiveCommand.Create(ImportClick);
    }

    // A read.only array of possible pages
    private readonly ReactiveObject[] Pages = 
    { 
        new GuideImporterViewModel(),
        new ItemImporterViewModel(),
    };

    // The default is the first page
    private ReactiveObject _CurrentPage;

    /// <summary>
    /// Gets the current page. The property is read-only
    /// </summary>
    public ReactiveObject CurrentPage
    {
        get { return _CurrentPage; }
        private set { this.RaiseAndSetIfChanged(ref _CurrentPage, value); }
    }

    /// <summary>
    /// Gets a command that navigates to the next page
    /// </summary>
    public ICommand ImportClickCommand { get; }

    private void ImportClick()
    {
        //  /!\ Be aware that we have no check if the index is valid. You may want to add it on your own. /!\
        CurrentPage = Pages[1];
    }
}