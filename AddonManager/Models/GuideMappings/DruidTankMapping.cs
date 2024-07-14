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

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Ranged/Relic", "#relics") },
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Ranged/Relic", "#relics") },
        };

    public override string Phase3Url => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Ranged/Relic", "#relics") },
        };

    public override string Phase4Url => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapon") },
            { ("Ranged/Relic", "#relic") },
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
        };
}
