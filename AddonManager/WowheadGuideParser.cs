using System.Net.Http;
using System.Windows.Documents;
using System.Xml.Serialization;
using AddonManager.Models;
using AngleSharp;
using AngleSharp.Dom;
using AngleSharp.Html;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager;

public class WowheadGuideParser
{

    private static readonly string[] excludedItemNames = { "of Shadow Wrath", "of Healing", "of Nature's Wrath", "of Nature Protection",
                                                            "of the Tiger", "of Agility", "of the Squire" };

    private Random _rand = new Random(DateTime.Now.Millisecond);

    private Dictionary<int, int> _gemPhases = new Dictionary<int, int>()
    {
        { 40112, 3 },
        { 40113, 3 },
        { 40114, 3 },
        { 40119, 3 },
        { 40123, 3 },
        { 40125, 3 },
        { 40126, 3 },
        { 40128, 3 },
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
        { 45880, 3 },
    };

    private Dictionary<int, int> _enchantSwaps = new Dictionary<int, int>()
    {
        { 22530, 27906 }, //Enchant Bracer - Major Defense
        { 28888, 35417 }, //Greater Inscription of Vengeance
        { 29192, 35452 }, //Arcanum of Ferocity
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
        { 41146, 56470 }, //Sun Scope
        { 41167, 56478 }, //Heartseeker Scope
        { 41601, 56008 }, //Shining Spellthread
        { 41602, 56009 }, //Brilliant Spellthread
        { 41603, 56010 }, //Azure Spellthread
        { 41604, 56011 }, //Sapphire Spellthread
        { 41611, 55656 }, //Eternal Belt Buckle
        { 41976, 55839 }, //Titanium Weapon Chain
        { 44075, 59784 }, //Arcanum of Dominance
        { 44129, 59927 }, //Lesser Inscription of the Storm
        { 44131, 59929 }, //Lesser Inscription of the Axe
        { 44133, 59934 }, //Greater Inscription of the Axe
        { 44149, 59954 }, //Arcanum of Torment
        { 44739, 61471 }, //Diamond-cut Refractor Scope
        { 44871, 59934 }, //Greater Inscription of the Axe
        { 44875, 61271 }, //Arcanum of the Savage Gladiator
        { 44876, 59960 }, //Arcanum of Blissful Mending
        { 44877, 59970 }, //Arcanum of Burning Mysteries
        { 44878, 59970 }, //Arcanum of Burning Mysteries
        { 44879, 59954 }, //Arcanum of Torment
        { 44936, 62202 }, //Titanium Plating
        { 44957, 62384 }, //Greater Inscription of the Gladiator
        { 50335, 59934 }, //Greater Inscription of the Axe
        { 50336, 59936 }, //Greater Inscription of the Crag
        { 50337, 59941 }, //Greater Inscription of the Pinnacle
        { 50338, 59937 }, //Greater Inscription of the Storm
        { 50367, 59954 }, //Arcanum of Torment
        { 50368, 59970 }, //Arcanum of Burning Mysteries
        { 50369, 59955 }, //Arcanum of the Stalwart Protector
        { 50370, 59960 }, //Arcanum of Blissful Mending
        { 54861, 55016 }, //Nitro Boosts
        { 43097, 57683 }, //Fur Lining - Attack Power
        { 44467, 60714 }, //Enchant Weapon - Mighty Spellpower
        { 44470, 60767 }, //Enchant Bracers - Superior Spellpower
        { 44471, 47672 }, //Enchant Cloak - Mighty Armor
        { 44489, 60692 }, //Enchant Chest - Powerful Stats
        { 44944, 62256 }, //Enchant Bracers - Major Stamina
        { 44963, 62448 }, //Earthen Leg Armor
        { 45056, 62948 }, //Enchant Staff - Greater Spellpower
        { 55656, 41611 }  //Eternal Belt Buckle
     };

    private Dictionary<int, int> _gemSwaps = new Dictionary<int, int>()
    {
        { 55389, 41285 }, //Chaotic Skyflare Diamond
    };

    private Dictionary<int, int> _itemSwaps = new Dictionary<int, int>()
    {
        { 49314, 49485 }, //Sparkling Onyxia Tooth Pendant
        { 51704, 50821 }, //Lasherweave Cover
        { 51714, 50277 }, //Bloodmage Leggings
        { 51745, 50089 }, //Shadowblade Helmet
    };

    private Dictionary<string, string> _altModifierTextSwaps = new Dictionary<string, string>()
    {
        { "stam", "Stam" },
        { "mitigation", "Mit" },
        { "def", "Mit" },
        { "armor", "Mit" },
        { "dodge", "Mit" },
        { "parry", "Mit" },
        { "mit", "Mit" },
        { "threat", "Thrt" },
        { "ffb", "FFB" }
    };
    private List<string> _bisTextSwaps = new()
    {
        "bis",
        "recommended",
        "recommended",
        "best in slot",
        "best"
    };
    private List<string> _altTextSwaps = new()
    {
        "prebis",
        "tbc",
        "pre-raid",
        "pre-bis",
        "phase 1",
        "p1",
        "phase 2",
        "p2",
        "phase 3",
        "p3",
        "phase 4",
        "p4",
        "alt",
        "10-man",
        "10 man"
    };

    private class SlotSwaps
    {
        private Dictionary<string, string> _slotSwaps = new Dictionary<string, string>()
        {
            { "Helm", "Head" },
            { "Boots", "Feet" },
            { "Belt", "Waist" },
            { "Finger", "Ring" },
            { "Bracers", "Wrist" },
            { "Shoulders", "Shoulder" },
            { "Cloak", "Back" },
            { "Main-Hand", "Main Hand" },
            { "Main-Hand Weapon", "Main Hand" },
            { "Off-Hand Weapon", "Off Hand" },
            { "Off-Hand weapon", "Off Hand" },
            { "Off-Hand", "Off Hand" },
            { "Shield", "Off Hand" },
            { "Weapon", "Two Hand" },
            { "Two-Hand Weapon", "Two Hand" },
            { "Two Hand Weapon", "Two Hand" },
            { "Ranged Weapon", "Ranged/Relic" },
            { "Sigil", "Ranged/Relic" },
            { "Relic", "Ranged/Relic" },
            { "Libram", "Ranged/Relic" },
            { "Idol", "Ranged/Relic" },
            { "Wand", "Ranged/Relic" },
            { "Ranged", "Ranged/Relic" },
            { "Trinket - Throughput", "Trinket" },
            { "Trinket - Sustain", "Trinket" },
            { "Feet - Alternative", "Feet" },
            { "Legs - Alternative", "Feet" }
        };
        // Setting up indexers
        public string this[string i]
        {
            // get indexer allows square brackets to read data
            get
            {
                if (this._slotSwaps.ContainsKey(i))
                    return _slotSwaps[i];
                return i;
            }
        }
    }

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
        public string Comment(IComment comment) => HtmlMarkupFormatter.Instance.Comment(comment);
        public string Doctype(IDocumentType doctype) => HtmlMarkupFormatter.Instance.Doctype(doctype);
        public string LiteralText(ICharacterData text) => HtmlMarkupFormatter.Instance.LiteralText(text);
        public string OpenTag(IElement element, bool selfClosing) => HtmlMarkupFormatter.Instance.OpenTag(element, selfClosing);
        public string Processing(IProcessingInstruction processing) => HtmlMarkupFormatter.Instance.Processing(processing);
        public string Text(ICharacterData text) => text.Data;
    }

    public async Task<Dictionary<int, ItemSpec>> ParsePreRaidWowheadGuide(string className, Tuple<Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>, Dictionary<int, List<ItemSpec>>> guide, string content)
    {
        System.Diagnostics.Debug.WriteLine($"Start Parsing {className}");
        var items = new Dictionary<int, ItemSpec>();

        var doc = default(IHtmlDocument);
        var parser = new HtmlParser();
        doc = await parser.ParseDocumentAsync(content);

        var htmlMapping = "h2#best-in-slot-list + table";
        var headerElement = doc.QuerySelector(htmlMapping);
        if (headerElement is IHtmlTableElement)
        {
            var tableElement = headerElement as IHtmlTableElement;

            LoopThroughTable(tableElement, (tableRow, itemChild, itemOrderIndex, isTierList) =>
            {
                var slotText = tableRow?.ChildNodes[0].TextContent.Trim() ?? string.Empty;

                if (itemChild != null)
                    ParseItemCell(itemChild, "BIS", new SlotSwaps()[slotText], items, itemOrderIndex);
            });
        }
        else
        {
            throw new ParseException($"PreRaid: Failed to find table for {htmlMapping}");
        }

        htmlMapping = "h2#best-bind-on-equip ~ div > table";
        headerElement = doc.QuerySelector(htmlMapping);
        if (headerElement is IHtmlTableElement)
        {
            var tableElement = headerElement as IHtmlTableElement;

            LoopThroughTable(tableElement, (tableRow, itemChild, itemOrderIndex, isTierList) =>
            {
                var slotText = tableRow?.ChildNodes[0].TextContent.Trim() ?? string.Empty;

                slotText = new SlotSwaps()[slotText];

                if (!ItemSpec.SortOrder.ContainsKey(slotText))
                {
                    slotText = "unknown";
                }

                if (itemChild != null)
                {
                    var itemIds = ParseItemCell(itemChild, "BIS", slotText, items, itemOrderIndex);

                    foreach (var itemId in itemIds)
                    {
                        if (items[itemId].Slot.Contains("unknown"))
                        {
                            for (int i = 0; i < 5; i++)
                            {
                                var item = guide.Item3[i].FirstOrDefault(isp => isp.ItemId == itemId);
                                if (item != null)
                                {
                                    items[itemId].Slot = item.Slot;
                                    break;
                                }
                            }
                        }
                    }
                }
            });
        }
        else
        {
            throw new ParseException($"PreRaid: Failed to find table for {htmlMapping}");
        }

        System.Diagnostics.Debug.WriteLine($"End Parsing {className}");
        return items;
    }

    public async Task<Dictionary<int, ItemSpec>> ParseWowheadGuide(ClassGuideMapping classGuide, string content)
    {
        var items = new Dictionary<int, ItemSpec>();

        var doc = default(IHtmlDocument);
        var parser = new HtmlParser();
        doc = await parser.ParseDocumentAsync(content);

        LoopThroughMappings(doc, classGuide, (table, slot, htmlId) =>
        {
            bool first = true;
            LoopThroughTable(table, (tableRow, itemChild, itemOrderIndex, isTierList) =>
            {
                string htmlBisText = string.Empty, rankText = string.Empty;
                if (isTierList)
                    rankText = tableRow?.ChildNodes[1].TextContent.Trim() ?? string.Empty;

                htmlBisText = tableRow?.ChildNodes[0].TextContent.Trim() ?? string.Empty;

                var bisStatus = GetBisStatus(htmlBisText, rankText, isTierList, first, classGuide.Phase);

                if (itemChild != null)
                    ParseItemCell(itemChild, bisStatus, GetSlot(slot, htmlBisText), items, itemOrderIndex);
                first = false;
            });
        });

        return items;
    }

    internal async Task<(Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>)> ParseGemEnchantsWowheadGuide(ClassGuideMapping classGuide, string content)
    {
        var gems = new Dictionary<int, GemSpec>();
        var enchants = new Dictionary<string, EnchantSpec>();

        var parser = new HtmlParser();
        var doc = default(IHtmlDocument);
        doc = await parser.ParseDocumentAsync(content);

        foreach (var heading in classGuide.GuideMappings)
        {
            foreach (var htmlMapping in heading.Value.SlotHtmlId.Split(";"))
            {
                var headerElement = doc.QuerySelector(htmlMapping);
                if (headerElement != null)
                {
                    Common.RecursiveBoxSearch(headerElement, (boxElement) =>
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

                        var item = ((IHtmlAnchorElement)boxElement).PathName.Replace("/classic", "").Replace("/item=", "").Replace("/spell=", "");
                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");

                        if (itemIdIndex > -1)
                        {
                            item = item.Substring(0, itemIdIndex);
                            var itemName = boxElement.TextContent.Trim();
                            var itemId = Int32.Parse(item);

                            if (heading.Key == "Meta" || heading.Key == "Gem")
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
                                        Name = itemName ?? "unknown",
                                        Phase = _gemPhases.ContainsKey(itemId) ? _gemPhases[itemId] : 1,
                                        Quality = itemQuality,
                                        IsMeta = heading.Key == "Meta"
                                    });
                            }
                            else
                            {
                                var textureId = "";
                                if (isSpell == false && _enchantSwaps.ContainsKey(itemId))
                                {
                                    textureId = itemId.ToString();
                                    itemId = _enchantSwaps[itemId];
                                }

                                enchants.Add(itemId + heading.Key, new EnchantSpec
                                {
                                    EnchantId = itemId,
                                    Name = itemName ?? "unknown",
                                    Slot = heading.Key,
                                    TextureId = textureId
                                });
                            }
                            return true;
                        }
                        return false;
                    });
                }
                else
                {
                    throw new Exception($"Failed to find {htmlMapping}{heading.Key}");
                }
            }
        }

        return (gems, enchants);

    }

    private string GetSlot(string slot, string bisStatus)
    {
        if (slot == "Main Hand" && bisStatus.ToUpper().Contains("OH") && !bisStatus.Contains("MH"))
            return "Off Hand";
        else if (slot == "Main Hand" && bisStatus.ToUpper().Contains("2H") && !bisStatus.Contains("MH"))
            return "Two Hand";

        return slot;
    }

    private string GetBisStatus(string htmlBisText, string rankText, bool isTierList, bool first, string phase)
    {

        var bisText = string.Empty;
        if (first)
            bisText = "BIS";
        else if (isTierList)
        {
            bisText = rankText.Contains("S") ? "BIS" : "Alt";
        }
        else
        {
            if (_altTextSwaps.Any((s) =>
            {
                if (phase == "Phase1" && (s.ToLower() == "phase 1" || s.ToLower() == "p1"))
                    return false;
                if (phase == "Phase2" && (s.ToLower() == "phase 2" || s.ToLower() == "p2"))
                    return false;
                else if (phase == "Phase3" && (s.ToLower() == "phase 3" || s.ToLower() == "p3"))
                    return false;
                else if (phase == "Phase4" && (s.ToLower() == "phase 4" || s.ToLower() == "p4"))
                    return false;

                return htmlBisText?.ToLower().Contains(s) ?? false;
            }))
            {
                bisText = "Alt";
            }
            else
            {
                bisText = _bisTextSwaps.Any(s => htmlBisText?.ToLower().Contains(s) ?? false) ? "BIS" : "Alt";
            }
        }

        var altText = string.Empty;
        foreach (var tankSwap in _altModifierTextSwaps)
            if ((!htmlBisText?.ToLower().Contains("no") ?? false) &&
                (htmlBisText?.ToLower().Contains(tankSwap.Key) ?? false))
            {
                altText = $" {tankSwap.Value}";
                break;
            }
        return bisText.Trim() + altText;
    }

    private List<int> ParseItemCell(IElement itemChild, string bisStatus, string slot, Dictionary<int, ItemSpec> items, int itemOrderIndex)
    {
        bool foundAnchor = false;

        List<int> itemIds = new List<int>();
        Common.RecursiveBoxSearch(itemChild, (child) =>
        {
            foundAnchor = true;
            bool foundItem = false;

            if (((IHtmlAnchorElement)child).PathName.Contains("/item="))
            {
                var item = ((IHtmlAnchorElement)child).PathName.Replace("/classic", "").Replace("/item=", "");

                var itemIdIndex = item.IndexOf("/");
                if (itemIdIndex == -1)
                    itemIdIndex = item.IndexOf("&");

                item = item.Substring(0, itemIdIndex);
                var itemName = child.TextContent.Trim();

                bool skippedItem = false;
                foreach (var excludedName in excludedItemNames)
                    if ((child.NextSibling?.TextContent.Trim().EndsWith(excludedName) ?? false) ||
                        (child.NextSibling?.NextSibling?.TextContent.Trim().EndsWith(excludedName) ?? false) ||
                        itemName.EndsWith(excludedName))
                        skippedItem = true;

                if (!skippedItem)
                {
                    int itemId = -99999;
                    Int32.TryParse(item, out itemId);

                    if (_itemSwaps.ContainsKey(itemId))
                        itemId = _itemSwaps[itemId];


                    if (!items.ContainsKey(itemId))
                    {
                        items.Add(itemId, new ItemSpec
                        {
                            ItemId = itemId,
                            Name = itemName ?? "unknown",
                            BisStatus = bisStatus ?? "unknown",
                            Slot = slot,
                            ItemOrder = itemOrderIndex
                        });
                    }
                    else
                    {
                        if (items[itemId].Slot != slot)
                        {
                            items[itemId].Slot = $"{items[itemId].Slot}/{slot}";
                            if (items[itemId].BisStatus != bisStatus)
                                items[itemId].BisStatus = $"{items[itemId].BisStatus}/{bisStatus}";
                        }
                    }
                    itemIds.Add(itemId);
                }
            }
            return foundItem;
        });
        if (!foundAnchor)
        {
            int itemId = -1 * _rand.Next(10000, 99999);
            items.Add(itemId, new ItemSpec
            {
                ItemId = itemId,
                Name = "unknown",
                BisStatus = "unknown",
                Slot = slot,
                ItemOrder = itemOrderIndex
            });
            itemIds.Add(itemId);
        }
        return itemIds;
    }

    private void LoopThroughTable(IHtmlTableElement? table, Action<INode, IElement?, int, bool> action)
    {
        var itemOrderIndex = 0;
        var firstRow = false;
        var tableRows = table?.FirstChild?.ChildNodes;
        if (tableRows != null)
        {
            bool isTierList = false;
            foreach (var tableRow in tableRows)
            {
                if (!firstRow || tableRow.NodeName != "TR")
                {
                    if (tableRow.ChildNodes[1].TextContent.Contains("Rank"))
                        isTierList = true;
                    firstRow = true;
                    continue;
                }

                IElement? itemChild = null;
                foreach (var rowChild in tableRow.ChildNodes)
                {
                    if (rowChild.NodeType == NodeType.Element)
                    {
                        if (rowChild.ChildNodes.Any(n => n.NodeName == "A" && ((IHtmlAnchorElement)n).PathName.Contains("/item=")))
                        {
                            itemChild = (IElement)rowChild;
                            break;
                        }
                    }
                }

                action(tableRow, itemChild, itemOrderIndex, isTierList);

                itemOrderIndex++;
            }
        }
    }

    private void LoopThroughMappings(IHtmlDocument doc, ClassGuideMapping specMapping, Action<IHtmlTableElement?, string, string> action)
    {
        foreach (var guideMapping in specMapping.GuideMappings)
        {
            foreach (var htmlMapping in guideMapping.Value.SlotHtmlId.Split(";"))
            {
                var headerElement = doc.QuerySelector(htmlMapping);

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
                        action(tableElement, guideMapping.Key, htmlMapping);
                    }
                    else
                    {
                        throw new ParseException($"Failed to find table for {htmlMapping} after {elementCounter} hops");
                    }
                }
                else
                {
                    throw new ParseException($"Failed to find {htmlMapping}");
                }
            }
        }
    }

}