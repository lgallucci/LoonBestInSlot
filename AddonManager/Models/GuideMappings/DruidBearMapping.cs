using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Bear";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#trinkets-for-feral-druid-tank") },
            { ("Two Hand", "#weapons-for-feral-druid-tank") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank") }
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-1") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-1") }
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-2") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-2") }
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-3") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-3") }
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-4") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-4") }
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-5") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-5") }
        };

    public override string PrePatchUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-tank-cataclysm-pre-patch")},
        { ("Shoulder", "#shoulders-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Back", "#back-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Chest", "#chest-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Wrist", "#wrist-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Hands", "#gloves-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Waist", "#waist-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Legs", "#legs-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Feet", "#feet-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Neck", "#jewelry") },
        { ("Ring", "#rings-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Trinket", "#trinkets-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Two Hand", "#weapons-for-feral-druid-tank-cataclysm-pre-patch") },
        { ("Ranged/Relic", "#relics-for-feral-druid-tank-cataclysm-pre-patch") },
    };
}