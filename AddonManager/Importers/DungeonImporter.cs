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
    private Dictionary<string, string> dungeonUriList = new Dictionary<string, string>
        {
            { @"https://www.wowhead.com/cata/guide/dungeons/zulaman-loot", "Zul'Aman" },
            { @"https://www.wowhead.com/cata/guide/dungeons/zulgurub-loot", "Zul'Gurub" },
        };

    private Dictionary<string, string> _bossUriList = new Dictionary<string, string>()
    {
        { @"https://www.wowhead.com/cata/npc=54123/echo-of-sylvanas#drops", "Echo of Sylvanas, End Time"},
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
