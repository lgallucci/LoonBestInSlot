using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanElementalMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/shaman/elemental/";
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps") },
            { ("Shoulder", "#shoulders-for-elemental-shaman-dps") },
            { ("Back", "#back-for-elemental-shaman-dps") },
            { ("Chest", "#chest-for-elemental-shaman-dps") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps") },
            { ("Hands", "#hands-for-elemental-shaman-dps") },
            { ("Waist", "#waist-for-elemental-shaman-dps") },
            { ("Legs", "#legs-for-elemental-shaman-dps") },
            { ("Feet", "#feet-for-elemental-shaman-dps") },
            { ("Neck", "#neck-for-elemental-shaman-dps") },
            { ("Ring", "#rings-for-elemental-shaman-dps") },
            { ("Trinket", "#trinkets-for-elemental-shaman-dps") },
            { ("Two Hand", "#staff-weapons-for-elemental-shaman-dps")},
            { ("Main Hand", "#main-hand-weapons-for-elemental-shaman-dps") },
            { ("Off Hand", "#off-hands-for-elemental-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-elemental-shaman-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps") },
            { ("Shoulder", "#shoulders-for-elemental-shaman-dps") },
            { ("Back", "#back-for-elemental-shaman-dps") },
            { ("Chest", "#chest-for-elemental-shaman-dps") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps") },
            { ("Hands", "#hands-for-elemental-shaman-dps") },
            { ("Waist", "#waist-for-elemental-shaman-dps") },
            { ("Legs", "#legs-for-elemental-shaman-dps") },
            { ("Feet", "#feet-for-elemental-shaman-dps") },
            { ("Neck", "#neck-for-elemental-shaman-dps") },
            { ("Ring", "#rings-for-elemental-shaman-dps") },
            { ("Trinket", "#trinkets-for-elemental-shaman-dps") },
            { ("Two Hand", "#staff-weapons-for-elemental-shaman-dps")},
            { ("Main Hand", "#main-hand-weapons-for-elemental-shaman-dps") },
            { ("Off Hand", "#off-hands-for-elemental-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-elemental-shaman-dps") }
        };
}