using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightFrostMapping : SpecMapping
{

    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/frost/";

    public override string Class => "Death Knight";

    public override string Spec => "Frost";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps") },
            { ("Back", "#back-for-frost-death-knight-dps") },
            { ("Chest", "#chest-for-frost-death-knight-dps") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps") },
            { ("Hands", "#hands-for-frost-death-knight-dps") },
            { ("Waist", "#waist-for-frost-death-knight-dps") },
            { ("Legs", "#legs-for-frost-death-knight-dps") },
            { ("Feet", "#feet-for-frost-death-knight-dps") },
            { ("Neck", "#neck-for-frost-death-knight-dps") },
            { ("Ring", "#rings-for-frost-death-knight-dps") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps") },
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps") },
            { ("Back", "#back-for-frost-death-knight-dps") },
            { ("Chest", "#chest-for-frost-death-knight-dps") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps") },
            { ("Hands", "#hands-for-frost-death-knight-dps") },
            { ("Waist", "#waist-for-frost-death-knight-dps") },
            { ("Legs", "#legs-for-frost-death-knight-dps") },
            { ("Feet", "#feet-for-frost-death-knight-dps") },
            { ("Neck", "#neck-for-frost-death-knight-dps") },
            { ("Ring", "#rings-for-frost-death-knight-dps") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps") },
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-2") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-2") },
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-3") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-3") },
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-4") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-4") },
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-5") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-5") },
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
            { ("Neck", "#neck-for-frost-death-knight-dps") },
            { ("Two Hand", "h3#weapons") },
    };
}