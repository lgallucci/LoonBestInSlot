using System.Runtime.Intrinsics.X86;

namespace AddonManager.Models;

public class ItemSpec : IComparable<ItemSpec>
{
    private Dictionary<string, int> _sortOrder = new Dictionary<string, int> { { "Head", 0 }, { "Shoulder", 1 }, { "Back", 2 }, { "Chest", 3 }, { "Wrist", 4 },
        { "Hands", 5 }, { "Waist", 6 }, { "Legs", 7 }, { "Feet", 8 }, { "Neck", 9 }, { "Ring", 10 }, { "Trinket", 11 },  { "Main Hand", 12 }, { "Off Hand", 13 },
        { "Two Hand", 14 }, { "Ranged/Relic", 15 } };

    public int CompareTo(ItemSpec? other)
    {
        if (other == null)
            return -1;

        if (_sortOrder[this.Slot] < other._sortOrder[other.Slot])
        {
            return -1;
        }
        else if (_sortOrder[this.Slot] > other._sortOrder[other.Slot])
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
    public bool IsSpell { get; set; }
}