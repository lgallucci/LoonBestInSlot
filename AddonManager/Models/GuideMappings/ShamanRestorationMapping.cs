using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/restoration/";
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer-in") },
            { ("Shoulder", "#shoulder-for-restoration-shaman-healer-in") },
            { ("Back", "#back-for-restoration-shaman-healer-in") },
            { ("Chest", "#chest-for-restoration-shaman-healer-in") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer-in") },
            { ("Hands", "#hands-for-restoration-shaman-healer-in") },
            { ("Waist", "#waist-for-restoration-shaman-healer-in") },
            { ("Legs", "#legs-for-restoration-shaman-healer-in") },
            { ("Feet", "#feet-for-restoration-shaman-healer-in") },
            { ("Neck", "#neck-for-restoration-shaman-healer-in") },
            { ("Ring", "#finger-for-restoration-shaman-healer-in") },
            { ("Trinket", "#trinket-for-restoration-shaman-healer-in") },
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in") }
        };

    public override string Phase1Url => "healer-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-1") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-3") }
        };

    public override string Phase4Url => "healer-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-5") }
        };

    public override string Phase5Url => "healer-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-5") }
        };
        
    public override string PrePatchUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-pre-patch") },
        { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-pre-patch") },
        { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-pre-patch") },
    };
}