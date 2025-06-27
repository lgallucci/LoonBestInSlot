using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidRestoMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Restoration";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}