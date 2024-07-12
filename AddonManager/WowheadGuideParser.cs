using System.Net.Http;
using System.Text.RegularExpressions;
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

    private Dictionary<int, int> _enchantSwaps = new Dictionary<int, int>()
    {
        { 4265, 2833 }, //Heavy Armor Kit
        { 8173, 10344 }, //Thick Armor Kit
        { 15564, 19057 }, //Rugged Armor Kit
        { 6042, 7221 }, //Iron Shield Spike
        { 6043, 7222 }, //Iron Counterweight
        { 7967, 9939 }, //Mithril Shield Spike
        { 6041, 7224}, //Steel Weapon Chain
        { 5421, 6296 }, //Fiery Blaze
        { 11622, 15340}, //Lesser Arcanum of Rumination
        { 11645, 15397}, //Lesser Arcanum of Voracity
        { 11646, 15400}, //Lesser Arcanum of Voracity
        { 11647, 15402}, //Lesser Arcanum of Voracity
        { 11648, 15404}, //Lesser Arcanum of Voracity
        { 18329, 22840}, //Arcanum of Rapidity
        { 12645, 16623}, //Thorium Shield Spike
        { 212568, 432190 }, //Wolfshead Trophy
        { 221321, 446451 }, //Atal'ai Signet of Might
        { 221322, 446459 }, //Atal'ai Signet of Mojo
        { 221323, 446472 }, //Atal'ai Signet of 
        { 18330, 22844 }, //Arcanum of Focus
     };

    private Dictionary<int, int> _itemSwaps = new Dictionary<int, int>()
    {
        { 5000, 11994 }, //Coral Band
    };

    private Dictionary<string, string> _altModifierTextSwaps = new Dictionary<string, string>()
    {
        { "stam", "Stam" },
        { "mitigation", "Mit" },
        { "def", "Mit" },
        { "armor", "Mit" },
        { "dodge", "Mit" },
        { "parry", "Mit" },
        { "threat", "Thrt" },
        { "ffb", "FFB" },
        { "melee", "Melee" },
        { "ranged", "Ranged" }
    };

    private Dictionary<string, string> _altModifierNotSwaps = new Dictionary<string, string>()
    {
        { "armor", "armor pen" },
    };

    private Dictionary<int, int> _duplicateItemIds = new Dictionary<int, int>() 
    {
        {213087, 213088},
        {213088, 213087}
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
        "10 man",
        "potentially bis"
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

    public (Dictionary<int, ItemSpec>, Dictionary<string, EnchantSpec>) ParsePreRaidWowheadGuide(string className, 
        Tuple<Dictionary<int, List<EnchantSpec>>, Dictionary<int, List<ItemSpec>>> guide, IHtmlDocument doc)
    {
        System.Diagnostics.Debug.WriteLine($"Start Parsing {className}");
        var items = new Dictionary<int, ItemSpec>();
        var enchants = new Dictionary<string, EnchantSpec>();

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
                                var item = guide.Item2[i].FirstOrDefault(isp => isp.ItemId == itemId);
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
        return (items, enchants);
    }

    public (Dictionary<int, ItemSpec>, Dictionary<string, EnchantSpec>) ParseWowheadGuide(ClassGuideMapping classGuide, IHtmlDocument doc)
    {
        var items = new Dictionary<int, ItemSpec>();
        var enchants = new Dictionary<string, EnchantSpec>();

        LoopThroughMappings(doc, classGuide, 
            (enchantAnchor, slot) =>
            {
                ParseEnchant(enchantAnchor, slot, enchants);
            },
            (table, slot, htmlId) =>
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

        return (items, enchants);
    }

    private void ParseEnchant(IHtmlAnchorElement enchantAnchor, string slot, Dictionary<string, EnchantSpec> enchants)
    {
        bool isSpell = false;
        if (enchantAnchor.PathName.Contains("/item="))
            isSpell = false;
        else if (enchantAnchor.PathName.Contains("/spell="))
            isSpell = true;
        else
            return;

        var item = enchantAnchor.PathName.Replace("/classic", "").Replace("/item=", "").Replace("/spell=", "");
        var itemIdIndex = item.IndexOf("/");
        if (itemIdIndex == -1)
            itemIdIndex = item.IndexOf("&");

        if (itemIdIndex > -1)
        {
            item = item.Substring(0, itemIdIndex);
            var itemName = enchantAnchor.TextContent.Trim();
            var itemId = Int32.Parse(item);

            var textureId = "";
            if (isSpell == false && _enchantSwaps.ContainsKey(itemId))
            {
                textureId = itemId.ToString();
                itemId = _enchantSwaps[itemId];
            }

            if (!enchants.ContainsKey(itemId + slot))
            {
                enchants.Add(itemId + slot, new EnchantSpec
                {
                    EnchantId = itemId,
                    Name = itemName ?? "unknown",
                    Slot = slot,
                    TextureId = textureId
                });
            }
        }
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
                if (!_altModifierNotSwaps.ContainsKey(tankSwap.Key) ||
                    (!htmlBisText?.ToLower().Contains(_altModifierNotSwaps[tankSwap.Key]) ?? false))
                {
                    altText = $" {tankSwap.Value}";
                    break;
                }
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
                if (itemIdIndex != -1)
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
                        if (_duplicateItemIds.ContainsKey(itemId) && !items.ContainsKey(_duplicateItemIds[itemId]))
                        {
                            items.Add(_duplicateItemIds[itemId], new ItemSpec
                            {
                                ItemId = _duplicateItemIds[itemId],
                                Name = itemName ?? "unknown",
                                BisStatus = bisStatus ?? "unknown",
                                Slot = slot,
                                ItemOrder = itemOrderIndex
                            });
                        }
                    }
                    else
                    {
                        if (!items[itemId].Slot.Contains(slot))
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
                var tierlistNumber = 0;
                if (!firstRow || tableRow.NodeName != "TR")
                {
                    if (tableRow.ChildNodes[0].TextContent.Contains("Rank"))
                    {   
                        tierlistNumber = 0;
                    }
                    if (tableRow.ChildNodes[1].TextContent.Contains("Rank"))
                    {
                        tierlistNumber = 1;
                    }
                    firstRow = true;
                    continue;
                }

                IElement? itemChild = null;

                for(int i = tierlistNumber + 1; i < tableRow.ChildNodes.Length; i++)
                {
                    var rowChild = tableRow.ChildNodes[i];
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

    private void LoopThroughMappings(IHtmlDocument doc, ClassGuideMapping specMapping, Action<IHtmlAnchorElement, string> foundEnchant, Action<IHtmlTableElement?, string, string> foundTable)
    {
        foreach (var guideMapping in specMapping.GuideMappings)
        {
            bool foundEnchantText = false;
            foreach (var htmlMapping in guideMapping.Value.SlotHtmlId.Split(";"))
            {
                var headerElement = doc.QuerySelector(htmlMapping);

                if (headerElement != null)
                {
                    var nextSibling = headerElement.NextSibling;
                    int elementCounter = 0;
                    while (nextSibling != null && (nextSibling is not IHtmlTableElement || nextSibling is IHtmlHeadingElement))
                    {
                        //try to find enchant.
                        if (nextSibling is IHtmlAnchorElement && foundEnchantText)
                        {
                            foundEnchant(nextSibling as IHtmlAnchorElement, guideMapping.Key);
                            foundEnchantText = false;
                        }

                        if (Regex.Match(nextSibling.TextContent.Trim(), "Recommended.*Enchant").Success)
                            foundEnchantText = true;
                        else if (Regex.Match(nextSibling.TextContent.Trim(), ".*Enchants:").Success)
                        {
                            foreach(var enchantChild in nextSibling.ChildNodes)
                            {
                                if (enchantChild is IHtmlAnchorElement)
                                {
                                    foundEnchant(enchantChild as IHtmlAnchorElement, guideMapping.Key);
                                }
                            }
                        }

                        nextSibling = nextSibling?.NextSibling;
                        elementCounter++;
                    }

                    if (nextSibling is IHtmlTableElement)
                    {
                        foundTable(nextSibling as IHtmlTableElement, guideMapping.Key, htmlMapping);
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