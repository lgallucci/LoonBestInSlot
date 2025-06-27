using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}