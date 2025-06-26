using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkBrewmaster : SpecMapping
{
    public override string UrlBase => "monk/brewmaster/";
    public override string Class => "Monk";
    public override string Spec => "Brewmaster";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
        };
}