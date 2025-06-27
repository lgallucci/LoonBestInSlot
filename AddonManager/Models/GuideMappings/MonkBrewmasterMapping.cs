using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkBrewmasterMapping : SpecMapping
{
    public override string Class => "Monk";
    public override string Spec => "Brewmaster";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}