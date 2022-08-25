using AngleSharp.Dom;

namespace AddonManager.Models;
public class DatabaseItems
{
    public Dictionary<int, DatabaseItem> Items { get; set; } = new Dictionary<int, DatabaseItem>();

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
}

public class DatabaseItem
{
    public string Name { get; set; } = string.Empty;
    public string Source { get; set; } = string.Empty;
    public string SourceType { get; set; } = string.Empty;
    public string SourceNumber { get; set; } = string.Empty;
    public string SourceLocation { get; set; } = string.Empty;
}
