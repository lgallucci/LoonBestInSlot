using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFireMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/mage/fire/";
    public override string Class => "Mage";
    public override string Spec => "Fire";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-4-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-4-pre-raid") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-4-pre-raid") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-fire-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps") }
        };
}