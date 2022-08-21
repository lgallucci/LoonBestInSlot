using System.IO;
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

    private static readonly string[] excludedItemNames = { "of Shadow Wrath", "of Healing", "of Nature's Wrath", "of the Tiger", "of Agility" };

    private static readonly int[] excludedItemIds =
    {
        30684, //Ravager's Cuffs
        30677, //Lurker's Belt
        30682, //Glider's Sabatons
        30686, //Ravager's Bands
        30685, //Ravager's Wrist-Wraps
        30676, //Lurker's Grasp
        23206, //Mark of the Champion
        23207, //Mark of the Champion
        30675, //Lurker's Cord
        30680, //Glider's Foot-Wraps
        30681, //Glider's Boots
        31201, //Illidari Cloak
        24692, //Elementalist Bracelets
    };

    private Random _rand = new Random(DateTime.Now.Millisecond);

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

    public async Task<Dictionary<int, ItemSpec>> ParseWowheadGuide(ClassGuideMapping specMapping, string spec, string phase)
    {
        var items = new Dictionary<int, ItemSpec>();

        var doc = default(IHtmlDocument);
        using (var stream = new StreamReader($@"..\..\..\WowheadGuideHtml\{spec}{phase}.html"))
        {
            var parser = new HtmlParser();
            doc = await parser.ParseDocumentAsync(stream.BaseStream);

            LoopThroughMappings(doc, specMapping, (table, guideMapping) =>
            {
                var firstRow = false;
                var tableRows = table?.FirstChild?.ChildNodes;
                if (tableRows != null)
                {
                    foreach (var tableRow in tableRows)
                    {
                        if (!firstRow || tableRow.NodeName != "TR")
                        {
                            firstRow = true;
                            continue;
                        }
                        var foundAnchor = false;

                        INode? itemChild = null;
                        foreach (var rowChild in tableRow.ChildNodes)
                        {
                            if (rowChild.NodeType == NodeType.Element)
                            {
                                if (rowChild.ChildNodes.Any(n => n.NodeName == "A" && ((IHtmlAnchorElement)n).PathName.Contains("/item=")))
                                {
                                    itemChild = rowChild;
                                    break;
                                }
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
                                        var item = ((IHtmlAnchorElement)child).PathName.Replace("/wotlk", "").Replace("/item=", "");

                                        var itemIdIndex = item.IndexOf("/");
                                        if (itemIdIndex == -1)
                                            itemIdIndex = item.IndexOf("&");

                                        item = item.Substring(0, itemIdIndex);
                                        var itemName = child.TextContent.Trim();
                                        var bisStatus = tableRow?.ChildNodes[0].TextContent.Trim();

                                        bool skippedItem = false;
                                        foreach (var excludedName in excludedItemNames)
                                            if (child.NextSibling?.TextContent.Trim().EndsWith(excludedName) ?? false || itemName.EndsWith(excludedName))
                                                skippedItem = true;

                                        if (!skippedItem)
                                        {
                                            int itemId = -99999;
                                            Int32.TryParse(item, out itemId);
                                            if (!excludedItemIds.Contains(itemId) && !items.ContainsKey(itemId))
                                            {
                                                items.Add(itemId, new ItemSpec
                                                {
                                                    ItemId = itemId,
                                                    Name = itemName ?? "undefined",
                                                    BisStatus = bisStatus ?? "undefined",
                                                    Slot = guideMapping.Slot
                                                });

                                                if (TierPiecesAndTokens.TierPieces.ContainsKey(itemId) && !items.ContainsKey(TierPiecesAndTokens.TierPieces[itemId].Item1))
                                                {
                                                    items.Add(TierPiecesAndTokens.TierPieces[itemId].Item1, new ItemSpec
                                                    {
                                                        ItemId = TierPiecesAndTokens.TierPieces[itemId].Item1,
                                                        Name = TierPiecesAndTokens.TierPieces[itemId].Item2,
                                                        BisStatus = bisStatus ?? "undefined",
                                                        Slot = guideMapping.Slot
                                                    });
                                                }

                                                if (TierPiecesAndTokens.Transmutes.ContainsKey(itemId) && !items.ContainsKey(TierPiecesAndTokens.Transmutes[itemId].Item1))
                                                {
                                                    items.Add(TierPiecesAndTokens.Transmutes[itemId].Item1, new ItemSpec
                                                    {
                                                        ItemId = TierPiecesAndTokens.Transmutes[itemId].Item1,
                                                        Name = TierPiecesAndTokens.Transmutes[itemId].Item2,
                                                        BisStatus = "Transmute " + bisStatus ?? "undefined",
                                                        Slot = guideMapping.Slot
                                                    });
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                        if (!foundAnchor)
                        {
                            var itemId = -1 * _rand.Next(10000, 99999);
                            items.Add(itemId, new ItemSpec
                            {
                                ItemId = itemId,
                                Name = "undefined",
                                BisStatus = "undefined",
                                Slot = guideMapping.Slot
                            });
                        }
                    }
                }
            });
        }
        return items;
    }

    public async Task<string> ReadWowheadGuide(ClassGuideMapping specMapping, string spec, string phase)
    {
        var itemStringBuilder = new StringBuilder();

        try
        {
            var doc = default(IHtmlDocument);
            using (var stream = new StreamReader($@"..\..\..\WowheadGuideHtml\{spec}{phase}.html"))
            {
                var parser = new HtmlParser();
                doc = await parser.ParseDocumentAsync(stream.BaseStream);

                LoopThroughMappings(doc, specMapping, (tableElement, guideMapping) =>
                {
                    itemStringBuilder.AppendLine(guideMapping.SlotHtmlId);
                    itemStringBuilder.AppendLine(tableElement?.OuterHtml);
                    itemStringBuilder.AppendLine();
                });

                return itemStringBuilder.ToString();
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }

    public void LoopThroughMappings(IHtmlDocument doc, ClassGuideMapping specMapping, Action<IHtmlTableElement?, GuideMapping> action)
    {
        foreach (var guideMapping in specMapping.GuideMappings)
        {
            var headerElement = doc.QuerySelector(guideMapping.SlotHtmlId);

            if (headerElement != null)
            {

                var nextSibling = headerElement.NextSibling;
                int elementCounter = 0;
                while (nextSibling != null && (nextSibling is not IHtmlTableElement || nextSibling is IHtmlHeadingElement))
                {
                    nextSibling = nextSibling?.NextSibling;
                    elementCounter++;
                }

                if (nextSibling is IHtmlTableElement)
                {
                    var tableElement = nextSibling as IHtmlTableElement;
                    action(tableElement, guideMapping);
                }
                else
                {
                    throw new Exception($"Failed to find table for {guideMapping.SlotHtmlId} after {elementCounter} hops");
                }
            }
            else
            {
                throw new Exception($"Failed to find {guideMapping.SlotHtmlId}");
            }
        }
    }
}
