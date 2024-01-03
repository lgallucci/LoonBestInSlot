namespace AddonManager.Models;

public class ItemSpec 
{
    public static Dictionary<string, int> SortOrder = new Dictionary<string, int> 
    { 
        { "Head", 0 }, 
        { "Shoulder", 1 }, 
        { "Back", 2 }, 
        { "Chest", 3 }, 
        { "Wrist", 4 },
        { "Hands", 5 }, 
        { "Waist", 6 }, 
        { "Legs", 7 }, 
        { "Feet", 8 }, 
        { "Neck", 9 }, 
        { "Ring", 10 }, 
        { "Trinket", 11 },  
        { "Main Hand", 12 }, 
        { "Off Hand", 13 },
        { "Two Hand", 14 }, 
        { "Ranged", 15 },
        { "unknown", 16 } 
    };

    public int ItemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Slot { get; set; } = string.Empty;
    public string BisStatus { get; set; } = string.Empty;

}

public class GemSpec
{
    public int GemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public int Quality { get; set; }
    public bool IsMeta { get; set; }
    public int Phase { get; internal set; }
}

public class EnchantSpec
{
    public int EnchantId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Slot { get; set; } = String.Empty;
    public string TextureId { get; set; }
}