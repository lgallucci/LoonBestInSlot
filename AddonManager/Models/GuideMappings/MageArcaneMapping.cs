using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageArcaneMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Arcane";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}