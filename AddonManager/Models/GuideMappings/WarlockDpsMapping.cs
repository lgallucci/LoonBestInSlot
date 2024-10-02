namespace AddonManager.Models.GuideMappings;

internal class WarlockDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/warlock/";
    public override string Class => "Warlock";
    public override string Spec => "Dps";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Wrist", "#wrists") },
            { ("Ring", "#ring") },
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "#staves") },
            { ("Ranged/Relic", "#wands") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Wrist", "#wrists") },
            { ("Ring", "#ring") },
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "#staves") },
            { ("Ranged/Relic", "#wands") },
        };
}
