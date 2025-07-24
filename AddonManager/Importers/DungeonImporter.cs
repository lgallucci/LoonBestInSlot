using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;

namespace AddonManager.Importers;

public class DungeonImporter : LootImporter
{
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

    private Dictionary<string, string> _bossUriList = new Dictionary<string, string>()
    {
        { @"https://www.wowhead.com/mop-classic/npc=56637/ook-ook#drops;mode:normal", "Ook-Ook, Stormstout Brewery"},
        { @"https://www.wowhead.com/mop-classic/npc=56637/ook-ook#drops;mode:heroic", "Ook-Ook, Stormstout Brewery"},
        { @"https://www.wowhead.com/mop-classic/npc=56717/hoptallus#drops;mode:normal", "Hoptallus, Stormstout Brewery"},
        { @"https://www.wowhead.com/mop-classic/npc=56717/hoptallus#drops;mode:heroic", "Hoptallus, Stormstout Brewery"},
        { @"https://www.wowhead.com/mop-classic/npc=59479/yan-zhu-the-uncasked#drops;mode:normal", "Yan-Zhu the Uncasked, Stormstout Brewery"},
        { @"https://www.wowhead.com/mop-classic/npc=59479/yan-zhu-the-uncasked#drops;mode:heroic", "Yan-Zhu the Uncasked, Stormstout Brewery"},

        { @"https://www.wowhead.com/mop-classic/npc=56906/saboteur-kiptilak#drops;mode:normal", "Saboteur Kip'tilak, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56906/saboteur-kiptilak#drops;mode:heroic", "Saboteur Kip'tilak, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56589/striker-gadok#drops;mode:normal", "Striker Ga'dok, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56589/striker-gadok#drops;mode:heroic", "Striker Ga'dok, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56636/commander-rimok#drops;mode:normal", "Commander Ri'mok, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56636/commander-rimok#drops;mode:heroic", "Commander Ri'mok, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56877/raigonn#drops;mode:normal", "Raigonn, Gate of the Setting Sun"},
        { @"https://www.wowhead.com/mop-classic/npc=56877/raigonn#drops;mode:heroic", "Raigonn, Gate of the Setting Sun"},

        { @"https://www.wowhead.com/mop-classic/npc=61567/vizier-jinbak#drops;mode:normal", "Vizier Jin'Bak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=61567/vizier-jinbak#drops;mode:heroic", "Vizier Jin'Bak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=61634/commander-vojak#drops;mode:normal", "Commander Vo'jak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=61634/commander-vojak#drops;mode:heroic", "Commander Vo'jak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=61485/general-pavalak#drops;mode:normal", "General Pa'valak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=61485/general-pavalak#drops;mode:heroic", "General Pa'valak, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=62205/wing-leader-neronok#drops;mode:normal", "Wing Leader Ner'onok, Siege of Niuzao Temple"},
        { @"https://www.wowhead.com/mop-classic/npc=62205/wing-leader-neronok#drops;mode:heroic", "Wing Leader Ner'onok, Siege of Niuzao Temple"},

        { @"https://www.wowhead.com/mop-classic/npc=56448/wise-mari#drops;mode:normal", "Wise Mari, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56448/wise-mari#drops;mode:heroic", "Wise Mari, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56732/liu-flameheart#drops;mode:normal", "Flameheart Liu, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56732/liu-flameheart#drops;mode:heroic", "Flameheart Liu, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56843/lorewalker-stonestep#drops;mode:normal", "Lore Walker Stonestep, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56843/lorewalker-stonestep#drops;mode:heroic", "Lore Walker Stonestep, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56439/sha-of-doubt#drops;mode:normal", "Sha of Doubt, Temple of the Jade Serpent"},
        { @"https://www.wowhead.com/mop-classic/npc=56439/sha-of-doubt#drops;mode:heroic", "Sha of Doubt, Temple of the Jade Serpent"},

        { @"https://www.wowhead.com/mop-classic/npc=61444/ming-the-cunning#drops;mode:normal", "Trial of the King, Mogu'shan Palace"},
        { @"https://www.wowhead.com/mop-classic/npc=61444/ming-the-cunning#drops;mode:heroic", "Trial of the King, Mogu'shan Palace"},
        { @"https://www.wowhead.com/mop-classic/npc=61243/gekkan#drops;mode:normal", "Gekkan, Mogu'shan Palace"},
        { @"https://www.wowhead.com/mop-classic/npc=61243/gekkan#drops;mode:heroic", "Gekkan, Mogu'shan Palace"},
        { @"https://www.wowhead.com/mop-classic/npc=61398/xin-the-weaponmaster#drops;mode:normal", "Xin the Weaponmaster, Mogu'shan Palace"},
        { @"https://www.wowhead.com/mop-classic/npc=61398/xin-the-weaponmaster#drops;mode:heroic", "Xin the Weaponmaster, Mogu'shan Palace"},

        { @"https://www.wowhead.com/mop-classic/npc=56747/gu-cloudstrike#drops;mode:normal", "Gu Cloudstrike, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56747/gu-cloudstrike#drops;mode:heroic", "Gu Cloudstrike, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56541/master-snowdrift#drops;mode:normal", "Master Snowdrift, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56541/master-snowdrift#drops;mode:heroic", "Master Snowdrift, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56719/sha-of-violence#drops;mode:normal", "Sha of Violence, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56719/sha-of-violence#drops;mode:heroic", "Sha of Violence, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56884/taran-zhu#drops;mode:normal", "Taran Zhu, Shado-Pan Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=56884/taran-zhu#drops;mode:heroic", "Taran Zhu, Shado-Pan Monastery"},

        { @"https://www.wowhead.com/mop-classic/npc=59303/houndmaster-braun#drops;mode:heroic", "Houndmaster Braun, Heroic: Scarlet Halls"},
        { @"https://www.wowhead.com/mop-classic/npc=58632/armsmaster-harlan#drops;mode:heroic", "Armsmaster Harlan, Heroic: Scarlet Halls"},
        { @"https://www.wowhead.com/mop-classic/npc=59150/flameweaver-koegler#drops;mode:heroic", "Flameweaver Koegler, Heroic: Scarlet Halls"},

        { @"https://www.wowhead.com/mop-classic/npc=58633/instructor-chillheart#drops;mode:heroic", "Instructor Chillheart, Heroic: Scholomance"},
        { @"https://www.wowhead.com/mop-classic/npc=59184/jandice-barov#drops;mode:heroic", "Jandice Barov, Heroic: Scholomance"},
        { @"https://www.wowhead.com/mop-classic/npc=59153/rattlegore#drops;mode:heroic", "Rattlegore, Heroic: Scholomance"},
        { @"https://www.wowhead.com/mop-classic/npc=59200/lilian-voss#drops;mode:heroic", "Lilian Voss, Heroic: Scholomance"},
        { @"https://www.wowhead.com/mop-classic/npc=59080/darkmaster-gandling#drops;mode:heroic", "Darkmaster Gandling, Heroic: Scholomance"},

        { @"https://www.wowhead.com/mop-classic/npc=59789/thalnos-the-soulrender#drops;mode:heroic", "Thalnos the Soulrender, Heroic: Scarlet Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=59223/brother-korloff#drops;mode:heroic", "Brother Korloff, Heroic: Scarlet Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=60040/commander-durand#drops;mode:heroic", "Commander Durand, Heroic: Scarlet Monastery"},
        { @"https://www.wowhead.com/mop-classic/npc=3977/high-inquisitor-whitemane#drops;mode:heroic", "High Inquisitor Whitemane, Heroic: Scarlet Monastery"},
    };

    public DungeonImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "DungeonItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadDropsList(_bossUriList.Keys.ToList(), (webAddress, row, itemId, item) =>
        {
            Int32.TryParse(row.Children[3].TextContent, out int itemLevel);
            InternalItemsParse(_bossUriList, webAddress, row, itemId, itemLevel, item, items);
        }, writeToLog, _importCancelToken);

        return items;
    }

    private void InternalItemsParse(Dictionary<string, string> uriList, string webAddress, IElement row, int itemId, int itemLevel, IElement item, DatabaseItems items)
    {
        var itemName = item.TextContent;
        var isBlue = (item.ClassName?.Contains("q3") ?? false) || (item.ClassName?.Contains("q4") ?? false) || (item.ClassName?.Contains("q5") ?? false);
        if (!isBlue) return;
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
