using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class ProfessionImporter : LootImporter
{
    private Dictionary<string, string> professionUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/classic/spells/professions/engineering", "Engineering" },
        { @"https://www.wowhead.com/classic/spells/professions/engineering#50", "Engineering" },
        { @"https://www.wowhead.com/classic/spells/professions/engineering#100", "Engineering" },
        { @"https://www.wowhead.com/classic/spells/professions/engineering#150", "Engineering" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking#50", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking#100", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking#150", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking#200", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/leatherworking#250", "Leatherworking" },
        { @"https://www.wowhead.com/classic/spells/professions/tailoring", "Tailoring" },
        { @"https://www.wowhead.com/classic/spells/professions/tailoring#50", "Tailoring" },
        { @"https://www.wowhead.com/classic/spells/professions/tailoring#100", "Tailoring" },
        { @"https://www.wowhead.com/classic/spells/professions/tailoring#150", "Tailoring" },
        { @"https://www.wowhead.com/classic/spells/professions/tailoring#200", "Tailoring" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing#50", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing#100", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing#150", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing#200", "Blacksmithing" },
        { @"https://www.wowhead.com/classic/spells/professions/blacksmithing#250", "Blacksmithing" },
    };

    internal override string FileName { get => "ProfessionItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.LoadFromWebPages(professionUriList.Keys.ToList(), (uri, doc) =>
        {
            var tableElements = doc.QuerySelectorAll("#lv-spells table .listview-row");

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
