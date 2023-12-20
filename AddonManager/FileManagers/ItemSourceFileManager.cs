using AddonManager.Models;

namespace AddonManager.FileManagers;

public static class ItemSourceFileManager
{
    public static SortedDictionary<int, ItemSource> ReadItemSources()
    {
        SortedDictionary<int, ItemSource> items = new SortedDictionary<int, ItemSource>();

        string[] itemSources = System.IO.File.ReadAllLines(@$"{Constants.AddonPath}\DB\ItemSources.lua");

        foreach (var itemSource in itemSources)
        {
            if (itemSource == "LBIS.ItemSources =" ||
                itemSource == "{" ||
                itemSource == "}" ||
                itemSource == String.Empty ||
                itemSource.Trim().StartsWith("--"))
            {
                continue;
            }

            var openBracket = itemSource.IndexOf("[") + 1;
            var closeBracket = itemSource.IndexOf("]");

            var itemId = Int32.Parse(itemSource.Substring(openBracket, closeBracket - openBracket));

            items.Add(itemId, SplitItemLine(itemId, itemSource));
        }

        return items;
    }

    private static ItemSource SplitItemLine(int itemId, string itemSource)
    {
        var nameIndex = itemSource.IndexOf("Name =");
        var sourceTypeIndex = itemSource.IndexOf("SourceType =");
        var sourceIndex = itemSource.IndexOf("Source =");
        var sourceNumberIndex = itemSource.IndexOf("SourceNumber =");
        var sourceLocationIndex = itemSource.IndexOf("SourceLocation =");
        var sourceFactionIndex = itemSource.IndexOf("SourceFaction =");

        var name = itemSource.Substring(nameIndex, sourceTypeIndex - nameIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceType = itemSource.Substring(sourceTypeIndex, sourceIndex - sourceTypeIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var source = itemSource.Substring(sourceIndex, sourceNumberIndex - sourceIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var sourceNumber = itemSource.Substring(sourceNumberIndex, sourceLocationIndex - sourceNumberIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceLocation = itemSource.Substring(sourceLocationIndex, sourceFactionIndex - sourceLocationIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceFaction = itemSource.Substring(sourceFactionIndex, itemSource.Length - sourceFactionIndex - 3).Split("=")[1].Trim().Trim('"');

        if (string.IsNullOrWhiteSpace(source))
            source = "\"\"";
        else if (Int32.TryParse(source, out int result))
            source = $"\"{source}\"";

        if (string.IsNullOrWhiteSpace(sourceLocation))
            sourceLocation = "\"\"";
        else if (Int32.TryParse(sourceLocation, out int result))
            sourceLocation = $"\"{sourceLocation}\"";

        return new ItemSource
        {
            ItemId = itemId,
            Name = name,
            SourceType = sourceType,
            Source = source,
            SourceNumber = sourceNumber,
            SourceLocation = sourceLocation,
            SourceFaction = sourceFaction
        };
    }

    public static SortedDictionary<int, EnchantSource> ReadEnchantSources()
    {
        SortedDictionary<int, EnchantSource> enchants = new SortedDictionary<int, EnchantSource>();

        string[] enchantSources = System.IO.File.ReadAllLines($@"{Constants.AddonPath}\DB\EnchantSources.lua");

        foreach (var enchantSource in enchantSources)
        {
            if (enchantSource == "LBIS.EnchantSources =" ||
                enchantSource == "{" ||
                enchantSource == "}" ||
                enchantSource == String.Empty ||
                enchantSource.Trim().StartsWith("--"))
            {
                continue;
            }

            var openBracket = enchantSource.IndexOf("[") + 1;
            var closeBracket = enchantSource.IndexOf("]");

            var enchantId = Int32.Parse(enchantSource.Substring(openBracket, closeBracket - openBracket));

            enchants.Add(enchantId, SplitEnchantLine(enchantId, enchantSource.Trim()));
        }

        return enchants;
    }

    private static EnchantSource SplitEnchantLine(int enchantId, string enchantSource)
    {
        var nameIndex = enchantSource.IndexOf("Name =");
        var designIndex = enchantSource.IndexOf("DesignId =");
        var scrollIndex = enchantSource.IndexOf("ScrollId =");
        var sourceIndex = enchantSource.IndexOf("Source =");
        var sourceLocationIndex = enchantSource.IndexOf("SourceLocation =");
        var textureIdIndex = enchantSource.IndexOf("TextureId =");

        var name = enchantSource.Substring(nameIndex, designIndex - nameIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var designId = enchantSource.Substring(designIndex, scrollIndex - designIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var scrollId = enchantSource.Substring(scrollIndex, sourceIndex - scrollIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var source = enchantSource.Substring(sourceIndex, sourceLocationIndex - sourceIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceLocation = enchantSource.Substring(sourceLocationIndex, textureIdIndex - sourceLocationIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var textureId = enchantSource.Substring(textureIdIndex, enchantSource.Length - textureIdIndex - 3).Split("=")[1].Trim().Trim('"');

        if (string.IsNullOrWhiteSpace(source))
            source = "\"\"";
        else if (Int32.TryParse(source, out int result))
            source = $"\"{source}\"";

        if (string.IsNullOrWhiteSpace(sourceLocation))
            sourceLocation = "\"\"";
        else if (Int32.TryParse(sourceLocation, out int result))
            sourceLocation = $"\"{sourceLocation}\"";

        return new EnchantSource
        {
            EnchantId = enchantId,
            Name = name,
            DesignId = Int32.Parse(designId),
            ScrollId = Int32.Parse(scrollId),
            Source = source,
            SourceLocation = sourceLocation,
            TextureId = textureId
        };
    }

    public static SortedDictionary<int, TierSource> ReadTierSources()
    {
        SortedDictionary<int, TierSource> tiers = new SortedDictionary<int, TierSource>();

        string[] tierSources = System.IO.File.ReadAllLines($@"{Constants.AddonPath}\DB\TierSources.lua");

        foreach (var tierSource in tierSources)
        {
            if (tierSource == "LBIS.TierSources =" ||
                tierSource == "{" ||
                tierSource == "}" ||
                tierSource == String.Empty ||
                tierSource.Trim().StartsWith("--"))
            {
                continue;
            }

            var openBracket = tierSource.IndexOf("[") + 1;
            var closeBracket = tierSource.IndexOf("]");

            var tierId = Int32.Parse(tierSource.Substring(openBracket, closeBracket - openBracket));

            var openCurlies = tierSource.IndexOf("{") + 1;
            var closeCurlies = tierSource.IndexOf("}") + 1;

            var itemIds = tierSource.Substring(openCurlies, closeCurlies - openCurlies).Split(",");
            var tier = new TierSource { TierId = tierId };

            foreach(var itemId in itemIds)
            {
                tier.ItemIds.Add(Int32.Parse(itemId.Trim()));
            }
        }

        return tiers;
    }

    public static void WriteItemSources(SortedDictionary<int, ItemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.ItemSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"SourceType = {source.Value.SourceType}, " +
                    $"Source = {source.Value.Source}, " +
                    $"SourceNumber = \"{source.Value.SourceNumber}\", " +
                    $"SourceLocation = {source.Value.SourceLocation}, " +
                    $"SourceFaction = \"{source.Value.SourceFaction}\" }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\ItemSources.lua", itemSourceSB.ToString());
    }

    public static void WriteEnchantSources(SortedDictionary<int, EnchantSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.EnchantSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"DesignId = \"{source.Value.DesignId}\", " +
                    $"ScrollId = \"{source.Value.ScrollId}\", " +
                    $"Source = \"{source.Value.Source}\", " +
                    $"SourceLocation = \"{source.Value.SourceLocation}\", " +
                    $"TextureId = \"{source.Value.TextureId}\" }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\EnchantSources.lua", itemSourceSB.ToString());
    }

    public static void WriteTierSources(SortedDictionary<int, TierSource> sources)
    {
        StringBuilder tierSourceSB = new StringBuilder();

        tierSourceSB.AppendLine("LBIS.TierSources =");
        tierSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            tierSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                string.Join(", ", source.Value.ItemIds) +
                " },");
        }
        tierSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\TierSources.lua", tierSourceSB.ToString());
    }
}
