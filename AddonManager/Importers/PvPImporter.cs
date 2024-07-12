using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, (string, string)> wowheadUriList = new Dictionary<string, (string, string)>
    {
        // { @"https://www.wowhead.com/classic/npc=12799/sergeant-basha#sells", ("H", "Orgrimmar") },
        // { @"https://www.wowhead.com/classic/npc=12799/sergeant-basha#sells;50", ("H", "Orgrimmar") },
        // { @"https://www.wowhead.com/classic/npc=12805/officer-areyn#sells", ("A", "Stormwind") },
        // { @"https://www.wowhead.com/classic/npc=12805/officer-areyn#sells;50", ("A", "Stormwind") },
        // { @"https://www.wowhead.com/classic/npc=12777/captain-dirgehammer#sells", ("A", "Stormwind") },      
        // { @"https://www.wowhead.com/classic/npc=12777/captain-dirgehammer#sells;50", ("A", "Stormwind") },  
        // { @"https://www.wowhead.com/classic/npc=12777/captain-dirgehammer#sells;100", ("A", "Stormwind") },    
        // { @"https://www.wowhead.com/classic/npc=12777/captain-dirgehammer#sells;150", ("A", "Stormwind") },    
        // { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells", ("H", "Orgrimmar") }, 
        // { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;50", ("H", "Orgrimmar") },
        // { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;100", ("H", "Orgrimmar") },
        // { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;150", ("H", "Orgrimmar") },
        // { @"https://www.wowhead.com/classic/npc=14754/kelm-hargunth#sells", ("H", "Warsong Gulch")},
        // { @"https://www.wowhead.com/classic/npc=14754/kelm-hargunth#sells;50", ("H", "Warsong Gulch")},
        // { @"https://www.wowhead.com/classic/npc=14753/illiyana-moonblaze#sells", ("A", "Warsong Gulch")},
        // { @"https://www.wowhead.com/classic/npc=14753/illiyana-moonblaze#sells;50", ("A", "Warsong Gulch")},
        // { @"https://www.wowhead.com/classic/npc=15127/samuel-hawke#sells", ("A", "Arathi Basin") },
        // { @"https://www.wowhead.com/classic/npc=15127/samuel-hawke#sells;50", ("A", "Arathi Basin") },
        // { @"https://www.wowhead.com/classic/npc=15126/rutherford-twing#sells", ("H", "Arathi Basin") },
        // { @"https://www.wowhead.com/classic/npc=15126/rutherford-twing#sells;50", ("H", "Arathi Basin") },
        // { @"https://www.wowhead.com/classic/npc=218115/maizin#sells", ("B", "Stranglethorn Vale") },
        // { @"https://www.wowhead.com/classic/npc=218115/maizin#sells;50", ("B", "Stranglethorn Vale") },
        // { @"https://www.wowhead.com/classic/npc=12782/captain-oneal#sells", ("A", "Battlegrounds") },
        // { @"https://www.wowhead.com/classic/npc=14581/sergeant-thunderhorn#sells", ("H", "Battlegrounds") }
        // { @"https://www.wowhead.com/classic/npc=13219/jekyll-flandring#sells", ("H", "Alterac Mountains") },
        // { @"https://www.wowhead.com/classic/npc=13217/thanthaldis-snowgleam#sells", ("A", "Alterac Mountains") },
        { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells", ("H", "Battlegrounds") },
        { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;50", ("H", "Battlegrounds") },
        { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;100", ("H", "Battlegrounds") },
        { @"https://www.wowhead.com/classic/npc=12792/lady-palanseer#sells;150", ("H", "Battlegrounds") },
    };

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await Common.LoadFromWebPages(wowheadUriList.Keys.ToList(), async (uri, doc) =>
        {
            Common.ReadWowheadSellsList(doc, uri, (uri, row, itemId, item) =>
            {
                var currencySource = "PvP Vendor";
                var currencyNumber = "";
                var currencySourceLocation = wowheadUriList[uri].Item2;
                var faction = wowheadUriList[uri].Item1;
                var itemName = item.TextContent;

                Int32.TryParse(row.Children[3].TextContent, out int itemLevel);

                // var nameSplit = wowheadUriList[uri].Item1.Split(",");
                // var levelSplit = nameSplit.Select(n => n.Split('>'));

                // if (!levelSplit.Any(i => itemName.Contains(i[0].Trim()) && (i.Length < 2 || Int32.Parse(i[1]) < itemLevel)))
                //     return;


                foreach(var currency in row.Children[10].Children)
                {
                    if (currency.ClassName == "moneygold") 
                    {
                        currencyNumber += $"{currency.TextContent.Trim()}g";
                    } 
                    else if (currency.ClassName == "moneysilver")
                    {
                        currencyNumber += $"{currency.TextContent.Trim()}s";
                    } 
                    else if (currency.ClassName == "moneycopper") 
                    {
                        currencyNumber += $"{currency.TextContent.Trim()}c";
                    }
                }

                if (!items.Items.ContainsKey(itemId))
                {                   
                    var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                    {
                        Name = itemName,
                        SourceNumber = currencyNumber,
                        Source = currencySource,
                        SourceLocation = currencySourceLocation,
                        SourceType = "PvP",
                        SourceFaction = faction
                    });
                } else {
                    if (items.Items[itemId].SourceFaction != faction)
                    {
                        items.Items[itemId].SourceFaction = "B";
                    }
                }
            });
        }, writeToLog);

        return items;
    }
}
