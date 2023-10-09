using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarriorFuryMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/warrior/fury/";
    public override string Class => "Warrior";
    public override string Spec => "Fury";

    public override string GemsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fury-warrior-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-fury-warrior-dps-pre-raid") },
            { ("Back", "#back-for-fury-warrior-dps-pre-raid") },
            { ("Chest", "#chest-for-fury-warrior-dps-pre-raid") },
            { ("Wrist", "#wrist-for-fury-warrior-dps-pre-raid") },
            { ("Hands", "#hands-for-fury-warrior-dps-pre-raid") },
            { ("Waist", "#waist-for-fury-warrior-dps-pre-raid") },
            { ("Legs", "#legs-for-fury-warrior-dps-pre-raid") },
            { ("Feet", "#feet-for-fury-warrior-dps-pre-raid") },
            { ("Neck", "#neck-for-fury-warrior-dps-pre-raid") },
            { ("Ring", "#rings-for-fury-warrior-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-fury-warrior-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-pre-raid") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-pre-raid") },
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-1") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-1") },
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
}