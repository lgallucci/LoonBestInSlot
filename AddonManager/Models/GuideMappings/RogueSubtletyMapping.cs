using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueSubtletyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/rogue/subtlety/";
    public override string Class => "Rogue";
    public override string Spec => "Subtlety";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-subtlety-rogue-dps") },
            { ("Shoulder", "#shoulders-for-subtlety-rogue-dps") },
            { ("Back", "#back-for-subtlety-rogue-dps") },
            { ("Chest", "#chest-for-subtlety-rogue-dps") },
            { ("Wrist", "#wrist-for-subtlety-rogue-dps") },
            { ("Hands", "#hands-for-subtlety-rogue-dps") },
            { ("Waist", "#waist-for-subtlety-rogue-dps") },
            { ("Legs", "#legs-for-subtlety-rogue-dps") },
            { ("Feet", "#feet-for-subtlety-rogue-dps") },
            { ("Neck", "#neck-for-subtlety-rogue-dps") },
            { ("Ring", "#rings-for-subtlety-rogue-dps") },
            { ("Trinket", "#trinkets-for-subtlety-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps") },
            { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-subtlety-rogue-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-subtlety-rogue-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-4") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-5") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-subtlety-rogue-dps")},
        { ("Shoulder", "#shoulders-for-subtlety-rogue-dps") },
        { ("Back", "#back-for-subtlety-rogue-dps") },
        { ("Chest", "#chest-for-subtlety-rogue-dps") },
        { ("Wrist", "#wrist-for-subtlety-rogue-dps") },
        { ("Hands", "#hands-for-subtlety-rogue-dps") },
        { ("Waist", "#waist-for-subtlety-rogue-dps") },
        { ("Legs", "#legs-for-subtlety-rogue-dps") },
        { ("Feet", "#feet-for-subtlety-rogue-dps") },
        { ("Neck", "#neck-for-subtlety-rogue-dps") },
        { ("Ring", "#rings-for-subtlety-rogue-dps") },
        { ("Trinket", "#trinkets-for-subtlety-rogue-dps") },
        { ("Main Hand", "#weapons-for-subtlety-rogue-dps") },
        { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-subtlety-rogue-dps") },
    };
}