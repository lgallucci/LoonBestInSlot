using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueCombatMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/rogue/combat/";
    public override string Class => "Rogue";
    public override string Spec => "Combat";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-combat-rogue-dps") },
            { ("Shoulder", "#shoulders-for-combat-rogue-dps") },
            { ("Back", "#back-for-combat-rogue-dps") },
            { ("Chest", "#chest-for-combat-rogue-dps") },
            { ("Wrist", "#wrist-for-combat-rogue-dps") },
            { ("Hands", "#hands-for-combat-rogue-dps") },
            { ("Waist", "#waist-for-combat-rogue-dps") },
            { ("Legs", "#legs-for-combat-rogue-dps") },
            { ("Feet", "#feet-for-combat-rogue-dps") },
            { ("Neck", "#neck-for-combat-rogue-dps") },
            { ("Ring", "#rings-for-combat-rogue-dps") },
            { ("Trinket", "#trinkets-for-combat-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps") },
            { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-combat-rogue-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-combat-rogue-dps") },
            { ("Shoulder", "#shoulders-for-combat-rogue-dps") },
            { ("Back", "#back-for-combat-rogue-dps") },
            { ("Chest", "#chest-for-combat-rogue-dps") },
            { ("Wrist", "#wrist-for-combat-rogue-dps") },
            { ("Hands", "#hands-for-combat-rogue-dps") },
            { ("Waist", "#waist-for-combat-rogue-dps") },
            { ("Legs", "#legs-for-combat-rogue-dps") },
            { ("Feet", "#feet-for-combat-rogue-dps") },
            { ("Neck", "#neck-for-combat-rogue-dps") },
            { ("Ring", "#rings-for-combat-rogue-dps") },
            { ("Trinket", "#trinkets-for-combat-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps") },
            { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-combat-rogue-dps") }
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