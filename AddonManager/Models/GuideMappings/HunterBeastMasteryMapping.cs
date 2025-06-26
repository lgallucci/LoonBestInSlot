using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string UrlBase => "hunter/beast-mastery/";
    public override string Class => "Hunter";
    public override string Spec => "Beast Mastery";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-beast-mastery-hunter-dps") },
            { ("Shoulder", "#shoulders-for-beast-mastery-hunter-dps") },
            { ("Back", "#back-for-beast-mastery-hunter-dps") },
            { ("Chest", "#chest-for-beast-mastery-hunter-dps") },
            { ("Wrist", "#wrist-for-beast-mastery-hunter-dps") },
            { ("Hands", "#hands-for-beast-mastery-hunter-dps") },
            { ("Waist", "#waist-for-beast-mastery-hunter-dps") },
            { ("Legs", "#legs-for-beast-mastery-hunter-dps") },
            { ("Feet", "#feet-for-beast-mastery-hunter-dps") },
            { ("Neck", "#neck-for-beast-mastery-hunter-dps") },
            { ("Ring", "#rings-for-beast-mastery-hunter-dps") },
            { ("Trinket", "#trinkets-for-beast-mastery-hunter-dps") },
            { ("Two Hand", "#melee-weapons-for-beast-mastery-hunter-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-beast-mastery-hunter-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-beast-mastery-hunter-dps") },
            { ("Shoulder", "#shoulders-for-beast-mastery-hunter-dps") },
            { ("Back", "#back-for-beast-mastery-hunter-dps") },
            { ("Chest", "#chest-for-beast-mastery-hunter-dps") },
            { ("Wrist", "#wrist-for-beast-mastery-hunter-dps") },
            { ("Hands", "#hands-for-beast-mastery-hunter-dps") },
            { ("Waist", "#waist-for-beast-mastery-hunter-dps") },
            { ("Legs", "#legs-for-beast-mastery-hunter-dps") },
            { ("Feet", "#feet-for-beast-mastery-hunter-dps") },
            { ("Neck", "#neck-for-beast-mastery-hunter-dps") },
            { ("Ring", "#rings-for-beast-mastery-hunter-dps") },
            { ("Trinket", "#trinkets-for-beast-mastery-hunter-dps") },
            { ("Two Hand", "#melee-weapons-for-beast-mastery-hunter-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-beast-mastery-hunter-dps") }
        };
}