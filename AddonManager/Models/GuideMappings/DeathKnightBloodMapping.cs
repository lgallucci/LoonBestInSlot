using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightBloodMapping : SpecMapping
{
    public override string Class => "Death Knight";
    public override string Spec => "Blood";

    public override string CurrentPhaseUrl => throw new NotImplementedException();
    public override List<(string, GuideMapping)> CurrentPhase => throw new NotImplementedException();

}