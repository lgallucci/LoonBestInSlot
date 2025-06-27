using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorArmsMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Arms";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}