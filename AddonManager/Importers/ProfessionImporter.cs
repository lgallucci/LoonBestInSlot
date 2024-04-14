using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class ProfessionImporter : LootImporter
{
    private Dictionary<string, string> professionUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/classic/skill=202/engineering#recipes", "Engineering" },
        { @"https://www.wowhead.com/classic/skill=202/engineering#recipes;50", "Engineering" },
        { @"https://www.wowhead.com/classic/skill=202/engineering#recipes;100", "Engineering" },
        { @"https://www.wowhead.com/classic/skill=202/engineering#recipes;150", "Engineering" },
        { @"https://www.wowhead.com/classic/skill=202/engineering#recipes;200", "Engineering" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes;50", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes;100", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes;150", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes;200", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=165/leatherworking#recipes;250", "Leatherworking" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes;50", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes;100", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes;150", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes;200", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=197/tailoring#recipes;250", "Tailoring" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes;50", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes;100", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes;150", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes;200", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/skill=164/blacksmithing#recipes;250", "Blacksmithing" },
    };

    internal override string FileName { get => "ProfessionItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(professionUriList.Keys.ToList(), (uri, doc) =>
        {
            var tableElements = doc.QuerySelectorAll("#tab-recipes table .listview-row");

            foreach(var element in tableElements)
            {
                int itemId = 0;
                int spellId = 0;
                string name = string.Empty;
                //recursively find all anchors

                FindAllAnchors(element.Children[0], (anchor) => {
                    if (anchor.PathName.Contains("/item="))
                    {
                        itemId = GetIdFromAnchor(anchor, "/item=");
                    }
                });

                FindAllAnchors(element.Children[1], (anchor) => {
                    if (anchor.PathName.Contains("/spell="))
                    {
                        spellId = GetIdFromAnchor(anchor, "/spell=");
                    }
                });

                name = element.Children[1].TextContent;

                if (itemId > 0 && !items.Items.ContainsKey(itemId))
                    items.Items.Add(itemId, new DatabaseItem
                    {
                        Name = name,
                        SourceType = "Profession",
                        Source = professionUriList[uri],
                        SourceNumber = "0",
                        SourceLocation = spellId.ToString(),
                    });
            }
        }, writeToLog);

        return items;
    }

    private int GetIdFromAnchor(IHtmlAnchorElement anchor, string anchorType)
    {
        var item = anchor.PathName.Replace("/classic", "").Replace(anchorType, "");
        var itemIdIndex = item.IndexOf("/");
        if (itemIdIndex == -1)
            itemIdIndex = item.IndexOf("&");

        item = item.Substring(0, itemIdIndex);
        int itemId;
        int.TryParse(item, out itemId);
        return itemId;
    }

    private void FindAllAnchors(IElement element, Action<IHtmlAnchorElement> anchorAction)
    {
        IHtmlAnchorElement? result = null;
        if (element is IHtmlAnchorElement && element.ClassName != "toggler-off")
            anchorAction(element as IHtmlAnchorElement);
        else
        {
            foreach (var child in element.Children)
            {
                FindAllAnchors(child, anchorAction);
            }
        }
    }
}
