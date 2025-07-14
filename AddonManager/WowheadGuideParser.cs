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
                                                            "of the Tiger", "of Agility", "of the Squire", "Flashing Tinker's Gear",
                                                            "Son of Galleon's Saddle" };

    private static readonly string[] _itemLists = {
        "#rare-mobs",
        "#crafted-gear",
        "#galleon",
        "#galleon-warbands",
    };

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

    private Dictionary<int, int> _duplicateItemIds = new Dictionary<int, int>() 
    {
        {0, 0}
    };

    private class SlotSwaps
    {
        private Dictionary<string, string> _slotSwaps = new Dictionary<string, string>()
        {
            { "Head", "Head" },
            { "Shoulder", "Shoulder" },
            { "Back", "Back" },
            { "Chest", "Chest" },
            { "Wrist", "Wrist" },
            { "Hands", "Hands" },
            { "Waist", "Waist" },
            { "Legs", "Legs" },
            { "Feet", "Feet" },
            { "Neck", "Neck" },
            { "Ring", "Ring" },
            { "Trinket", "Trinket" },
            { "Trinkets", "Trinket" },
            { "Main Hand", "Main Hand" },
            { "Off Hand", "Off Hand" },
            { "Two Hand", "Main Hand" },
            { "Ranged/Relic", "Ranged/Relic" },
            { "Helm", "Head" },
            { "Boots", "Feet" },
            { "Rings", "Ring" },
            { "Belt", "Waist" },
            { "Finger", "Ring" },
            { "Bracers", "Wrist" },
            { "Shoulders", "Shoulder" },
            { "Cloak", "Back" },
            { "Cloaks", "Back" },
            { "Cape", "Back" },
            { "Amulets", "Neck"},
            { "Gloves", "Hands" },
            { "Main-Hand", "Main Hand" },
            { "Main-Hand Weapon", "Main Hand" },
            { "1h Weapon", "Main Hand" },
            { "Off-Hand Weapon", "Off Hand" },
            { "Off-Hand weapon", "Off Hand" },
            { "Off-Hand", "Off Hand" },
            { "Offhand", "Off Hand" },
            { "Shield", "Off Hand" },
            { "Weapon", "Main Hand" },
            { "Two-Hand Weapon", "Main Hand" },
            { "Two-Handed Swords", "Main Hand" },
            { "Two Hand Weapon", "Main Hand" },
            { "Mainhand", "Main Hand" },
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
                else if (string.IsNullOrWhiteSpace(i))
                    return "unknown";
                throw new KeyNotFoundException($"Slot '{i}' not found in slot swaps.");
            }
        }
    }

    public async Task<(Dictionary<int, GemSpec>, Dictionary<int, EnchantSpec>, Dictionary<int, ItemSpec>)> ParseWowheadGuide(ClassGuideMapping classGuide, IHtmlDocument doc, Action<string> logFunc)
    {
        var items = new Dictionary<int, ItemSpec>();
        var enchants = new Dictionary<int, EnchantSpec>();
        var gems = new Dictionary<int, GemSpec>();

        bool enchantsAndGems = classGuide.Phase == Constants.CurrentPhase;

        //Get Gems and Enchants
        LoopThroughEnchantsAndGems(doc, (enchantAnchor, slot) => {
                ParseEnchant(enchantAnchor, slot, enchants);
                return true;
            },
            (gemAnchor, slot) => {
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
            await LoopThroughTable(t, async (tableRow, itemChild, itemOrderIndex, slot) =>
            {
                var bisText = first ? "BIS" : "Alt";

                if (itemChild != null)
                {
                    await ParseItemCell(itemChild, bisText, slot, items, itemOrderIndex, logFunc);
                }
            });
            first = false;
        }

        // //Get Gems
        // var gemList = GetExcludeUnitsTilNextHeader(doc, "#gemming");
        // if (gemList != null)
        // {
        //     foreach (var gemItem in gemList)
        //     {
        //         Common.RecursiveBoxSearch(gemItem, (child) =>
        //         {
        //             var gemAnchor = (IHtmlAnchorElement)child;

        //             if (gemAnchor.PathName.Contains("mop-classic/"))
        //             {
        //                 ParseGem(gemAnchor, gems);
        //                 return true;
        //             }
        //             return false;
        //         });                
        //     }
        // }

        // //Get List Items
        // int itemOrderIndex = 0;
        // foreach (var itemListHtml in _itemLists)
        // {
        //     var itemList = GetExcludeUnitsTilNextHeader(doc, itemListHtml);

        //     foreach (var item in itemList)
        //     {
        //         itemOrderIndex++;
        //         await ParseItemCell(item, "Alt", "", items, itemOrderIndex, logFunc);                
        //     }
        // }

        var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"));
        var itemSlots = JsonConvert.DeserializeObject<Dictionary<int, string>>(jsonFileString) ?? new Dictionary<int, string>();
        foreach(var item in items.Values)
        {
            if (!itemSlots.ContainsKey(item.ItemId))
            {
                itemSlots.Add(item.ItemId, item.Slot);
            }
        }      
        File.WriteAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"), JsonConvert.SerializeObject(itemSlots, Formatting.Indented));

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

    private async Task<List<int>> ParseItemCell(IElement itemChild, string bisStatus, string slot, Dictionary<int, ItemSpec> items, int itemOrderIndex, Action<string> logFunc)
    {
        bool foundAnchor = false;

        List<int> itemIds = new List<int>();
        await Common.RecursiveBoxSearchAsync(itemChild, async (child) =>
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
                        itemSlot = GetSlot(slot);
                        if (!items.ContainsKey(itemId))
                        {
                            if (itemSlot == "unknown")
                            {
                                itemSlot = await GetSlotFromItemId(itemId, logFunc);
                            }

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

    private async Task<string> GetSlotFromItemId(int itemId, Action<string> writeToLog)
    {        
        var jsonFileString = File.ReadAllText(Constants.CombinePath(Constants.ItemDbPath, @$"\ItemSlots.json"));
        var itemSlots = JsonConvert.DeserializeObject<Dictionary<int, string>>(jsonFileString) ?? new Dictionary<int, string>();

        if (itemSlots.TryGetValue(itemId, out var slot))
        {
            return slot;
        }
        else
        {
            var doc = await Common.LoadFromWebPage($"https://www.wowhead.com/mop-classic/item={itemId}", writeToLog);

            if (doc == null)
            {
                throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
            }

            var breadcrumb = doc.QuerySelector(".breadcrumb");
            if (breadcrumb == null)
            {
                throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
            }

            var lastBreadcrumb = breadcrumb.LastElementChild;
            if (lastBreadcrumb == null)
            {
                throw new InvalidOperationException($"Failed to load item page for item ID {itemId}.");
            }
            
            if (lastBreadcrumb.TextContent.Contains("..."))
            {
                lastBreadcrumb = lastBreadcrumb.PreviousElementSibling;
            }

            return GetSlot(lastBreadcrumb?.TextContent?.Trim() ?? "");
        }
    }

    private async Task LoopThroughTable(IHtmlTableElement table, Func<INode, IElement?, int, string, Task> action)
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
                    else if (tableRow.ChildNodes[0].TextContent.Contains("Set Count") || 
                             tableRow.ChildNodes[0].TextContent.Contains("2 Piece") ||
                             tableRow.ChildNodes[0].TextContent.Contains("4 Piece")) { 
                        continue;
                    }
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
                await action(tableRow, itemChild, itemOrderIndex, slot);

                itemOrderIndex++;
            }
        }
    }
}