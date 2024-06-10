namespace AddonManager.Models;

public class ItemSpec : IComparable<ItemSpec>
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
        { "Ranged/Relic", 15 },
        { "unknown", 16 } 
    };

    public int CompareTo(ItemSpec? other)
    {
        if (other == null)
            return -1;

        var slot = this.Slot.Split("~").First();
        var otherSlot = other.Slot.Split("~").First();
        if (SortOrder[slot] < SortOrder[otherSlot])
        {
            return -1;
        }
        else if (SortOrder[slot] > SortOrder[otherSlot])
        {
            return 1;
        }
        else
        {
            if (other.BisStatus.Contains("BIS") && !this.BisStatus.Contains("BIS"))
                return 1;
            else if (this.BisStatus.Contains("BIS") && !other.BisStatus.Contains("BIS"))
                return -1;
            else
            {
                return this.ItemOrder < other.ItemOrder ? -1 : 1;
            }
        }
    }

    public int ItemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Slot { get; set; } = string.Empty;
    public string BisStatus { get; set; } = string.Empty;
    public int ItemOrder { get; set; }

}

public class GemSpec : IComparable<GemSpec>
{
    public int CompareTo(GemSpec? other)
    {
        if (other == null)
            return -1;

        if (this.IsMeta && !other.IsMeta)
            return -1;
        else if (!this.IsMeta && other.IsMeta)
            return 1;

        return this.Quality >= other.Quality ? (this.Quality == other.Quality ? 0 : -1) : 1;
    }

    public int GemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public int Quality { get; set; }
    public bool IsMeta { get; set; }
    public int Phase { get; internal set; }
}

public class EnchantSpec : IComparable<EnchantSpec>
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
        { "Ranged/Relic", 15 },
        { "unknown", 16 } 
    };

    public int CompareTo(EnchantSpec? other)
    {
        if (other == null)
            return -1;

        var slot = this.Slot.Split("~").First();
        var otherSlot = other.Slot.Split("~").First();
        if (SortOrder[slot] < SortOrder[otherSlot])
        {
            return -1;
        }
        else if (SortOrder[slot] > SortOrder[otherSlot])
        {
            return 1;
        }
        else
        {
            return this.EnchantId >= other.EnchantId ? (this.EnchantId == other.EnchantId ? 0 : -1) : 1;
        }
    }

    public int EnchantId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Slot { get; set; } = string.Empty;
    public string TextureId { get; set; } = string.Empty;
}