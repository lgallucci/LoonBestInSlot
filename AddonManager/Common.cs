using AngleSharp.Dom;
using AngleSharp.Html.Dom;
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
}
