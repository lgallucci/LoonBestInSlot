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

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-2") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-3") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-4") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-5") },
            { ("Ranged/Relic", "#libram") }
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-retribution-paladin-dps")},
        { ("Shoulder", "#shoulders-for-retribution-paladin-dps") },
        { ("Back", "#back-for-retribution-paladin-dps") },
        { ("Chest", "#chest-for-retribution-paladin-dps") },
        { ("Wrist", "#wrist-for-retribution-paladin-dps") },
        { ("Hands", "#hands-for-retribution-paladin-dps") },
        { ("Waist", "#waist-for-retribution-paladin-dps") },
        { ("Legs", "#legs-for-retribution-paladin-dps") },
        { ("Feet", "#feet-for-retribution-paladin-dps") },
        { ("Neck", "#neck-for-retribution-paladin-dps") },
        { ("Ring", "#rings-for-retribution-paladin-dps") },
        { ("Trinket", "#trinkets-for-retribution-paladin-dps") },
        { ("Two Hand", "#weapons-for-retribution-paladin-dps") },
        { ("Ranged/Relic", "#librams-for-retribution-paladin-dps") },
    };

    public override string GemsEnchantsUrl => "dps-bis-gear-pve";
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
        { ("Main Hand", ".box:nth-of-type(15)") },
    };
}