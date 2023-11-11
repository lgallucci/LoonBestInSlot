using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightFrostMapping : SpecMapping
{

    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/";

    public override string Class => "Death Knight";

    public override string Spec => "Frost";

    public override string GemsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps-pre-raid") },
            { ("Back", "#back-for-frost-death-knight-dps-pre-raid") },
            { ("Chest", "#chest-for-frost-death-knight-dps-pre-raid") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps-pre-raid") },
            { ("Hands", "#hands-for-frost-death-knight-dps-pre-raid") },
            { ("Waist", "#waist-for-frost-death-knight-dps-pre-raid") },
            { ("Legs", "#legs-for-frost-death-knight-dps-pre-raid") },
            { ("Feet", "#feet-for-frost-death-knight-dps-pre-raid") },
            { ("Neck", "#neck-for-frost-death-knight-dps-pre-raid") },
            { ("Ring", "#rings-for-frost-death-knight-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-pre-raid") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-pre-raid") },
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-1") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-1") },
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
}