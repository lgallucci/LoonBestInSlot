using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightBloodMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/blood/";
    public override string Class => "Death Knight";
    public override string Spec => "Blood";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tanking") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tank-phase-1") },
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
    {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-2") },
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-3") },
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Ranged/Relic", "#sigil") },
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Ranged/Relic", "#sigil") },
        };

    public override string PrePatchUrl => "tank-bis-gear-pve";

    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tanking") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };
}