using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightUnholyMapping : SpecMapping
{
    public override string Class => "Death Knight";
    public override string Spec => "Unholy";

    public override string PreRaidUrl => "dps-best-gear-bis-pre-raid";
    public override string Phase1Url => "dps-best-gear-bis-pve";
    public override string Phase2Url => "dps-best-gear-bis-pve";
    public override string Phase3Url => "";
    public override string Phase4Url => "";
    public override string Phase5Url => "";

}