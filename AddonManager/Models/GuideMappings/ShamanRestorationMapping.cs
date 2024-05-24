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
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
        };

    public override string Phase1Url => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
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