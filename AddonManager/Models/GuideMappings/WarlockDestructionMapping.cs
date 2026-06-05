using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockDestructionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Destruction";

    public override string PreRaidUrl => "dps-best-gear-bis-pre-raid";
    public override string Phase1Url => "dps-best-gear-bis-pve";
    public override string Phase2Url => "dps-best-gear-bis-pve";
    public override string Phase3Url => "dps-best-gear-bis-pve";
    public override string Phase4Url => "dps-best-gear-bis-pve";
    public override string Phase5Url => "dps-best-gear-bis-pve";
}