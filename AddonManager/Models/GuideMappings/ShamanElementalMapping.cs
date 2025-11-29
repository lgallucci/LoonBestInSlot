using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanElementalMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string PreRaidUrl => "classes/shaman/elemental/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "elemental-shaman-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/shaman/elemental/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "elemental-shaman-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "elemental-shaman-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "elemental-shaman-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}