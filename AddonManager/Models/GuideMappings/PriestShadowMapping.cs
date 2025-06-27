using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestShadowMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Shadow";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}