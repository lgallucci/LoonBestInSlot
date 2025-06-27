using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinRetributionMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Retribution";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}