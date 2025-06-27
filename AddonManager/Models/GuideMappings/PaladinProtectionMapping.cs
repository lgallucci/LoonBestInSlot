using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}