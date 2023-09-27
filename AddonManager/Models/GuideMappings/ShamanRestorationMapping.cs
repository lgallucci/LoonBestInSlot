using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/";
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

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
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "healer-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer-in-pre-raid") },
            { ("Shoulder", "#shoulder-for-restoration-shaman-healer-in-pre-raid") },
            { ("Back", "#back-for-restoration-shaman-healer-in-pre-raid") },
            { ("Chest", "#chest-for-restoration-shaman-healer-in-pre-raid") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer-in-pre-raid") },
            { ("Hands", "#hands-for-restoration-shaman-healer-in-pre-raid") },
            { ("Waist", "#waist-for-restoration-shaman-healer-in-pre-raid") },
            { ("Legs", "#legs-for-restoration-shaman-healer-in-pre-raid") },
            { ("Feet", "#feet-for-restoration-shaman-healer-in-pre-raid") },
            { ("Neck", "#neck-for-restoration-shaman-healer-in-pre-raid") },
            { ("Ring", "#finger-for-restoration-shaman-healer-in-pre-raid") },
            { ("Trinket", "#trinket-for-restoration-shaman-healer-in-pre-raid") },
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-pre-raid") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-pre-raid") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-pre-raid") }
        };

    public override string Phase1Url => "healer-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-1") }
        };

    public override string Phase2Url => "healer-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-2") }
        };

    public override string Phase3Url => "healer-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-3") }
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}