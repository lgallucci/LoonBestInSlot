using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Throne of the Four Winds
        { @"https://www.wowhead.com/cata/npc=45871/nezir#drops;mode:n10", "Conclave of Wind, Throne of the Four Winds (10)" },
        { @"https://www.wowhead.com/cata/npc=45871/nezir#drops;mode:h10", "Conclave of Wind, Throne of the Four Winds (10H)" },
        { @"https://www.wowhead.com/cata/npc=45871/nezir#drops;mode:n25", "Conclave of Wind, Throne of the Four Winds (25)" },
        { @"https://www.wowhead.com/cata/npc=45871/nezir#drops;mode:h25", "Conclave of Wind, Throne of the Four Winds (25H)" },
        { @"https://www.wowhead.com/cata/npc=46753/alakir#drops;mode:n10", "Al'Akir, Throne of the Four Winds (10)" },
        { @"https://www.wowhead.com/cata/npc=46753/alakir#drops;mode:h10", "Al'Akir, Throne of the Four Winds (10H)" },
        { @"https://www.wowhead.com/cata/npc=46753/alakir#drops;mode:n25", "Al'Akir, Throne of the Four Winds (25)" },
        { @"https://www.wowhead.com/cata/npc=46753/alakir#drops;mode:h25", "Al'Akir, Throne of the Four Winds (25H)" },

        //Blackwing Descent
        { @"https://www.wowhead.com/cata/npc=41570/magmaw#drops;mode:n10", "Magmaw, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=41570/magmaw#drops;mode:h10", "Magmaw, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=41570/magmaw#drops;mode:n25", "Magmaw, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=41570/magmaw#drops;mode:h25", "Magmaw, Blackwing Descent (25H)"},
        { @"https://www.wowhead.com/cata/npc=42166/arcanotron#drops;mode:n10", "Arcanotron, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=42166/arcanotron#drops;mode:h10", "Arcanotron, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=42166/arcanotron#drops;mode:n25", "Arcanotron, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=42166/arcanotron#drops;mode:h25", "Arcanotron, Blackwing Descent (25H)"},
        { @"https://www.wowhead.com/cata/npc=41378/maloriak#drops;mode:n10", "Maloriak, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=41378/maloriak#drops;mode:h10", "Maloriak, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=41378/maloriak#drops;mode:n25", "Maloriak, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=41378/maloriak#drops;mode:h25", "Maloriak, Blackwing Descent (25H)"},
        { @"https://www.wowhead.com/cata/npc=41442/atramedes#drops;mode:n10", "Atramedes, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=41442/atramedes#drops;mode:h10", "Atramedes, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=41442/atramedes#drops;mode:n25", "Atramedes, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=41442/atramedes#drops;mode:h25", "Atramedes, Blackwing Descent (25H)"},
        { @"https://www.wowhead.com/cata/npc=43296/chimaeron#drops;mode:n10", "Chimaeron, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=43296/chimaeron#drops;mode:h10", "Chimaeron, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=43296/chimaeron#drops;mode:n25", "Chimaeron, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=43296/chimaeron#drops;mode:h25", "Chimaeron, Blackwing Descent (25H)"},
        { @"https://www.wowhead.com/cata/npc=41376/nefarian#drops;mode:n10", "Nefarian, Blackwing Descent (10)"},
        { @"https://www.wowhead.com/cata/npc=41376/nefarian#drops;mode:h10", "Nefarian, Blackwing Descent (10H)"},
        { @"https://www.wowhead.com/cata/npc=41376/nefarian#drops;mode:n25", "Nefarian, Blackwing Descent (25)"},
        { @"https://www.wowhead.com/cata/npc=41376/nefarian#drops;mode:h25", "Nefarian, Blackwing Descent (25H)"},

        //Bastion of Twilight
        { @"https://www.wowhead.com/cata/npc=44600/halfus-wyrmbreaker#drops;mode:n10", "Halfus Wyrmbreaker, The Bastion of Twilight (10)"},
        { @"https://www.wowhead.com/cata/npc=44600/halfus-wyrmbreaker#drops;mode:h10", "Halfus Wyrmbreaker, The Bastion of Twilight (10H)"},
        { @"https://www.wowhead.com/cata/npc=44600/halfus-wyrmbreaker#drops;mode:n25", "Halfus Wyrmbreaker, The Bastion of Twilight (25)"},
        { @"https://www.wowhead.com/cata/npc=44600/halfus-wyrmbreaker#drops;mode:h25", "Halfus Wyrmbreaker, The Bastion of Twilight (25H)"},
        { @"https://www.wowhead.com/cata/npc=45992/valiona#drops;mode:n10", "Valiona & Theralion, The Bastion of Twilight (10)"},
        { @"https://www.wowhead.com/cata/npc=45992/valion#drops;mode:h10", "Valiona & Theralion, The Bastion of Twilight (10H)"},
        { @"https://www.wowhead.com/cata/npc=45992/valion#drops;mode:n25", "Valiona & Theralion, The Bastion of Twilight (25)"},
        { @"https://www.wowhead.com/cata/npc=45992/valion#drops;mode:h25", "Valiona & Theralion, The Bastion of Twilight (25H)"},
        { @"https://www.wowhead.com/cata/npc=43687/feludius#drops;mode:n10", "Ascendant Council, The Bastion of Twilight (10)"},
        { @"https://www.wowhead.com/cata/npc=43687/feludius#drops;mode:h10", "Ascendant Council, The Bastion of Twilight (10H)"},
        { @"https://www.wowhead.com/cata/npc=43687/feludius#drops;mode:n25", "Ascendant Council, The Bastion of Twilight (25)"},
        { @"https://www.wowhead.com/cata/npc=43687/feludius#drops;mode:h25", "Ascendant Council, The Bastion of Twilight (25H)"},
        { @"https://www.wowhead.com/cata/npc=43324/chogall#drops;mode:n10", "Cho'gall, The Bastion of Twilight (10)"},
        { @"https://www.wowhead.com/cata/npc=43324/chogall#drops;mode:h10", "Cho'gall, The Bastion of Twilight (10H)"},
        { @"https://www.wowhead.com/cata/npc=43324/chogall#drops;mode:n25", "Cho'gall, The Bastion of Twilight (25)"},
        { @"https://www.wowhead.com/cata/npc=43324/chogall#drops;mode:h25", "Cho'gall, The Bastion of Twilight (25H)"},
        { @"https://www.wowhead.com/cata/npc=45213/sinestra#drops;mode:h10", "Sinestra, The Bastion of Twilight (10H)"},
        { @"https://www.wowhead.com/cata/npc=45213/sinestra#drops;mode:h25", "Sinestra, The Bastion of Twilight (25H)"},

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

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadDropsList(wowheadUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[4].TextContent, out int itemLevel);
            InternalItemsParse(wowheadUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog);

        await Common.ReadWowheadContainsList(wowheadContainsUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(wowheadContainsUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog);

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
