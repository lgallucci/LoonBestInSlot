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

        var name = itemSource.Substring(nameIndex, sourceTypeIndex - nameIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceType = itemSource.Substring(sourceTypeIndex, sourceIndex - sourceTypeIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var source = itemSource.Substring(sourceIndex, sourceNumberIndex - sourceIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var sourceNumber = itemSource.Substring(sourceNumberIndex, sourceLocationIndex - sourceNumberIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var sourceLocation = itemSource.Substring(sourceLocationIndex, itemSource.Length - sourceLocationIndex - 3).Split("=")[1].Trim().Trim('"');

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
            SourceLocation = sourceLocation
        };
    }

    public static SortedDictionary<int, ItemSource> ReadTBCItemSources()
    {
        SortedDictionary<int, ItemSource> items = new SortedDictionary<int, ItemSource>();

        string[] itemSources = System.IO.File.ReadAllLines(@$"{Constants.ItemDbPath}\TBCItemSources.lua");

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
            var sourceSplit = itemSource.Split("\"");

            items.Add(itemId, new ItemSource
            {
                ItemId = itemId,
                Name = sourceSplit[1],
                SourceType = sourceSplit[3],
                Source = sourceSplit[5],
                SourceNumber = sourceSplit[7],
                SourceLocation = sourceSplit[9]
            });
        }

        return items;
    }

    public static SortedDictionary<int, GemSource> ReadGemSources()
    {
        SortedDictionary<int, GemSource> gems = new SortedDictionary<int, GemSource>();

        string[] gemSources = System.IO.File.ReadAllLines($@"{Constants.AddonPath}\DB\GemSources.lua");

        foreach (var gemSource in gemSources)
        {
            if (gemSource == "LBIS.GemSources =" ||
                gemSource == "{" ||
                gemSource == "}" ||
                gemSource == String.Empty ||
                gemSource.Trim().StartsWith("--"))
            {
                continue;
            }

            var openBracket = gemSource.IndexOf("[") + 1;
            var closeBracket = gemSource.IndexOf("]");

            var gemId = Int32.Parse(gemSource.Substring(openBracket, closeBracket - openBracket));

            gems.Add(gemId, SplitGemLine(gemId, gemSource));
        }

        return gems;
    }

    private static GemSource SplitGemLine(int gemId, string gemSource)
    {
        var nameIndex = gemSource.IndexOf("Name =");
        var designIndex = gemSource.IndexOf("DesignId =");
        var sourceIndex = gemSource.IndexOf("Source =");
        var sourceLocationIndex = gemSource.IndexOf("SourceLocation =");

        var name = gemSource.Substring(nameIndex, designIndex - nameIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var designId = gemSource.Substring(designIndex, sourceIndex - designIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var source = gemSource.Substring(sourceIndex, sourceLocationIndex - sourceIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var sourceLocation = gemSource.Substring(sourceLocationIndex, gemSource.Length - sourceLocationIndex - 3).Split("=")[1].Trim().Trim('"');

        if (string.IsNullOrWhiteSpace(source))
            source = "\"\"";
        else if (Int32.TryParse(source, out int result))
            source = $"\"{source}\"";

        if (string.IsNullOrWhiteSpace(sourceLocation))
            sourceLocation = "\"\"";
        else if (Int32.TryParse(sourceLocation, out int result))
            sourceLocation = $"\"{sourceLocation}\"";

        return new GemSource
        {
            GemId = gemId,
            Name = name,
            DesignId = Int32.Parse(designId),
            Source = source,
            SourceLocation = sourceLocation
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
        var isSpellIndex = enchantSource.IndexOf("IsSpell =");

        var name = enchantSource.Substring(nameIndex, designIndex - nameIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var designId = enchantSource.Substring(designIndex, scrollIndex - designIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var scrollId = enchantSource.Substring(scrollIndex, sourceIndex - scrollIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var source = enchantSource.Substring(sourceIndex, sourceLocationIndex - sourceIndex).Split("=")[1].Trim().Trim(',').Trim('"'); ;
        var sourceLocation = enchantSource.Substring(sourceLocationIndex, isSpellIndex - sourceLocationIndex).Split("=")[1].Trim().Trim(',').Trim('"');
        var isSpell = enchantSource.Substring(isSpellIndex, enchantSource.Length - isSpellIndex - 3).Split("=")[1].Trim().Trim('"');

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
            IsSpell = bool.Parse(isSpell)
        };
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
                    $"SourceLocation = {source.Value.SourceLocation} }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\ItemSources.lua", itemSourceSB.ToString());
    }

    public static void WriteGemSources(SortedDictionary<int, GemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.GemSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"DesignId = \"{source.Value.DesignId}\", " +
                    $"Source = {source.Value.Source}, " +
                    $"SourceLocation = {source.Value.SourceLocation} }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\GemSources.lua", itemSourceSB.ToString());
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
                    $"Source = {source.Value.Source}, " +
                    $"SourceLocation = {source.Value.SourceLocation}, " +
                    $"IsSpell = \"{source.Value.IsSpell.ToString()}\" }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "\\DB\\EnchantSources.lua", itemSourceSB.ToString());
    }
}
