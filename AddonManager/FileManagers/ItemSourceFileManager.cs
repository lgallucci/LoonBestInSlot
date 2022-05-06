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
            if (itemSource == "LoonBestInSlot.ItemSources =" ||
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
                SourceLocation = sourceSplit[7]
            });
        }

        return items;
    }

    public void WriteItemSources(SortedDictionary<int, ItemSource> sources)
    {
        StringBuilder itemSourceSB = new StringBuilder();

        itemSourceSB.AppendLine("LoonBestInSlot.ItemSources =");
        itemSourceSB.AppendLine("{");
        foreach(var source in sources)
        {
            itemSourceSB.AppendLine($"    [{source.Key}] = {{ " +
                $"Name = \"{source.Value.Name}\", " +
                $"SourceType = \"{source.Value.SourceType}\", " +
                $"Source = \"{source.Value.Source}\", " +
                $"SourceLocation = \"{source.Value.SourceLocation}\" }},");
        }
        itemSourceSB.AppendLine("}");
        System.IO.File.WriteAllText(Constants.AddonPath + "ItemSources.lua", itemSourceSB.ToString());
    }
}
