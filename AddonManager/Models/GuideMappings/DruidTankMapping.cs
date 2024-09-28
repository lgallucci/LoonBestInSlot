namespace AddonManager.Models.GuideMappings;

internal class DruidTankMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/druid/";
    public override string Class => "Druid";
    public override string Spec => "Tank";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapon") },
            { ("Ranged/Relic", "#relic") },
        };
}
