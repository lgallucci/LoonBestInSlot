namespace AddonManager.Models.GuideMappings;

internal class WarriorDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/warrior/";
    public override string Class => "Warrior";
    public override string Spec => "Dps";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-dps-warrior") },
            { ("Shoulder", "#shoulders-for-dps-warrior") },
            { ("Back", "#back-for-dps-warrior") },
            { ("Chest", "#chest-for-dps-warrior") },
            { ("Wrist", "#wrist-for-dps-warrior") },
            { ("Hands", "#hands-for-dps-warrior") },
            { ("Waist", "#waist-for-dps-warrior") },
            { ("Legs", "#legs-for-dps-warrior") },
            { ("Feet", "#feet-for-dps-warrior") },
            { ("Neck", "#neck-for-dps-warrior") },
            { ("Ring", "#rings-for-dps-warrior") },
            { ("Trinket", "#trinkets-for-dps-warrior") },
            { ("Main Hand", "#main-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
