﻿using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Firelands
        { @"https://www.wowhead.com/cata/npc=53691/shannox#drops;mode:n10", "Shannox, Firelands" },
        { @"https://www.wowhead.com/cata/npc=53691/shannox#drops;mode:h10", "Shannox, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52558/lord-rhyolith#drops;mode:n10", "Lord Rhyolith, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52558/lord-rhyolith#drops;mode:h10", "Lord Rhyolith, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52498/bethtilac#drops;mode:n10", "Beth'tilac, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52498/bethtilac#drops;mode:h10", "Beth'tilac, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52530/alysrazor#drops;mode:n10", "Alysrazor, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52530/alysrazor#drops;mode:h10", "Alysrazor, Firelands" },
        { @"https://www.wowhead.com/cata/npc=53494/baleroc#drops;mode:n10", "Baleroc, Firelands" },
        { @"https://www.wowhead.com/cata/npc=53494/baleroc#drops;mode:h10", "Baleroc, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52571/majordomo-staghelm#drops;mode:n10", "Majordomo Staghelm, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52571/majordomo-staghelm#drops;mode:h10", "Majordomo Staghelm, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52409/ragnaros#drops;mode:n10", "Ragnaros, Firelands" },
        { @"https://www.wowhead.com/cata/npc=52409/ragnaros#drops;mode:h10", "Ragnaros, Firelands" },
    };

    private Dictionary<string, string> wowheadContainsUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/cata/object=194201/rare-cache-of-winter", "Hodir, Ulduar (25)" },
    };

    private Dictionary<int, DatabaseItem> trashDrops = new Dictionary<int, DatabaseItem>()
    {
    };

    private List<string> excludedWords = new List<string>()
    {
        "Reins of the",
        "Plans: ",
        "Pattern: ", 
        "Formula: ",
        "Trophy of the Crusade",
        "Large Satchel",
        "Dragon Hide Bag",
        "Shadowfrost Shard"
    };

    public RaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadDropsList(wowheadUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[4].TextContent, out int itemLevel);
            InternalItemsParse(wowheadUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        await Common.ReadWowheadContainsList(wowheadContainsUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(wowheadContainsUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        foreach (var trashDrop in trashDrops)
        {
            items.AddItem(trashDrop.Key, trashDrop.Value);
        }

        return items;
    }

    private void InternalItemsParse(Dictionary<string, string> uriList, string webAddress, IElement row, int itemId, int itemLevel, IElement item, DatabaseItems items)
    {
        var itemName = item.TextContent;
        var isPurple = (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
        if (!isPurple) return;
        if (excludedWords.Any(w => itemName.Contains(w))) return;

        var sourceFaction = "B";
        if (row.Children[7].Children.Count() > 0)
        {
            var factionColumn = (IElement)row.Children[7].ChildNodes[0];
            if (factionColumn?.ClassName == "icon-horde")
                sourceFaction = "H";
            else if (factionColumn?.ClassName == "icon-alliance")
                sourceFaction = "A";
        }

        var sourceSplit = uriList[webAddress].Split(",");
        var sourceName = sourceSplit[0].Trim();

        items.AddItem(itemId, new DatabaseItem
        {
            Name = itemName,
            SourceNumber = "0",
            Source = sourceName,
            SourceLocation = sourceSplit[1].Trim(),
            SourceType = "Drop",
            SourceFaction = sourceFaction
        });
    }

    private IHtmlAnchorElement? RecursivelyFindFirstAnchor(IElement element)
    {
        IHtmlAnchorElement? result = null;
        if (element is IHtmlAnchorElement && element.ClassName != "toggler-off")
            result = element as IHtmlAnchorElement;
        else
        {
            foreach (var child in element.Children)
            {
                if (result == null)
                    result = RecursivelyFindFirstAnchor(child);
            }
        }
        return result;
    }
}
