using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using PuppeteerSharp;

namespace AddonManager;
public static class Common
{
    private static Browser? _browser;
    private static async Task CreateBrowser()
    {        
        await new BrowserFetcher().DownloadAsync();
        _browser = await Puppeteer.LaunchAsync(new LaunchOptions
        {
            Headless = true
        });
    }

    public static void DestroyBrowser()
    {        
        _browser?.Dispose();
        _browser = null;
    }

    public static async Task LoadFromWebPages(IEnumerable<string> pageAddresses, Action<string, IHtmlDocument> func, Action<string> writeToLog, CancellationToken? cancelToken = null, bool waitForIdle = true)    
    {        
        IHtmlDocument? content;

        if (_browser == null) {
            await CreateBrowser();
        }

        var total = pageAddresses.Count();
        int count = 0;
        foreach (var pageAddress in pageAddresses)
        {
            content = await RetryPageLoad(pageAddress, writeToLog, cancelToken, ++count, total, waitForIdle);  

            if (content != null)
                func(pageAddress, content);         
        }
    }

    internal static async Task<IHtmlDocument?> LoadFromWebPage(string pageAddress, Action<string> writeToLog, CancellationToken? cancelToken = null, bool waitForIdle = true)
    {
        IHtmlDocument? content;

        if (_browser == null) {
            await CreateBrowser();
        }
        
        return await RetryPageLoad(pageAddress, writeToLog, cancelToken, 1, 1, waitForIdle);
    }

    private static async Task<IHtmlDocument?> RetryPageLoad(string pageAddress, Action<string> writeToLog, CancellationToken? cancelToken, int count, int total, bool waitForIdle)
    {
        if (_browser == null) 
        {
            throw new InvalidOperationException("Trying to use a null browser somehow!");
        }

        for(var i = 0; i < 3; i++)
        {
            if (cancelToken != null && cancelToken.Value.IsCancellationRequested)
            {
                System.Diagnostics.Debug.WriteLine($"Cancelled...");
                break;
            }
            System.Diagnostics.Debug.WriteLine($"Starting WebPage ({pageAddress})...");
            using (var page = await _browser.NewPageAsync())
            {
                try 
                {
                    page.DefaultTimeout = 30000; // or you can set this as 0
                    if (waitForIdle)
                        await page.GoToAsync(pageAddress, WaitUntilNavigation.Networkidle2);
                    else
                        await page.GoToAsync(pageAddress, WaitUntilNavigation.DOMContentLoaded);
                    var content = await page.GetContentAsync();

                    System.Diagnostics.Debug.WriteLine($"Retrieved Content ({content.Substring(0, 10)})...");

                    writeToLog($"Reading from: {pageAddress} {count}/{total}");

                    var parser = new HtmlParser();
                    var doc = default(IHtmlDocument);
                    doc = await parser.ParseDocumentAsync(content);

                    return doc;
                } 
                catch 
                {
                    writeToLog($"Failed to read from {pageAddress} {count}/{total} ({i+1}/3)");
                }
            }
        }
        return null;
    }

    internal static async Task RecursiveBoxSearch(IElement headerElement, Func<IElement, Task<bool>> action)
    {
        foreach (var boxElement in headerElement.Children)
        {
            if (boxElement is IHtmlAnchorElement)
            {
                bool goodAnchor = await action(boxElement);
                if (!goodAnchor)
                    await RecursiveBoxSearch(boxElement, action);
            }
            else
            {
                await RecursiveBoxSearch(boxElement, action);
            }
        }
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

    internal static async Task ReadWowheadContainsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(webAddresses, (uri, doc) => ReadWowheadContainsList(doc, uri, func), writeToLog);
    }

    internal static async Task ReadWowheadDropsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(webAddresses, (uri, doc) => ReadWowheadDropsList(doc, uri, func), writeToLog);
    }

    internal static async Task ReadWowheadDroppedByList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(webAddresses, (uri, doc) => ReadWowheadDroppedByList(doc, uri, func), writeToLog);
    }

    internal static async Task ReadEvoWowSellsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(webAddresses, (uri, doc) =>
        {
            var rowElements = doc.QuerySelectorAll("#tab-currency-for .listview-mode-default tr");

            ReadEvoWowItemsList(doc, uri, rowElements, func);
        }, writeToLog);
    }

    internal static async Task ReadWowheadSellsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(webAddresses, (uri, doc) => ReadWowheadSellsList(doc, uri, func), writeToLog);
    }

    internal static void ReadWowheadSellsList(IHtmlDocument doc, string uri, Action<string, IElement, int, IElement> func)
    {
        var rowElements = doc.QuerySelectorAll("#tab-sells .listview-mode-default .listview-row");

        ReadWowheadItemsList(doc, uri, rowElements, func);
    }

    internal static void ReadWowheadDropsList(IHtmlDocument doc, string uri, Action<string, IElement, int, IElement> func)
    {
        var rowElements = doc.QuerySelectorAll("#tab-drops .listview-mode-default .listview-row");

        ReadWowheadItemsList(doc, uri, rowElements, func);
    }

    internal static void ReadWowheadDroppedByList(IHtmlDocument doc, string uri, Action<string, IElement, int, IElement> func)
    {
        var rowElements = doc.QuerySelectorAll("#tab-dropped-by .listview-mode-default .listview-row");

        ReadWowheadItemsList(doc, uri, rowElements, func);
    }
    
    internal static void ReadWowheadContainsList(IHtmlDocument doc, string uri, Action<string, IElement, int, IElement> func)
    {
        var rowElements = doc.QuerySelectorAll("#tab-contains .listview-mode-default tr");

        ReadWowheadItemsList(doc, uri, rowElements, func);
    }

    private static void ReadEvoWowItemsList(IHtmlDocument doc, string uri, IHtmlCollection<IElement> rowElements, Action<string, IElement, int, IElement> func)
    {
        if (rowElements != null && rowElements.Length > 0)
        {
            bool skipFirst = false;
            foreach (var row in rowElements)
            {
                if (!skipFirst)
                {
                    skipFirst = true;
                    continue;
                }

                var success = false;
                var itemId = 0; // Get ItemId from Row
                var itemName = "";

                RecursiveBoxSearch(row.Children[2], (anchorObject) =>
                {
                    if (success) return true;

                    var item = ((IHtmlAnchorElement)anchorObject).Search.Replace("?item=", "").Replace("?spell=", "");
                    itemName = anchorObject.TextContent;

                    success = Int32.TryParse(item, out itemId);

                    func(uri, row, itemId, anchorObject);

                    return success;
                });

            }
        }
    }

    private static void ReadWowheadItemsList(IHtmlDocument doc, string uri, IHtmlCollection<IElement> rowElements, Action<string, IElement, int, IElement> func)
    {
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

                    var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/cata", "").Replace("/item=", "").Replace("/spell=", "");
                    itemName = anchorObject.TextContent;

                    var itemIdIndex = item.IndexOf("/");
                    if (itemIdIndex == -1)
                        itemIdIndex = item.IndexOf("&");

                    if (itemIdIndex > -1)
                    {
                        item = item.Substring(0, itemIdIndex);

                        success = Int32.TryParse(item, out itemId);

                        func(uri, row, itemId, anchorObject);
                    }
                    return success;
                });

            }
        }
    }
}