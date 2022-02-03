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

        try
        {
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
                            var foundAnchor = false;

                            INode? itemChild = null;
                            var rowChildCount = 0;
                            foreach (var rowChild in tableRow.ChildNodes)
                            {
                                if (rowChild.NodeType == NodeType.Element)
                                {
                                    if (rowChildCount == 1)
                                    {
                                        itemChild = rowChild;
                                        break;
                                    }
                                    rowChildCount++;
                                }
                            }

                            if (itemChild != null)
                                foreach (var child in itemChild.ChildNodes)
                                {
                                    if (child is IHtmlAnchorElement)
                                    {
                                        foundAnchor = true;

                                        if (((IHtmlAnchorElement)child).PathName.Contains("/item="))
                                        {
                                            var item = ((IHtmlAnchorElement)child).PathName.Replace("/item=", "");
                                            var itemName = child.TextContent;
                                            var bisStatus = tableRow?.ChildNodes[0].TextContent;

                                            int itemId = -99999;
                                            Int32.TryParse(item, out itemId);

                                            items.Add(new ItemSpec
                                            {
                                                ItemId = itemId,
                                                Name = itemName ?? "undefined",
                                                BisStatus = bisStatus ?? "undefined",
                                                PhaseStatus = "EH",
                                                Slot = guideMapping.Slot
                                            });
                                        }
                                    }
                                }

                            if (!foundAnchor)
                            {
                                items.Add(new ItemSpec
                                {
                                    ItemId = 99999,
                                    Name = "undefined",
                                    BisStatus = "undefined",
                                    PhaseStatus = "EH",
                                    Slot = guideMapping.Slot
                                });
                            }
                        }
                    }
                }
            }
        }catch (Exception ex)
        {
            throw;
        }
        return items;
    }

    public async Task<string> ReadWowheadGuide(string url, ClassGuideMapping specMapping)
    {
        var itemStringBuilder = new StringBuilder();

        try
        {
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

                int elementCount = 0;
                foreach (var tableElement in tableElements)
                {
                    itemStringBuilder.AppendLine($"{elementCount}:");
                    itemStringBuilder.AppendLine(tableElement.OuterHtml);
                    elementCount++;
                }
                return itemStringBuilder.ToString();

                return doc.DocumentElement.OuterHtml;
            }
        }
        catch (Exception ex)
        {
            throw;
        }
    }
}

