using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/holy/";
    public override string Class => "Paladin";
    public override string Spec => "Holy";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-holy-paladin-healer") },
            { ("Ranged/Relic", "#relics-for-holy-paladin-healer") }
        };

    public override string Phase1Url => "healer-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-1") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-1") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-1") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-2") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-2") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-3") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-3") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-3") }
        };

    public override string Phase4Url => "healer-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-4") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-4") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-4") }
        };

    public override string Phase5Url => "healer-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-5") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-5") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-5") }
        };

    public override string PrePatchUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
        { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer") },
        { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-4") },
    };
}