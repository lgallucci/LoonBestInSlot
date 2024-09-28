namespace AddonManager.Models.GuideMappings;

internal class PriestDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/priest/";
    public override string Class => "Priest";
    public override string Spec => "Dps";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-2") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#main-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
