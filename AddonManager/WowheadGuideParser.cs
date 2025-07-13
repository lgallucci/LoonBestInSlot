using System.Net.Http;
using System.Text.RegularExpressions;
using System.Xml.Serialization;
using AddonManager.Models;
using AngleSharp;
using AngleSharp.Dom;
using AngleSharp.Html;
using AngleSharp.Html.Dom;

namespace AddonManager;

public class WowheadGuideParser
{
    private static readonly string[] excludedItemNames = { "of Shadow Wrath", "of Healing", "of Nature's Wrath", "of Nature Protection",
                                                            "of the Tiger", "of Agility", "of the Squire", "Stolen Silver", "Rocket Fuel Leak", "Blood Shield" };

    private Random _rand = new Random(DateTime.Now.Millisecond);

    private Dictionary<int, int> _gemSwaps = new Dictionary<int, int>()
    {
        {0, 0} //
    };

    private Dictionary<int, int> _gemPhases = new Dictionary<int, int>()
    {
        {0, 0} //
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
        {0, 0}
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
        "phase 5",
        "p5",
        "alt",
        "10-man",
        "10 man",
        "potentially bis",
        "Tier 11",
        "T11",
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

    public (Dictionary<int, GemSpec>, Dictionary<int, EnchantSpec>, Dictionary<int, ItemSpec>) ParseWowheadGuide(ClassGuideMapping classGuide, IHtmlDocument doc, Action<string> logFunc)
    {
        var items = new Dictionary<int, ItemSpec>();
        var enchants = new Dictionary<int, EnchantSpec>();
        var gems = new Dictionary<int, GemSpec>();

        bool enchantsAndGems = classGuide.Phase == Constants.CurrentPhase;

        LoopThroughEnchantsAndGems(doc, (enchantAnchor, slot) => {
                ParseEnchant(enchantAnchor, slot, enchants);
                return true;
            },
            (gemAnchor, slot) => {
                ParseGem(gemAnchor, gems);
                return true;
            }
        );

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
                    ParseItemCell(itemChild, bisText, GetSlot(slot, bisText, itemChild), items, itemOrderIndex);
                }
            });
            first = false;
        }

        return (gems, enchants, items);
    }
    
    private void LoopThroughEnchantsAndGems(IHtmlDocument doc, Func<IHtmlAnchorElement, string, bool> foundEnchant, Func<IHtmlAnchorElement, string, bool> foundGem)
    {
        var gearSlots = doc.QuerySelectorAll(".wow-gear-slot");

        foreach (var gearSlot in gearSlots)
        {
            var slotId = gearSlot.Attributes["data-slot-id"];

            var enchantDiv = gearSlot.QuerySelector(".wow-gear-slot-enchant");

            if (enchantDiv != null)
                Common.RecursiveBoxSearch(enchantDiv, (child) =>
                {
                    var enchantAnchor = (IHtmlAnchorElement)child;
                    if (enchantAnchor.PathName.Contains("cata/"))
                        return foundEnchant(enchantAnchor, GetSlotFromId(slotId?.Value));
                    return false;
                });

            var gemDivs = gearSlot.QuerySelectorAll(".wow-gear-slot-socket");
            foreach (var gemDiv in gemDivs)
                Common.RecursiveBoxSearch(gemDiv, (child) =>
                {
                    var gemAnchor = (IHtmlAnchorElement)child;
                    if (gemAnchor.PathName.Contains("cata/"))
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

        var item = enchantAnchor.PathName.Replace("/wotlk", "").Replace("/mop-classic/", "/").Replace("/item=", "").Replace("/spell=", "");
        var itemIdIndex = item.IndexOf("/");
        if (itemIdIndex == -1)
            itemIdIndex = item.IndexOf("&");

        if (itemIdIndex > -1)
        {
            item = item.Substring(0, itemIdIndex);
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
    }

    private string GetSlot(string slot)
    {
        var slotSwaps = new SlotSwaps();

        return slotSwaps[slot];
    }

    private List<int> ParseItemCell(IElement itemChild, string bisStatus, string slot, Dictionary<int, ItemSpec> items, int itemOrderIndex)
    {
        bool foundAnchor = false;

        List<int> itemIds = new List<int>();
        Common.RecursiveBoxSearch(itemChild, (child) =>
        {
            foundAnchor = true;
            bool foundItem = false;

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

                    foreach(var itemId in guideItemIds)
                    {
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

    private void LoopThroughTable(IHtmlTableElement table, Action<INode, IElement?, int, string> action)
    {
        var itemOrderIndex = 0;
        var firstRow = false;
        var tableRows = table?.FirstChild?.ChildNodes;
        if (tableRows != null)
        {
            foreach (var tableRow in tableRows)
            {
                var slot = string.Empty;
                var tierlistNumber = 0;
                if (!firstRow || tableRow.NodeName != "TR")
                {
                    if (tableRow.ChildNodes[0].TextContent.Contains("Slot"))
                    {
                        slot = tableRow.ChildNodes[0].TextContent.Trim();
                    }
                    else if (tableRow.ChildNodes[0].TextContent.Contains("Reputation")) { }
                    else
                    {
                        throw new InvalidOperationException("Expected table row to start with 'Slot' or 'Reputation', but found: " + tableRow.ChildNodes[0].TextContent);
                    }
                    firstRow = true;
                    continue;
                } 

                IElement? itemChild = null;
                

                for (int i = tierlistNumber + 1; i < tableRow.ChildNodes.Length; i++)
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