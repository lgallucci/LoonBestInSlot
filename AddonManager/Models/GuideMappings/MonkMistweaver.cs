using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkMistweaver : SpecMapping
{
    public override string Class => "Monk";
    public override string Spec => "Mistweaver";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
        };
}