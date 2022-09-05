using Newtonsoft.Json;
using static AddonManager.Models.EmblemConverter;
using static AddonManager.WowheadReader;

namespace AddonManager.Models;
public abstract class LootConverter
{
    public DatabaseItems Convert(string jsonText)
    {
        return InnerConvert(jsonText);
    }

    internal abstract string FileName { get; }
    internal abstract DatabaseItems InnerConvert(string jsonText);
}

public class EmblemConverter : LootConverter
{
    internal override string FileName { get => "EmblemItemList"; }

    internal override DatabaseItems InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        foreach (var itemType in obj.boss)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = item[1].subtitle.ToString().Split(">")[1].Split("<")[0],
                        Source = obj.title.ToString().Replace(" Rewards", ""),
                        SourceLocation = "",
                        SourceType = "Dungeon Token"
                    });
                }
            }
        }

        return items;
    }
}

public class ProfessionConverter : LootConverter
{
    internal override string FileName { get => "ProfessionItemList"; }
    internal override DatabaseItems InnerConvert(string jsonText)
    {
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);

        return default;
    }
}

public class DungeonConverter : LootConverter
{
    internal override string FileName { get => "DungeonItemList"; }
    internal override DatabaseItems InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        foreach (var itemType in obj.boss)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Normal)",
                        SourceType = "Drop"
                    });
                }
            }

            foreach (var item in itemType.Heroic)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} (Heroic)",
                        SourceType = "Drop"
                    });
                }
            }
        }

        return items;
    }
}

public class RaidConverter : LootConverter
{
    internal override string FileName { get => "RaidItemList"; }
    internal override DatabaseItems InnerConvert(string jsonText)
    {
        var items = new DatabaseItems();
        jsonText = jsonText.Replace(@"\'", "'").Replace("\\\\\"", "\\\"");
        var obj = JsonConvert.DeserializeObject<dynamic>(jsonText);
        var heroicTag = ((bool)obj.heroic) ? "Heroic " : "";
        foreach (var itemType in obj.raid10)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} ({heroicTag}10)",
                        SourceType = "Drop"
                    });
                }
            }
        }
        foreach (var itemType in obj.raid25)
        {
            foreach (var item in itemType.Normal)
            {
                int id = item[1].id ?? 0;
                if (id > 0)
                {
                    items.Items.TryAdd(id, new DatabaseItem
                    {
                        Name = item[1].title,
                        SourceNumber = "0",
                        Source = itemType.title,
                        SourceLocation = $"{obj.title.ToString()} ({heroicTag}25)",
                        SourceType = "Drop"
                    });
                }
            }
        }

        return items;
    }
}
