using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MonkBrewmasterMapping : SpecMapping
{
    public override string Class => "Monk";
    public override string Spec => "Brewmaster";

    public override string PreRaidUrl => "tank-best-gear-bis-pre-raid";
    public override string Phase1Url => "tank-best-gear-bis-pve";
    public override string Phase2Url => "";
    public override string Phase3Url => "";
    public override string Phase4Url => "";
    public override string Phase5Url => "";
}