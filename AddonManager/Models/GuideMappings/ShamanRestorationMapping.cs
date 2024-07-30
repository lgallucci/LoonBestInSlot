using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanRestorationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/restoration/";
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Two Hand", "#staff-weapons-for-restoration-shaman-healer")},
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-for-restoration-shaman-healer") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer") }
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