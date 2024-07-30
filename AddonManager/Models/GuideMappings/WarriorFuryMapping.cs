using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorFuryMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warrior/fury/";
    public override string Class => "Warrior";
    public override string Spec => "Fury";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fury-warrior-dps") },
            { ("Shoulder", "#shoulders-for-fury-warrior-dps") },
            { ("Back", "#back-for-fury-warrior-dps") },
            { ("Chest", "#chest-for-fury-warrior-dps") },
            { ("Wrist", "#wrist-for-fury-warrior-dps") },
            { ("Hands", "#hands-for-fury-warrior-dps") },
            { ("Waist", "#waist-for-fury-warrior-dps") },
            { ("Legs", "#legs-for-fury-warrior-dps") },
            { ("Feet", "#feet-for-fury-warrior-dps") },
            { ("Neck", "#neck-for-fury-warrior-dps") },
            { ("Ring", "#rings-for-fury-warrior-dps") },
            { ("Trinket", "#trinkets-for-fury-warrior-dps") },
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps") },
            { ("Main Hand", "#one-handed-weapons-for-fury-warrior-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-fury-warrior-dps") },
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fury-warrior-dps") },
            { ("Shoulder", "#shoulders-for-fury-warrior-dps") },
            { ("Back", "#back-for-fury-warrior-dps") },
            { ("Chest", "#chest-for-fury-warrior-dps") },
            { ("Wrist", "#wrist-for-fury-warrior-dps") },
            { ("Hands", "#hands-for-fury-warrior-dps") },
            { ("Waist", "#waist-for-fury-warrior-dps") },
            { ("Legs", "#legs-for-fury-warrior-dps") },
            { ("Feet", "#feet-for-fury-warrior-dps") },
            { ("Neck", "#neck-for-fury-warrior-dps") },
            { ("Ring", "#rings-for-fury-warrior-dps") },
            { ("Trinket", "#trinkets-for-fury-warrior-dps") },
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps") },
            { ("Main Hand", "#duel-wield-weapons-for-fury-warrior-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-fury-warrior-dps") },
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