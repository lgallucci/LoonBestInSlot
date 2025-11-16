using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanEnhancementMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string PreRaidUrl => "dps-best-gear-bis-pre-raid";
    public override string Phase1Url => "dps-best-gear-bis-pve";
    public override string Phase2Url => "dps-best-gear-bis-pve";
    public override string Phase3Url => "";
    public override string Phase4Url => "";
    public override string Phase5Url => "";
}