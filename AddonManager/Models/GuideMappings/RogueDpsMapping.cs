using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueMapping : SpecMapping
{
    public override string Class => "Rogue";
    public override string Spec => "Dps";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/rogue/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/rogue/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "rogue-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/rogue/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "rogue-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "rogue-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "rogue-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}