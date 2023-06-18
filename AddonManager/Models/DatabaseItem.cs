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
                if (Items[converted.Key].SourceLocation != converted.Value.SourceLocation)
                    Items[converted.Key].SourceLocation += $"/{converted.Value.SourceLocation}";
                if (Items[converted.Key].Source != converted.Value.Source)
                    Items[converted.Key].Source += $"/{converted.Value.Source}";
                if (Items[converted.Key].SourceNumber != converted.Value.SourceNumber)
                    Items[converted.Key].SourceNumber += $"/{converted.Value.SourceNumber}";
            }
            else
            {
                Items.Add(converted.Key, converted.Value);
            }
        }
    }

    public void AddItem(int itemId, DatabaseItem converted)
    {
        if (Items.ContainsKey(itemId))
        {
            if (Items[itemId].SourceLocation != converted.SourceLocation)
                Items[itemId].SourceLocation += $"/{converted.SourceLocation}";
            if (Items[itemId].Source != converted.Source)
                Items[itemId].Source += $"/{converted.Source}";
            if (Items[itemId].SourceNumber != converted.SourceNumber)
                Items[itemId].SourceNumber += $"/{converted.SourceNumber}";
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
}
