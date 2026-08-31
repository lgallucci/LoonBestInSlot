using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageArcaneMapping : SpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Arcane";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/mage/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/mage/arcane/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "arcane-mage-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/mage/arcane/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "arcane-mage-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "arcane-mage-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "arcane-mage-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}