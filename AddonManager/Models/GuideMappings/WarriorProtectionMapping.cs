using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorProtectionMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Protection";

    public override string PreRaidUrl => "classes/warrior/protection/tank-bis-gear-pve-pre-raid";
    public override string Phase1Url => "protection-warrior-tank-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warrior/protection/tank-bis-gear-pve-phase-2";
    public override string Phase3Url => "protection-warrior-tank-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "protection-warrior-tank-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "protection-warrior-tank-swp-phase-5-best-in-slot-gear-burning-crusade";
}