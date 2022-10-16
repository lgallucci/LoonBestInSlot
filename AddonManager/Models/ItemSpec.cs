using System.Runtime.Intrinsics.X86;

namespace AddonManager.Models;

public class ItemSpec : IComparable<ItemSpec>
{
    private Dictionary<string, int> _sortOrder = new Dictionary<string, int> { { "Head", 0 }, { "Shoulder", 1}, { "Back", 2}, { "Chest", 3}, { "Wrist", 4},
        { "Hands", 5}, { "Waist", 6}, { "Legs", 7}, { "Feet", 8}, { "Neck", 9}, { "Ring", 10}, { "Trinket", 11}, { "Two Hand", 12}, { "Main Hand", 13}, 
        { "Off Hand", 14 }, { "Shield", 15}, { "Ranged", 16}, { "Wand", 17}, { "Totem", 18}, { "Idol", 19}, { "Libram", 20}, { "Relic", 21} };

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
    private string _bisStatus = string.Empty;
    public string BisStatus
    {
        get { return _bisStatus; } 
        set
        {
            _bisStatus = ReplaceStatuses(value);
        }
    }
    public int ItemOrder { get; set; }

    public List<Tuple<string, string>> Replacements = new List<Tuple<string, string>>
    {
        new ("-", ""),
        new (".", ""),
        new ("(", ""),
        new (")", ""),
        new ("/", ""),
        new ("&", ""),
        new ("t4", ""),
        new ("T6", ""),
        new ("T7", ""),
        new ("4p", ""),
        new ("2p", ""),
        new ("26", ""),
        new ("25", ""),
        new ("bis", "BIS"),
        new ("recommended", "BIS"),
        new ("best in slot", "BIS"),
        new ("best", "BIS"),
        new ("optional", "Alt"),
        new ("optonal", "Alt"),
        new ("option", "Alt"),
        new ("decent", "Alt"),
        new ("preraid", "Alt"),
        new ("good", "Alt"),
        new ("tbcc", "Alt"),
        new ("tbc", "Alt"),
        new ("great", "Alt"),
        new ("strong", "Alt"),
        new ("mediocre", "Alt"),
        new ("easy", "Alt"),
        new ("alternative", "Alt"),
        new ("second", "Alt"),
        new ("reward", "Alt"),
        new ("emergency", "Alt"),
        new ("bad", "Alt"),

        new ("Mitigation", ""),
        new ("Avoidance", ""),
        new ("Threat", ""),
        new ("Stamina", ""),
        new ("Defense", ""),
        new ("boe", ""),
        new ("bop", ""),
        new ("crafted", ""),
        new ("engineering", ""),
        new ("jewelcrafting", ""),
        new ("overall", ""),
        new ("balanced", ""),
        new ("personal", ""),
        new ("expertise", ""),
        new ("testing", ""),
        new ("required", ""),
        new ("hit", ""),
        new ("haste", ""),
        new ("support", ""),
        new ("non", ""),
        new ("orc", ""),
        new ("morb", ""),
        new ("dungeon", ""),
        new ("drop", ""),
        new ("prebis", "Alt"),
        new ("ilvl", ""),
        new ("tier", ""),
        new ("contested", ""),
        new ("pvp", ""),
        new ("set", ""),
        new ("obtain", ""),
        new ("10m", ""),
        new ("skewed", ""),
        new ("individually", ""),
        new ("wintergrasp", ""),
        new ("trapweaving", ""),
        new ("when", ""),
        new ("capped", ""),
        new ("utility", ""),
        new ("bosses", ""),
        new ("trash", ""),
        new ("close", ""),
        new ("bonus", ""),
        new ("above", ""),
        new ("below", ""),
        new ("cleave", ""),
        new ("less", ""),
        new ("place", ""),
        new ("usage", ""),
        new ("only", ""),
        new ("ss", ""),
        new ("to", ""),
        new ("for", ""),
        new ("cap", ""),
        new ("on", ""),
        new ("use", ""),
        new ("low", ""),
        new ("without", ""),
        new ("with", ""),
        new ("up", ""),
        new ("2h", ""),
        new ("mh", ""),
        new ("oh", ""),

        new ("2.5", ""),
        new ("2.6", ""),
        new ("4", ""),
        new ("7", ""),

        new ("alt bis", "Alt"),
        new ("bis alt", "BIS"),
        new ("alt alt", "Alt"),
        new ("mit alt", "Alt Mit"),
        new ("alt  ", "Alt "),
    };

    private string ReplaceStatuses(string value)
    {
        var replaceString = value;

        foreach (var replace in Replacements)
            replaceString = replaceString.Replace(replace.Item1, replace.Item2, StringComparison.OrdinalIgnoreCase).Replace("  ", " ").Replace("   ", " ").Trim();

        return string.IsNullOrWhiteSpace(replaceString) ? "Alt" : replaceString;
    }

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