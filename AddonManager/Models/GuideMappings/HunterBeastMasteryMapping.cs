using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string Class => "Hunter";
    public override string Spec => "Beast Mastery";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}