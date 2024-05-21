using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/mage/frost/";
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-mage-dps") },
            { ("Shoulder", "#shoulders-for-frost-mage-dps") },
            { ("Back", "#back-for-frost-mage-dps") },
            { ("Chest", "#chest-for-frost-mage-dps") },
            { ("Wrist", "#wrist-for-frost-mage-dps") },
            { ("Hands", "#hands-for-frost-mage-dps") },
            { ("Waist", "#waist-for-frost-mage-dps") },
            { ("Legs", "#legs-for-frost-mage-dps") },
            { ("Feet", "#feet-for-frost-mage-dps") },
            { ("Neck", "#neck-for-frost-mage-dps") },
            { ("Ring", "#rings-for-frost-mage-dps") },
            { ("Trinket", "#trinkets-for-frost-mage-dps") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-4") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-5") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-pre-patch") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-pre-patch") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-pre-patch") },
        };
}