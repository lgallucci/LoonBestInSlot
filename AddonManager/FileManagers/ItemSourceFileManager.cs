using System.Threading;
using System.Xml.Linq;
using AddonManager.Models;

namespace AddonManager.FileManagers;

public static class ItemSourceFileManager
{
    public static SortedDictionary<int, ItemSource> ReadItemSources(string sourcesFile = @$"..\..\..\..\LoonBestInSlot\ItemSources.lua")
    {
        SortedDictionary<int, ItemSource> items = new SortedDictionary<int, ItemSource>();

        string[] itemSources = System.IO.File.ReadAllLines(sourcesFile);

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

    public static SortedDictionary<int, ItemSource> ReadTBCItemSources(string sourcesFile = @$"..\..\..\..\AddonManager\ItemDatabase\TBCItemSources.lua")
    {
        SortedDictionary<int, ItemSource> items = new SortedDictionary<int, ItemSource>();

        string[] itemSources = System.IO.File.ReadAllLines(sourcesFile);

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

            var sourceText = $"\"{sourceSplit[5]}\"";
            if (!Int32.TryParse(sourceSplit[5], out int result))
                sourceText = $"LBIS.L[\"{sourceSplit[5]}\"]";

            items.Add(itemId, new ItemSource
            {
                ItemId = itemId,
                Name = sourceSplit[1],
                SourceType = sourceSplit[3],
                Source = sourceText,
                SourceNumber = sourceSplit[7],
                SourceLocation = sourceSplit[9]
            });
        }

        return items;
    }

    public static SortedDictionary<int, GemSource> ReadGemSources(string sourcesFile = @$"..\..\..\..\LoonBestInSlot\GemSources.lua")
    {
        SortedDictionary<int, GemSource> gems = new SortedDictionary<int, GemSource>();

        string[] gemSources = System.IO.File.ReadAllLines(sourcesFile);

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
            var sourceSplit = gemSource.Split("\"");
            var designId = string.IsNullOrWhiteSpace(sourceSplit[3]) ? -1 : Int32.Parse(sourceSplit[3]);
            gems.Add(gemId, new GemSource
            {
                GemId = gemId,
                Name = sourceSplit[1],
                DesignId = designId,
                Source = sourceSplit[5],
                SourceLocation = sourceSplit[7]
            });
        }

        return gems;
    }

    public static SortedDictionary<int, EnchantSource> ReadEnchantSources(string sourcesFile = @$"..\..\..\..\LoonBestInSlot\EnchantSources.lua")
    {
        SortedDictionary<int, EnchantSource> enchants = new SortedDictionary<int, EnchantSource>();

        string[] enchantSources = System.IO.File.ReadAllLines(sourcesFile);

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
            var sourceSplit = enchantSource.Split("\"");
            var designId = string.IsNullOrWhiteSpace(sourceSplit[3]) ? -1 : Int32.Parse(sourceSplit[3]);
            enchants.Add(enchantId, new EnchantSource
            {
                EnchantId = enchantId,
                DesignId = designId,
                Name = sourceSplit[1],
                Source = sourceSplit[5],
                SourceLocation = sourceSplit[7],
                IsSpell = bool.Parse(sourceSplit[9])
            });
        }

        return enchants;
    }

    public static void WriteItemSources(SortedDictionary<int, ItemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.ItemSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            string sourceLocation;
            if (source.Value.SourceLocation.StartsWith("LBIS.L["))
                sourceLocation = $"{source.Value.SourceLocation}";
            else if (string.IsNullOrWhiteSpace(source.Value.SourceLocation) || 
                Int32.TryParse(source.Value.SourceLocation, out int value2))
                sourceLocation = $"\"{source.Value.SourceLocation}\"";
            else
                sourceLocation = $"LBIS.L[\"{source.Value.SourceLocation}\"]";

            string sourceType;
            if (source.Value.SourceType.StartsWith("LBIS.L["))
                sourceType = $"{source.Value.SourceType}";
            else 
                sourceType = $"LBIS.L[\"{source.Value.SourceType}\"]";

            var sourceText = string.IsNullOrWhiteSpace(source.Value.Source) ? "\"\"" : source.Value.Source;

            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"SourceType = {sourceType}, " +
                    $"Source = {sourceText}, " +
                    $"SourceNumber = \"{source.Value.SourceNumber}\", " +
                    $"SourceLocation = {sourceLocation} }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "ItemSources.lua", itemSourceSB.ToString());
    }

    public static void WriteGemSources(SortedDictionary<int, GemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.GemSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            string sourceText = string.Empty, sourceLocation = string.Empty;
            if (string.IsNullOrWhiteSpace(source.Value.Source) || Int32.TryParse(source.Value.Source, out int value))
                sourceText = $"\"{source.Value.Source}\"";
            else
                sourceText = $"LBIS.L[\"{source.Value.Source}\"]";

            if (string.IsNullOrWhiteSpace(source.Value.SourceLocation) || Int32.TryParse(source.Value.SourceLocation, out int value2))
                sourceLocation = $"\"{source.Value.SourceLocation}\"";
            else
                sourceLocation = $"LBIS.L[\"{source.Value.SourceLocation}\"]";

            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"DesignId = \"{source.Value.DesignId}\", " +
                    $"Source = {sourceText}, " +
                    $"SourceLocation = {sourceLocation} }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "GemSources.lua", itemSourceSB.ToString());
    }

    public static void WriteEnchantSources(SortedDictionary<int, EnchantSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.EnchantSources =");
        itemSourceSB.AppendLine("{");
        foreach (var source in sources)
        {
            string sourceText = string.Empty, sourceLocation = string.Empty;
            if (string.IsNullOrWhiteSpace(source.Value.Source) || Int32.TryParse(source.Value.Source, out int value))
                sourceText = $"\"{source.Value.Source}\"";
            else
                sourceText = $"LBIS.L[\"{source.Value.Source}\"]";

            if (string.IsNullOrWhiteSpace(source.Value.SourceLocation) || Int32.TryParse(source.Value.SourceLocation, out int value2))
                sourceLocation = $"\"{source.Value.SourceLocation}\"";
            else
                sourceLocation = $"LBIS.L[\"{source.Value.SourceLocation}\"]";

            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"DesignId = \"{source.Value.DesignId}\", " +
                    $"Source = {sourceText}, " +
                    $"SourceLocation = {sourceLocation}, " +
                    $"IsSpell = \"{source.Value.IsSpell.ToString()}\" }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "EnchantSources.lua", itemSourceSB.ToString());
    }
}
