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
        new (" -", ""),
        new ("BiS", "BIS"),
        new ("Bis", "BIS"),
        new ("bis", "BIS"),
        new ("Recommended", "BIS"),
        new ("Best in slot", "BIS"),
        new ("Best", "BIS"),
        new ("Optional", "Alt"),
        new ("PvP", "Alt"),
        new ("Good", "Alt"),
        new ("Easy to Acquire", "Alt"),
        new ("Easy to aquire", "Alt"),
        new ("Easy to Obtain", "Alt"),
        new ("Easy To Obtain", "Alt"),
        new ("Easier to Obtain", "Alt"),
        new ("Alternative", "Alt"),
        new ("Mitigation", "Mit"),
        new ("Defense swap", "Alt Mit"),
        new ("Defense Swap", "Alt Mit"),
        new ("Defense", "Mit"),
        new ("Option", "Alt"),
        new ("Threat", "Thrt"),
        new ("threat", "Thrt"),
        new ("alternative", "Alt"),
        new ("Great", "Alt"),
        new ("Viable", "Alt"),
        new ("Mediocre", "Alt"),
        new ("Under Hit Cap", "Alt"),
        new ("Over Hit Cap", "Alt"),
        new ("Classic Option", "Alt"),
        new ("Quest", "Alt"),
        new ("Survivability", "Mit"),
        new ("Innervate", "Alt"),
        new ("Defensive", "Mit"),
        new ("Old Trinkets", "Alt"),
        new ("PVP", "Alt"),
        new ("Close Second", "Alt"),
        new ("WORLD BOSS", "Alt"),
        new ("Older Tier", "Alt"),
        new ("BIS Until Tier 5", "Alt"),
        new ("BIS Until T5", "Alt"),
        new ("BIS Until Tier 6", "Alt"),
        new ("BIS Until T6", "Alt"),
        new ("Pre-Raid", "Alt"),
        new ("BIS Group Performance", "Alt"),
        new ("P2 BIS", "Alt"),
        new ("P3 BIS", "Alt"),
        new ("P4 BIS", "Alt"),
        new ("BIS in Slot", "BIS"),
        new ("Avoidance", "Mit"),
        new ("P4", "Alt"),
        new ("Decent", "Alt"),
        new ("Prebis", "Alt"),
        new ("PreBIS", "Alt"),
        new ("Strong", "Alt"),
        new ("Strong ", "Alt"),

        new ("- Hit", ""),
        new ("Hit", ""),
        new ("-PVP", ""),
        new ("-Crafted", ""),
        new ("Tailoring", ""),
        new ("Engineering", ""),
        new (" Classic", ""),
        new (" Crafted", ""),
        new (" World Boss", ""),
        new (" Easy to Get", ""),
        new (" Offhand", ""),
        new (" Shield", ""),
        new (" Group Content", ""),
        new (" Pre-raid", ""),
        new ("Pre-raid ", ""),
        new (" skewed", ""),
        new (" Skewed", ""),
        new (" (Unobtainable)", ""),
        new (" Individually", ""),
        new (" Overall", ""),
        new (" for DPS", ""),
        new ("World Boss ", ""),
        new ("2.6 ", ""),
        new ("2.7 ", ""),
        new ("Crafted ", ""),
        new ("Karazhan ", ""),
        new ("Dungeon ", ""),
        new ("Raid ", ""),
        new ("Classic ", ""),
        new ("Reputation ", ""),
        new ("Stamina", "Stam"),
        new ("Horde", ""),
        new ("Alliance", ""),
        new ("All", "BIS"),
        new ("(BIS)", "(All)"),
        new ("Scryers", ""),
        new ("Aldor", ""),
        new (" in 2pT4 Gear Set", ""),
        new (" in 4pT5 Gear Set", ""),
        new (" in 4pT5 Set", ""),
        new (" in 6%  Set", ""),
        new ("Throughput", ""),
        new ("Regen", ""),
        new (" in 9% hit set", ""),
        new (" in 6% hit set", ""),
        new (" in 5% hit set", ""),
        new (" budget option", ""),
        new (" (6% hit set)", ""),
        new (" Balanced Alt", ""),
        new (" Required", ""),
        new (" Drop", ""),
        new (" 6% and 9%", ""),
        new (" 6%", ""),
        new (" 9%", ""),
        new (" Early Pickup", ""),
        new (" for weaving", ""),
        new (" for hit rating", ""),
        new (" Raid-Wide", ""),
        new (" Haste", ""),
        new (" Non-Haste", ""),
        new (" for DPS", ""),
        new (" (with 4pT6)", ""),
        new (" when  Capped", ""),
        new (" for Personal DPS", ""),
        new (" Without Thori'dal", ""),
        new (" With Thori'dal", ""),
        new (" Balanced", ""),
        new (" Set Bonus", ""),
        new (" ()", ""),
        new ("AoE-", ""),
        new (" PvE", ""),
        new (" NonHuman", ""),
        new (" Human", ""),
        new (" (Jewelcrafting)", ""),
        new (" (Leatherworking)", ""),
        new (" (Alchemy)", ""),
        new (" (with 4pT6 Bonus)", ""),
        new (" with 4pT6 Bonus", ""),
        new (" Below Armor Cap", ""),
        new (" Above Armor Cap", ""),
        new (" (below Armor cap)", ""),
        new (" (above Armor cap)", ""),
        new ("P5 ", ""),
        new (" 2h", ""),
        new ("TBC ", ""),
        new ("TBCC ", ""),
        new (" TBC", ""),
        new (" TBCC", ""),
        new (" BoE", ""),
        new ("BoE ", ""),
        new (" expertise", ""),
        new (" hit", ""),
        new (" haste", ""),
        new (" Non-Orc", ""),
        new (" Orc", ""),
        new (" SS", ""),
        new (" Morb", ""),
        new (" Belowcap", ""),
        new (" Utility", ""),
        new (" 10-man", ""),
        new (" 25-man", ""),
        new (" 2p Bonus", ""),
        new (" 2p", ""),

        new ("Alt Alt", "Alt"),
        new ("Temporary  Alt", "Alt"),
        new ("Alt / AoE", "Alt"),
        new ("Alt  Alt", "Alt"),
        new ("Alt / Alt", "Alt"),
        new ("BIS Personal", "Alt"),
        new ("Thrt Alt", "Alt Thrt"),
        new ("mit", "Mit"),
        new ("Mit Alt", "Alt Mit"),
        new ("BIS Alt", "BIS"),
        new ("BIS / Alt", "BIS"),
        new ("BIS-", "BIS"),
        new ("Alt-", "Alt"),
        new ("Alt  ", "Alt "),
    };

    private string ReplaceStatuses(string value)
    {
        var replaceString = value;

        foreach (var replace in Replacements)
            replaceString = replaceString.Replace(replace.Item1, replace.Item2).Trim();

        return replaceString;
    }

}

public class GemSpec
{
    public int GemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public bool IsMeta { get; set; }
}

public class EnchantSpec
{
    public int EnchantId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Slot { get; set; } = String.Empty;
    public bool IsSpell { get; set; }
}