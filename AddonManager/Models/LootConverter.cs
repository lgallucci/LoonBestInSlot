using System.Xml.Linq;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using AngleSharp.Html.Parser;
using Newtonsoft.Json;
using static System.Net.WebRequestMethods;
using static AddonManager.Models.EmblemConverter;
using static AddonManager.WowheadReader;

namespace AddonManager.Models;
public abstract class LootConverter
{
    public virtual async Task<DatabaseItems> Convert(string jsonText)
    {
        return await InnerConvert(jsonText);
    }

    internal abstract string FileName { get; }
    internal abstract Task<DatabaseItems> InnerConvert(string jsonText);
}

public class EmblemConverter : LootConverter
{
    internal override string FileName { get => "EmblemItemList"; }

    internal override Task<DatabaseItems> InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        foreach (var itemType in obj.boss)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = item[1].subtitle.ToString().Split(">")[1].Split("<")[0],
                        Source = obj.title.ToString().Replace(" Rewards", ""),
                        SourceLocation = "",
                        SourceType = "Dungeon Token"
                    });
                }
            }
        }
        return Task.FromResult(items);
    }
}

public class ProfessionConverter : LootConverter
{
    internal override string FileName { get => "ProfessionItemList"; }
    internal override Task<DatabaseItems> InnerConvert(string jsonText)
    {
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);

        return default;
    }
}

public class DungeonConverter : LootConverter
{
    internal override string FileName { get => "DungeonItemList"; }
    internal override Task<DatabaseItems> InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        foreach (var itemType in obj.boss)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Normal)",
                        SourceType = "Drop"
                    });
                }
            }

            foreach (var item in itemType.Heroic)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Heroic)",
                        SourceType = "Drop"
                    });
                }
            }
        }
        return Task.FromResult(items);
    }
}

public class RaidConverter : LootConverter
{
    internal override string FileName { get => "RaidItemList"; }
    internal override Task<DatabaseItems> InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        var heroicTag = ((bool)obj.heroic) ? "Heroic " : "";
        foreach (var itemType in obj.raid10)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    if (items.Items.ContainsKey(id))
                    {
                        if (items.Items[id].Source != itemType.title.ToString())
                            items.Items[id].Source += $" & {itemType.title}";
                    }
                    else
                    {
                        items.Items.TryAdd(id, new DatabaseItem
                        {
                            Name = item[1].title,
                            SourceNumber = "0",
                            Source = itemType.title,
                            SourceLocation = $"{obj.title.ToString()} ({heroicTag}10)",
                            SourceType = "Drop"
                        });
                    }
                }
            }
        }
        foreach (var itemType in obj.raid25)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    if (items.Items.ContainsKey(id))
                    {
                        if (items.Items[id].Source != itemType.title.ToString())
                            items.Items[id].Source += $" & {itemType.title}";
                    }
                    else
                    {
                        items.Items.TryAdd(id, new DatabaseItem
                        {
                            Name = item[1].title,
                            SourceNumber = "0",
                            Source = itemType.title,
                            SourceLocation = $"{obj.title.ToString()} ({heroicTag}25)",
                            SourceType = "Drop"
                        });
                    }
                }
            }
        }
        return Task.FromResult(items);
    }
}

public class PvPConverter : LootConverter
{
    internal override string FileName { get => "PvPItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        var pvpVendors = new List<string>
        {
            @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia",
            @"https://www.wowhead.com/wotlk/npc=32380/lieutenant-tristia#sells;50",
            @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike",
            @"https://www.wowhead.com/wotlk/npc=32834/knight-lieutenant-moonstrike#sells;50",
            @"https://www.wowhead.com/wotlk/npc=32381/captain-dirgehammer",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;50",
            @"https://www.wowhead.com/wotlk/npc=31863/nargle-lashcord#sells;100",
            @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe",
            @"https://www.wowhead.com/wotlk/npc=31864/xazi-smolderpipe#sells;50"
        };

        foreach (var pvpVendor in pvpVendors)
        {
            await Common.LoadFromWebPage(pvpVendor, async (content) =>
            {
                var parser = new HtmlParser();
                var doc = default(IHtmlDocument);
                doc = await parser.ParseDocumentAsync(content);

                var rowElements = doc.QuerySelectorAll("#tab-sells .listview-mode-default .listview-row");
                if (rowElements != null && rowElements.Length > 0)
                {
                    foreach (var row in rowElements)
                    {
                        var success = false;
                        var itemId = 0; // Get ItemId from Row
                        var itemName = "";

                        Common.RecursiveBoxSearch(row.Children[2], (anchorObject) =>
                        {
                            if (success) return true;

                            var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/item=", "").Replace("/spell=", "");
                            itemName = anchorObject.TextContent;

                            var itemIdIndex = item.IndexOf("/");
                            if (itemIdIndex == -1)
                                itemIdIndex = item.IndexOf("&");

                            if (itemIdIndex > -1)
                            {
                                item = item.Substring(0, itemIdIndex);

                                success = Int32.TryParse(item, out itemId);
                            }
                            return success;
                        });

                        success = false;
                        var currencySource = "";
                        var currencyNumber = "";
                        var currencySourceLocation = "";

                        Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
                        {
                            var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/currency=", "");
                            currencyNumber = anchorObject.TextContent;

                            var currencyIdIndex = item.IndexOf("/");
                            if (currencyIdIndex == -1)
                                currencyIdIndex = item.IndexOf("&");

                            if (currencyIdIndex > -1)
                            {
                                item = item.Substring(0, currencyIdIndex);

                                success = Int32.TryParse(item, out var currencyInteger);

                                if (success)
                                {
                                    if (!string.IsNullOrWhiteSpace(currencySource))
                                    {
                                        currencySource += " & ";
                                        currencyNumber += " & ";
                                    }
                                    currencySource += item == "1901" ? "Honor Points" : "Arena Points";
                                    currencyNumber += " & ";
                                    if (currencySource.Contains("Arena"))
                                        currencySourceLocation = "Arena Vendor";
                                    else
                                        currencySourceLocation = "PvP Vendor";
                                }

                            }
                            return success;
                        });

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
                            SourceType = "PvP"
                        });
                    }
                }
            });
        }
        return items;
    }
}