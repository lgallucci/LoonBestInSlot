using System.Net;
using System.Text.RegularExpressions;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class EmblemImporter : LootImporter
{
    private List<string> wowheadUriList = new List<string>
    {
        "https://www.wowhead.com/mop-classic/npc=248108/avatar-of-the-august-celestials#sells",
        "https://www.wowhead.com/mop-classic/npc=248108/avatar-of-the-august-celestials#sells;50",
        "https://www.wowhead.com/mop-classic/npc=248108/avatar-of-the-august-celestials#sells;100",
        "https://www.wowhead.com/mop-classic/npc=248108/avatar-of-the-august-celestials#sells;150",
        "https://www.wowhead.com/mop-classic/npc=248108/avatar-of-the-august-celestials#sells;200",
        "https://www.wowhead.com/mop-classic/npc=64606/commander-oxheart#sells",
        "https://www.wowhead.com/mop-classic/npc=64607/commander-lo-ping#sells",
    };

    private List<string> guideUriList = new List<string>()
    {
    };

    public EmblemImporter(CancellationToken cancellationToken) : base(cancellationToken)
    {
    }

    internal override string FileName { get => "EmblemItemList"; }

    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        //items.Items.Clear();

        await ReadFromItemPages(items, writeToLog);
        //await ReadFromGuidePage(items, writeToLog);
        //await ReadFromAtlasLoot(items, writeToLog);

        return items;
    }

    private Dictionary<int, int> _idSwaps = new Dictionary<int, int>
    {
        {232950, 65374}, //Gale Rouser Belt
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
                        var item = anchorObject.PathName.Replace("/mop-classic/", "/").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", "");
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
                var item = anchorObject.PathName.Replace("/mop-classic/", "/").Replace("/currency=", "").Replace("/item=", "").Replace("/?item=", "");

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
                            item == "3350" ? "August Stone Fragment" :
                            item == "3281" ? "Obsidian Fragment" :
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

    private async Task ReadFromAtlasLoot(DatabaseItems items, Action<string> writeToLog) 
    {
        var vendorPriceFile = @"E:\Blizzard\World of Warcraft\_classic_\Interface\Addons\AtlasLootClassic\Data\VendorPrice.lua";

        var vendorLines = await System.IO.File.ReadAllLinesAsync(vendorPriceFile);
        string pattern = @"\[(?<itemId>\d+)\] = ""(?<emblem>.*)"", -- (?<itemName>.+)";
        Regex regex = new Regex(pattern);
        var foundCata = false;

        foreach(var vendorLine in vendorLines)
        {        
            foundCata = vendorLine.Contains("VENDOR_PRICES_RAW.CATA") || foundCata;

            Match m = regex.Match(vendorLine.Trim());
            if (m.Success && foundCata)
            {
                var itemId = Int32.Parse(m.Groups["itemId"].Value);
                var emblem = m.Groups["emblem"].Value;
                var itemName = m.Groups["itemName"].Value;

                var emblemSplit = emblem.Split(":");
                var currencySource = 
                            emblemSplit[0] == "JusticePoints" ? "Justice Points" :
                            emblemSplit[0] == "ValorPoints" ? "Valor Points" :
                            emblemSplit[0] == "FissureStoneFragment" ? "Fissure Stone Fragment" :
                            "unknown";
                var currencyNumber = emblemSplit[1];

                if (currencySource == "unknown")
                {
                    continue;
                }
                if (items.Items.ContainsKey(itemId))
                {
                    items.Items[itemId].SourceNumber = currencyNumber;
                }
                else 
                {
                    var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
                    {
                        Name = itemName,
                        SourceNumber = currencyNumber,
                        Source = currencySource,
                        SourceLocation = "Emblem Vendor",
                        SourceType = "Dungeon Token",
                        SourceFaction = "B"
                    });
                }
            }
        }

    }
}
