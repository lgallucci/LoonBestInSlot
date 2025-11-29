using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinHolyMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Holy";

    public override string PreRaidUrl => "classes/paladin/holy/healer-bis-gear-pve-pre-raid";
    public override string Phase1Url => "holy-paladin-healer-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/paladin/holy/healer-bis-gear-pve-phase-2";
    public override string Phase3Url => "holy-paladin-healer-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "holy-paladin-healer-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "holy-paladin-healer-swp-phase-5-best-in-slot-gear-burning-crusade";
}