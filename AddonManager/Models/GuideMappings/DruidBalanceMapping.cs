using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBalanceMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/balance/";
    public override string Class => "Druid";
    public override string Spec => "Balance";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps") },
            { ("Back", "#back-for-balance-druid-dps") },
            { ("Chest", "#chest-for-balance-druid-dps") },
            { ("Wrist", "#wrist-for-balance-druid-dps") },
            { ("Hands", "#hands-for-balance-druid-dps") },
            { ("Waist", "#waist-for-balance-druid-dps") },
            { ("Legs", "#legs-for-balance-druid-dps") },
            { ("Feet", "#feet-for-balance-druid-dps") },
            { ("Neck", "#neck-for-balance-druid-dps") },
            { ("Ring", "#rings-for-balance-druid-dps") },
            { ("Trinket", "#trinkets-for-balance-druid-dps") },
            { ("Main Hand", "#weapons-for-balance-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-balance-druid-dps") },
            { ("Ranged/Relic", "#relic-for-balance-druid-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps") },
            { ("Back", "#back-for-balance-druid-dps") },
            { ("Chest", "#chest-for-balance-druid-dps") },
            { ("Wrist", "#wrist-for-balance-druid-dps") },
            { ("Hands", "#hands-for-balance-druid-dps") },
            { ("Waist", "#waist-for-balance-druid-dps") },
            { ("Legs", "#legs-for-balance-druid-dps") },
            { ("Feet", "#feet-for-balance-druid-dps") },
            { ("Neck", "#neck-for-balance-druid-dps") },
            { ("Ring", "#rings-for-balance-druid-dps") },
            { ("Trinket", "#trinkets-for-balance-druid-dps") },
            { ("Main Hand", "#weapons-for-balance-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-balance-druid-dps") },
            { ("Ranged/Relic", "#relic-for-balance-druid-dps") }
        };
}