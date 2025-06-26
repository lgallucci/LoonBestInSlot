using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanEnhancementMapping : SpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps") },
            { ("Shoulder", "#shoulders-for-enhancement-shaman-dps") },
            { ("Back", "#back-for-enhancement-shaman-dps") },
            { ("Chest", "#chest-for-enhancement-shaman-dps") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps") },
            { ("Hands", "#hands-for-enhancement-shaman-dps") },
            { ("Waist", "#waist-for-enhancement-shaman-dps") },
            { ("Legs", "#legs-for-enhancement-shaman-dps") },
            { ("Feet", "#feet-for-enhancement-shaman-dps") },
            { ("Neck", "#neck-for-enhancement-shaman-dps") },
            { ("Ring", "#rings-for-enhancement-shaman-dps") },
            { ("Trinket", "#trinkets-for-enhancement-shaman-dps") },
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-enhancement-shaman-dps") }
        };
}