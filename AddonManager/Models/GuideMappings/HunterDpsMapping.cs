using AddonManager.Models.GuideMappings;

namespace AddonManager.Models.GuideMappings;

internal class HunterDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/hunter/";
    public override string Class => "Hunter";
    public override string Spec => "Dps";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#two-handed") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Two Hand", "h3#two-handed") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
