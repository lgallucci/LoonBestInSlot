using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFireMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Fire";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/mage/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/mage/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "fire-mage-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/mage/fire/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "fire-mage-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "fire-mage-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "fire-mage-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}