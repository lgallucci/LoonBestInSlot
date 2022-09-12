namespace AddonManager.Models;

public class ItemSpec
{
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

    public List<Tuple<string, string>> Replacements = new List<Tuple<string, string>>
    {
        new ("-", ""),
        new ("bis", "BIS"),
        new ("Recommended", "BIS"),
        new ("Best in slot", "BIS"),
        new ("Best", "BIS"),
        new ("Optional", "Alt"),
        new ("Optonal", "Alt"),
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


        new ("boe", ""),
        new ("bop", ""),
        new ("crafted", ""),
        new ("engineering", ""),
        new ("jewelcrafting", ""),
        new ("overall", ""),
        new ("balanced", ""),
        new ("personal", ""),
        new ("expertise", ""),
        new ("hit", ""),
        new ("haste", ""),
        new ("support", ""),
        new ("non", ""),
        new ("orc", ""),
        new ("ss", ""),
        new ("morb", ""),
        new ("dungeon", ""),
        new ("drop", ""),
        new ("prebis", "Alt"),
        new ("ilvl", ""),
        new ("tier", ""),
        new ("contested", ""),
        new ("t4", ""),
        new ("pvp", ""),
        new ("set", ""),
        new ("2.5", ""),
        new ("2.6", ""),
        new ("to", ""),
        new ("obtain", ""),
        new ("10m", ""),
        new ("( )", ""),
        new ("()", ""),

        new ("Mitigation", ""),
        new ("Avoidance", ""),
        new ("Threat", ""),
        new ("Stamina", ""),
        new ("Defense", ""),
        
        new ("alt bis", "Alt"),
        new ("bis alt", "BIS"),
        new ("alt alt", "Alt"),
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