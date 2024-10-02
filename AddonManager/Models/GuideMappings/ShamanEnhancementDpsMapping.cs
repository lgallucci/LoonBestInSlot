namespace AddonManager.Models.GuideMappings;

internal class ShamanEnhancementDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/shaman/enhancement/";
    public override string Class => "Shaman";
    public override string Spec => "Enhancement Dps";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "#relics") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "#relics") },
        };
}
