using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using PuppeteerSharp;

namespace AddonManager;
internal static class Common
{
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

            Console.WriteLine(content);
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

    internal static async Task ReadWowheadItemList(List<string> webAddresses, Action<IElement, int, string> func)
    {
        foreach (var webAddress in webAddresses)
        {
            await Common.LoadFromWebPage(webAddress, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

                var rowElements = doc.QuerySelectorAll("#tab-sells .listview-mode-default .listview-row");
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

                            var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/item=", "").Replace("/spell=", "");
                            itemName = anchorObject.TextContent;

                            var itemIdIndex = item.IndexOf("/");
                            if (itemIdIndex == -1)
                                itemIdIndex = item.IndexOf("&");

                            if (itemIdIndex > -1)
                            {
                                item = item.Substring(0, itemIdIndex);

                                success = Int32.TryParse(item, out itemId);
                            }
                            return success;
                        });

                        func(row, itemId, itemName);
                    }
                }
            });
        }
    }
}
