
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        { @"https://www.wowhead.com/classic/npc=227853/pix-xizzix#sells"},
        
        { @"https://www.wowhead.com/classic/npc=230319/deliana#sells" },
        { @"https://www.wowhead.com/classic/npc=230319/deliana#sells;50"},
        { @"https://www.wowhead.com/classic/npc=230319/deliana#sells;100"},
        { @"https://www.wowhead.com/classic/npc=230319/deliana#sells;150"},
        
        { @"https://www.wowhead.com/classic/npc=230317/mokvar#sells"},
        { @"https://www.wowhead.com/classic/npc=230317/mokvar#sells;50"},
        { @"https://www.wowhead.com/classic/npc=230317/mokvar#sells;50"},
        { @"https://www.wowhead.com/classic/npc=230317/mokvar#sells;100"},
        { @"https://www.wowhead.com/classic/npc=230317/mokvar#sells;150"}
    };

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadWowheadSellsList(wowheadUriList.Where(u => u.Contains("wowhead")), (uri, row, itemId, item) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "";
            var sourceFaction = "B";
            var itemName = item.TextContent;

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/classic", "").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", ""); ;

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
                            item == "2589" ? "Sidereal Essence" :
                            item == "2711" ? "Defiler's Scourgestone" :
                            item == "47242" ? "Trophy" :
                            item == "52025" ? "Vanquisher's Mark" :
                            item == "52026" ? "Protector's Mark" :
                            item == "52027" ? "Conqueror's Mark" :
                            item == "52028" ? "Vanquisher's Mark (H)" :
                            item == "52029" ? "Protector's Mark (H)" :
                            item == "52030" ? "Conqueror's Mark (H)" : 
                            item == "226404" ? "Tarnished Undermine Real" : "unknown";

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

                        if (item == "47242")
                            currencySourceLocation = "Trial of the Crusader";
                        else if (new[] { "52025", "52026", "52027" }.ToList().Contains(item))
                            currencySourceLocation = "Icecrown Citadel";
                        else if (new[] { "52028", "52029", "52030" }.ToList().Contains(item))
                            currencySourceLocation = "Icecrown Citadel (25H)";
                        else if (item == "226404")
                            currencySourceLocation = "Pix Xizzix - Booty Bay";
                        else if (string.IsNullOrWhiteSpace(currencySourceLocation))
                            currencySourceLocation = "Emblem Vendor";
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
            var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
            {
                Name = itemName,
                SourceNumber = currencyNumber,
                Source = currencySource,
                SourceLocation = currencySourceLocation,
                SourceType = "Dungeon Token",
                SourceFaction = sourceFaction
            });
        }, writeToLog);

        return items;
    }
}
