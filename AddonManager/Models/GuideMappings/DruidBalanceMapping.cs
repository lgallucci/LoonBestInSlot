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

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-2") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#body-armor") },
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-3") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#body-armor") },
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-4") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-4") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#body-armor") },
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-5") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-5") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-balance-druid-dps")},
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
        { ("Main Hand", "#weapons-for-balance-druid-dps")},
        { ("Off Hand", "#off-hand-items-for-balance-druid-dps") },
        { ("Ranged/Relic", "#idol-for-balance-druid-dps") },
    };
}