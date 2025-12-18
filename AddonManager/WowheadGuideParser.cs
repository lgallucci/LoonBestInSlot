using System.Formats.Tar;
using System.IO;
using System.Net.Http;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml.Serialization;
using AddonManager.Models;
using AngleSharp;
using AngleSharp.Dom;
using AngleSharp.Html;
using AngleSharp.Html.Dom;
using Newtonsoft.Json;

namespace AddonManager;

public class WowheadGuideParser
{
    private static readonly string[] excludedItemNames = { "of Shadow Wrath", "of Healing", "of Nature's Wrath", "of Nature Protection",
                                                            "of the Tiger", "of Agility", "of the Squire" };

    private static readonly int[] _excludedItemIds = { 77544, 89783, 89230, 92522, 95559, 93220, 93215, 93224, 79323, 84196,
                                                       83787, 83788, 89797, 89800, 97131, 89798, 85262, 89307, 89305, 89306,
                                                       87781, 87783, 87782, 72104, 79324, 86369, 86368, 77545, 79325, 87218, 
                                                       87220, 86565, 89799, 77542, 77543, 82445, 93231, 89881, 93403, 254313, 
                                                       95346, 95564, 95565, 93169, 93385, 85262, 89798, 89307, 89305, 89306,
                                                       95548, 95545, 93232, 95054, 95053, 95093, 95055, 95052, 95056, 95592, 
                                                       95590, 95591, 95589, 95564, 93168 };

    private static readonly string[] _itemLists = {
        "#rare-mobs",
        "#rare-boes",
        "#sha-of-anger",
        "#crafted-gear",
        "#crafting-professions",
        "#galleon",
        "#galleon-warbands",
    };

    private SlotSwaps _slotSwaps = new SlotSwaps();
    private Random _rand = new Random(DateTime.Now.Millisecond);
    private Dictionary<int, int> _gemSwaps = new Dictionary<int, int>()
    {
        {0, 0} //
    };

    private Dictionary<int, int> _gemPhases = new Dictionary<int, int>()
    {
        {0, 0} //
    };

    private Dictionary<int, int> _spellEnchantSwaps = new Dictionary<int, int>()
    {
        { 142175, 104395}, //Enchant Chest - Glorious Stats
        { 104335, 104395}, //Enchant Chest - Glorious Stats
        { 109085, 109086} //
    };
    
    private Dictionary<int, int> _enchantSwaps = new Dictionary<int, int>()
    {
        
    };

    private List<int> _excludeEnchants = new List<int>() 
    {
        68779,
        52294
    };

    private Dictionary<int, string> _itemSwaps = new Dictionary<int, string>()
    {
        {98048, "89072"}, //
        {98049, "79331"}, //
        {98073, "89088"}, //
        //{98048, "89072"}, //
        //{98048, "89072"} //
    };

    private Dictionary<int, int> _duplicateItemIds = new Dictionary<int, int>() 
    {
        {0, 0}
    };
    
    public (Dictionary<int, GemSpec>, Dictionary<int, EnchantSpec>, Dictionary<int, ItemSpec>) ParseWowheadGuide(ClassGuideMapping classGuide, IHtmlDocument doc, Action<string> logFunc)
    {
        var items = new Dictionary<int, ItemSpec>();
        var enchants = new Dictionary<int, EnchantSpec>();
        var gems = new Dictionary<int, GemSpec>();
        var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"));
        var itemSlots = JsonConvert.DeserializeObject<Dictionary<int, string>>(jsonFileString) ?? new Dictionary<int, string>();

        bool enchantsAndGems = classGuide.Phase == Constants.CurrentPhase;

        //Get Gems and Enchants
        LoopThroughEnchantsAndGems(doc, (enchantAnchor, slot) =>
            {
                ParseEnchant(enchantAnchor, slot, enchants);
                return true;
            },
            (gemAnchor, slot) =>
            {
                ParseGem(gemAnchor, gems);
                return true;
            }
        );

        //Get Items
        bool first = true;
        var tables = doc.QuerySelectorAll(".wh-center .markup-table-wrapper table");
        foreach (var table in tables)
        {
            if (table == null || table is not IHtmlTableElement)
            {
                throw new InvalidOperationException("Expected table element, but found: " + table?.NodeName);
            }
            var t = (IHtmlTableElement)table;
            LoopThroughTable(t, (tableRow, itemChild, itemOrderIndex, slot) =>
            {
                var bisText = first ? "BIS" : "Alt";

                if (itemChild != null)
                {
                    ParseItemCell(itemChild, bisText, slot, items, itemOrderIndex, logFunc);
                }
            });
            first = false;
        }

        //Get Gems
        var gemList = GetExcludeUnitsTilNextHeader(doc, "#gemming");
        if (gemList != null)
        {
            foreach (var gemItem in gemList)
            {
                Common.RecursiveBoxSearch(gemItem, (child) =>
                {
                    var gemAnchor = (IHtmlAnchorElement)child;

                    if (gemAnchor.PathName.Contains("mop-classic/"))
                    {
                        ParseGem(gemAnchor, gems);
                        return true;
                    }
                    return false;
                });
            }
        }

        //Get List Items
        int itemOrderIndex = 0;
        foreach (var itemListHtml in _itemLists)
        {
            var itemList = GetExcludeUnitsTilNextHeader(doc, itemListHtml);

            foreach (var item in itemList)
            {
                itemOrderIndex++;
                ParseItemCell(item, "Alt", "", items, itemOrderIndex, logFunc);
            }
        }

        return (gems, enchants, items);
    }

    private IEnumerable<IElement> GetExcludeUnitsTilNextHeader(IHtmlDocument doc, string headerId)
    {
        var elements = new List<IElement>();
        var gearSlots = doc.QuerySelector(headerId);

        if (gearSlots == null)
        {
            return Enumerable.Empty<IElement>();
        }

        var nextSibling = gearSlots.NextElementSibling;
        while (nextSibling != null && nextSibling.NodeName != "H2" && nextSibling.NodeName != "H3")
        {
            if (nextSibling.NodeName == "UL" && nextSibling.ClassList.Contains("exclude-units"))
            {
                elements.AddRange(nextSibling.QuerySelectorAll("li"));
            }
            nextSibling = nextSibling.NextElementSibling;
        }
        return elements;
    }

    private void LoopThroughEnchantsAndGems(IHtmlDocument doc, Func<IHtmlAnchorElement, string, bool> foundEnchant, Func<IHtmlAnchorElement, string, bool> foundGem)
    {
        var gearSlots = doc.QuerySelectorAll(".wow-gear-slot");

        foreach (var gearSlot in gearSlots)
        {
            var slotId = gearSlot.Attributes["data-slot-id"];

            var enchantDiv = gearSlot.QuerySelector(".wow-gear-slot-enchants");

            if (enchantDiv != null)
                Common.RecursiveBoxSearch(enchantDiv, (child) =>
                {
                    var enchantAnchor = (IHtmlAnchorElement)child;
                    if (enchantAnchor.PathName.Contains("mop-classic/"))
                        return foundEnchant(enchantAnchor, GetSlotFromId(slotId?.Value));
                    return false;
                });

            var gemDivs = gearSlot.QuerySelectorAll(".wow-gear-slot-sockets");
            foreach (var gemDiv in gemDivs)
                Common.RecursiveBoxSearch(gemDiv, (child) =>
                {
                    var gemAnchor = (IHtmlAnchorElement)child;
                    if (gemAnchor.PathName.Contains("mop-classic/"))
                        return foundGem(gemAnchor, GetSlotFromId(slotId?.Value));
                    return false;
                });
        }
    }

    private string GetSlotFromId(string? value)
    {
        switch(value)
        {
            case "1":
                return "Head";
            case "2":
                return "Neck";
            case "3":
                return "Shoulder";
            case "15":
                return "Back";
            case "5":
                return "Chest";
            case "9":
                return "Wrist";
            case "10":
                return "Hands";
            case "6":
                return "Waist";
            case "7":
                return "Legs";
            case "8":
                return "Feet";
            case "11":
            case "12":
                return "Ring";
            case "13":
            case "14":
                return "Trinket";
            case "16":
                return "Main Hand";
            case "17":
                return "Off Hand";
            case "18":
                return "Ranged/Relic";
            default:
                return "Unknown";
        }
    }

    private void ParseGem(IHtmlAnchorElement anchorElement, Dictionary<int, GemSpec> gems)
    {
        if (anchorElement.PathName.Contains("/item="))
        {
            var item = anchorElement.PathName.Replace("/wotlk", "").Replace("/mop-classic/", "/").Replace("/item=", "");
            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");
            if (itemIdIndex != -1)
                item = item.Substring(0, itemIdIndex);
            var gemId = Int32.Parse(item);
            if (_gemSwaps.ContainsKey(gemId))
            {
                gemId = _gemSwaps[gemId];
            }
            if (!gems.ContainsKey(gemId))
            {
                gems.Add(gemId, new GemSpec {
                    GemId = gemId,
                    Phase = 0
                });
            }
        }
    }

    private void ParseEnchant(IHtmlAnchorElement enchantAnchor, string slot, Dictionary<int, EnchantSpec> enchants)
    {
        bool isSpell = false;
        if (enchantAnchor.PathName.Contains("/item="))
            isSpell = false;
        else if (enchantAnchor.PathName.Contains("/spell="))
            isSpell = true;
        else
            return;

        var item = enchantAnchor.PathName.Replace("/mop-classic/", "/").Replace("/item=", "").Replace("/spell=", "");
        var itemIdIndex = item.IndexOf("/");
        if (itemIdIndex == -1)
            itemIdIndex = item.IndexOf("&");

        if (itemIdIndex > -1)
        {
            item = item.Substring(0, itemIdIndex);
        }

        var itemName = enchantAnchor.TextContent.Trim();
        var itemId = Int32.Parse(item);
        bool skippedItem = false;
        foreach (var excludedName in excludedItemNames)
            if (itemName.EndsWith(excludedName) || _excludeEnchants.Contains(itemId))
                skippedItem = true;
        if (!skippedItem)
        {
            var textureId = "";
            if (isSpell == false && _enchantSwaps.ContainsKey(itemId))
            {
                textureId = itemId.ToString();
                itemId = _enchantSwaps[itemId];
            }
            else
            {
                textureId = itemId.ToString();
            }
            if (_spellEnchantSwaps.ContainsKey(itemId))
            {
                itemId = _spellEnchantSwaps[itemId];
            }
            if (!enchants.ContainsKey(itemId))
            {
                enchants.Add(itemId, new EnchantSpec
                {
                    EnchantId = itemId,
                    Name = itemName ?? "unknown",
                    Slot = slot,
                    TextureId = textureId
                });
            }
            else
            {
                var slotList = enchants[itemId].Slot.Split("~").ToList();
                slotList.Add(slot);
                enchants[itemId].Slot = string.Join("~", slotList.Distinct());
            }
        }
        
    }

    private List<int> ParseItemCell(IElement itemChild, string bisStatus, string slot, Dictionary<int, ItemSpec> items, int itemOrderIndex, Action<string> logFunc)
    {
        bool foundAnchor = false;

        List<int> itemIds = new List<int>();
        Common.RecursiveBoxSearch(itemChild, (child) =>
        {
            foundAnchor = true;
            bool foundItem = false;
            var itemSlot = string.Empty;

            if (child.PathName.Contains("/item="))
            {
                var item = child.PathName.Replace("/wotlk", "").Replace("/mop-classic/", "/").Replace("/item=", "");

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
                    int guideItemId = -99999;
                    Int32.TryParse(item, out guideItemId);
                    List<int> guideItemIds = new List<int> { guideItemId };

                    if (_itemSwaps.ContainsKey(guideItemId))
                    {
                        guideItemIds = _itemSwaps[guideItemId].Split(',').Select(i => int.Parse(i.Trim())).ToList();
                    }

                    foreach (var itemId in guideItemIds)
                    {
                        if (_excludedItemIds.Contains(itemId))
                        {
                            continue;
                        }

                        itemSlot = _slotSwaps[slot];
                        if (!items.ContainsKey(itemId))
                        {
                            items.Add(itemId, new ItemSpec
                            {
                                ItemId = itemId,
                                Name = itemName ?? "unknown",
                                BisStatus = bisStatus ?? "unknown",
                                Slot = itemSlot,
                                ItemOrder = itemOrderIndex
                            });
                            if (_duplicateItemIds.ContainsKey(itemId) && !items.ContainsKey(_duplicateItemIds[itemId]))
                            {
                                items.Add(_duplicateItemIds[itemId], new ItemSpec
                                {
                                    ItemId = _duplicateItemIds[itemId],
                                    Name = itemName ?? "unknown",
                                    BisStatus = bisStatus ?? "unknown",
                                    Slot = itemSlot,
                                    ItemOrder = itemOrderIndex
                                });
                            }
                        }
                        else
                        {
                            if (!items[itemId].Slot.Contains(itemSlot) && itemSlot != "unknown")
                            {
                                if (items[itemId].Slot.Contains("Off Hand") && itemSlot.Contains("Main Hand"))
                                {
                                    continue;
                                }
                                items[itemId].Slot = $"{items[itemId].Slot}~{itemSlot}";
                                if (items[itemId].BisStatus != bisStatus)
                                    items[itemId].BisStatus = $"{items[itemId].BisStatus}/{bisStatus}";
                            }
                        }
                        itemIds.Add(itemId);
                    }
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

    private void LoopThroughTable(IHtmlTableElement table, Action<INode, IElement?, int, string> action)
    {
        var itemOrderIndex = 0;
        var firstRow = false;
        var tableRows = table?.FirstChild?.ChildNodes;
        if (tableRows != null)
        {
            bool isSlot = false;
            foreach (var tableRow in tableRows)
            {
                var slot = string.Empty;
                if (!firstRow || tableRow.NodeName != "TR")
                {
                    if (tableRow.ChildNodes[0].TextContent.Contains("Slot"))
                    {
                        isSlot = true;
                    }
                    else if (tableRow.ChildNodes[0].TextContent.Contains("Reputation")) { }
                    else
                    {
                        return; // Skip if not correct type of table.
                    }
                    firstRow = true;
                    continue;
                }

                IElement? itemChild = null;
                
                if (isSlot)
                    slot = tableRow.ChildNodes[0].TextContent.Trim();
                    
                for (int i = 0; i < tableRow.ChildNodes.Length; i++)
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
                action(tableRow, itemChild, itemOrderIndex, slot);

                itemOrderIndex++;
            }
        }
    }
}