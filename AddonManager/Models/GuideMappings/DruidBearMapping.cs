using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Bear";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#trinkets-for-feral-druid-tank") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-tank") },
            { ("Ranged/Relic", "#relics-for-feral-druid-tank") }
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#trinkets-for-feral-druid-tank") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-tank") },
            { ("Ranged/Relic", "#relics-for-feral-druid-tank") }
        };

    public override string GemsEnchantsUrl => "tank-enchants-gems-pve";
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
    };
}