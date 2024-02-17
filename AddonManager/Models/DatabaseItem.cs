using AngleSharp.Text;
using Newtonsoft.Json;

namespace AddonManager.Models;
public class DatabaseItems
{
    public SortedDictionary<int, DatabaseItem> Items { get; set; } = new SortedDictionary<int, DatabaseItem>();

    public void AddItems(DatabaseItems convertedDbItem)
    {
        foreach (var converted in convertedDbItem.Items)
        {
            if (Items.ContainsKey(converted.Key))
            {
                if (Items[converted.Key].Source != converted.Value.Source)
                {
                    Items[converted.Key].Source += $"/{converted.Value.Source}";
                    Items[converted.Key].SourceLocation += $"/{converted.Value.SourceLocation}";
                    Items[converted.Key].SourceNumber += $"/{converted.Value.SourceNumber}";
                }
            }
            else
            {
                Items.Add(converted.Key, converted.Value);
            }
        }
    }

    public void AddItem(int itemId, DatabaseItem converted)
    {
        converted.CombineCount++;
        if (Items.ContainsKey(itemId))
        {
            Items[itemId].CombineCount++;
            if (Items[itemId].SourceLocation == converted.SourceLocation || Items[itemId].Source == "Various Bosses")
            {
                if (Items[itemId].CombineCount > 3)
                    Items[itemId].Source = "Various Bosses";
                else
                    if (!Items[itemId].Source.Contains(converted.Source))
                        Items[itemId].Source += $" & {converted.Source}";
                        
                if (Items[itemId].SourceFaction == "H" && converted.SourceFaction == "A" || 
                    Items[itemId].SourceFaction == "A" && converted.SourceFaction == "H")
                {
                    Items[itemId].SourceFaction = "B";
                }
            }
            else
            {
                var sources = Items[itemId].Source.Split("~");
                if (!sources.Contains(converted.Source))
                {
                    Items[itemId].Source += $"|{converted.Source}";
                    Items[itemId].SourceLocation += $"|{converted.SourceLocation}";
                    Items[itemId].SourceNumber += $"|{converted.SourceNumber}";
                }
            }
        }
        else
        {
            Items.Add(itemId, converted);
        }
    }
}

public class DatabaseItem
{
    public string Name { get; set; } = string.Empty;
    public string Source { get; set; } = string.Empty;
    public string SourceType { get; set; } = string.Empty;
    public string SourceNumber { get; set; } = string.Empty;
    public string SourceLocation { get; set; } = string.Empty;
    public string SourceFaction { get; set; } = "B";
    [JsonIgnore]
    public int CombineCount { get; set; }
}
