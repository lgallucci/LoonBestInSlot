using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFireMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Fire";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-fire-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps") }
        };
}