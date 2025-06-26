using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tank") },
            { ("Shoulder", "#shoulders-for-protection-paladin-tank") },
            { ("Back", "#back-for-protection-paladin-tank") },
            { ("Chest", "#chest-for-protection-paladin-tank") },
            { ("Wrist", "#wrist-for-protection-paladin-tank") },
            { ("Hands", "#hands-for-protection-paladin-tank") },
            { ("Waist", "#waist-for-protection-paladin-tank") },
            { ("Legs", "#legs-for-protection-paladin-tank") },
            { ("Feet", "#feet-for-protection-paladin-tank") },
            { ("Neck", "#neck-for-protection-paladin-tank") },
            { ("Ring", "#rings-for-protection-paladin-tank") },
            { ("Trinket", "#trinkets-for-protection-paladin-tank") },
            { ("Main Hand", "#weapons-for-protection-paladin-tank") },
            { ("Off Hand", "#shields-for-protection-paladin-tank") },
            { ("Ranged/Relic", "#relics-for-protection-paladin-tank") }
        };
}