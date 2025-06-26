using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageArcaneMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Arcane";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-arcane-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps") }
        };
}