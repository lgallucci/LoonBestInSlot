using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string UrlBase => "mage/frost/";
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-4-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-4-pre-raid") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-4-pre-raid") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-frost-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps") }
        };
}