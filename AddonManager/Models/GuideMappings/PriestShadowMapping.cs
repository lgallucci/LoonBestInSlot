using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestShadowMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Shadow";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps") },
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
            { ("Two Hand", "#staves-for-shadow-priest-dps") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps") }
        };
}