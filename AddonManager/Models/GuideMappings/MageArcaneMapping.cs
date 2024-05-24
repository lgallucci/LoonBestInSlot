using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageArcaneMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/mage/arcane/";
    public override string Class => "Mage";
    public override string Spec => "Arcane";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-arcane-mage-dps-phase-1-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-arcane-mage-dps-phase-1-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-1-pre-raid") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-1-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-arcane-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-4") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-5") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-pre-patch")},
        { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-pre-patch") },
        { ("Ranged/Relic", "#wands-for-arcane-mage-dps-pre-patch") },
    };
}