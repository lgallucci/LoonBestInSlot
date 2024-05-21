using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestShadowMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/shadow/";
    public override string Class => "Priest";
    public override string Spec => "Shadow";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps") },
            { ("Shoulder", "#shoulders-for-shadow-priest-dps") },
            { ("Back", "#back-for-shadow-priest-dps") },
            { ("Chest", "#chest-for-shadow-priest-dps") },
            { ("Wrist", "#wrist-for-shadow-priest-dps") },
            { ("Hands", "#hands-for-shadow-priest-dps") },
            { ("Waist", "#waist-for-shadow-priest-dps") },
            { ("Legs", "#legs-for-shadow-priest-dps") },
            { ("Feet", "#feet-for-shadow-priest-dps") },
            { ("Neck", "#neck-for-shadow-priest-dps") },
            { ("Ring", "#rings-for-shadow-priest-dps") },
            { ("Trinket", "#trinkets-for-shadow-priest-dps") },
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dpsh") },
            { ("Two Hand", "#staves-for-shadow-priest-dps") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-in-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-in-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-2") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-3") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-4") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-4") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-4") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-5") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-5") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-5") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-shadow-priest-dps")},
        { ("Shoulder", "#shoulders-for-shadow-priest-dps") },
        { ("Back", "#back-for-shadow-priest-dps") },
        { ("Chest", "#chest-for-shadow-priest-dps") },
        { ("Wrist", "#wrist-for-shadow-priest-dps") },
        { ("Hands", "#hands-for-shadow-priest-dps") },
        { ("Waist", "#waist-for-shadow-priest-dps") },
        { ("Legs", "#legs-for-shadow-priest-dps") },
        { ("Feet", "#feet-for-shadow-priest-dps") },
        { ("Neck", "#neck-for-shadow-priest-dps") },
        { ("Ring", "#rings-for-shadow-priest-dps") },
        { ("Trinket", "#trinkets-for-shadow-priest-dps") },
        { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps") },
        { ("Off Hand", "#off-hands-for-shadow-priest-dps") },
        { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps") },
        { ("Ranged/Relic", "#wands-for-shadow-priest-dps") },
    };
}