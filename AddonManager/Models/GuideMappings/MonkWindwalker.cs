using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkWindwalker : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/monk/windwalker/";
    public override string Class => "Monk";
    public override string Spec => "Windwalker";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
        };
}