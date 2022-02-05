using System.Net.Http;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager;

public class WowheadItemParser
{
    public static HttpClient httpClient = new HttpClient();
    public WowheadItemParser()
    {
    }

    public async Task<string> ReadWowheadItem(int itemId)
    {
        var itemStringBuilder = new StringBuilder();

        try
        {
            //Use Selenium ?
        }
        catch (Exception ex)
        {
            throw;
        }
        
        return itemStringBuilder.ToString();

    }
}