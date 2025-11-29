using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorFuryMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Fury";

    public override string PreRaidUrl => "classes/warrior/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "arms-warrior-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warrior/fury/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "fury-warrior-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "fury-warrior-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "fury-warrior-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}