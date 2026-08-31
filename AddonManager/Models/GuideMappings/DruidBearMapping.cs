using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Bear";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/druid/feral/tank-overview-pve";
    public override string SpecUrl => "Guardian";

    public override string PreRaidUrl => "classes/druid/feral/tank-bis-gear-pve-pre-raid";
    public override string Phase1Url => "feral-druid-tank-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/druid/feral/tank-bis-gear-pve-phase-2";
    public override string Phase3Url => "feral-druid-tank-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "feral-druid-tank-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "feral-druid-tank-swp-phase-5-best-in-slot-gear-burning-crusade";

}