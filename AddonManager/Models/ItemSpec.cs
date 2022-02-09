namespace AddonManager.Models;

public class ItemSpec
{
    public int ItemId { get; set; }
    public string Name { get; set; }
    public string Slot { get; set; }
    private string _bisStatus = string.Empty;
    public string BisStatus
    {
        get { return _bisStatus; } 
        set
        {
            _bisStatus = ReplaceStatuses(value);
        }
    }
    public string PhaseStatus { get; set; }


    public List<Tuple<string, string>> Replacements = new List<Tuple<string, string>>
    {
        new Tuple<string, string>(" -", ""),
        new Tuple<string, string>("BiS", "BIS"),
        new Tuple<string, string>("Recommended", "BIS"),
        new Tuple<string, string>("Best in slot", "BIS"),
        new Tuple<string, string>("Best", "BIS"),
        new Tuple<string, string>("Optional", "Alt"),
        new Tuple<string, string>("PvP", "Alt"),
        new Tuple<string, string>("Good", "Alt"),
        new Tuple<string, string>("Easy to Acquire", "Alt"),
        new Tuple<string, string>("Easy to aquire", "Alt"),
        new Tuple<string, string>("Easy to Obtain", "Alt"),
        new Tuple<string, string>("Easy To Obtain", "Alt"),
        new Tuple<string, string>("Easier to Obtain", "Alt"),
        new Tuple<string, string>("Alternative", "Alt"),
        new Tuple<string, string>("Mitigation", "Mit"),
        new Tuple<string, string>("Defense swap", "Alt Mit"),
        new Tuple<string, string>("Defense Swap", "Alt Mit"),
        new Tuple<string, string>("Defense", "Mit"),
        new Tuple<string, string>("Option", "Alt"),
        new Tuple<string, string>("Threat", "Thrt"),
        new Tuple<string, string>("threat", "Thrt"),
        new Tuple<string, string>("alternative", "Alt"),
        new Tuple<string, string>("Great", "Alt"),
        new Tuple<string, string>("Viable", "Alt"),
        new Tuple<string, string>("Mediocre", "Alt"),
        new Tuple<string, string>("Under Hit Cap", "Alt"),
        new Tuple<string, string>("Over Hit Cap", "Alt"),
        new Tuple<string, string>("Classic Option", "Alt"),
        new Tuple<string, string>("Quest", "Alt"),
        new Tuple<string, string>("Survivability", "Mit"),
        new Tuple<string, string>("Innervate", "Alt"),
        new Tuple<string, string>("Defensive", "Mit"),
        new Tuple<string, string>("Old Trinkets", "Alt"),
        new Tuple<string, string>("PVP", "Alt"),
        new Tuple<string, string>("Close Second", "Alt"),
        new Tuple<string, string>("WORLD BOSS", "Alt"),
        new Tuple<string, string>("Older Tier", "Alt"),

        new Tuple<string, string>("- Hit", ""),
        new Tuple<string, string>("Hit", ""),
        new Tuple<string, string>("-PVP", ""),
        new Tuple<string, string>("-Crafted", ""),
        new Tuple<string, string>("Tailoring", ""),
        new Tuple<string, string>("Engineering", ""),
        new Tuple<string, string>(" Classic", ""),
        new Tuple<string, string>(" Crafted", ""),
        new Tuple<string, string>(" World Boss", ""),
        new Tuple<string, string>(" Easy to Get", ""),
        new Tuple<string, string>(" Offhand", ""),
        new Tuple<string, string>(" Shield", ""),
        new Tuple<string, string>(" Group Content", ""),
        new Tuple<string, string>(" Pre-raid", ""),
        new Tuple<string, string>("Pre-raid ", ""),
        new Tuple<string, string>(" skewed", ""),
        new Tuple<string, string>(" Skewed", ""),
        new Tuple<string, string>(" (Unobtainable)", ""),
        new Tuple<string, string>(" Individually", ""),
        new Tuple<string, string>(" Overall", ""),
        new Tuple<string, string>(" for DPS", ""),
        new Tuple<string, string>("World Boss ", ""),
        new Tuple<string, string>("2.7 ", ""),
        new Tuple<string, string>("Crafted ", ""),
        new Tuple<string, string>("Karazhan ", ""),
        new Tuple<string, string>("Dungeon ", ""),
        new Tuple<string, string>("Raid ", ""),
        new Tuple<string, string>("Classic ", ""),
        new Tuple<string, string>("Reputation ", ""),
        new Tuple<string, string>("Stamina", "Stam"),
        new Tuple<string, string>("Horde", ""),
        new Tuple<string, string>("Alliance", ""),
        new Tuple<string, string>("Scryers", ""),
        new Tuple<string, string>("Aldor", ""),
        new Tuple<string, string>(" in 2pT4 Gear Set", ""),
        new Tuple<string, string>(" in 4pT5 Gear Set", ""),
        new Tuple<string, string>(" in 4pT5 Set", ""),
        new Tuple<string, string>(" in 6%  Set", ""),
        new Tuple<string, string>("BIS Until Tier 5", ""),
        new Tuple<string, string>("Throughput", ""),
        new Tuple<string, string>("Regen", ""),


        new Tuple<string, string>("Alt Alt", "Alt"),
        new Tuple<string, string>("Thrt Alt", "Alt Thrt"),
        new Tuple<string, string>("mit", "Mit"),
        new Tuple<string, string>("Mit Alt", "Alt Mit"),
        new Tuple<string, string>("BIS Alt", "BIS"),
    };

    private string ReplaceStatuses(string value)
    {
        var replaceString = value;

        foreach (var replace in Replacements)
            replaceString = replaceString.Replace(replace.Item1, replace.Item2).Trim();

        return replaceString;
    }

}
