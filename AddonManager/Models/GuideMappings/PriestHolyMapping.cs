using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Holy";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/priest/healer-talent-builds-pve";

    public override string PreRaidUrl => "classes/priest/healer-bis-gear-pve-pre-raid";
    public override string Phase1Url => "priest-healer-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/priest/healer-bis-gear-pve-phase-2";
    public override string Phase3Url => "priest-healer-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "priest-healer-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "priest-healer-swp-phase-5-best-in-slot-gear-burning-crusade";
}