using System.Net;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;50",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;100",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;150",
        "https://www.wowhead.com/cata/npc=44245/faldren-tillsdale#sells;200",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;50",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;100",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;150",
        "https://www.wowhead.com/cata/npc=46556/jamusvaz#sells;200",
        "https://www.wowhead.com/cata/npc=44246/magatha-silverton#sells",
        "https://www.wowhead.com/cata/npc=44246/magatha-silverton#sells;50",
        "https://www.wowhead.com/cata/npc=46555/gunra#sells",
        "https://www.wowhead.com/cata/npc=46555/gunra#sells;50",
    };

    private List<string> guideUriList = new List<string>()
    {
        "https://www.wowhead.com/cata/guide/dungeons/elemental-rune-protocol-inferno-dungeons-overview",
    };

    public EmblemImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        //await ReadFromItemPages(items, writeToLog);
        await ReadFromGuidePage(items, writeToLog);

        return items;
    }

    private Dictionary<int, int> _idSwaps = new Dictionary<int, int>
    {
        {232950, 65374}, //Gale Rouser Belt
        {232951, 65384}, //Gale Rouser Leggings
        {232973, 65371}, //Wind Stalker Belt
        {232974, 65381}, //Wind Stalker Leggings
        {232965, 65376}, //Soul Breath Belt
        {232966, 65383}, //Soul Breath Leggings
        {232948, 69885}, //Cloudburst Necklace
        {232956, 69880}, //Mistral Pendant
        {232958, 69883}, //Permafrost Choker
        {232960, 69882}, //Planetary Amulet
        {232949, 65382}, //Cloudburst Ring
        {232954, 65367}, //Mistral Circle
        {232959, 65372}, //Permafrost Signet
        {232961, 65373}, //Planetary Band
        {232947, 69879}, //Cloudburst Cloak
        {232955, 69884}, //Mistral Drape
        {232957, 69878}, //Permafrost Cape
        {232962, 69881}, //Planetary Drape
        {232952, 65377}, //Lightning Well Belt
        {232953, 65386}, //Lightning Well Legguards
        {232967, 65368}, //Star Chaser Belt
        {232968, 65378}, //Star Chaser Legguards
        {232963, 65369}, //Sky Strider Belt
        {232964, 65379}, //Sky Strider Greaves
        {232969, 65375}, //Tempest Keeper Belt
        {232970, 65385}, //Tempest Keeper Leggings
        {232971, 65370}, //Thunder Wall Belt
        {232972, 65380}, //Thunder Wall Greaves
    };

    private async Task ReadFromGuidePage(DatabaseItems items, Action<string> writeToLog)
    {
        await Common.LoadFromWebPages(guideUriList, (uri, doc) =>
        {
            var currencySourceLocation = "Emblem Vendor";
            var sourceFaction = "B";
            var currencyNumber = "-1";

            var tables = doc.QuerySelectorAll(".markup-table-wrapper table");

            foreach(IHtmlTableElement table in tables)
            {
                if (table.Rows[0].Cells[0].TextContent != "Item")
                {
                    continue;
                }

                foreach(var row in table.Rows)
                {
                    Common.RecursiveBoxSearch(row, (anchorObject) => 
                    {
                        var item = anchorObject.PathName.Replace("/cata/", "/").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", "");
                        var itemName = anchorObject.TextContent.Trim();
                        var itemId = 0;
                        var itemIdIndex = item.IndexOf("/");
                        if (itemIdIndex == -1)
                            itemIdIndex = item.IndexOf("&");
                        item = item.Substring(0, itemIdIndex);
                        int.TryParse(item, out itemId);

                        if (_idSwaps.ContainsKey(itemId))
                        {
                            itemId = _idSwaps[itemId];
                        }

                        currencyNumber = row.Cells[2].TextContent;

                        var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                        {
                            Name = itemName,
                            SourceNumber = currencyNumber,
                            Source = "Fissure Stone Fragment",
                            SourceLocation = currencySourceLocation,
                            SourceType = "Dungeon Token",
                            SourceFaction = sourceFaction
                        });

                        return successfulAdd;
                    });
                }
            }
        }, writeToLog);
    }

    private async Task ReadFromItemPages(DatabaseItems items, Action<string> writeToLog)
    {
        await Common.ReadWowheadSellsList(wowheadUriList.Where(u => u.Contains("wowhead")), (uri, row, itemId, item) =>
        {
            var success = false;
            var currencySource = "";
            var currencyNumber = "";
            var currencySourceLocation = "Emblem Vendor";
            var sourceFaction = "B";
            var itemName = item.TextContent;

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = anchorObject.PathName.Replace("/cata/", "/").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", "");

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
                            item == "395" ? "Justice Points" :
                            item == "396" ? "Valor Points" :
                            item == "2589" ? "Sidereal Essence" :
                            item == "2711" ? "Defiler's Scourgestone" :
                            item == "3148" ? "Fissure Stone Fragment" :
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

            if (!currencySource.Contains("unknown"))
            {
                var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                {
                    Name = itemName,
                    SourceNumber = currencyNumber,
                    Source = currencySource,
                    SourceLocation = currencySourceLocation,
                    SourceType = "Dungeon Token",
                    SourceFaction = sourceFaction
                });
            }
        }, writeToLog, _importCancelToken);
    }
}
