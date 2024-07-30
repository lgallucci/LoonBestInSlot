using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightBloodMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/blood/";
    public override string Class => "Death Knight";
    public override string Spec => "Blood";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tanking") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tanking") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };

    public override string GemsEnchantsUrl => "tank-enchants-gems-pve";
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
        { ("Wrist", ".box:nth-of-type(10)") },
        { ("Hands", ".box:nth-of-type(11)") },
        { ("Legs", ".box:nth-of-type(12)") },
        { ("Feet", ".box:nth-of-type(13)") },
        { ("Main Hand", ".box:nth-of-type(14)") },
        { ("Ring", ".box:nth-of-type(15)") },
    };
}