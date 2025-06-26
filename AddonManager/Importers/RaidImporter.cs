using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        //Mogu'Shan Vaults
        { @"https://www.wowhead.com/mop-classic/npc=60047/amethyst-guardian#drops;mode:lfr", "The Stone Guard (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60047/amethyst-guardian#drops;mode:n25", "The Stone Guard (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60047/amethyst-guardian#drops;mode:h25", "The Stone Guard (H), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60009/feng-the-accursed#drops;mode:lfr", "Feng the Accursed (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60009/feng-the-accursed#drops;mode:n25", "Feng the Accursed (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60009/feng-the-accursed#drops;mode:h25", "Feng the Accursed (H), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60412/gara-jal-the-spiritbinder#drops;mode:lfr", "Gara'jal the Spiritbinder (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60412/gara-jal-the-spiritbinder#drops;mode:n25", "Gara'jal the Spiritbinder (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60412/gara-jal-the-spiritbinder#drops;mode:h25", "Gara'jal the Spiritbinder (H), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60701/zian-of-the-endless-shadow#drops;mode:lfr", "The Spirit Kings (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60701/zian-of-the-endless-shadow#drops;mode:n25", "The Spirit Kings (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60701/zian-of-the-endless-shadow#drops;mode:h25", "The Spirit Kings (H), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60410/elegon#drops;mode:lfr", "Elegon (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60410/elegon#drops;mode:n25", "Elegon (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60410/elegon#drops;mode:h25", "Elegon (H), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60400/jan-xi#drops;mode:lfr#drops;mode:lfr", "Will of the Emperor (LFR), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60400/jan-xi#drops;mode:lfr#drops;mode:n25", "Will of the Emperor (N), Mogu'Shan Vaults" },
        { @"https://www.wowhead.com/mop-classic/npc=60400/jan-xi#drops;mode:lfr#drops;mode:h25", "Will of the Emperor (H), Mogu'Shan Vaults" },

        //Heart of Fear
        { @"https://www.wowhead.com/mop-classic/npc=62980/imperial-vizier-zorlok#drops;mode:lfr", "Imperial Vizier Zor'lok (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62980/imperial-vizier-zorlok#drops;mode:n25", "Imperial Vizier Zor'lok (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62980/imperial-vizier-zorlok#drops;mode:h25", "Imperial Vizier Zor'lok (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62543/blade-lord-tayak#drops;mode:lfr", "Blade Lord Ta'yak (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62543/blade-lord-tayak#drops;mode:n25", "Blade Lord Ta'yak (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62543/blade-lord-tayak#drops;mode:h25", "Blade Lord Ta'yak (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62164/garalon#drops;mode:lfr#drops;mode:lfr", "Garalon (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62164/garalon#drops;mode:lfr#drops;mode:n25", "Garalon (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62164/garalon#drops;mode:lfr#drops;mode:h25", "Garalon (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62397/wind-lord-meljarak#drops;mode:lfr", "Wind Lord Mel'jarak (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62397/wind-lord-meljarak#drops;mode:n25", "Wind Lord Mel'jarak (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62397/wind-lord-meljarak#drops;mode:h25", "Wind Lord Mel'jarak (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62511/amber-shaper-unsok#drops;mode:lfr", "Amber-Shaper Un'sok (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62511/amber-shaper-unsok#drops;mode:n25", "Amber-Shaper Un'sok (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62511/amber-shaper-unsok#drops;mode:h25", "Amber-Shaper Un'sok (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62837/grand-empress-shekzeer#drops;mode:lfr", "Grand Empress Shek'zeer (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62837/grand-empress-shekzeer#drops;mode:n25", "Grand Empress Shek'zeer (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62837/grand-empress-shekzeer#drops;mode:h25", "Grand Empress Shek'zeer (H), Heart of Fear" },

        //Terrace of Endless Spring
        { @"https://www.wowhead.com/mop-classic/npc=60583/protector-kaolan#drops;mode:lfr", "Protector Kaolan (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=60583/protector-kaolan#drops;mode:n25", "Protector Kaolan (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=60583/protector-kaolan#drops;mode:h25", "Protector Kaolan (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62442/tsulong#drops;mode:lfr", "Tsulong (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62442/tsulong#drops;mode:n25", "Tsulong (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62442/tsulong#drops;mode:h25", "Tsulong (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62983/lei-shi#drops;mode:lfr", "Lei Shen (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62983/lei-shi#drops;mode:n25", "Lei Shen (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=62983/lei-shi#drops;mode:h25", "Lei Shen (H), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=60999/sha-of-fear#drops;mode:lfr", "Sha of Fear (LFR), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=60999/sha-of-fear#drops;mode:n25", "Sha of Fear (N), Heart of Fear" },
        { @"https://www.wowhead.com/mop-classic/npc=60999/sha-of-fear#drops;mode:h25", "Sha of Fear (H), Heart of Fear" },
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
        "Shadowfrost Shard"
    };

    public RaidImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

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
