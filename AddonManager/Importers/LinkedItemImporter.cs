using System.Net;
using System.Text.RegularExpressions;
using AddonManager.FileManagers;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class LinkedItemImporter : LootImporter
{
    private List<string> regularThunderForgedUris = new List<string>()
    {
        //Normal
        "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#200",
        //Thunderforged
        "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#200"
    };
    
    private List<string> heroicThunderForgedUris = new List<string>()
    {
        //Heroic
        "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#200",
        //Heroic Thunderforged
        "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#200"
    };

    private List<string> normalWarforagedUris = new List<string>()
    {
        //Normal
        "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#200",
        //Warforged
        "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#200"
    };

    private List<string> heroicWarforgedUris = new List<string>()
    {
        //Heroic
        "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#200",
        //Heroic Warforged
        "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#50",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#100",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#150",
        "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#200",
    };

    public LinkedItemImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "LinkedItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        var linkedItems = new Dictionary<string, List<int>>();
        var linkedItemNames = new Dictionary<string, string>();

        await MatchItemsFromUris(regularThunderForgedUris, linkedItems, linkedItemNames, writeToLog);
        await MatchItemsFromUris(heroicThunderForgedUris, linkedItems, linkedItemNames, writeToLog);
        await MatchItemsFromUris(normalWarforagedUris, linkedItems, linkedItemNames, writeToLog);
        await MatchItemsFromUris(heroicWarforgedUris, linkedItems, linkedItemNames, writeToLog);

        LinkedItemFileManager.WriteLinkedItems(Constants.CombinePath(Constants.AddonPath, @$"\DB\LinkedItems.lua"), 
            linkedItems, linkedItemNames);

        return items;
    }

    private async Task MatchItemsFromUris(IEnumerable<string> uris, 
        Dictionary<string, List<int>> linkedItems, 
        Dictionary<string, string> linkedItemNames, 
        Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(uris.ToList(), (uri, doc) =>
        {
            var tableRows = doc.QuerySelectorAll("#lv-items table .listview-row");

            foreach(var row in tableRows)
            {
                var name = row.Children[2].TextContent;
                var iLvl = row.Children[3].TextContent;
                AddLinkedName(linkedItemNames, name, iLvl);

                AddLinkedItem(linkedItems, name, row);

            }
        }, writeToLog, _importCancelToken);
    }

    private void AddLinkedItem(Dictionary<string, List<int>> linkedItems, string name, IElement row)
    {            
        var itemId = 0;
        Common.RecursiveBoxSearch(row, (anchorObject) => 
        {
            var item = anchorObject.PathName.Replace("/mop-classic/", "/").Replace("/item=", "").Replace("/?item=", "");
            var itemName = anchorObject.TextContent.Trim();

            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");
            item = item.Substring(0, itemIdIndex);
            int.TryParse(item, out itemId);

            return itemId > 0;
        });

        if (!linkedItems.ContainsKey(name))
        {
            linkedItems[name] = new List<int>();
        }

        linkedItems[name].Add(itemId);
    }

    private void AddLinkedName(Dictionary<string, string> linkedItemNames, string name, string iLvl)
    {
        if (!linkedItemNames.ContainsKey(name))
        {
            if (iLvl == "522" || iLvl == "528")
            {
                linkedItemNames[name] = "Normal -> Thunderforged";
            }
            else if (iLvl == "535" || iLvl == "541")
            {
                linkedItemNames[name] = "Heroic -> Heroic Thunderforged";
            }
            else if (iLvl == "553" || iLvl == "559")
            {
                linkedItemNames[name] = "Normal -> Warforged";
            }
            else if (iLvl == "566" || iLvl == "572")
            {
                linkedItemNames[name] = "Heroic -> Heroic Thunderforged";
            }
        }
    }
}
