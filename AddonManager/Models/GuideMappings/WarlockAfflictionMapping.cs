using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockAfflictionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Affliction";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/warlock/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/warlock/affliction/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "affliction-warlock-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warlock/affliction/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "affliction-warlock-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "affliction-warlock-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "affliction-warlock-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}