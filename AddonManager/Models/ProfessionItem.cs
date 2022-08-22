namespace AddonManager.Models;
public class ProfessionItem
{
    public string Name { get; set; } = string.Empty;
    public int Ilvl { get; set; }
    public string Rarity { get; set; } = string.Empty;
    public string Bind { get; set; } = string.Empty;
    public string Slot { get; set; } = string.Empty;
    public bool Unique { get; set; }
    public string Source { get; set; } = string.Empty;
    public string SourceType { get; set; } = string.Empty;
}
