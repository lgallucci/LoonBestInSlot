using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterMarksmanshipMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/hunter/marksmanship/";
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