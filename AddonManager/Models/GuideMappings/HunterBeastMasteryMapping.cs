using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/hunter/beast-mastery/";
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

    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", ".box:nth-of-type(1)") },
        { ("Gem", ".box:nth-of-type(2)") },
        { ("Gem", ".box:nth-of-type(3)") },
        { ("Gem", ".box:nth-of-type(4)") },
        //Enchants
        { ("Head", ".box:nth-of-type(5)") },
        { ("Shoulder", ".box:nth-of-type(6)") },
        { ("Back", ".box:nth-of-type(7)") },
        { ("Chest", ".box:nth-of-type(8)") },
        { ("Wrist", ".box:nth-of-type(9)") },
        { ("Hands", ".box:nth-of-type(10)") },
        { ("Legs", ".box:nth-of-type(11)") },
        { ("Feet", ".box:nth-of-type(12)") },
        { ("Two Hand", ".box:nth-of-type(13)") },
        { ("Ranged/Relic", ".box:nth-of-type(14)") },
    };
}