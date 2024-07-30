using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockAfflictionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warlock/affliction/";
    public override string Class => "Warlock";
    public override string Spec => "Affliction";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
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
        { ("Main Hand", ".box:nth-of-type(14)") },
        { ("Off Hand", ".box:nth-of-type(15)") },
        { ("Ring", ".box:nth-of-type(16)") },
    };
}