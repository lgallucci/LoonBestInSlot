using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterMarksmanshipMapping : SpecMapping
{
    public override string Class => "Hunter";
    public override string Spec => "Marksmanship";

    public override string PreRaidUrl => "classes/hunter/marksmanship/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "marksmanship-hunter-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/hunter/marksmanship/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "marksmanship-hunter-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "marksmanship-hunter-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "marksmanship-hunter-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}