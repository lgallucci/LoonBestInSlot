using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/priest/holy/";
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer") },
            { ("Back", "#back-for-holy-priest-healer") },
            { ("Chest", "#chest-for-holy-priest-healer") },
            { ("Wrist", "#wrist-for-holy-priest-healer") },
            { ("Hands", "#hands-for-holy-priest-healer") },
            { ("Waist", "#waist-for-holy-priest-healer") },
            { ("Legs", "#legs-for-holy-priest-healer") },
            { ("Feet", "#feet-for-holy-priest-healer") },
            { ("Neck", "#neck-for-holy-priest-healer") },
            { ("Ring", "#rings-for-holy-priest-healer") },
            { ("Trinket", "#trinkets-for-holy-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-priest-healer") },
            { ("Two Hand", "#staves-for-holy-priest-healer")},
            { ("Off Hand", "#off-hands-for-holy-priest-healer") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer") },
            { ("Back", "#back-for-holy-priest-healer") },
            { ("Chest", "#chest-for-holy-priest-healer") },
            { ("Wrist", "#wrist-for-holy-priest-healer") },
            { ("Hands", "#hands-for-holy-priest-healer") },
            { ("Waist", "#waist-for-holy-priest-healer") },
            { ("Legs", "#legs-for-holy-priest-healer") },
            { ("Feet", "#feet-for-holy-priest-healer") },
            { ("Neck", "#neck-for-holy-priest-healer") },
            { ("Ring", "#rings-for-holy-priest-healer") },
            { ("Trinket", "#trinkets-for-holy-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-priest-healer") },
            { ("Two Hand", "#staves-for-holy-priest-healer")},
            { ("Off Hand", "#off-hands-for-holy-priest-healer") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer") }
        };
}