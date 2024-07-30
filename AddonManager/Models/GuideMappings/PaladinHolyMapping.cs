using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/holy/";
    public override string Class => "Paladin";
    public override string Spec => "Holy";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-holy-paladin-healer") },
            { ("Ranged/Relic", "#relics-for-holy-paladin-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-holy-paladin-healer") },
            { ("Ranged/Relic", "#relics-for-holy-paladin-healer") }
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