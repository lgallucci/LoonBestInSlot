using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorArmsMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Arms";

    public override string PreRaidUrl => "classes/warrior/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "arms-warrior-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warrior/arms/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "arms-warrior-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "arms-warrior-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "arms-warrior-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}