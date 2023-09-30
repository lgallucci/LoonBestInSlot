using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Bear";

    public override string GemsUrl => "tank-enchants-gems-pve";
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
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "tank-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank-pre-raid") },
            { ("Back", "#back-for-feral-druid-tank-pre-raid") },
            { ("Chest", "#chest-for-feral-druid-tank-pre-raid") },
            { ("Wrist", "#wrist-for-feral-druid-tank-pre-raid") },
            { ("Hands", "#hands-for-feral-druid-tank-pre-raid") },
            { ("Waist", "#waist-for-feral-druid-tank-pre-raid") },
            { ("Legs", "#legs-for-feral-druid-tank-pre-raid") },
            { ("Feet", "#feet-for-feral-druid-tank-pre-raid") },
            { ("Neck", "#neck-for-feral-druid-tank-pre-raid") },
            { ("Ring", "#rings-for-feral-druid-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-feral-druid-tank-pre-raid") },
            { ("Two Hand", "#weapons-for-feral-druid-tank-pre-raid") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-pre-raid") }
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-1") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-1") }
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-2") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-2") }
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-3") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-3") }
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-4") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-4") }
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-5") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-5") }
        };

}