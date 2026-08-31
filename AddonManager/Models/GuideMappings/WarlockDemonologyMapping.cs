using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockDemonologyMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Demonology";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/warlock/dps-talent-builds-pve"; 

    public override string PreRaidUrl => "classes/warlock/demonology/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "demonology-warlock-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/warlock/demonology/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "demonology-warlock-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "demonology-warlock-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "demonology-warlock-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}