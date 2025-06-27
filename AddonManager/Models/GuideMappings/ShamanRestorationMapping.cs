using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string Class => "Shaman";
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