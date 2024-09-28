namespace AddonManager.Models.GuideMappings;

internal class PaladinDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/paladin/";
    public override string Class => "Paladin";
    public override string Spec => "Dps";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h3#weapon-seal-twisting") },
            { ("Two Hand", "h3#weapon-exodin") },
            { ("Ranged/Relic", "h3#libram") },
        };
}

