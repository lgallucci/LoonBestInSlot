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
                                                       87781, 87783, 87782, 89797, 72104, 79324, 86369, 86368, 77545, 79325,
                                                       87218, 87220, 86565, 89799, 77542, 77543, 82445, 93231 };


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
        { 104335, 104395} //Enchant Chest - Glorious Stats
     };
    private Dictionary<int, int> _enchantSwaps = new Dictionary<int, int>()
    {
        {0, 0} //
     };

    private List<int> _excludeEnchants = new List<int>() 
    {
        68779,
        52294
    };

    private Dictionary<int, string> _itemSwaps = new Dictionary<int, string>()
    {
        {0, "0"} //
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
        var tables = doc.QuerySelectorAll(".markup-table-wrapper table");
        foreach (var table in tables)
        {
            if (table == null || table is not IHtmlTableElement)
            {
                throw new InvalidOperationException("Expected table element, but found: " + table?.NodeName);
            }
            var t = (IHtmlTableElement)table;
            LoopThroughTable(t, (tableRow, itemChild, itemOrderIndex, bisText, slot) =>
            {
                if (itemChild != null)
                {
                    ParseItemCell(itemChild, bisText, slot, items, itemOrderIndex, logFunc);
                }
            }, "Phase " + classGuide.Phase);
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

                    if (gemAnchor.PathName.Contains("tbc/"))
                    {
                        ParseGem(gemAnchor, gems);
                        return true;
                    }
                    return false;
                });
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
        var gearSlots = doc.QuerySelectorAll(".gear-planner-slots-group-slot");

        foreach (var gearSlot in gearSlots)
        {
            var slotId = gearSlot.Attributes["data-slot-id"];

            var enchantDiv = gearSlot.QuerySelector(".gear-planner-slots-group-slot-enchant");

            if (enchantDiv != null)
                Common.RecursiveBoxSearch(enchantDiv, (child) =>
                {
                    var enchantAnchor = (IHtmlAnchorElement)child;
                    if (enchantAnchor.PathName.Contains("tbc/"))
                        return foundEnchant(enchantAnchor, GetSlotFromId(slotId?.Value));
                    return false;
                });

            var gemDivs = gearSlot.QuerySelectorAll(".gear-planner-slots-group-slot-gem");
            foreach (var gemDiv in gemDivs)
                Common.RecursiveBoxSearch(gemDiv, (child) =>
                {
                    var gemAnchor = (IHtmlAnchorElement)child;
                    if (gemAnchor.PathName.Contains("tbc/"))
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
                throw new ArgumentOutOfRangeException(nameof(value), $"Unsupported slot id: {value}");
        }
    }

    private void ParseGem(IHtmlAnchorElement anchorElement, Dictionary<int, GemSpec> gems)
    {
        if (anchorElement.PathName.Contains("/item="))
        {
            var item = anchorElement.PathName.Replace("/wotlk", "").Replace("/tbc/", "/").Replace("/item=", "");
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

        var item = enchantAnchor.PathName.Replace("/wotlk", "").Replace("/tbc/", "/").Replace("/item=", "").Replace("/spell=", "");
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

            if (child.PathName.Contains("/item="))
            {
                var item = child.PathName.Replace("/tbc", "").Replace("/item=", "");

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
                            if (!items[itemId].Slot.Contains(slot) && slot != "unknown")
                            {
                                if (items[itemId].Slot.Contains("Off Hand") && slot.Contains("Main Hand"))
                                {
                                    continue;
                                }
                                items[itemId].Slot = $"{items[itemId].Slot}~{slot}";
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

    private void LoopThroughTable(IHtmlTableElement table, Action<INode, IElement?, int, string, string> action, string phase)
    {
        var itemOrderIndex = 0;
        var firstRow = false;
        var tableRows = table?.FirstChild?.ChildNodes;

        var tableSlot = RecursivelyFindHeaderWithSlot(table?.ParentElement?.PreviousElementSibling);
        if (tableRows != null)
        {
            foreach (var tableRow in tableRows)
            {
                if (!firstRow || tableRow.NodeName != "TR")
                {
                    //check to make sure the table is correct.
                    if ((tableRow.ChildNodes[0].TextContent.Trim() == "Priority" || tableRow.ChildNodes[0].TextContent.Trim() == "Rank") && 
                        tableRow.ChildNodes[1].TextContent.Trim() == "Item" &&
                        tableRow.ChildNodes[2].TextContent.Trim() == "Sockets" && 
                        tableRow.ChildNodes[3].TextContent.Trim() == "Source")
                    {
                        firstRow = true;
                        continue;
                    } else
                    {
                        break;
                    }
                }             

                var slot = TryToGetSlot(tableSlot, tableRow.ChildNodes[0].TextContent.Trim());    

                var bisText = GetBisText(tableRow.ChildNodes[0].TextContent.Trim(), itemOrderIndex == 0, phase);

                action(tableRow, (IElement)tableRow.ChildNodes[1], itemOrderIndex, bisText, slot);

                itemOrderIndex++;
            }
        }
    }

    private string TryToGetSlot(string slot, string bisStatus)
    {
        if (slot == "Main Hand" && bisStatus.ToUpper().Contains("OH") && !bisStatus.Contains("MH"))
            return "Off Hand";
        else if (slot == "Main Hand" && bisStatus.ToUpper().Contains("2H") && !bisStatus.Contains("MH"))
            return "Two Hand";

        return slot;
    }

    private string RecursivelyFindHeaderWithSlot(IElement? element)
    {                       
        if (element == null)
            return "unknown";

        if (element.NodeName == "H2" || element.NodeName == "H3" || element.NodeName == "H4" || element.NodeName == "H5")
        {
            var headerText = element.TextContent.Trim();
            var slotText = _slotSwaps.GetSlot(headerText.Split(" ")[0]);
            if (slotText == "unknown" || string.IsNullOrEmpty(slotText))
            {
                slotText = _slotSwaps.GetSlot(headerText);
            }
            if (slotText != "unknown" && !string.IsNullOrEmpty(slotText))
            { 
                return slotText;
            }
        }

        string result = "unknown";
        if (element is IHtmlTableElement)
        {
            Console.WriteLine("Found table element instead of slot header.  Stopping search.");
            return "exit";
        }
        if (result != "exit" && element.ChildElementCount > 0)
        {
            result = RecursivelyFindHeaderWithSlot(element.Children[0]);
        }
        if (result != "exit" && element.PreviousElementSibling != null)
        {
            result = RecursivelyFindHeaderWithSlot(element.PreviousElementSibling);
        }

        if (result == "exit")
            return "unknown";
        return result;
    }

    private List<string> _bisTextSwaps = new()
    {
        "bis",
        "recommended",
        "recommended",
        "best in slot",
        "best"
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

    private Dictionary<string, string> _altModifierNotSwaps = new Dictionary<string, string>()
    {
        { "armor", "armor pen" },
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

    private string GetBisText(string htmlBisText, bool first, string phase)
    {
        var bisText = string.Empty;
        if (first)
            bisText = "BIS";
        // else if (isTierList)
        // {
        //     bisText = rankText.Contains("S") ? "BIS" : "Alt";
        // }
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
}