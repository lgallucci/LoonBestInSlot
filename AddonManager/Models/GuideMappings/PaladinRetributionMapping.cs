using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinRetributionMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Retribution";
    public override string ClassUri => "https://www.wowhead.com/tbc/guide/classes/paladin/retribution/dps-talent-builds-pve";

    public override string PreRaidUrl => "classes/paladin/retribution/dps-bis-gear-pve-pre-raid";
    public override string Phase1Url => "retribution-paladin-dps-karazhan-best-in-slot-gear-burning-crusade-classic-wow";
    public override string Phase2Url => "classes/paladin/retribution/dps-bis-gear-pve-phase-2";
    public override string Phase3Url => "retribution-paladin-dps-bt-hyjal-phase-3-best-in-slot-gear-burning-crusade";
    public override string Phase4Url => "retribution-paladin-dps-za-phase-4-best-in-slot-gear-burning-crusade";
    public override string Phase5Url => "retribution-paladin-dps-swp-phase-5-best-in-slot-gear-burning-crusade";
}