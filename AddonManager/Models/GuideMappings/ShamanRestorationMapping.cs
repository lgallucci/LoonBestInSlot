using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/shaman/restoration/";
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
        };
}