using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string PreRaidUrl => "classes/paladin/tank-bis-gear-pve-pre-raid";
    public override string Phase1Url => "paladin-tank-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/paladin/tank-bis-gear-pve-phase-2";
    public override string Phase3Url => "paladin-tank-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "paladin-tank-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "paladin-tank-swp-phase-5-best-in-slot-gear-burning-crusade";
}