using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinHolyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/paladin/holy/";
    public override string Class => "Paladin";
    public override string Spec => "Holy";

    public override string Phase0Url => "healer-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-holy-paladin-healer") },
            { ("Ranged/Relic", "#relics-for-holy-paladin-healer") }
        };

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-holy-paladin-healer") },
            { ("Ranged/Relic", "#relics-for-holy-paladin-healer") }
        };
}