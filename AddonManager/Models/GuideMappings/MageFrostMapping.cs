using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string PreRaidUrl => "classes/mage/frost/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "frost-mage-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/mage/frost/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "frost-mage-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "frost-mage-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "frost-mage-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}