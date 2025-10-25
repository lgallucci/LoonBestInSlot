
using AddonManager.FileManagers;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class PreRaidImporter : LootImporter
{
    private Dictionary<string, (string, string, string)> icyVeinsUriList = new Dictionary<string, (string, string, string)>
    {
        { @"https://www.icy-veins.com/wow-classic/balance-druid-dps-pre-raid-gear", ("Druid", "Balance", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/feral-druid-tank-pre-raid-gear", ("Druid", "Bear", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/feral-druid-dps-pre-raid-gear", ("Druid", "Cat", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/druid-healer-pre-raid-gear", ("Druid", "Restoration", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/hunter-dps-pre-raid-gear", ("Hunter", "DPS", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/mage-dps-pre-raid-gear", ("Mage", "DPS", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/holy-paladin-healer-pre-raid-gear", ("Paladin", "Holy", "#p4_paladin table tr") },
        { @"https://www.icy-veins.com/wow-classic/retribution-paladin-dps-pre-raid-gear", ("Paladin", "Retribution", "#p1_paladin table tr") },
        { @"https://www.icy-veins.com/wow-classic/priest-healer-pre-raid-gear", ("Priest", "Holy", "#p3_priest table tr") },
        { @"https://www.icy-veins.com/wow-classic/priest-dps-pre-raid-gear", ("Priest", "Shadow", "#p2_priest table tr") },
        { @"https://www.icy-veins.com/wow-classic/rogue-dps-pre-raid-gear?area=area_2", ("Rogue", "DPS", "#area_2 table tr") },
        { @"https://www.icy-veins.com/wow-classic/elemental-shaman-dps-pre-raid-gear", ("Shaman", "Elemental", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/enhancement-shaman-dps-pre-raid-gear", ("Shaman", "Enhancement", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/shaman-healer-pre-raid-gear", ("Shaman", "Restoration", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/warlock-dps-pre-raid-gear", ("Warlock", "DPS", "#p6_warlock table tr") },
        { @"https://www.icy-veins.com/wow-classic/warrior-dps-pre-raid-gear", ("Warrior", "DPS", ".bis_table tr") },
        { @"https://www.icy-veins.com/wow-classic/warrior-tank-pre-raid-gear", ("Warrior", "Protection", ".bis_table tr") },

        { @"https://www.wowhead.com/classic/guide/wow-classic-paladin-tank-pre-raid-best-in-slot-gear", ("Paladin", "Protection", ".markup-table-wrapper .grid tr") }
    };

    public PreRaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "PreRaidItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(icyVeinsUriList.Keys, async (uri, doc) =>
        {
            await ProcessBisPagePage(icyVeinsUriList[uri], doc);
        },
        writeToLog, _importCancelToken);

        return items;
    }

    private async Task ProcessBisPagePage((string, string, string) classSpec, IHtmlDocument doc)
    {
        var guide = ItemSpecFileManager.ReadGuide(Constants.CombinePath(Constants.AddonPath, $@"\Guides\ERA\{classSpec.Item1}{classSpec.Item2.Replace("DPS", "Dps")}.lua"));

        var rows = doc.QuerySelectorAll(classSpec.Item3);
        
        var items = GetItemsFromTableRows(rows);

        guide.Item2[0] = items.Values.ToList();
        WriteItemsInternal(items);
        ItemSpecFileManager.WriteItemSpec(Constants.CombinePath(Constants.AddonPath, $@"\Guides\ERA\{classSpec.Item1}{classSpec.Item2.Replace("DPS", "Dps")}.lua"),
            classSpec.Item1, classSpec.Item2, false, guide.Item1, guide.Item2);
    }

    private Dictionary<int, ItemSpec> GetItemsFromTableRows(IHtmlCollection<IElement> rows)
    {        
        var items = new Dictionary<int, ItemSpec>();
        var index = 0;
        foreach (var row in rows)
        {
            var slot = row.Children[0].TextContent.Trim();
            Common.RecursiveBoxSearch(row.Children[1], (anchor) =>
            {
                AddItemFromAnchor(anchor, items, ConvertSlot(slot), index++);

                return false;
            });
        }
        return items;
    }

    private string ConvertSlot(string slot)
    {
        switch(slot.ToLower().Trim())
        {
            case "helm": return "Head";
            case "shoulders": return "Shoulder";
            case "bracers": return "Wrist";
            case "wrists": return "Wrist";
            case "belt": return "Waist";
            case "leggings": return "Legs";
            case "boots": return "Feet";
            case "weapon": return "Main Hand";
            case "cloak": return "Back";
            case "rings": return "Ring";
            case "trinkets": return "Trinket";
            case "one-hand": return "Main Hand";
            case "weapons": return "Main Hand";
            case "main-hand": return "Main Hand";
            case "main-hand / off-hand": return "Main Hand/Off Hand";
            case "off-hands": return "Off Hand";
            case "off-hand": return "Off Hand";
            case "shield": return "Off Hand";
            case "idols": return "Ranged";
            case "melee weapons": return "Main Hand";
            case "ranged weapon": return "Ranged";
            case "quiver": return "Ranged";
            case "arrows": return "Ranged";
            case "gloves": return "Hands";
            case "two-hand": return "Two Hand";
            case "relic": return "Ranged";
            case "1h weapons": return "Main Hand";
            case "2h weapons": return "Two Hand";
            case "ring 1": return "Ring";
            case "ring 2": return "Ring";
            case "trinket 1": return "Trinket";
            case "trinket 2": return "Trinket";
            case "libram": return "Ranged";
            case "wand": return "Ranged";
            case "daggers": return "Main Hand";
            case "swords": return "Main Hand";
            default: return slot;
        }
    }

    private void AddItemFromAnchor(IHtmlAnchorElement anchor, Dictionary<int, ItemSpec> items, string slot, int itemOrderIndex)
    {
        if (anchor.PathName.Contains("/item"))
        {
            var item = anchor.PathName.Replace("/classic-ptr", "").Replace("/classic", "").Replace("/item=", "").Replace("/item/", "");

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");
            if (itemIdIndex != -1)
                item = item.Substring(0, itemIdIndex);
            
            var itemName = anchor.TextContent.Trim();

            int itemId = -99999;
            Int32.TryParse(item, out itemId);

            if (!items.ContainsKey(itemId))
            {
                items.Add(itemId, new ItemSpec
                {
                    ItemId = itemId,
                    Name = itemName ?? "unknown",
                    BisStatus = "Alt",
                    Slot = slot,
                    ItemOrder = itemOrderIndex
                });
            }
        }
    }

    private static void WriteItemsInternal(Dictionary<int, ItemSpec> items)
    {
        var itemSources = ItemSourceFileManager.ReadItemSources();
        
        foreach (var item in items)
        {
            if (items.Count(i => i.Value.Slot == item.Value.Slot) == 1)
            {
                if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
                {
                    itemSources.Add(item.Value.ItemId, new ItemSource
                    {
                        ItemId = item.Value.ItemId,
                        Name = item.Value.Name,
                        SourceType = "LBIS.L[\"unknown\"]",
                        Source = "LBIS.L[\"unknown\"]",
                        SourceNumber = "0",
                        SourceLocation = "LBIS.L[\"unknown\"]"
                    });
                }
                item.Value.BisStatus = "BIS";
            }
            if (!itemSources.ContainsKey(item.Value.ItemId) && item.Value.ItemId > 0)
            {
                itemSources.Add(item.Value.ItemId, new ItemSource
                {
                    ItemId = item.Value.ItemId,
                    Name = item.Value.Name,
                    SourceType = "LBIS.L[\"unknown\"]",
                    Source = "LBIS.L[\"unknown\"]",
                    SourceNumber = "0",
                    SourceLocation = "LBIS.L[\"unknown\"]"
                });
            }
        }

        ItemSourceFileManager.WriteItemSources(itemSources);
    }
}