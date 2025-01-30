namespace AddonManager.Models.GuideMappings.SOD;

internal class SODDruidHealerMapping : SODSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/druid/";
    public override string Class => "Druid";
    public override string Spec => "Healer";

    public override string PreRaidUrl => "healer-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#two-handed") },
            { ("Ranged/Relic", "#idol") },
        };

    public override string CurrentUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Neck", "h2#jewelry") },
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#two-handed") },
            { ("Ranged/Relic", "#idol") },
        };
}
