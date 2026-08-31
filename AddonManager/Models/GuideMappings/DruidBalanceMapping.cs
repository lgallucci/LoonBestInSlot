using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBalanceMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Balance";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/druid/balance/dps-overview-pve";

    public override string PreRaidUrl => "classes/druid/balance/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "balance-druid-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/druid/balance/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "balance-druid-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "balance-druid-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "balance-druid-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}