namespace AddonManager.Models.GuideMappings;

internal class RogueTankMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/rogue/";
    public override string Class => "Rogue";
    public override string Spec => "Tank";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
