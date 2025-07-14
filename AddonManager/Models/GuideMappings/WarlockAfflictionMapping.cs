using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockAfflictionMapping : SpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Affliction";

    public override string PreRaidUrl => "dps-best-gear-bis-pre-raid";
    public override string Phase1Url => "dps-best-gear-bis-pve";
    public override string Phase2Url => "";
    public override string Phase3Url => "";
    public override string Phase4Url => "";
    public override string Phase5Url => "";
}