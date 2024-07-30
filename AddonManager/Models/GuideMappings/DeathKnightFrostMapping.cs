using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightFrostMapping : SpecMapping
{

    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/frost/";

    public override string Class => "Death Knight";

    public override string Spec => "Frost";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps") },
            { ("Back", "#back-for-frost-death-knight-dps") },
            { ("Chest", "#chest-for-frost-death-knight-dps") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps") },
            { ("Hands", "#hands-for-frost-death-knight-dps") },
            { ("Waist", "#waist-for-frost-death-knight-dps") },
            { ("Legs", "#legs-for-frost-death-knight-dps") },
            { ("Feet", "#feet-for-frost-death-knight-dps") },
            { ("Neck", "#neck-for-frost-death-knight-dps") },
            { ("Ring", "#rings-for-frost-death-knight-dps") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps") },
            { ("Two Hand", "#two-handed-weapons-for-frost-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps") },
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps") },
            { ("Back", "#back-for-frost-death-knight-dps") },
            { ("Chest", "#chest-for-frost-death-knight-dps") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps") },
            { ("Hands", "#hands-for-frost-death-knight-dps") },
            { ("Waist", "#waist-for-frost-death-knight-dps") },
            { ("Legs", "#legs-for-frost-death-knight-dps") },
            { ("Feet", "#feet-for-frost-death-knight-dps") },
            { ("Neck", "#neck-for-frost-death-knight-dps") },
            { ("Ring", "#rings-for-frost-death-knight-dps") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps") },
            { ("Two Hand", "#two-handed-weapons-for-frost-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps") },
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