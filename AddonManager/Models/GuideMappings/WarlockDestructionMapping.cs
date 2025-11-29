using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockDestructionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Destruction";

    public override string PreRaidUrl => "classes/warlock/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "destruction-warlock-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warlock/destruction/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "destruction-warlock-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "destruction-warlock-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "destruction-warlock-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}