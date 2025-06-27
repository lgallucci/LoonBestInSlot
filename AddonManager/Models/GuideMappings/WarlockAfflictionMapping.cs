using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockAfflictionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Affliction";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}