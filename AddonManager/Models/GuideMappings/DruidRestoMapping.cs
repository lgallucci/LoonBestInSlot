using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidRestoMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Restoration";

    public override string CurrentPhaseUrl => throw new NotImplementedException();
    public override List<(string, GuideMapping)> CurrentPhase => throw new NotImplementedException();
}