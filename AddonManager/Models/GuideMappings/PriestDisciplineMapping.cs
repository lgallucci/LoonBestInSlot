using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PriestDisciplineMapping : SpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Discipline";

    public override string CurrentPhaseUrl => "healer-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-discipline-priest-healer") },
            { ("Shoulder", "#shoulders-for-discipline-priest-healer") },
            { ("Back", "#back-for-discipline-priest-healer") },
            { ("Chest", "#chest-for-discipline-priest-healer") },
            { ("Wrist", "#wrist-for-discipline-priest-healer") },
            { ("Hands", "#hands-for-discipline-priest-healer") },
            { ("Waist", "#waist-for-discipline-priest-healer") },
            { ("Legs", "#legs-for-discipline-priest-healer") },
            { ("Feet", "#feet-for-discipline-priest-healer") },
            { ("Neck", "#neck-for-discipline-priest-healer") },
            { ("Ring", "#rings-for-discipline-priest-healer") },
            { ("Trinket", "#trinkets-for-discipline-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-discipline-priest-healer") },
            { ("Two Hand", "#staves-for-discipline-priest-healer")},
            { ("Off Hand", "#off-hands-for-discipline-priest-healer") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer") }
        };
}