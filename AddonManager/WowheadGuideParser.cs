using System.Net.Http;
using AddonManager.Models;
using AngleSharp;
using AngleSharp.Dom;
using AngleSharp.Html;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager;

public class WowheadGuideParser
{
    public static HttpClient httpClient = new HttpClient();

    class MyFormatter : IMarkupFormatter
    {
        public string CloseTag(IElement element, bool selfClosing)
        {

            string closeTag = HtmlMarkupFormatter.Instance.CloseTag(element, selfClosing);

            if (closeTag == "</tr>" ||
                closeTag == "</table>")
                closeTag += "\n";

            return closeTag;
        }
        public string Comment(IComment comment) => HtmlMarkupFormatter.Instance.Comment(comment);// + "\n";
        public string Doctype(IDocumentType doctype) => HtmlMarkupFormatter.Instance.Doctype(doctype);//+ "\n";
        public string LiteralText(ICharacterData text) => HtmlMarkupFormatter.Instance.LiteralText(text);// + "\n";
        public string OpenTag(IElement element, bool selfClosing) => HtmlMarkupFormatter.Instance.OpenTag(element, selfClosing);// + "\n";
        public string Processing(IProcessingInstruction processing) => HtmlMarkupFormatter.Instance.Processing(processing);// + "\n";
        public string Text(ICharacterData text) => text.Data;// + "\n";
    }

    public async Task<List<ItemSpec>> ParseWowheadGuide(string url, ClassGuideMapping specMapping, string spec, string phase)
    {
        var items = new List<ItemSpec>();
        var itemStringBuilder = new StringBuilder();

        var doc = default(IHtmlDocument);
        using (var stream = await httpClient.GetStreamAsync(new Uri(url)))
        {
            var parser = new HtmlParser();
            doc = await parser.ParseDocumentAsync(stream);

            IElement guideElement = doc.QuerySelectorAll("noscript")[2];

            var guideDoc = default(IHtmlDocument);
            string htmlSource = $"<html><body>{guideElement.InnerHtml}</body></html>";
            htmlSource = htmlSource.Replace("<br>", "");
            guideDoc = await parser.ParseDocumentAsync(htmlSource);

            IHtmlCollection<IElement> tableElements = guideDoc.QuerySelectorAll("table");

            if (specMapping != null)
            {
                foreach (var guideMapping in specMapping.GuideMappings)
                {
                    itemStringBuilder.AppendLine(guideMapping.Slot);
                    var table = tableElements[guideMapping.TableIndex];
                    var firstRow = false;
                    var tableRows = table.FirstChild?.ChildNodes;
                    foreach (var tableRow in tableRows)
                    {
                        if (!firstRow || tableRow.NodeName != "TR")
                        {
                            firstRow = true;
                            continue;
                        }

                        var itemId = ((IHtmlAnchorElement)(tableRow?.ChildNodes[1].FirstChild)).PathName.Replace("/item=", "");
                        var itemName = tableRow?.ChildNodes[1].FirstChild?.TextContent;
                        var bisStatus = tableRow?.ChildNodes[0].TextContent;
                        itemStringBuilder.AppendLine($"{itemId}: {itemName} - {bisStatus}");
                        items.Add(new ItemSpec
                        {
                            ItemId = Int32.Parse(itemId),
                            Name = itemName ?? "undefined",
                            BisStatus = bisStatus ?? "undefined",
                            PhaseStatus = "EH",
                            Slot = guideMapping.Slot
                        });
                    }
                }
            }

            return items;
        }
    }
}
