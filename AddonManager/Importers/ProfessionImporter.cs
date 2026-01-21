﻿using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;

namespace AddonManager.Importers;

public class ProfessionImporter : LootImporter
{
    private Dictionary<string, string> professionUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/tbc/skill=202/engineering#recipes", "Engineering" },
        { @"https://www.wowhead.com/tbc/skill=202/engineering#recipes;50", "Engineering" },
        { @"https://www.wowhead.com/tbc/skill=202/engineering#recipes;100", "Engineering" },
        { @"https://www.wowhead.com/tbc/skill=202/engineering#recipes;150", "Engineering" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;50", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;100", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;150", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;200", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;250", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;300", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=165/leatherworking#recipes;350", "Leatherworking" },
        { @"https://www.wowhead.com/tbc/skill=197/tailoring#recipes", "Tailoring" },
        { @"https://www.wowhead.com/tbc/skill=197/tailoring#recipes;50", "Tailoring" },
        { @"https://www.wowhead.com/tbc/skill=197/tailoring#recipes;100", "Tailoring" },
        { @"https://www.wowhead.com/tbc/skill=197/tailoring#recipes;150", "Tailoring" },
        { @"https://www.wowhead.com/tbc/skill=197/tailoring#recipes;200", "Tailoring" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes;50", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes;100", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes;150", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes;200", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=164/blacksmithing#recipes;250", "Blacksmithing" },
        { @"https://www.wowhead.com/tbc/skill=773/inscription#recipes", "Inscription"},
        { @"https://www.wowhead.com/tbc/skill=773/inscription#recipes;50", "Inscription" },
        { @"https://www.wowhead.com/tbc/skill=773/inscription#recipes;100", "Inscription" },
        { @"https://www.wowhead.com/tbc/skill=171/alchemy#recipes", "Alchemy" },
        { @"https://www.wowhead.com/tbc/skill=171/alchemy#recipes;50", "Alchemy" },
        { @"https://www.wowhead.com/tbc/skill=171/alchemy#recipes;100", "Alchemy" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;50", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;100", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;150", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;200", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;250", "Jewelcrafting" },
        { @"https://www.wowhead.com/tbc/skill=755/jewelcrafting#recipes;300", "Jewelcrafting" }
    };
    private int minSkillLevel = 300;
    private int minQuality = 2;
    
    public ProfessionImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

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

                var skillSplit = element.Children[4].TextContent.Split('(', ')');
                var skillRequired = skillSplit.Length > 1 ? skillSplit[1] : "0";
                if (skillRequired == "??")
                    skillRequired = "505";
                if (int.Parse(skillRequired) < minSkillLevel)
                        continue;
                int quality = 0;
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
                        quality = GetItemQualityFromAnchor(anchor);
                    }
                });

                if (quality < minQuality)
                    continue;

                var sourceElement = element.Children[1].QuerySelector(".listview-name-info");
                var sourceFaction = "B";
                if (sourceElement != null)
                {
                    sourceFaction = sourceElement.TextContent == "Horde" ? "H" : sourceElement.TextContent == "Alliance" ? "A" : "B";
                }

                name = element.Children[1].TextContent;

                if (itemId > 0 && !items.Items.ContainsKey(itemId))
                    items.Items.Add(itemId, new DatabaseItem
                    {
                        Name = name,
                        SourceType = "Profession",
                        Source = $"{professionUriList[uri]} ({skillRequired})",
                        SourceNumber = "0",
                        SourceLocation = spellId.ToString(),
                        SourceFaction = sourceFaction
                    });
            }
        }, writeToLog, _importCancelToken);

        return items;
    }

    private int GetItemQualityFromAnchor(IHtmlAnchorElement anchor)
    {
        var classNames = anchor.ClassName.Split(' ');
        foreach (var className in classNames)
        {
            if (className.StartsWith("q"))
            {
                int quality;
                if (int.TryParse(className.Substring(1), out quality))
                {
                    return quality;
                }
            }
        }
        return 0;
    }

    private int GetIdFromAnchor(IHtmlAnchorElement anchor, string anchorType)
    {
        var item = anchor.PathName.Replace("/tbc", "").Replace(anchorType, "");
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
        if (element == null)
            return;

        if (element is IHtmlAnchorElement && element.ClassName != "toggler-off")
            anchorAction((IHtmlAnchorElement)element);
        else
        {
            foreach (var child in element.Children)
            {
                FindAllAnchors(child, anchorAction);
            }
        }
    }
}