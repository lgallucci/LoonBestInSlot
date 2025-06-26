using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightUnholyMapping : SpecMapping
{
    public override string Class => "Death Knight";
    public override string Spec => "Unholy";

    public override string CurrentPhaseUrl => throw new NotImplementedException();
    public override List<(string, GuideMapping)> CurrentPhase => throw new NotImplementedException();
}