using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBalanceMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Balance";

    public override string CurrentPhaseUrl => throw new NotImplementedException();
    public override List<(string, GuideMapping)> CurrentPhase => throw new NotImplementedException();
}