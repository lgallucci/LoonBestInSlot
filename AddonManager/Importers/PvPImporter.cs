using AddonManager.Models;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class PvPImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/tbc/npc=18581/alliance-field-scout", "Zangarmarsh Field Scout" },
        { @"https://www.wowhead.com/tbc/npc=18564/horde-field-scout", "Zangarmarsh Field Scout" },
        { @"https://www.wowhead.com/tbc/npc=18266/warrant-officer-tracy-proudwell#sells", "Honor Hold PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=18267/battlecryer-blackeye#sells", "Thrallmar PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;50", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;100", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;150", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;200", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;250", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;300", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;350", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;400", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;450", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;500", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;550", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;600", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;650", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;700", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;750", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;800", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;850", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;900", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12792/lady-palanseer#sells;950", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;50", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;100", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;150", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;200", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;250", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;300", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;350", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;400", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;450", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;500", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;550", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;600", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;650", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;700", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;750", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;800", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;850", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;900", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12777/captain-dirgehammer#sells;950", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12781/master-sergeant-biggins#sells", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12781/master-sergeant-biggins#sells;50", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12781/master-sergeant-biggins#sells;100", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12793/brave-stonehide#sells", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12793/brave-stonehide#sells;50", "PvP Vendor" },
        { @"https://www.wowhead.com/tbc/npc=12793/brave-stonehide#sells;100", "PvP Vendor" },

    };

    public PvPImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(wowheadUriList.Keys.ToList(), (uri, doc) =>
        {
            Common.ReadWowheadSellsList(doc, uri, (uri, row, itemId, item) =>
            {
                var success = false;
                var currencySource = "";
                var currencyNumber = "";
                var itemName = item.TextContent;

                Int32.TryParse(row.Children[4].TextContent, out int itemLevel);
                if (itemLevel <= 60)
                    return;

                Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
                {
                    var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/tbc/", "/").Replace("/currency=", "").Replace("/item=", "");

                    var currencyIdIndex = item.IndexOf("/");
                    if (currencyIdIndex == -1)
                        currencyIdIndex = item.IndexOf("&");

                    if (currencyIdIndex > -1)
                    {
                        item = item.Substring(0, currencyIdIndex);

                        success = int.TryParse(item, out var currencyInteger);

                        if (success)
                        {
                            if (!string.IsNullOrWhiteSpace(currencySource))
                            {
                                currencySource += " & ";
                                currencyNumber += " & ";
                            }
                            var currentSource = item == "1901" ? "Honor Points" : 
                            item == "126" ? "Wintergrasp Marks" : 
                            item == "390" ? "Conquest Points" :
                            item == "1900" ? "Arena Points" : 
                            item == "24581" ? "Mark of Thrallmar" : 
                            item == "24579" ? "Mark of Honor Hold" :
                            item == "20558" ? "Warsong Gulch Marks" : 
                            item == "20559" ? "Arathi Basin Marks" : 
                            item == "20560" ? "Alterac Valley Marks" : 
                            item == "29024" ? "Eye of the Storm Marks" : 
                            "Unknown Currency";
                            currencySource += currentSource;

                            var currencyAmount = int.Parse(anchorObject.TextContent);
                            currencyNumber += currencyAmount.ToString();
                        }

                    }
                    return success;
                });

                if (!items.Items.ContainsKey(itemId))
                {                   
                    var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                    {
                        Name = itemName,
                        SourceNumber = currencyNumber,
                        Source = currencySource,
                        SourceLocation = wowheadUriList[uri],
                        SourceType = "PvP"
                    });
                }
            });
        }, writeToLog, _importCancelToken);

        return items;
    }
}
