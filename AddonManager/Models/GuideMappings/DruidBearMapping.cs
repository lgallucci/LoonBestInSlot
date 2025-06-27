using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Bear";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}