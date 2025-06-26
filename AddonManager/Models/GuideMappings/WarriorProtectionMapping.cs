using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorProtectionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/warrior/protection/";
    public override string Class => "Warrior";
    public override string Spec => "Protection";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank") },
            { ("Back", "#back-for-protection-warrior-tank") },
            { ("Chest", "#chest-for-protection-warrior-tank") },
            { ("Wrist", "#wrist-for-protection-warrior-tank") },
            { ("Hands", "#hands-for-protection-warrior-tank") },
            { ("Waist", "#waist-for-protection-warrior-tank") },
            { ("Legs", "#legs-for-protection-warrior-tank") },
            { ("Feet", "#feet-for-protection-warrior-tank") },
            { ("Neck", "#neck-for-protection-warrior-tank") },
            { ("Ring", "#rings-for-protection-warrior-tank") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank") },
            { ("Main Hand", "#main-hand-weapons-for-protection-warrior-tank") },
            { ("Off Hand", "#shields-for-protection-warrior-tank") },
            { ("Ranged/Relic", "#ranged-weapons-for-protection-warrior-tank") }
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank") },
            { ("Back", "#back-for-protection-warrior-tank") },
            { ("Chest", "#chest-for-protection-warrior-tank") },
            { ("Wrist", "#wrist-for-protection-warrior-tank") },
            { ("Hands", "#hands-for-protection-warrior-tank") },
            { ("Waist", "#waist-for-protection-warrior-tank") },
            { ("Legs", "#legs-for-protection-warrior-tank") },
            { ("Feet", "#feet-for-protection-warrior-tank") },
            { ("Neck", "#neck-for-protection-warrior-tank") },
            { ("Ring", "#rings-for-protection-warrior-tank") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank") },
            { ("Main Hand", "#main-hand-weapons-for-protection-warrior-tank") },
            { ("Off Hand", "#shields-for-protection-warrior-tank") },
            { ("Ranged/Relic", "#ranged-weapons-for-protection-warrior-tank") }
        };
}