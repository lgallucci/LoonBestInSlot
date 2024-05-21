using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorArmsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warrior/arms/";
    public override string Class => "Warrior";
    public override string Spec => "Arms";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-arms-warrior-dps") },
            { ("Shoulder", "#shoulders-for-arms-warrior-dps") },
            { ("Back", "#back-for-arms-warrior-dps") },
            { ("Chest", "#chest-for-arms-warrior-dps") },
            { ("Wrist", "#wrist-for-arms-warrior-dps") },
            { ("Hands", "#hands-for-arms-warrior-dps") },
            { ("Waist", "#waist-for-arms-warrior-dps") },
            { ("Legs", "#legs-for-arms-warrior-dps") },
            { ("Feet", "#feet-for-arms-warrior-dps") },
            { ("Neck", "#neck-for-arms-warrior-dps") },
            { ("Ring", "#rings-for-arms-warrior-dps") },
            { ("Trinket", "#trinkets-for-arms-warrior-dps") },
            { ("Two Hand", "#weapons-for-arms-warrior-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-arms-warrior-dps") },
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-phase-1") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-phase-1") },
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-2") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-2") },
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-3") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-3") },
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-4") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-4") },
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-5") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-5") },
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-prepatch") },
        { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-prepatch") },
    };
}