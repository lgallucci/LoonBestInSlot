﻿
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        //@"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne",
        //@"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=31580/arcanist-ivrenne#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=31582/magistrix-lambriesse",
        //@"https://www.wowhead.com/wotlk/npc=31582/magistrix-lambriesse#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=31582/magistrix-lambriesse#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin",
        //@"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=31579/arcanist-adurin#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=31581/magister-brasael",
        //@"https://www.wowhead.com/wotlk/npc=31581/magister-brasael#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=31581/magister-brasael#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=33964/arcanist-firael",
        //@"https://www.wowhead.com/wotlk/npc=33964/arcanist-firael#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=33964/arcanist-firael#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=33963/magister-sarien",
        //@"https://www.wowhead.com/wotlk/npc=33963/magister-sarien#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=33963/magister-sarien#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=35573/arcanist-asarina",
        //@"https://www.wowhead.com/wotlk/npc=35573/arcanist-asarina#sells;50",vvvvvvvvvvvvvvvvvvvvvvvvvv
        //@"https://www.wowhead.com/wotlk/npc=35573/arcanist-asarina#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=35579/aspirant-forudir",
        //@"https://www.wowhead.com/wotlk/npc=35579/aspirant-forudir#sells;50",//TODO: More ?
        //@"https://www.wowhead.com/wotlk/npc=35577/valiant-laradia",
        //@"https://www.wowhead.com/wotlk/npc=35577/valiant-laradia#sells;50",//TODO: More ?
        //@"https://www.wowhead.com/wotlk/npc=35580/aspirant-naradiel",
        //@"https://www.wowhead.com/wotlk/npc=35580/aspirant-naradiel#sells;50",//TODO: More ?
        //@"https://www.wowhead.com/wotlk/npc=35578/valiant-bressia",
        //@"https://www.wowhead.com/wotlk/npc=35578/valiant-bressia#sells;50",//TODO: More ?
        //@"https://www.wowhead.com/wotlk/npc=35574/magistrix-iruvia",
        //@"https://www.wowhead.com/wotlk/npc=35574/magistrix-iruvia#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35574/magistrix-iruvia#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=207128/animated-constellation",
        //@"https://www.wowhead.com/wotlk/npc=207128/animated-constellation#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=211332/korralin-hoperender",
        //@"https://www.wowhead.com/wotlk/npc=211332/korralin-hoperender#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=211340/kolara-dreamsmasher",
        //@"https://www.wowhead.com/wotlk/npc=211340/kolara-dreamsmasher#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=37941/magister-arlan",
        //@"https://www.wowhead.com/wotlk/npc=37941/magister-arlan#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35496/rueben-lauren",
        //@"https://www.wowhead.com/wotlk/npc=35496/rueben-lauren#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35496/rueben-lauren#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=35498/horace-hunderland",
        //@"https://www.wowhead.com/wotlk/npc=35498/horace-hunderland#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35498/horace-hunderland#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=35500/matilda-brightlink",
        //@"https://www.wowhead.com/wotlk/npc=35500/matilda-brightlink#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35500/matilda-brightlink#sells;100",
        //@"https://www.wowhead.com/wotlk/npc=35497/rafael-langrom",
        //@"https://www.wowhead.com/wotlk/npc=35497/rafael-langrom#sells;50",
        //@"https://www.wowhead.com/wotlk/npc=35497/rafael-langrom#sells;100",

        //evowow
        @"https://wotlk.evowow.com/?npc=35498#currency-for:0-2",
        @"https://wotlk.evowow.com/?npc=35498#currency-for:50-2",
        @"https://wotlk.evowow.com/?npc=35498#currency-for:100-2",
        @"https://wotlk.evowow.com/?npc=35496#currency-for:0-2",
        @"https://wotlk.evowow.com/?npc=35496#currency-for:50-2",
        @"https://wotlk.evowow.com/?npc=35500#currency-for:0-2",
        @"https://wotlk.evowow.com/?npc=35500#currency-for:50-2",
        @"https://wotlk.evowow.com/?npc=35497#currency-for:0-2",
        @"https://wotlk.evowow.com/?npc=35497#currency-for:50-2"
    };

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.ReadEvoWowSellsList(wowheadUriList.Where(u => u.Contains("evowow")), (uri, row, itemId, item) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "";
            var sourceFaction = "B";
            var itemName = item.TextContent;

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = ((IHtmlAnchorElement)anchorObject).Search.Replace("?currency=", "").Replace("?item=", "");

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
                        item == "52030" ? "Conqueror's Mark (H)" : "unknown";

                    if (string.IsNullOrWhiteSpace(currencySource))
                        currencySource = sourceText;
                    else if (currencySource.Contains("'s Mark") && sourceText == "unknown")
                        currencySource = $"{currencySource} & Lower Rank";
                        //currencySource = $"{currencySource} & {{{item}}}";
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
                    else if (string.IsNullOrWhiteSpace(currencySourceLocation))
                        currencySourceLocation = "Emblem Vendor";
                }

                return success;
            });

            if (row.Children[5].Children.Count() > 0)
            {
                var factionColumn = (IElement)row.Children[5].ChildNodes[0];
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
                var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", ""); ;

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

                        if (item == "47242")
                            currencySourceLocation = "Trial of the Crusader";
                        else if (new[] { "52025", "52026", "52027" }.ToList().Contains(item))
                            currencySourceLocation = "Icecrown Citadel";
                        else if (new[] { "52028", "52029", "52030" }.ToList().Contains(item))
                            currencySourceLocation = "Icecrown Citadel (25H)";
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
