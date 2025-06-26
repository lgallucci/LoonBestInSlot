using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkWindwalker : SpecMapping
{
    public override string Class => "Monk";
    public override string Spec => "Windwalker";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
        };
}