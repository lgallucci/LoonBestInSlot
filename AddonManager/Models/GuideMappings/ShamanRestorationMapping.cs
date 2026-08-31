using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Restoration";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/shaman/healer-talent-builds-pve";

    public override string PreRaidUrl => "classes/shaman/healer-bis-gear-pve-pre-raid";
    public override string Phase1Url => "shaman-healer-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/shaman/healer-bis-gear-pve-phase-2";
    public override string Phase3Url => "shaman-healer-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "shaman-healer-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "shaman-healer-swp-phase-5-best-in-slot-gear-burning-crusade";
}