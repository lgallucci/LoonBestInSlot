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
    private List<(string, string)> linkedItemUris = new List<(string, string)>()
    {
        //Normal
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#50", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#100", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#150", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:522/max-level:522?filter=16;6622;0#200", string.Empty ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:522/max-level:522?filter=16;6622;0", string.Empty ),
        //Thunderforged
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#50", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#100", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#150", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:528/max-level:528?filter=16;6622;0#200", string.Empty ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:528/max-level:528?filter=16;6622;0", string.Empty ),
        //Heroic
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#50", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#100", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#150", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:535/max-level:535?filter=16;6622;0#200", "Heroic " ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:535/max-level:535?filter=16;6622;0", "Heroic " ),
        //Heroic Thunderforged
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#50", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#100", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#150", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:541/max-level:541?filter=16;6622;0#200",  "Heroic " ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:541/max-level:541?filter=16;6622;0", "Heroic " ),
        //Normal
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#50", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#100", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#150", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:553/max-level:553?filter=16;6738;0#200", string.Empty ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:553/max-level:553?filter=16;6738;0", string.Empty ),
        //Warforged
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#50", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#100", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#150", string.Empty ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:559/max-level:559?filter=16;6738;0#200", string.Empty ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:559/max-level:559?filter=16;6738;0", string.Empty ),
        //Heroic
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#50", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#100", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#150", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:566/max-level:566?filter=16;6738;0#200", "Heroic " ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:566/max-level:566?filter=16;6738;0", "Heroic " ),
        //Heroic Warforged
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#50", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#100", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#150", "Heroic " ),
        // ( "https://www.wowhead.com/mop-classic/items/armor/min-level:572/max-level:572?filter=16;6738;0#200", "Heroic " ),
        ( "https://www.wowhead.com/mop-classic/items/weapons/min-level:572/max-level:572?filter=16;6738;0", "Heroic " ),
    };

    public LinkedItemImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "LinkedItemList"; }

    class LinkedItem
    {
        public int ItemId { get; set; }
        public string Name { get; set; }
        public int iLvl { get; set; }
    }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();
        var linkedItems = new Dictionary<string, SortedList<int, LinkedItem>>();
        var linkedItemNames = new Dictionary<string, string>();

        if (items.Items == null || items.Items.Count == 0)
        {
            await GetItemsFromWowHead(items, writeToLog);
        }

        await MatchItemsFromUris(items, linkedItems, linkedItemNames);

        await UpdateSingleLinkedItems(items, linkedItems, writeToLog);

        LinkedItemFileManager.WriteLinkedItems(Constants.CombinePath(Constants.AddonPath, @$"\DB\LinkedItems.lua"), 
            linkedItems.ToDictionary(kvp => kvp.Key, kvp => kvp.Value.Select(item => item.Key).ToList()), linkedItemNames);

        return items;
    }

    private async Task GetItemsFromWowHead(DatabaseItems items, Action<string> writeToLog)
    {
        var uris = linkedItemUris.Select(uri => uri.Item1);
        var prefixes = linkedItemUris.ToDictionary(uri => uri.Item1, uri => uri.Item2);
        await Common.LoadFromWebPages(uris.ToList(), (uri, doc) =>
        {
            var tableRows = doc.QuerySelectorAll("#tab-items table .listview-row");

            foreach(var row in tableRows)
            { 
                var linkedItem = GetLinkedItemFromRow(row, prefixes[uri], writeToLog);

                items.AddItem(linkedItem.ItemId, new DatabaseItem
                {
                    Name = linkedItem.Name,
                    SourceNumber = linkedItem.iLvl.ToString(),
                });
            }
        }, writeToLog, _importCancelToken);
    }

    private async Task UpdateSingleLinkedItems(DatabaseItems items, Dictionary<string, SortedList<int,LinkedItem>> linkedItems, Action<string> writeToLog)
    {
        var keysToRemove = new List<string>();
        writeToLog($"Checking through {linkedItems.Count(li => li.Value.Count == 1)} single linked items to update...");
        foreach(var linkedItem in linkedItems.Where(li => li.Value.Count == 1))
        {
            if (_importCancelToken.IsCancellationRequested)
                break;
            var searchName = linkedItem.Key;
            if (linkedItem.Key.StartsWith("Heroic"))
            {
                searchName = linkedItem.Key.Substring("Heroic ".Length);
            }

            var doc = await Common.LoadFromWebPage($"https://www.wowhead.com/mop-classic/search?q={searchName}", writeToLog, _importCancelToken);

            var tableRows = doc?.QuerySelectorAll("#tab-items table .listview-row").ToList() ?? new List<IElement>();
            
            bool added = false;
            foreach(var row in tableRows)
            {
                var prefix = row.Children[2].TextContent.Contains("Heroic") ? "Heroic " : string.Empty;
                var rowItem = GetLinkedItemFromRow(row, prefix, writeToLog);

                if ((linkedItem.Value.First().Value.iLvl == 522 && rowItem.iLvl == 528) ||
                    (linkedItem.Value.First().Value.iLvl == 528 && rowItem.iLvl == 522) ||
                    (linkedItem.Value.First().Value.iLvl == 535 && rowItem.iLvl == 541) ||
                    (linkedItem.Value.First().Value.iLvl == 541 && rowItem.iLvl == 535) ||
                    (linkedItem.Value.First().Value.iLvl == 553 && rowItem.iLvl == 559) ||
                    (linkedItem.Value.First().Value.iLvl == 559 && rowItem.iLvl == 553) ||
                    (linkedItem.Value.First().Value.iLvl == 566 && rowItem.iLvl == 572) ||
                    (linkedItem.Value.First().Value.iLvl == 572 && rowItem.iLvl == 566))
                {
                    AddLinkedItem(linkedItems, rowItem);
                    items.AddItem(rowItem.ItemId, new DatabaseItem
                    {
                        Name = rowItem.Name,
                        SourceNumber = rowItem.iLvl.ToString(),
                    });

                    added = true;
                }
            }
            if (!added)
                keysToRemove.Add(linkedItem.Key);
        }
        foreach (var key in keysToRemove)
        {
            var linkedItem = linkedItems[key][0];
            foreach(var item in linkedItems[key])
            {
                items.Items.Remove(item.Key);
            }
            linkedItems.Remove(key);
        }
    }

    private async Task MatchItemsFromUris(DatabaseItems items, 
        Dictionary<string, SortedList<int,LinkedItem>> linkedItems, 
        Dictionary<string, string> linkedItemNames)
    {

        foreach(var item in items.Items)
        {
            AddLinkedName(linkedItemNames, item.Value.Name, int.Parse(item.Value.SourceNumber));

            AddLinkedItem(linkedItems, new LinkedItem
            {
                ItemId = item.Key,
                Name = item.Value.Name,
                iLvl = int.Parse(item.Value.SourceNumber)
            });
        }
    }

    private LinkedItem GetLinkedItemFromRow(IElement row, string prefix, Action<string> writeToLog)
    {                
        var itemId = 0;
        var itemName = string.Empty;
        Common.RecursiveBoxSearch(row.Children[2], (anchorObject) => 
        {
            var item = anchorObject.PathName.Replace("/mop-classic/", "/").Replace("/item=", "").Replace("/?item=", "");
            itemName = anchorObject.TextContent;
            var itemIdIndex = item.IndexOf("/");
            if (itemIdIndex == -1)
                itemIdIndex = item.IndexOf("&");
            item = item.Substring(0, itemIdIndex);
            int.TryParse(item, out itemId);

            return itemId > 0 && !string.IsNullOrEmpty(itemName);
        });
        var name = $"{prefix}{itemName}";
        var iLvlString = row.Children[3].TextContent;
        int.TryParse(iLvlString, out int iLvl);
        return new LinkedItem { ItemId = itemId, Name = name, iLvl = iLvl };
    }

    private void AddLinkedItem(Dictionary<string, SortedList<int, LinkedItem>> linkedItems, LinkedItem linkedItem)
    {
        if (!linkedItems.ContainsKey(linkedItem.Name))
        {
            linkedItems[linkedItem.Name] = new SortedList<int, LinkedItem>();
        }

        if (!linkedItems[linkedItem.Name].Any(item => item.Value.ItemId == linkedItem.ItemId))
        {
            linkedItems[linkedItem.Name].Add(linkedItem.ItemId, linkedItem);
        }
    }

    private void AddLinkedName(Dictionary<string, string> linkedItemNames, string name, int iLvl)
    {
        if (!linkedItemNames.ContainsKey(name))
        {
            if (iLvl == 522 || iLvl == 528)
            {
                linkedItemNames[name] = "Normal -> Thunderforged";
            }
            else if (iLvl == 535 || iLvl == 541)
            {
                linkedItemNames[name] = "Heroic -> Heroic Thunderforged";
            }
            else if (iLvl == 553 || iLvl == 559)
            {
                linkedItemNames[name] = "Normal -> Warforged";
            }
            else if (iLvl == 566 || iLvl == 572)
            {
                linkedItemNames[name] = "Heroic -> Heroic Warforged";
            }
        }
    }
}
