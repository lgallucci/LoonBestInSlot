using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanElementalMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/elemental/";
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps-in") },
            { ("Shoulder", "#shoulder-for-elemental-shaman-dps-in") },
            { ("Back", "#back-for-elemental-shaman-dps-in") },
            { ("Chest", "#chest-for-elemental-shaman-dps-in") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps-in") },
            { ("Hands", "#hands-for-elemental-shaman-dps-in") },
            { ("Waist", "#waist-for-elemental-shaman-dps-in") },
            { ("Legs", "#legs-for-elemental-shaman-dps-in") },
            { ("Feet", "#feet-for-elemental-shaman-dps-in") },
            { ("Neck", "#neck-for-elemental-shaman-dps-in") },
            { ("Ring", "#finger-for-elemental-shaman-dps-in") },
            { ("Trinket", "#trinket-for-elemental-shaman-dps-in") },
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-pre-patch") },
        { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-pre-patch") },
        { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-pre-patch") },
    };
}