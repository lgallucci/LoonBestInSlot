using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/protection/";
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string GemsUrl => "tank-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "tank-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-protection-paladin-tank-pre-raid") },
            { ("Back", "#back-for-protection-paladin-tank-pre-raid") },
            { ("Chest", "#chest-for-protection-paladin-tank-pre-raid") },
            { ("Wrist", "#wrist-for-protection-paladin-tank-pre-raid") },
            { ("Hands", "#hands-for-protection-paladin-tank-pre-raid") },
            { ("Waist", "#waist-for-protection-paladin-tank-pre-raid") },
            { ("Legs", "#legs-for-protection-paladin-tank-pre-raid") },
            { ("Feet", "#feet-for-protection-paladin-tank-pre-raid") },
            { ("Neck", "#neck-for-protection-paladin-tank-pre-raid") },
            { ("Ring", "#rings-for-protection-paladin-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-protection-paladin-tank-pre-raid") },
            { ("Main Hand", "#weapons-for-protection-paladin-tank-pre-raid") },
            { ("Off Hand", "#shields-for-protection-paladin-tank-pre-raid") },
            { ("Ranged/Relic", "#librams-for-protection-paladin-tank-pre-raid") }
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