using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanEnhancementMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string PreRaidUrl => "classes/shaman/enhancement/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "enhancement-shaman-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/shaman/enhancement/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "enhancement-shaman-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "enhancement-shaman-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "enhancement-shaman-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}