
using System.Net;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;50",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;100",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;150",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;200",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;50",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;100",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;150",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;200",
        "https://www.wowhead.com/cata/npc=44246/magatha-silverton#sells",
        "https://www.wowhead.com/cata/npc=44246/magatha-silverton#sells;50",
        "https://www.wowhead.com/cata/npc=46555/gunra#sells",
        "https://www.wowhead.com/cata/npc=46555/gunra#sells;50",
    };

    public EmblemImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadSellsList(wowheadUriList.Where(u => u.Contains("wowhead")), (uri, row, itemId, item) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "Emblem Vendor";
            var sourceFaction = "B";
            var itemName = item.TextContent;

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = anchorObject.PathName.Replace("/cata/", "/").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", ""); ;

                var currencyIdIndex = item.IndexOf("/");
                if (currencyIdIndex == -1)
                    currencyIdIndex = item.IndexOf("&");

                if (currencyIdIndex > -1)
                {
                    item = item.Substring(0, currencyIdIndex);

                    success = int.TryParse(item, out var currencyInteger);

                    if (success)
                    {
                        var sourceText = item == "101" ? "Emblem of Heroism" :
                            item == "102" ? "Emblem of Valor" :
                            item == "221" ? "Emblem of Conquest" :
                            item == "301" ? "Emblem of Triumph" :
                            item == "341" ? "Emblem of Frost" :
                            item == "395" ? "Justice Points" :
                            item == "396" ? "Valor Points" :
                            item == "2589" ? "Sidereal Essence" :
                            item == "2711" ? "Defiler's Scourgestone" :
                            item == "47242" ? "Trophy" :
                            item == "52025" ? "Vanquisher's Mark" :
                            item == "52026" ? "Protector's Mark" :
                            item == "52027" ? "Conqueror's Mark" :
                            item == "52028" ? "Vanquisher's Mark (H)" :
                            item == "52029" ? "Protector's Mark (H)" :
                            item == "52030" ? "Conqueror's Mark (H)" : "unknown";

                        if (string.IsNullOrWhiteSpace(currencySource))
                            currencySource = sourceText;
                        else if (currencySource.Contains("'s Mark") && sourceText == "unknown")
                            currencySource = $"{currencySource} & {{{item}}}";
                        else
                            currencySource = $"{currencySource} & {sourceText}";

                        if (string.IsNullOrWhiteSpace(currencyNumber))
                            currencyNumber = anchorObject.TextContent;
                        else
                            currencyNumber = $"{currencyNumber} & {anchorObject.TextContent}";
                    }
                }
                return success;
            });

            if (row.Children[6].Children.Count() > 0)
            {
                var factionColumn = (IElement)row.Children[6].ChildNodes[0];
                if (factionColumn?.ClassName == "icon-horde")
                    sourceFaction = "H";
                else if (factionColumn?.ClassName == "icon-alliance")
                    sourceFaction = "A";
            }

            if (items.Items.ContainsKey(itemId))
            {
                items.Items.Remove(itemId);
            }

            if (!currencySource.Contains("unknown"))
            {
                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = currencyNumber,
                    Source = currencySource,
                    SourceLocation = currencySourceLocation,
                    SourceType = "Dungeon Token",
                    SourceFaction = sourceFaction
                });
            }
        }, writeToLog, _importCancelToken);

        return items;
    }
}
