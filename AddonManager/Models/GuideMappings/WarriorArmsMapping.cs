using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorArmsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warrior/arms/";
    public override string Class => "Warrior";
    public override string Spec => "Arms";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
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
    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", ".box:nth-of-type(1)") },
        { ("Gem", ".box:nth-of-type(2)") },
        { ("Gem", ".box:nth-of-type(3)") },
        //Enchants
        { ("Head", ".box:nth-of-type(4)") },
        { ("Shoulder", ".box:nth-of-type(5)") },
        { ("Back", ".box:nth-of-type(6)") },
        { ("Chest", ".box:nth-of-type(7)") },
        { ("Wrist", ".box:nth-of-type(8)") },
        { ("Hands", ".box:nth-of-type(9)") },
        { ("Waist", ".box:nth-of-type(10)") },
        { ("Legs", ".box:nth-of-type(11)") },
        { ("Feet", ".box:nth-of-type(12)") },
        { ("Main Hand", ".box:nth-of-type(13)") },
        { ("Ring", ".box:nth-of-type(14)") },
    };
}