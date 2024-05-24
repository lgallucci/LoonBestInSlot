using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/holy/";
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer") },
            { ("Back", "#back-for-holy-priest-healer") },
            { ("Chest", "#chest-for-holy-priest-healer") },
            { ("Wrist", "#wrist-for-holy-priest-healer") },
            { ("Hands", "#hands-for-holy-priest-healer") },
            { ("Waist", "#waist-for-holy-priest-healer") },
            { ("Legs", "#legs-for-holy-priest-healer") },
            { ("Feet", "#feet-for-holy-priest-healer") },
            { ("Neck", "#neck-for-holy-priest-healer") },
            { ("Ring", "#rings-for-holy-priest-healer") },
            { ("Trinket", "#trinkets-for-holy-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-priest-healer") },
            { ("Two Hand", "#staves-for-holy-priest-healer")},
            { ("Off Hand", "#off-hands-for-holy-priest-healerh") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer") }
        };

    public override string Phase1Url => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer") },
            { ("Back", "#back-for-holy-priest-healer") },
            { ("Chest", "#chest-for-holy-priest-healer") },
            { ("Wrist", "#wrist-for-holy-priest-healer") },
            { ("Hands", "#hands-for-holy-priest-healer") },
            { ("Waist", "#waist-for-holy-priest-healer") },
            { ("Legs", "#legs-for-holy-priest-healer") },
            { ("Feet", "#feet-for-holy-priest-healer") },
            { ("Neck", "#neck-for-holy-priest-healer") },
            { ("Ring", "#rings-for-holy-priest-healer") },
            { ("Trinket", "#trinkets-for-holy-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-priest-healer") },
            { ("Two Hand", "#staves-for-holy-priest-healer")},
            { ("Off Hand", "#off-hands-for-holy-priest-healerh") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-2") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-2") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-3") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-3") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-3") }
        };

    public override string Phase4Url => "healer-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-4") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-4") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-4") }
        };

    public override string Phase5Url => "healer-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-5") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-5") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-5") }
        };

    public override string PrePatchUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-holy-priest-healer")},
        { ("Shoulder", "#shoulders-for-holy-priest-healer") },
        { ("Back", "#back-for-holy-priest-healer") },
        { ("Chest", "#chest-for-holy-priest-healer") },
        { ("Wrist", "#wrist-for-holy-priest-healer") },
        { ("Hands", "#hands-for-holy-priest-healer") },
        { ("Waist", "#waist-for-holy-priest-healer") },
        { ("Legs", "#legs-for-holy-priest-healer") },
        { ("Feet", "#feet-for-holy-priest-healer") },
        { ("Neck", "#neck-for-holy-priest-healer") },
        { ("Ring", "#rings-for-holy-priest-healer") },
        { ("Trinket", "#trinkets-for-holy-priest-healer") },
        { ("Main Hand", "#main-hand-weapons-for-holy-priest-healer") },
        { ("Off Hand", "#off-hand-weapons-for-holy-priest-healer") },
        { ("Ranged/Relic", "#wands-for-holy-priest-healer") },
    };
}