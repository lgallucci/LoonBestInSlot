using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/hunter/beast-mastery/";
    public override string Class => "Hunter";
    public override string Spec => "Beast Mastery";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-beast-mastery-hunter-dps") },
            { ("Shoulder", "#shoulders-for-beast-mastery-hunter-dps") },
            { ("Back", "#back-for-beast-mastery-hunter-dps") },
            { ("Chest", "#chest-for-beast-mastery-hunter-dps") },
            { ("Wrist", "#wrist-for-beast-mastery-hunter-dps") },
            { ("Hands", "#hands-for-beast-mastery-hunter-dps") },
            { ("Waist", "#waist-for-beast-mastery-hunter-dps") },
            { ("Legs", "#legs-for-beast-mastery-hunter-dps") },
            { ("Feet", "#feet-for-beast-mastery-hunter-dps") },
            { ("Neck", "#neck-for-beast-mastery-hunter-dps") },
            { ("Ring", "#rings-for-beast-mastery-hunter-dps") },
            { ("Trinket", "#trinkets-for-beast-mastery-hunter-dps") },
            { ("Two Hand", "#melee-weapons-for-beast-mastery-hunter-dps") },
            { ("Ranged/Relic", "#ranged-weapon-for-beast-mastery-hunter-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-1") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-2") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-3") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-4") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-4") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-5") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-5") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-pre-patch") },
        { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-pre-patch") },
        { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-pre-patch") },
    };
}