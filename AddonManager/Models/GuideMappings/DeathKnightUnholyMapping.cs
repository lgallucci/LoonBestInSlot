using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightUnholyMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/";
    public override string Class => "Death Knight";
    public override string Spec => "Unholy";

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
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps-pre-raid") },
            { ("Back", "#back-for-unholy-death-knight-dps-pre-raid") },
            { ("Chest", "#chest-for-unholy-death-knight-dps-pre-raid") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps-pre-raid") },
            { ("Hands", "#hands-for-unholy-death-knight-dps-pre-raid") },
            { ("Waist", "#waist-for-unholy-death-knight-dps-pre-raid") },
            { ("Legs", "#legs-for-unholy-death-knight-dps-pre-raid") },
            { ("Feet", "#feet-for-unholy-death-knight-dps-pre-raid") },
            { ("Neck", "#neck-for-unholy-death-knight-dps-pre-raid") },
            { ("Ring", "#rings-for-unholy-death-knight-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-pre-raid") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-pre-raid") },
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-1") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-1") },
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-2") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-2") },
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-3") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-3") },
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}