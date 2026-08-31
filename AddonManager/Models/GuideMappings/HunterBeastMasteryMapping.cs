using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string Class => "Hunter";
    public override string Spec => "Beast Mastery";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/hunter/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/hunter/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "beast-mastery-hunter-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/hunter/beast-mastery/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "beast-mastery-hunter-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "beast-mastery-hunter-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "beast-mastery-hunter-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}