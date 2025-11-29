using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterSurvivalMapping : SpecMapping
{
    public override string Class => "Hunter";
    public override string Spec => "Survival";

    public override string PreRaidUrl => "classes/hunter/survival/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "survival-hunter-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/hunter/survival/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "survival-hunter-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "survival-hunter-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "survival-hunter-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}