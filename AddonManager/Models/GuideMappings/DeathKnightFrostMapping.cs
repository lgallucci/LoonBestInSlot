using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightFrostMapping : SpecMapping
{

    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/death-knight/frost/";

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
            { ("Neck", "#neck-for-frost-dps") },
            { ("Ring", "#rings-for-frost-death-knight-dps") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps") },
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
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
            { ("Ranged/Relic", "#relics-for-frost-death-knight-dps") },
        };
}