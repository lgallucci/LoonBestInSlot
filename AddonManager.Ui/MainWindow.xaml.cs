// Copyright (c) Microsoft Corporation and Contributors.
// Licensed under the MIT License.

using Microsoft.UI;
using Microsoft.UI.Xaml;

// To learn more about WinUI, the WinUI project structure,
// and more about our project templates, see: http://aka.ms/winui-project-info.

namespace AddonManager.Ui;
/// <summary>
/// An empty window that can be used on its own or navigated to within a Frame.
/// </summary>
public sealed partial class MainWindow : Window
{
    public MainWindow()
    {
        this.InitializeComponent();

        rootFrame.Navigate(typeof(GuideImporter));

        var hWnd = WinRT.Interop.WindowNative.GetWindowHandle(this); // m_window in App.cs
        var windowId = Win32Interop.GetWindowIdFromWindow(hWnd);
        var appWindow = Microsoft.UI.Windowing.AppWindow.GetFromWindowId(windowId);

        var size = new Windows.Graphics.SizeInt32();
        size.Width = 1280;
        size.Height = 800;

        this.Closed += Window_Closed;

        appWindow.Resize(size);
    }

    private void Window_Closed(object sender, WindowEventArgs args)
    {
        Common.DestroyBrowser();
    }
}
