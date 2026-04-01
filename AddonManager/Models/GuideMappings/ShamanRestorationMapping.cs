using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

    public override string PreRaidUrl => "healer-best-gear-bis-pre-raid";
    public override string Phase1Url => "healer-best-gear-bis-pve";
    public override string Phase2Url => "healer-best-gear-bis-pve";
    public override string Phase3Url => "healer-best-gear-bis-pve";
    public override string Phase4Url => "healer-best-gear-bis-pve";
    public override string Phase5Url => "";
}