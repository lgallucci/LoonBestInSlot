using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestDisciplineMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/discipline/";
    public override string Class => "Priest";
    public override string Spec => "Discipline";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-discipline-priest-healer") },
            { ("Shoulder", "#shoulders-for-discipline-priest-healer") },
            { ("Back", "#back-for-discipline-priest-healer") },
            { ("Chest", "#chest-for-discipline-priest-healer") },
            { ("Wrist", "#wrist-for-discipline-priest-healer") },
            { ("Hands", "#hands-for-discipline-priest-healer") },
            { ("Waist", "#waist-for-discipline-priest-healer") },
            { ("Legs", "#legs-for-discipline-priest-healer") },
            { ("Feet", "#feet-for-discipline-priest-healer") },
            { ("Neck", "#neck-for-discipline-priest-healer") },
            { ("Ring", "#rings-for-discipline-priest-healer") },
            { ("Trinket", "#trinkets-for-discipline-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-discipline-priest-healer") },
            { ("Two Hand", "#staves-for-discipline-priest-healer")},
            { ("Off Hand", "#off-hands-for-discipline-priest-healerh") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-discipline-priest-healer") },
            { ("Shoulder", "#shoulders-for-discipline-priest-healer") },
            { ("Back", "#back-for-discipline-priest-healer") },
            { ("Chest", "#chest-for-discipline-priest-healer") },
            { ("Wrist", "#wrist-for-discipline-priest-healer") },
            { ("Hands", "#hands-for-discipline-priest-healer") },
            { ("Waist", "#waist-for-discipline-priest-healer") },
            { ("Legs", "#legs-for-discipline-priest-healer") },
            { ("Feet", "#feet-for-discipline-priest-healer") },
            { ("Neck", "#neck-for-discipline-priest-healer") },
            { ("Ring", "#rings-for-discipline-priest-healer") },
            { ("Trinket", "#trinkets-for-discipline-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-discipline-priest-healer") },
            { ("Two Hand", "#staves-for-discipline-priest-healer")},
            { ("Off Hand", "#off-hands-for-discipline-priest-healerh") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer") }
        };

    public override string GemsEnchantsUrl => "healer-enchants-gems-pve";
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
        { ("Waist", ".box:nth-of-type(11)") },
        { ("Legs", ".box:nth-of-type(12)") },
        { ("Feet", ".box:nth-of-type(13)") },
        { ("Main Hand", ".box:nth-of-type(14)") },
        { ("Off Hand", ".box:nth-of-type(15)") },
        { ("Ring", ".box:nth-of-type(16)") },
    };
}