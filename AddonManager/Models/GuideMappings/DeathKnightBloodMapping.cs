using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightBloodMapping : SpecMapping
{
    public override string UrlBase => "death-knight/blood/";
    public override string Class => "Death Knight";
    public override string Spec => "Blood";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#defensive-trinkets-for-blood-death-knight") },
            { ("Trinket", "#offensive-trinkets-for-blood-death-knight") },
            { ("Two Hand", "h3#weapons") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-blood-death-knight-tanking") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tanking") },
            { ("Back", "#cloak-for-blood-death-knight-tanking") },
            { ("Chest", "#chest-for-blood-death-knight-tanking") },
            { ("Wrist", "#bracer-for-blood-death-knight-tanking") },
            { ("Hands", "#gloves-for-blood-death-knight-tanking") },
            { ("Waist", "#belt-for-blood-death-knight-tanking") },
            { ("Legs", "#legs-for-blood-death-knight-tanking") },
            { ("Feet", "#boots-for-blood-death-knight-tanking") },
            { ("Neck", "#neck-for-blood-death-knight-tanking") },
            { ("Ring", "#rings-for-blood-death-knight-tanking") },
            { ("Trinket", "#defensive-trinkets-for-blood-death-knight") },
            { ("Trinket", "#offensive-trinkets-for-blood-death-knight") },
            { ("Two Hand", "h3#weapons") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanking") },
        };
}