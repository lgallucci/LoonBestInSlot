using System.Globalization;
using System.IO;
using AddonManager.Models;
using AngleSharp.Dom;
using AngleSharp.Html.Dom;
using CsvHelper;
using CsvHelper.Configuration.Attributes;
using static System.Net.WebRequestMethods;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private Dictionary<string, string> wowheadUriList = new Dictionary<string, string>
    {
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10", "Archavon the Stone Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10;50", "Archavon the Stone Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n10;100", "Archavon the Stone Watcher, Vault of Archavon (10)" },        
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25;50", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=31125/archavon-the-stone-watcher#drops;mode:n25;100", "Archavon the Stone Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10;50", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n10;100", "Emalon the Storm Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25;50", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33993/emalon-the-storm-watcher#drops;mode:n25;100", "Emalon the Storm Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=35013/koralon-the-flame-watcher#drops;mode:n10", "Koralon the Flame Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=35013/koralon-the-flame-watcher#drops;mode:n25", "Koralon the Flame Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=38433/toravon-the-ice-watcher#drops;mode:n10", "Koralon the Flame Watcher, Vault of Archavon (10)" },
        { @"https://www.wowhead.com/wotlk/npc=38433/toravon-the-ice-watcher#drops;mode:n25", "Koralon the Flame Watcher, Vault of Archavon (25)" },
        { @"https://www.wowhead.com/wotlk/npc=15956/anubrekhan#drops;mode:n25", "Anub'Rekhan, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15953/grand-widow-faerlina#drops;mode:n25", "Grand Widow Faerlina, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15952/maexxna#drops;mode:n25", "Maexxna, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15954/noth-the-plaguebringer#drops;mode:n25", "Noth the Plaguebringer, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15936/heigan-the-unclean#drops;mode:n25", "Heigan the Unclean, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=16011/loatheb#drops;mode:n25", "Loatheb, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=16061/instructor-razuvious#drops;mode:n25", "Instructor Razuvious, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=16060/gothik-the-harvester#drops;mode:n25", "Gothik the Harvester, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=16064/thane-korthazz#drops;mode:n25", "Four Horsemen Chest, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=16028/patchwerk#drops;mode:n25", "Patchwerk, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15931/grobbulus#drops;mode:n25", "Grobbulus, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25", "Gluth, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;50", "Gluth, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;100", "Gluth, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15932/gluth#drops;mode:n25;150", "Gluth, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15928/thaddius#drops;mode:n25", "Thaddius, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15989/sapphiron#drops;mode:n25", "Sapphiron, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=15990/kelthuzad#drops;mode:n25", "Kel'Thuzad, Naxxramas" },
        { @"https://www.wowhead.com/wotlk/npc=28860/sartharion#drops;mode:n25", "Sartharion, The Obsidian Sanctum" },
        { @"https://www.wowhead.com/wotlk/npc=28859/malygos#drops;mode:n25", "Malygos, The Eye of Eternity" },
        { @"https://www.wowhead.com/wotlk/npc=33113/flame-leviathan#drops;mode:n10", "Flame Leviathan, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33113/flame-leviathan#drops;mode:n25", "Flame Leviathan, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33186/razorscale#drops;mode:n10", "Razorscale, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33186/razorscale#drops;mode:n25", "Razorscale, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33118/ignis-the-furnace-master#drops;mode:n10", "Ignis the Furnace Master, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33118/ignis-the-furnace-master#drops;mode:n25", "Ignis the Furnace Master, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33293/xt-002-deconstructor#drops;mode:n10", "XT-002 Deconstructor, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33293/xt-002-deconstructor#drops;mode:n25", "XT-002 Deconstructor, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32867/steelbreaker#drops;mode:n10", "Assembly of Iron, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32927/runemaster-molgeim#drops;mode:n10", "Assembly of Iron, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32857/stormcaller-brundir#drops;mode:n10", "Assembly of Iron, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32867/steelbreaker#drops;mode:n25", "Assembly of Iron, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32927/runemaster-molgeim#drops;mode:n25", "Assembly of Iron, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32857/stormcaller-brundir#drops;mode:n25", "Assembly of Iron, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32930/kologarn#drops;mode:n10", "Kologarn, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32930/kologarn#drops;mode:n25", "Kologarn, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33515/auriaya#drops;mode:n10", "Auriaya, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33515/auriaya#drops;mode:n25", "Auriaya, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32845/hodir#drops;mode:n10", "Hodir, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32845/hodir#drops;mode:n25", "Hodir, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32865/thorim#drops;mode:n10", "Thorim, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32865/thorim#drops;mode:n25", "Thorim, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32906/freya#drops;mode:n10", "Freya, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32906/freya#drops;mode:n25", "Freya, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33350/mimiron#drops;mode:n10", "Mimiron, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33350/mimiron#drops;mode:n25", "Mimiron, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33271/general-vezax#drops;mode:n10", "General Vezax, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33271/general-vezax#drops;mode:n25", "General Vezax, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=33288/yogg-saron#drops;mode:n10", "Yogg-Saron, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=33288/yogg-saron#drops;mode:n25", "Yogg-Saron, Ulduar (25)" },
        { @"https://www.wowhead.com/wotlk/npc=32871/algalon-the-observer#drops;mode:n10", "Algalon the Observer, Ulduar (10)" },
        { @"https://www.wowhead.com/wotlk/npc=32871/algalon-the-observer#drops;mode:n25", "Algalon the Observer, Ulduar (25)" }
    };

    private Dictionary<int, DatabaseItem> trashDrops = new Dictionary<int, DatabaseItem>
    {
        { 40406, new DatabaseItem() { Name = "Inevitable Defeat", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40407, new DatabaseItem() { Name = "Silent Crusader", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40408, new DatabaseItem() { Name = "Haunting Call", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40410, new DatabaseItem() { Name = "Shadow of the Ghoul", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40412, new DatabaseItem() { Name = "Ousted Bead Necklace", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40409, new DatabaseItem() { Name = "Boots of the Escaped Captive", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
        { 40414, new DatabaseItem() { Name = "Shoulderguards of the Undaunted", Source = "Trash Mobs", SourceLocation = "Naxxramas", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },

         { 46347, new DatabaseItem() { Name = "Cloak of the Dormant Blaze", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46341, new DatabaseItem() { Name = "Drape of the Spellweaver", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46343, new DatabaseItem() { Name = "Fervor of the Protectorate", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46344, new DatabaseItem() { Name = "Iceshear Mantle", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46346, new DatabaseItem() { Name = "Boots of Unsettled Prey", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46351, new DatabaseItem() { Name = "Bloodcrush Cudgel", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46340, new DatabaseItem() { Name = "Adamant Handguards", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46345, new DatabaseItem() { Name = "Bracers of Righteous Reformation", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46342, new DatabaseItem() { Name = "Golemheart Longbow", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46339, new DatabaseItem() { Name = "Mimiron's Repeater", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 46350, new DatabaseItem() { Name = "Pillar of Fortitude", Source = "Trash Mobs", SourceLocation = "Ulduar (10)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },

         { 45541, new DatabaseItem() { Name = "Shroud of Alteration", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45539, new DatabaseItem() { Name = "Pendant of Focused Energies", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45538, new DatabaseItem() { Name = "Titanstone Pendant", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45540, new DatabaseItem() { Name = "Bladebearer's Signet", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45549, new DatabaseItem() { Name = "Grips of Chaos", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45548, new DatabaseItem() { Name = "Belt of the Sleeper", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45547, new DatabaseItem() { Name = "Relic Hunter's Cord", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45544, new DatabaseItem() { Name = "Leggings of the Tortured Earth", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45543, new DatabaseItem() { Name = "Shoulders of Misfortune", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45605, new DatabaseItem() { Name = "Daschal's Bite", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
         { 45542, new DatabaseItem() { Name = "Greaves of the Stonewarder", Source = "Trash Mobs", SourceLocation = "Ulduar (25)", SourceNumber = "0", SourceType = "Drop", SourceFaction = "B"} },
    };

    internal override string FileName { get => "RaidItemList"; }
    internal override async Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        items.Items.Clear();

        await Common.ReadWowheadItemList(wowheadUriList.Keys.ToList(), (row, itemId, itemName) =>
        {
            var success = false;
            var itemSource = "";
            var itemNumber = "";
            var itemSourceLocation = "";
            var sourceFaction = "";

            Common.RecursiveBoxSearch(row.Children[10], (anchorObject) =>
            {
                var item = ((IHtmlAnchorElement)anchorObject).PathName.Replace("/wotlk", "").Replace("/item=", "");

                var itemIdIndex = item.IndexOf("/");
                if (itemIdIndex == -1)
                    itemIdIndex = item.IndexOf("&");

                if (itemIdIndex > -1)
                {
                    item = item.Substring(0, itemIdIndex);

                    success = int.TryParse(item, out var itemInteger);

                    if (success)
                    {
                        if (string.IsNullOrWhiteSpace(itemSource))
                            itemSource = ((IHtmlAnchorElement)anchorObject).TextContent;
                        else
                            itemSource = $"{itemSource} & {((IHtmlAnchorElement)anchorObject).TextContent}";

                        if (string.IsNullOrWhiteSpace(itemNumber))
                            itemNumber = anchorObject.TextContent;
                        else
                            itemNumber = $"{itemNumber} & {anchorObject.TextContent}";

                        itemSourceLocation = "Emblem Vendor";
                    }
                }
                return success;
            });

            sourceFaction = "B";
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
            var successfulAdd = items.Items.TryAdd(itemId, new DatabaseItem
            {
                Name = itemName,
                SourceNumber = itemNumber,
                Source = itemSource,
                SourceLocation = itemSourceLocation,
                SourceType = "Drop",
                SourceFaction = sourceFaction
            });
        }, writeToLog);

        return items;
    }
}
