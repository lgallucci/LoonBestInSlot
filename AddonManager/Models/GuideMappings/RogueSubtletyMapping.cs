using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueSubtletyMapping : SpecMapping
{
    public override string UrlBase => "rogue/subtlety/";
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

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
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
}