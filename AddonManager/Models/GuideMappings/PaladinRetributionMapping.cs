using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinRetributionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/retribution/";
    public override string Class => "Paladin";
    public override string Spec => "Retribution";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-retribution-paladin-dps") },
            { ("Shoulder", "#shoulders-for-retribution-paladin-dps") },
            { ("Back", "#back-for-retribution-paladin-dps") },
            { ("Chest", "#chest-for-retribution-paladin-dps") },
            { ("Wrist", "#wrist-for-retribution-paladin-dps") },
            { ("Hands", "#gloves-for-retribution-paladin-dps") },
            { ("Waist", "#waist-for-retribution-paladin-dps") },
            { ("Legs", "#legs-for-retribution-paladin-dps") },
            { ("Feet", "#boots-for-retribution-paladin-dps") },
            { ("Neck", "#neck-for-retribution-paladin-dps") },
            { ("Ring", "#rings-for-retribution-paladin-dps") },
            { ("Trinket", "#trinkets-for-retribution-paladin-dps") },
            { ("Two Hand", "#two-handed-weapons-for-retribution-paladin-dps") },
            { ("Ranged/Relic", "#librams-for-retribution-paladin-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-retribution-paladin-dps") },
            { ("Shoulder", "#shoulders-for-retribution-paladin-dps") },
            { ("Back", "#back-for-retribution-paladin-dps") },
            { ("Chest", "#chest-for-retribution-paladin-dps") },
            { ("Wrist", "#wrist-for-retribution-paladin-dps") },
            { ("Hands", "#gloves-for-retribution-paladin-dps") },
            { ("Waist", "#waist-for-retribution-paladin-dps") },
            { ("Legs", "#legs-for-retribution-paladin-dps") },
            { ("Feet", "#boots-for-retribution-paladin-dps") },
            { ("Neck", "#neck-for-retribution-paladin-dps") },
            { ("Ring", "#rings-for-retribution-paladin-dps") },
            { ("Trinket", "#trinkets-for-retribution-paladin-dps") },
            { ("Two Hand", "#two-handed-weapons-for-retribution-paladin-dps") },
            { ("Ranged/Relic", "#librams-for-retribution-paladin-dps") }
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
        { ("Waist", ".box:nth-of-type(11)") },
        { ("Legs", ".box:nth-of-type(12)") },
        { ("Feet", ".box:nth-of-type(13)") },
        { ("Ring", ".box:nth-of-type(14)") },
        { ("Two Hand", ".box:nth-of-type(15)") },
    };
}