using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}