using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorArmsMapping : SpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Arms";

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-arms-warrior-dps") },
            { ("Shoulder", "#shoulders-for-arms-warrior-dps") },
            { ("Back", "#back-for-arms-warrior-dps") },
            { ("Chest", "#chest-for-arms-warrior-dps") },
            { ("Wrist", "#wrist-for-arms-warrior-dps") },
            { ("Hands", "#hands-for-arms-warrior-dps") },
            { ("Waist", "#waist-for-arms-warrior-dps") },
            { ("Legs", "#legs-for-arms-warrior-dps") },
            { ("Feet", "#feet-for-arms-warrior-dps") },
            { ("Neck", "#neck-for-arms-warrior-dps") },
            { ("Ring", "#rings-for-arms-warrior-dps") },
            { ("Trinket", "#trinkets-for-arms-warrior-dps") },
            { ("Two Hand", "#weapons-for-arms-warrior-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-arms-warrior-dps") },
        };
}