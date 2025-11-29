using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidCatMapping : SpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Cat";
    public override string SpecUrl => "Feral";

    public override string PreRaidUrl => "classes/druid/feral/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "feral-druid-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/druid/feral/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "feral-druid-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "feral-druid-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "feral-druid-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}