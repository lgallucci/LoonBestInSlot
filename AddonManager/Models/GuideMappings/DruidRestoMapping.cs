using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidRestoMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Restoration";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/druid/healer-talent-builds-pve";

    public override string PreRaidUrl => "classes/druid/healer-bis-gear-pve-pre-raid";
    public override string Phase1Url => "druid-healer-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/druid/healer-bis-gear-pve-phase-2";
    public override string Phase3Url => "druid-healer-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "druid-healer-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "druid-healer-swp-phase-5-best-in-slot-gear-burning-crusade";
}