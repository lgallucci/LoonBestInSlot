using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueSubtletyMapping : SpecMapping
{
    public override string Class => "Rogue";
    public override string Spec => "Subtlety";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}