using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkWindwalkerMapping : SpecMapping
{
    public override string Class => "Monk";
    public override string Spec => "Windwalker";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}