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
            { ("Head", "#head-for-holy-paladin-healer-phase-1") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer-phase-1") },
            { ("Back", "#back-for-holy-paladin-healer-phase-1") },
            { ("Chest", "#chest-for-holy-paladin-healer-phase-1") },
            { ("Wrist", "#wrist-for-holy-paladin-healer-phase-1") },
            { ("Hands", "#hands-for-holy-paladin-healer-phase-1") },
            { ("Waist", "#waist-for-holy-paladin-healer-phase-1") },
            { ("Legs", "#legs-for-holy-paladin-healer-phase-1") },
            { ("Feet", "#feet-for-holy-paladin-healer-phase-1") },
            { ("Neck", "#neck-for-holy-paladin-healer-phase-1") },
            { ("Ring", "#rings-for-holy-paladin-healer-phase-1") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer-phase-1") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-1") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-1") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-1") }
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