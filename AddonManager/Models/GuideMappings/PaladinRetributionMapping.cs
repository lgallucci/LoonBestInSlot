using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinRetributionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/";
    public override string Class => "Paladin";
    public override string Spec => "Retribution";

    public override string GemsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            //{ ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box") },
            { ("Back", "h2#best-enchants~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-retribution-paladin-pre-raid") },
            { ("Shoulder", "#shoulders-for-retribution-paladin-pre-raid") },
            { ("Back", "#back-for-retribution-paladin-pre-raid") },
            { ("Chest", "#chest-for-retribution-paladin-pre-raid") },
            { ("Wrist", "#wrist-for-retribution-paladin-pre-raid") },
            { ("Hands", "#hands-for-retribution-paladin-pre-raid") },
            { ("Waist", "#waist-for-retribution-paladin-pre-raid") },
            { ("Legs", "#legs-for-retribution-paladin-pre-raid") },
            { ("Feet", "#feet-for-retribution-paladin-pre-raid") },
            { ("Neck", "#neck-for-retribution-paladin-pre-raid") },
            { ("Ring", "#rings-for-retribution-paladin-pre-raid") },
            { ("Trinket", "#trinkets-for-retribution-paladin-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-pre-raid") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-1") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-2") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-3") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-4") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-5") },
            { ("Ranged/Relic", "#libram") }
        };
}