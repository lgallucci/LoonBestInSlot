using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidFeralDpsMapping: SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Feral Dps";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons") },
            { ("Ranged/Relic", "#idol") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons") },
            { ("Ranged/Relic", "#idol") },
        };
}