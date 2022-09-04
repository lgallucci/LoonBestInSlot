using System.IO;
using System.Linq;
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

    private Random _rand = new Random(DateTime.Now.Millisecond);

    private Dictionary<int, int> _gemPhases = new Dictionary<int, int>()
    {
        { 40034, 3 },
        { 40112, 3 },
        { 40113, 3 },
        { 40114, 3 },
        { 40119, 3 },
        { 40125, 3 },
        { 40129, 3 },
        { 40133, 3 },
        { 40141, 3 },
        { 40148, 3 },
        { 40150, 3 },
        { 40153, 3 },
        { 40155, 3 },
        { 40157, 3 },
        { 40159, 3 },
        { 40162, 3 },
        { 40166, 3 },
        { 40167, 3 },
        { 45880, 3 }
    };

    private Dictionary<int, int> _enchantSwaps = new Dictionary<int, int>()
    {
        { 22530, 27906 }, //Enchant Bracer - Major Defense
        { 34207, 44770 }, //Glove Reinforcements
        { 37336, 47766 }, //Enchant Chest - Greater Defense
        { 44465, 60692 }, //Enchant Chest - Powerful Stats
        { 37347, 44591 }, //Enchant Cloak - Titanweave
        { 38371, 50964 }, //Jormungar Leg Armor
        { 38372, 50966 }, //Nerubian Leg Armor
        { 38373, 50965 }, //Frosthide Leg Armor
        { 38374, 50967 }, //Icescale Leg Armor
        { 38376, 50963 }, //Heavy Borean Armor Kit
        { 38979, 44592 }, //Enchant Gloves - Exceptional Spellpower
        { 38928, 33990 }, //Enchant Chest - Major Spirit
        { 39003, 47898 }, //Enchant Cloak - Greater Speed
        { 39006, 47901 }, //Enchant Boots - Tuskarr's Vitality
        { 41093, 54999 }, //Hyperspeed Accelerators
        { 41111, 55002 }, //Flexweave Underlay
        { 41118, 55016 }, //Nitro Boosts
        { 44936, 62202 }, //Titanium Plating
        { 54861, 55016 }, //Nitro Boosts
        { 43097, 57683 }, //Fur Lining - Attack Power
        { 44467, 60714 }, //Enchant Weapon - Mighty Spellpower
        { 44470, 60767 }, //Enchant Bracers - Superior Spellpower
        { 44471, 47672 }, //Enchant Cloak - Mighty Armor
        { 44489, 60692 }, //Enchant Chest - Powerful Stats
        { 44944, 62256 }, //Enchant Bracers - Major Stamina
        { 44963, 62448 }, //Earthen Leg Armor
        { 45056, 62948 }  //Enchant Staff - Greater Spellpower}
     };

    private Dictionary<int, int> _gemSwaps = new Dictionary<int, int>()
    {
        { 55389, 41285 }, //Chaotic Skyflare Diamond
    };

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
        using (var stream = new StreamReader($@"..\..\..\WowheadGuideHtml\{spec.Replace(" ", "")}{phase}.html"))
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
                                            if (!items.ContainsKey(itemId))
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
                    throw new Exception($"PARSE ERROR! Failed to find table for {guideMapping.SlotHtmlId} after {elementCounter} hops");
                }
            }
            else
            {
                throw new Exception($"PARSE ERROR! Failed to find {guideMapping.SlotHtmlId}");
            }
        }
    }

    internal async Task<(Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>)> ParseGemEnchantsWowheadGuide(ClassGuideMapping classGuide)
    {
        var gems = new Dictionary<int, GemSpec>();
        var enchants = new Dictionary<string, EnchantSpec>();
        var doc = default(IHtmlDocument);
        using (var stream = new StreamReader($@"..\..\..\WowheadGuideHtml\{classGuide.ClassName.Replace(" ", "")}{classGuide.SpecName.Replace(" ", "")}GemsEnchants.html"))
        {
            var parser = new HtmlParser();
            doc = await parser.ParseDocumentAsync(stream.BaseStream);

            foreach (var heading in classGuide.GuideMappings)
            {
                var headerElement = doc.QuerySelector(heading.SlotHtmlId);
                if (headerElement != null)
                {
                    RecursiveBoxSearch(headerElement, (boxElement) =>
                    {
                        bool isSpell = false;
                        if (((IHtmlAnchorElement)boxElement).PathName.Contains("/item="))
                        {
                            isSpell = false;
                        }
                        else if (((IHtmlAnchorElement)boxElement).PathName.Contains("/spell="))
                        {
                            isSpell = true;
                        }
                        else
                        {
                            return false;
                        }

                        var item = ((IHtmlAnchorElement)boxElement).PathName.Replace("/wotlk", "").Replace("/item=", "").Replace("/spell=", "");
                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");

                        if (itemIdIndex > -1)
                        {
                            item = item.Substring(0, itemIdIndex);
                            var itemName = boxElement.TextContent.Trim();
                            var itemId = Int32.Parse(item);

                            if (heading.Slot == "Meta" || heading.Slot == "Gem")
                            {
                                if (_gemSwaps.ContainsKey(itemId))
                                    itemId = _gemSwaps[itemId];
                                int itemQuality = 0;
                                if (boxElement.ClassName.Contains("q1"))
                                    itemQuality = 1;
                                else if (boxElement.ClassName.Contains("q2"))
                                    itemQuality = 2;
                                else if (boxElement.ClassName.Contains("q3"))
                                    itemQuality = 3;
                                else if (boxElement.ClassName.Contains("q4"))
                                    itemQuality = 4;

                                if (!gems.ContainsKey(itemId))
                                    gems.Add(itemId, new GemSpec
                                    {
                                        GemId = itemId,
                                        Name = itemName ?? "undefined",
                                        Phase = _gemPhases.ContainsKey(itemId) ? _gemPhases[itemId] : 0,
                                        Quality = itemQuality,
                                        IsMeta = heading.Slot == "Meta"
                                    });
                            }
                            else
                            {
                                if (_enchantSwaps.ContainsKey(itemId))
                                    itemId = _enchantSwaps[itemId];

                                enchants.Add(itemId + heading.Slot, new EnchantSpec
                                {
                                    EnchantId = itemId,
                                    Name = itemName ?? "undefined",
                                    Slot = heading.Slot,
                                    IsSpell = isSpell,
                                });
                            }
                            return true;
                        }
                        return false;
                    });
                }
                else
                {
                    throw new Exception($"Failed to find {heading.SlotHtmlId}{heading.Slot}");
                }
            }


            return (gems, enchants);
        }

    }

    private void RecursiveBoxSearch(IElement headerElement, Func<IElement, bool> action)
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