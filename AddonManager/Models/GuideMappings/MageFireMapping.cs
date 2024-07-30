using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFireMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/mage/fire/";
    public override string Class => "Mage";
    public override string Spec => "Fire";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-fire-mage-dps-phase-1-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-fire-mage-dps-phase-1-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-1-pre-raid") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-1-pre-raid") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-fire-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-1") }
        };

    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", ".box:nth-of-type(1)") },
        { ("Gem", ".box:nth-of-type(2)") },
        { ("Gem", ".box:nth-of-type(3)") },
        { ("Gem", ".box:nth-of-type(4)") },
        { ("Gem", ".box:nth-of-type(5)") },
        //Enchants
        { ("Head", ".box:nth-of-type(6)") },
        { ("Shoulder", ".box:nth-of-type(7)") },
        { ("Back", ".box:nth-of-type(8)") },
        { ("Chest", ".box:nth-of-type(9)") },
        { ("Waist", ".box:nth-of-type(10)") },
        { ("Wrist", ".box:nth-of-type(11)") },
        { ("Hands", ".box:nth-of-type(12)") },
        { ("Legs", ".box:nth-of-type(13)") },
        { ("Feet", ".box:nth-of-type(14)") },
        { ("Main Hand", ".box:nth-of-type(15)") },
        { ("Off Hand", ".box:nth-of-type(16)") },
        { ("Ring", ".box:nth-of-type(17)") },
    };
}