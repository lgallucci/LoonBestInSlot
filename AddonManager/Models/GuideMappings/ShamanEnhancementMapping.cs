using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanEnhancementMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/enhancement/";
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps") },
            { ("Shoulder", "#shoulders-for-enhancement-shaman-dps") },
            { ("Back", "#back-for-enhancement-shaman-dps") },
            { ("Chest", "#chest-for-enhancement-shaman-dps") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps") },
            { ("Hands", "#hands-for-enhancement-shaman-dps") },
            { ("Waist", "#waist-for-enhancement-shaman-dps") },
            { ("Legs", "#legs-for-enhancement-shaman-dps") },
            { ("Feet", "#feet-for-enhancement-shaman-dps") },
            { ("Neck", "#neck-for-enhancement-shaman-dps") },
            { ("Ring", "#rings-for-enhancement-shaman-dps") },
            { ("Trinket", "#trinkets-for-enhancement-shaman-dps") },
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-enhancement-shaman-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps") },
            { ("Shoulder", "#shoulders-for-enhancement-shaman-dps") },
            { ("Back", "#back-for-enhancement-shaman-dps") },
            { ("Chest", "#chest-for-enhancement-shaman-dps") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps") },
            { ("Hands", "#hands-for-enhancement-shaman-dps") },
            { ("Waist", "#waist-for-enhancement-shaman-dps") },
            { ("Legs", "#legs-for-enhancement-shaman-dps") },
            { ("Feet", "#feet-for-enhancement-shaman-dps") },
            { ("Neck", "#neck-for-enhancement-shaman-dps") },
            { ("Ring", "#rings-for-enhancement-shaman-dps") },
            { ("Trinket", "#trinkets-for-enhancement-shaman-dps") },
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-enhancement-shaman-dps") }
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
        { ("Main Hand", ".box:nth-of-type(13)") },
        { ("Ring", ".box:nth-of-type(14)") },
    };
}