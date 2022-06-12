using AddonManager.Models;

namespace AddonManager.FileManagers;

public class ItemSourceFileManager
{
    public SortedDictionary<int, ItemSource> ReadItemSources()
    {
        SortedDictionary<int, ItemSource> items = new SortedDictionary<int, ItemSource>();

        string[] itemSources = System.IO.File.ReadAllLines(@$"..\..\..\..\LoonBestInSlot\ItemSources.lua");

        foreach (var itemSource in itemSources)
        {
            if (itemSource == "LBIS.ItemSources =" ||
                itemSource == "{" ||
                itemSource == "}"||
                itemSource == String.Empty ||
                itemSource.Trim().StartsWith("--"))
            {
                continue;
            }

            var openBracket = itemSource.IndexOf("[")+1;
            var closeBracket = itemSource.IndexOf("]");

            var itemId = Int32.Parse(itemSource.Substring(openBracket, closeBracket- openBracket));
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

    public void WriteItemSources(SortedDictionary<int, ItemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LBIS.ItemSources =");
        itemSourceSB.AppendLine("{");
        foreach(var source in sources)
        {
            string sourceText = string.Empty, sourceLocation = string.Empty;
            if (Int32.TryParse(source.Value.Source, out int value))
                sourceText = $"\"{source.Value.Source}\"";
            else
                sourceText = $"LBIS.L[\"{source.Value.Source}\"]";

            if (string.IsNullOrWhiteSpace(source.Value.SourceLocation) || Int32.TryParse(source.Value.SourceLocation, out int value2))
                sourceLocation = $"\"{source.Value.SourceLocation}\"";
            else
                sourceLocation = $"LBIS.L[\"{source.Value.SourceLocation}\"]";


            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                    $"Name = \"{source.Value.Name}\", " +
                    $"SourceType = LBIS.L[\"{source.Value.SourceType}\"], " +
                    $"Source = {sourceText}, " +
                    $"SourceNumber = \"{source.Value.SourceNumber}\", " +
                    $"SourceLocation = {sourceLocation} }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "ItemSources.lua", itemSourceSB.ToString());
    }
}
