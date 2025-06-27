using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestDisciplineMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Discipline";

    public override string CurrentPhaseUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "") },
        { ("Off Hand", "") },
        { ("Two Hand", "") },
        { ("Ranged/Relic", "") }
    };
}