using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanElementalMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/elemental/";
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string GemsUrl => "dps-enchants-gems-pve";
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
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps-in-pre-raid") },
            { ("Shoulder", "#shoulder-for-elemental-shaman-dps-in-pre-raid") },
            { ("Back", "#back-for-elemental-shaman-dps-in-pre-raid") },
            { ("Chest", "#chest-for-elemental-shaman-dps-in-pre-raid") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps-in-pre-raid") },
            { ("Hands", "#hands-for-elemental-shaman-dps-in-pre-raid") },
            { ("Waist", "#waist-for-elemental-shaman-dps-in-pre-raid") },
            { ("Legs", "#legs-for-elemental-shaman-dps-in-pre-raid") },
            { ("Feet", "#feet-for-elemental-shaman-dps-in-pre-raid") },
            { ("Neck", "#neck-for-elemental-shaman-dps-in-pre-raid") },
            { ("Ring", "#finger-for-elemental-shaman-dps-in-pre-raid") },
            { ("Trinket", "#trinket-for-elemental-shaman-dps-in-pre-raid") },
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-pre-raid") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-pre-raid") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "h3#weapons") },
        { ("Ranged/Relic", "h3#sigil") },
    };
}