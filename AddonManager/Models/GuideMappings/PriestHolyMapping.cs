using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string PreRaidUrl => "healer-best-gear-bis-pre-raid";
    public override string Phase1Url => "healer-best-gear-bis-pve";
    public override string Phase2Url => "";
    public override string Phase3Url => "";
    public override string Phase4Url => "";
    public override string Phase5Url => "";
}