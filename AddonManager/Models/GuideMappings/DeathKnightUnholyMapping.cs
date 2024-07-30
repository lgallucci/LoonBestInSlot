using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightUnholyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/unholy/";
    public override string Class => "Death Knight";
    public override string Spec => "Unholy";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps") },
            { ("Back", "#back-for-unholy-death-knight-dps") },
            { ("Chest", "#chest-for-unholy-death-knight-dps") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps") },
            { ("Hands", "#hands-for-unholy-death-knight-dps") },
            { ("Waist", "#waist-for-unholy-death-knight-dps") },
            { ("Legs", "#legs-for-unholy-death-knight-dps") },
            { ("Feet", "#feet-for-unholy-death-knight-dps") },
            { ("Neck", "#neck-for-unholy-dps") },
            { ("Ring", "#rings-for-unholy-death-knight-dps") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps") },
            { ("Two Hand", "#weapons-for-unholy-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps") },
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps") },
            { ("Back", "#back-for-unholy-death-knight-dps") },
            { ("Chest", "#chest-for-unholy-death-knight-dps") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps") },
            { ("Hands", "#hands-for-unholy-death-knight-dps") },
            { ("Waist", "#waist-for-unholy-death-knight-dps") },
            { ("Legs", "#legs-for-unholy-death-knight-dps") },
            { ("Feet", "#feet-for-unholy-death-knight-dps") },
            { ("Neck", "#neck-for-unholy-death-knight-dps") },
            { ("Ring", "#rings-for-unholy-death-knight-dps") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps") },
            { ("Two Hand", "#weapons-for-unholy-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps") },
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
        { ("Two Hand", ".box:nth-of-type(13)") },
        { ("Ring", ".box:nth-of-type(14)") },
    };
}