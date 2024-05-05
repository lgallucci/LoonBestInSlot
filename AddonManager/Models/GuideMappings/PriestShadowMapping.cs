using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestShadowMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/shadow/";
    public override string Class => "Priest";
    public override string Spec => "Shadow";

    public override string GemsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box~.socket-meta>.socket-blue>.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-shadow-priest-dps-pre-raid") },
            { ("Back", "#back-for-shadow-priest-dps-pre-raid") },
            { ("Chest", "#chest-for-shadow-priest-dps-pre-raid") },
            { ("Wrist", "#wrist-for-shadow-priest-dps-pre-raid") },
            { ("Hands", "#hands-for-shadow-priest-dps-pre-raid") },
            { ("Waist", "#waist-for-shadow-priest-dps-pre-raid") },
            { ("Legs", "#legs-for-shadow-priest-dps-pre-raid") },
            { ("Feet", "#feet-for-shadow-priest-dps-pre-raid") },
            { ("Neck", "#neck-for-shadow-priest-dps-pre-raid") },
            { ("Ring", "#rings-for-shadow-priest-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-shadow-priest-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-pre-raid") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-in-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-in-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-2") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-3") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-4") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-4") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-4") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-5") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-5") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-5") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-shadow-priest-dps")},
        { ("Shoulder", "#shoulders-for-shadow-priest-dps") },
        { ("Back", "#back-for-shadow-priest-dps") },
        { ("Chest", "#chest-for-shadow-priest-dps") },
        { ("Wrist", "#wrist-for-shadow-priest-dps") },
        { ("Hands", "#hands-for-shadow-priest-dps") },
        { ("Waist", "#waist-for-shadow-priest-dps") },
        { ("Legs", "#legs-for-shadow-priest-dps") },
        { ("Feet", "#feet-for-shadow-priest-dps") },
        { ("Neck", "#neck-for-shadow-priest-dps") },
        { ("Ring", "#rings-for-shadow-priest-dps") },
        { ("Trinket", "#trinkets-for-shadow-priest-dps") },
        { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps") },
        { ("Off Hand", "#off-hands-for-shadow-priest-dps") },
        { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps") },
        { ("Ranged/Relic", "#wands-for-shadow-priest-dps") },
    };
}