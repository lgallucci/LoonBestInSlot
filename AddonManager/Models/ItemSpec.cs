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
        new Tuple<string, string>("BiS", "BIS"),
        new Tuple<string, string>("Recommended", "BIS"),
        new Tuple<string, string>("Best in slot", "BIS"),
        new Tuple<string, string>("Best", "BIS"),
        new Tuple<string, string>("Optional", "Alt"),
        new Tuple<string, string>("PvP", "Alt"),
        new Tuple<string, string>("Easy to Acquire", "Alt"),
        new Tuple<string, string>("Easy to Obtain", "Alt"),        
        new Tuple<string, string>(" Pre-raid", ""),
        new Tuple<string, string>("Alternative", "Alt"),
        new Tuple<string, string>("Mitigation", "Mit"),
        new Tuple<string, string>("Threat", "Thrt"),
        new Tuple<string, string>("alternative", "Alt"),
        new Tuple<string, string>(" skewed", ""),
        new Tuple<string, string>("Great", "Alt"),
        new Tuple<string, string>("Viable", "Alt"),


        new Tuple<string, string>("Thrt Alt", "Alt Thrt"),
        new Tuple<string, string>("Mit Alt", "Alt Mit"),
    };

    private string ReplaceStatuses(string value)
    {
        var replaceString = value;

        foreach (var replace in Replacements)
            replaceString = replaceString.Replace(replace.Item1, replace.Item2);

        return replaceString;
    }

}
