using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using PuppeteerSharp;

namespace AddonManager;
public static class Common
{
    public static async Task LoadFromWebPages(IEnumerable<string> pageAddresses, Func<string, string, Task> func, CancellationToken? cancelToken = null)
    {
        await new BrowserFetcher().DownloadAsync();
        using (var browser = await Puppeteer.LaunchAsync(new LaunchOptions
        {
            Headless = true
        }))
        {
            foreach (var pageAddress in pageAddresses)
            {
                if (cancelToken != null && cancelToken.Value.IsCancellationRequested)
                {
                    System.Diagnostics.Debug.WriteLine($"Cancelled...");
                    break;
                }

                System.Diagnostics.Debug.WriteLine($"Starting WebPage...");
                using (var page = await browser.NewPageAsync())
                {
                    page.DefaultTimeout = 0; // or you can set this as 0
                    await page.GoToAsync(pageAddress, WaitUntilNavigation.Networkidle2);
                    var content = await page.GetContentAsync();

                    System.Diagnostics.Debug.WriteLine($"Retrieved Content...");
                    await func(pageAddress, content);
                }
            }
        }
    }

    internal static async Task LoadFromWebPage(string pageAddress, Func<string, Task> func)
    {
        await new BrowserFetcher().DownloadAsync();
        using (var browser = await Puppeteer.LaunchAsync(new LaunchOptions
        {
            Headless = true
        }))
        {
            var page = await browser.NewPageAsync();
            page.DefaultTimeout = 0; // or you can set this as 0
            await page.GoToAsync(pageAddress, WaitUntilNavigation.Networkidle2);
            var content = await page.GetContentAsync();

            await func(content);
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
        var total = webAddresses.Count();
        var count = 0;
        await Common.LoadFromWebPages(webAddresses, async (uri, content) =>
        {
            writeToLog($"Reading from: {uri} {++count}/{total}");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            ReadWowheadContainsList(doc, uri, func);
        });
    }

    internal static async Task ReadWowheadDropsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        var total = webAddresses.Count();
        var count = 0;
        await Common.LoadFromWebPages(webAddresses, async (uri, content) =>
        {
            writeToLog($"Reading from: {uri} {++count}/{total}");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            ReadWowheadDropsList(doc, uri, func);
        });
    }

    internal static async Task ReadEvoWowSellsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        var total = webAddresses.Count();
        var count = 0;
        await Common.LoadFromWebPages(webAddresses, async (uri, content) =>
        {
            writeToLog($"Reading from: {uri} {++count}/{total}");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            ReadEvoWowSellsList(doc, uri, func);
        });
    }

    internal static void ReadEvoWowSellsList(IHtmlDocument doc, string uri, Action<string, IElement, int, IElement> func)
    {
        var rowElements = doc.QuerySelectorAll("#tab-currency-for .listview-mode-default tr");

        ReadEvoWowItemsList(doc, uri, rowElements, func);
    }

    internal static async Task ReadWowheadSellsList(IEnumerable<string> webAddresses, Action<string, IElement, int, IElement> func, Action<string> writeToLog)
    {
        var total = webAddresses.Count();
        var count = 0;
        await Common.LoadFromWebPages(webAddresses, async (uri, content) =>
        {
            writeToLog($"Reading from: {uri} {++count}/{total}");
            var parser = new HtmlParser();
            var doc = default(IHtmlDocument);
            doc = await parser.ParseDocumentAsync(content);

            ReadWowheadSellsList(doc, uri, func);
        });
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

                    var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/classic", "").Replace("/item=", "").Replace("/spell=", "");
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
