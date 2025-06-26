using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterMarksmanshipMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/hunter/marksmanship/";
    public override string Class => "Hunter";
    public override string Spec => "Marksmanship";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-marksmanship-hunter-dps") },
            { ("Shoulder", "#shoulders-for-marksmanship-hunter-dps") },
            { ("Back", "#back-for-marksmanship-hunter-dps") },
            { ("Chest", "#chest-for-marksmanship-hunter-dps") },
            { ("Wrist", "#wrist-for-marksmanship-hunter-dps") },
            { ("Hands", "#hands-for-marksmanship-hunter-dps") },
            { ("Waist", "#waist-for-marksmanship-hunter-dps") },
            { ("Legs", "#legs-for-marksmanship-hunter-dps") },
            { ("Feet", "#feet-for-marksmanship-hunter-dps") },
            { ("Neck", "#neck-for-marksmanship-hunter-dps") },
            { ("Ring", "#rings-for-marksmanship-hunter-dps") },
            { ("Trinket", "#trinkets-for-marksmanship-hunter-dps") },
            { ("Two Hand", "#melee-weapons-for-marksmanship-hunter-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-marksmanship-hunter-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-marksmanship-hunter-dps") },
            { ("Shoulder", "#shoulders-for-marksmanship-hunter-dps") },
            { ("Back", "#back-for-marksmanship-hunter-dps") },
            { ("Chest", "#chest-for-marksmanship-hunter-dps") },
            { ("Wrist", "#wrist-for-marksmanship-hunter-dps") },
            { ("Hands", "#hands-for-marksmanship-hunter-dps") },
            { ("Waist", "#waist-for-marksmanship-hunter-dps") },
            { ("Legs", "#legs-for-marksmanship-hunter-dps") },
            { ("Feet", "#feet-for-marksmanship-hunter-dps") },
            { ("Neck", "#neck-for-marksmanship-hunter-dps") },
            { ("Ring", "#rings-for-marksmanship-hunter-dps") },
            { ("Trinket", "#trinkets-for-marksmanship-hunter-dps") },
            { ("Two Hand", "#melee-weapons-for-marksmanship-hunter-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-marksmanship-hunter-dps") }
        };
}