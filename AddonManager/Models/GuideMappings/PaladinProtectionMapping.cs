using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/protection/";
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tank") },
            { ("Shoulder", "#shoulders-for-protection-paladin-tank") },
            { ("Back", "#back-for-protection-paladin-tank") },
            { ("Chest", "#chest-for-protection-paladin-tank") },
            { ("Wrist", "#wrist-for-protection-paladin-tank") },
            { ("Hands", "#hands-for-protection-paladin-tank") },
            { ("Waist", "#waist-for-protection-paladin-tank") },
            { ("Legs", "#legs-for-protection-paladin-tank") },
            { ("Feet", "#feet-for-protection-paladin-tank") },
            { ("Neck", "#neck-for-protection-paladin-tank") },
            { ("Ring", "#rings-for-protection-paladin-tank") },
            { ("Trinket", "#trinkets-for-protection-paladin-tank") },
            { ("Main Hand", "#weapons-for-protection-paladin-tank") },
            { ("Off Hand", "#shields-for-protection-paladin-tank") },
            { ("Ranged/Relic", "#librams-for-protection-paladin-tank") }
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-protection-paladin-tank-phase-1") },
            { ("Off Hand", "#shields-for-protection-paladin-tank-phase-1") },
            { ("Ranged/Relic", "#librams-for-protection-paladin-tank-phase-1") }
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        };

    public override string PrePatchUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tanking") },
            { ("Shoulder", "#shoulders-for-protection-paladintanking") },
            { ("Back", "#cloak-for-protection-paladin-tanking") },
            { ("Chest", "#chest-for-protection-paladin-tanking") },
            { ("Wrist", "#bracer-for-protection-paladin-tanking") },
            { ("Hands", "#gloves-for-protection-paladin-tanking") },
            { ("Waist", "#belt-for-protection-paladin-tanking") },
            { ("Legs", "#legs-for-protection-paladin-tanking") },
            { ("Feet", "#boots-for-protection-paladin-tanking") },
            { ("Neck", "#neck-for-protection-paladin-tanking") },
            { ("Ring", "#rings-for-protection-paladin-tanking") },
            { ("Trinket", "#trinkets-for-protection-paladin-tanking") },
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") },
        };
}