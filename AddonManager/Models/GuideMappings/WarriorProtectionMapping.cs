using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorProtectionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warrior/protection/";
    public override string Class => "Warrior";
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
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "tank-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank-pre-raid") },
            { ("Back", "#back-for-protection-warrior-tank-pre-raid") },
            { ("Chest", "#chest-for-protection-warrior-tank-pre-raid") },
            { ("Wrist", "#wrist-for-protection-warrior-tank-pre-raid") },
            { ("Hands", "#hands-for-protection-warrior-tank-pre-raid") },
            { ("Waist", "#waist-for-protection-warrior-tank-pre-raid") },
            { ("Legs", "#legs-for-protection-warrior-tank-pre-raid") },
            { ("Feet", "#feet-for-protection-warrior-tank-pre-raid") },
            { ("Neck", "#neck-for-protection-warrior-tank-pre-raid") },
            { ("Ring", "#rings-for-protection-warrior-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-pre-raid") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-pre-raid") }
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-in-phase-1") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-in-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-in-phase-1") }
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank-in-phase-2") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank-in-phase-2") },
            { ("Back", "#back-for-protection-warrior-tank-in-phase-2") },
            { ("Chest", "#chest-for-protection-warrior-tank-in-phase-2") },
            { ("Wrist", "#wrist-for-protection-warrior-tank-in-phase-2") },
            { ("Hands", "#hands-for-protection-warrior-tank-in-phase-2") },
            { ("Waist", "#waist-for-protection-warrior-tank-in-phase-2") },
            { ("Legs", "#legs-for-protection-warrior-tank-in-phase-2") },
            { ("Feet", "#feet-for-protection-warrior-tank-in-phase-2") },
            { ("Neck", "#neck-for-protection-warrior-tank-in-phase-2") },
            { ("Ring", "#rings-for-protection-warrior-tank-in-phase-2") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank-in-phase-2") },
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-in-phase-2") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-in-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-in-phase-2") }
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#shield") },
            { ("Ranged/Relic", "#ranged") }
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#shield") },
            { ("Ranged/Relic", "#ranged") }
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#shield") },
            { ("Ranged/Relic", "#ranged") }
        };

}