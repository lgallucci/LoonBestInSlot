using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorProtectionMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Protection";

    public override string PreRaidUrl => "tank-best-gear-bis-pre-raid";
    public override string Phase1Url => "tank-best-gear-bis-pve";
    public override string Phase2Url => "tank-best-gear-bis-pve";
    public override string Phase3Url => "tank-best-gear-bis-pve";
    public override string Phase4Url => "tank-best-gear-bis-pve";
    public override string Phase5Url => "tank-best-gear-bis-pve";
}