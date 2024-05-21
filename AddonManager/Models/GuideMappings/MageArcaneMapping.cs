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
            { ("Head", "#head-for-arcane-mage-dps") },
            { ("Shoulder", "#shoulders-for-arcane-mage-dps") },
            { ("Back", "#back-for-arcane-mage-dps") },
            { ("Chest", "#chest-for-arcane-mage-dps") },
            { ("Wrist", "#wrist-for-arcane-mage-dps") },
            { ("Hands", "#hands-for-arcane-mage-dps") },
            { ("Waist", "#waist-for-arcane-mage-dps") },
            { ("Legs", "#legs-for-arcane-mage-dps") },
            { ("Feet", "#feet-for-arcane-mage-dps") },
            { ("Neck", "#neck-for-arcane-mage-dps") },
            { ("Ring", "#rings-for-arcane-mage-dps") },
            { ("Trinket", "#trinkets-for-arcane-mage-dps") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-1") },
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