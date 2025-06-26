using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightUnholyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/death-knight/unholy/";
    public override string Class => "Death Knight";
    public override string Spec => "Unholy";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps") },
            { ("Back", "#back-for-unholy-death-knight-dps") },
            { ("Chest", "#chest-for-unholy-death-knight-dps") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps") },
            { ("Hands", "#hands-for-unholy-death-knight-dps") },
            { ("Waist", "#waist-for-unholy-death-knight-dps") },
            { ("Legs", "#legs-for-unholy-death-knight-dps") },
            { ("Feet", "#feet-for-unholy-death-knight-dps") },
            { ("Neck", "#neck-for-unholy-dps") },
            { ("Ring", "#rings-for-unholy-death-knight-dps") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps") },
            { ("Two Hand", "#weapons-for-unholy-death-knight-dps") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps") },
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps") },
            { ("Back", "#back-for-unholy-death-knight-dps") },
            { ("Chest", "#chest-for-unholy-death-knight-dps") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps") },
            { ("Hands", "#hands-for-unholy-death-knight-dps") },
            { ("Waist", "#waist-for-unholy-death-knight-dps") },
            { ("Legs", "#legs-for-unholy-death-knight-dps") },
            { ("Feet", "#feet-for-unholy-death-knight-dps") },
            { ("Neck", "#neck-for-unholy-death-knight-dps") },
            { ("Ring", "#rings-for-unholy-death-knight-dps") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps") },
            { ("Two Hand", "#weapons-for-unholy-death-knight-dps") },
            { ("Ranged/Relic", "#relics-for-unholy-death-knight-dps") },
        };
}