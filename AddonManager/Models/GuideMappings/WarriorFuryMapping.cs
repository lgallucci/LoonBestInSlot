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

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-2") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-2") },
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-3") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-3") },
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-4") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-4") },
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-5") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-5") },
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-prepatch") },
        { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-prepatch") },
    };
}