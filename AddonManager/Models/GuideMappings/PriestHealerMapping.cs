namespace AddonManager.Models.GuideMappings;

internal class PriestHealerMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/priest/";
    public override string Class => "Priest";
    public override string Spec => "Healer";

    public override string Phase0Url => "healer-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand-2") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#main-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#staves") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
