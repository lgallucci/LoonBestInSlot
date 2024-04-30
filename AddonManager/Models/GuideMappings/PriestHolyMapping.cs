using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/holy/";
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string GemsUrl => "healer-enchants-gems-pve";
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
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "healer-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer-pre-raid") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer-pre-raid") },
            { ("Back", "#back-for-holy-priest-healer-pre-raid") },
            { ("Chest", "#chest-for-holy-priest-healer-pre-raid") },
            { ("Wrist", "#wrist-for-holy-priest-healer-pre-raid") },
            { ("Hands", "#hands-for-holy-priest-healer-pre-raid") },
            { ("Waist", "#waist-for-holy-priest-healer-pre-raid") },
            { ("Legs", "#legs-for-holy-priest-healer-pre-raid") },
            { ("Feet", "#feet-for-holy-priest-healer-pre-raid") },
            { ("Neck", "#neck-for-holy-priest-healer-pre-raid") },
            { ("Ring", "#rings-for-holy-priest-healer-pre-raid") },
            { ("Trinket", "#trinkets-for-holy-priest-healer-pre-raid") },
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-pre-raid") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-pre-raid") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-pre-raid") }
        };

    public override string Phase1Url => "healer-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-1") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-1") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-1") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-2") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-2") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-3") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-3") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-3") }
        };

    public override string Phase4Url => "healer-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-4") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-4") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-4") }
        };

    public override string Phase5Url => "healer-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-5") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-5") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-5") }
        };

}