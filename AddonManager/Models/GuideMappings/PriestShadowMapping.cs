using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestShadowMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Shadow";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/priest/shadow/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/priest/shadow/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "shadow-priest-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/priest/shadow/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "shadow-priest-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "shadow-priest-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "shadow-priest-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}