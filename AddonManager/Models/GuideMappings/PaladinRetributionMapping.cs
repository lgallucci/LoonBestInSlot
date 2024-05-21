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
            { ("Head", "#head-for-retribution-paladin") },
            { ("Shoulder", "#shoulders-for-retribution-paladin") },
            { ("Back", "#back-for-retribution-paladin") },
            { ("Chest", "#chest-for-retribution-paladin") },
            { ("Wrist", "#wrist-for-retribution-paladin") },
            { ("Hands", "#hands-for-retribution-paladin") },
            { ("Waist", "#waist-for-retribution-paladin") },
            { ("Legs", "#legs-for-retribution-paladin") },
            { ("Feet", "#feet-for-retribution-paladin") },
            { ("Neck", "#neck-for-retribution-paladin") },
            { ("Ring", "#rings-for-retribution-paladin") },
            { ("Trinket", "#trinkets-for-retribution-paladin") },
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin") },
            { ("Ranged/Relic", "#libram") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-1") },
            { ("Ranged/Relic", "#libram") }
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
}