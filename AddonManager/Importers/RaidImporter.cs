using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Oondasta
        { @"https://www.wowhead.com/mop-classic/npc=69161/oondasta#drops", "Oondasta, Isle of Giants" },

        //Nalak
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops", "Nalak,  Isle of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops;50", "Nalak,  Isle of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops;100", "Nalak,  Isle of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops;150", "Nalak,  Isle of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops;200", "Nalak,  Isle of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69099/nalak#drops;250", "Nalak,  Isle of Thunder" },

        //Throne of Thunder
        { @"https://www.wowhead.com/mop-classic/npc=69465/jinrokh-the-breaker#drops;mode:n25", "Jin'rokh the Breaker (N), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69465/jinrokh-the-breaker#drops;mode:h25", "Jin'rokh the Breaker (H), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=68476/horridon#drops;mode:n25", "Horridon (N), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=68476/horridon#drops;mode:h25", "Horridon (H), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69132/high-priestess-marli#drops;mode:n25", "Council of Elders (N), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=69132/high-priestess-marli#drops;mode:h25", "Council of Elders (H), Throne of Thunder" },
        { @"https://www.wowhead.com/mop-classic/npc=67977/tortos#drops;mode:n25", "Tortos (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=67977/tortos#drops;mode:h25", "Tortos (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=70212/flaming-head#drops;mode:n25", "Megaera (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=70212/flaming-head#drops;mode:h25", "Megaera (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69712/ji-kun#drops;mode:n25", "Ji-Kun (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69712/ji-kun#drops;mode:h25", "Ji-Kun (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68036/durumu-the-forgotten#drops;mode:n25", "Durumu the Forgotten (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68036/durumu-the-forgotten#drops;mode:h25", "Durumu the Forgotten (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69017/primordius#drops;mode:n25", "Primordius (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69017/primordius#drops;mode:h25", "Primordius (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69427/dark-animus#drops;mode:n25", "Dark Animus (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69427/dark-animus#drops;mode:h25", "Dark Animus (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68078/iron-qon#drops;mode:n25", "Iron Qon (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68078/iron-qon#drops;mode:h25", "Iron Qon (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68904/suen#drops;mode:n25", "Twin Consorts (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68904/suen#drops;mode:h25", "Twin Consorts (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68397/lei-shen#drops;mode:n25", "Lei Shen (N), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=68397/lei-shen#drops;mode:h25", "Lei Shen (H), Throne of Thunder"},
        { @"https://www.wowhead.com/mop-classic/npc=69473/ra-den#drops;mode:h25", "Ra-den (H), Throne of Thunder"},
    };

    private Dictionary<string, string> wowheadContainsUriList = new Dictionary<string, string>
    {
        //{ @"https://www.wowhead.com/mop-classic/object=194201/rare-cache-of-winter", "Hodir, Ulduar (25)" },
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
        "Shadowfrost Shard",
        "Sigil of Power",
        "Sigil of Wisdom",
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
