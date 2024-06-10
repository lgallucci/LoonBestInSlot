using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidCatMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Cat";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-dps") },
            { ("Shoulder", "#shoulders-for-feral-druid-dps") },
            { ("Back", "#back-for-feral-druid-dps") },
            { ("Chest", "#chest-for-feral-druid-dps") },
            { ("Wrist", "#wrist-for-feral-druid-dps") },
            { ("Hands", "#hands-for-feral-druid-dps") },
            { ("Waist", "#waist-for-feral-druid-dps") },
            { ("Legs", "#legs-for-feral-druid-dps") },
            { ("Feet", "#feet-for-feral-druid-dps") },
            { ("Neck", "#neck-for-feral-druid-dps") },
            { ("Ring", "#rings-for-feral-druid-dps") },
            { ("Trinket", "#trinkets-for-feral-druid-dps") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-dps") },
            { ("Ranged/Relic", "#relics-for-feral-druid-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-dps") },
            { ("Shoulder", "#shoulders-for-feral-druid-dps") },
            { ("Back", "#back-for-feral-druid-dps") },
            { ("Chest", "#chest-for-feral-druid-dps") },
            { ("Wrist", "#wrist-for-feral-druid-dps") },
            { ("Hands", "#hands-for-feral-druid-dps") },
            { ("Waist", "#waist-for-feral-druid-dps") },
            { ("Legs", "#legs-for-feral-druid-dps") },
            { ("Feet", "#feet-for-feral-druid-dps") },
            { ("Neck", "#neck-for-feral-druid-dps") },
            { ("Ring", "#rings-for-feral-druid-dps") },
            { ("Trinket", "#trinkets-for-feral-druid-dps") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-dps") },
            { ("Ranged/Relic", "#relics-for-feral-druid-dps") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-2") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-3") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-4") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-5") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-dps-cataclysm-pre-patch")},
        { ("Shoulder", "#shoulders-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Back", "#back-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Chest", "#chest-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Wrist", "#wrist-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Hands", "#gloves-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Waist", "#waist-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Legs", "#legs-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Feet", "#feet-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Neck", "#jewelry") },
        { ("Ring", "#rings-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Trinket", "#trinkets-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Two Hand", "#weapons-for-feral-druid-dps-cataclysm-pre-patch") },
        { ("Ranged/Relic", "#relics-for-feral-druid-dps-cataclysm-pre-patch") },
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
    };
}