namespace AddonManager.Models.GuideMappings;

internal class WarlockTankMapping : SpecMapping
{    
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/warlock/";
    public override string Class => "Warlock";
    public override string Spec => "Tank";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "tank-bis-gear-pve";
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
