using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidRestoMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/restoration/";
    public override string Class => "Druid";
    public override string Spec => "Restoration";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-druid-healer") },
            { ("Shoulder", "#shoulders-for-restoration-druid-healer") },
            { ("Back", "#back-for-restoration-druid-healer") },
            { ("Chest", "#chest-for-restoration-druid-healer") },
            { ("Wrist", "#wrist-for-restoration-druid-healer") },
            { ("Hands", "#hands-for-restoration-druid-healer") },
            { ("Waist", "#waist-for-restoration-druid-healer") },
            { ("Legs", "#legs-for-restoration-druid-healer") },
            { ("Feet", "#feet-for-restoration-druid-healer") },
            { ("Neck", "#neck-for-restoration-druid-healer") },
            { ("Ring", "#rings-for-restoration-druid-healer") },
            { ("Trinket", "#trinkets-for-restoration-druid-healer") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-druid-healer") },
            { ("Off Hand", "#off-hands-for-restoration-druid-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-druid-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-druid-healer") },
            { ("Shoulder", "#shoulders-for-restoration-druid-healer") },
            { ("Back", "#back-for-restoration-druid-healer") },
            { ("Chest", "#chest-for-restoration-druid-healer") },
            { ("Wrist", "#wrist-for-restoration-druid-healer") },
            { ("Hands", "#hands-for-restoration-druid-healer") },
            { ("Waist", "#waist-for-restoration-druid-healer") },
            { ("Legs", "#legs-for-restoration-druid-healer") },
            { ("Feet", "#feet-for-restoration-druid-healer") },
            { ("Neck", "#neck-for-restoration-druid-healer") },
            { ("Ring", "#rings-for-restoration-druid-healer") },
            { ("Trinket", "#trinkets-for-restoration-druid-healer") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-druid-healer") },
            { ("Off Hand", "#off-hands-for-restoration-druid-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-druid-healer") }
        };
}