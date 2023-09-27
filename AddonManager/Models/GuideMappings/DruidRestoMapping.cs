using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidRestoMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/druid/restoration/";
    public override string Class => "Druid";
    public override string Spec => "Restoration";

    public override string GemsUrl => "healer-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

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

    public override string Phase0Url => "healer-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-druid-healer-pre-raid") },
            { ("Shoulder", "#shoulders-for-restoration-druid-healer-pre-raid") },
            { ("Back", "#back-for-restoration-druid-healer-pre-raid") },
            { ("Chest", "#chest-for-restoration-druid-healer-pre-raid") },
            { ("Wrist", "#wrist-for-restoration-druid-healer-pre-raid") },
            { ("Hands", "#hands-for-restoration-druid-healer-pre-raid") },
            { ("Waist", "#waist-for-restoration-druid-healer-pre-raid") },
            { ("Legs", "#legs-for-restoration-druid-healer-pre-raid") },
            { ("Feet", "#feet-for-restoration-druid-healer-pre-raid") },
            { ("Neck", "#neck-for-restoration-druid-healer-pre-raid") },
            { ("Ring", "#rings-for-restoration-druid-healer-pre-raid") },
            { ("Trinket", "#trinkets-for-restoration-druid-healer-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-pre-raid") }
        };

    public override string Phase1Url => "healer-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-1") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-1") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-2") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-3") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-3") }
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();

}