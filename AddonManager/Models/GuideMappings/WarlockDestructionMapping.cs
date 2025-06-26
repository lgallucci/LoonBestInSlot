using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockDestructionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Destruction";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };
}