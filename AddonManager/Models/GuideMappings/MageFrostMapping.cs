using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-frost-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps") }
        };
}