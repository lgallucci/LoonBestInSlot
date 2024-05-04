using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DeathKnightBloodMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/death-knight/blood/";
    public override string Class => "Death Knight";
    public override string Spec => "Blood";

    public override string GemsUrl => "tank-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h3#meta-gems+.box") },
            { ("Gem", "h3#blue-gems+.box") },
            { ("Gem", "h3#purple-gems+.box") },
            { ("Gem", "h3#purple-gems+.box~.box") },
            { ("Gem", "h3#purple-gems+.box~.box~.box") },
            { ("Gem", "h3#green-gems+.box") },
            { ("Gem", "h3#green-gems+.box~.box") },

            { ("Head", "h3#helm-enchants+.box") },
            { ("Shoulder", "h3#shoulder-enchants+.box") },
            { ("Back", "h3#cloak-enchants+.box") },
            { ("Chest", "h3#chest-enchants+.box") },
            { ("Wrist", "h3#bracer-enchants+.box") },
            { ("Hands", "h3#glove-enchants+.box") },
            { ("Legs", "h3#leg-enchants+.box") },
            { ("Feet", "h3#boot-enchants+.box") },
            { ("Two Hand", "h3#runewords+.box") },
            { ("Main Hand", "h3#runewords+.box~.box") },
            { ("Main Hand", "h3#runewords+.box~.box~.box") },
        };

    public override string Phase0Url => "tank-bis-gear-pre-raid-pve-p4";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-blood-death-knight-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tank-pre-raid") },
            { ("Back", "#back-for-blood-death-knight-tank-pre-raid") },
            { ("Chest", "#chest-for-blood-death-knight-tank-pre-raid") },
            { ("Wrist", "#wrist-for-blood-death-knight-tank-pre-raid") },
            { ("Hands", "#hands-for-blood-death-knight-tank-pre-raid") },
            { ("Waist", "#waist-for-blood-death-knight-tank-pre-raid") },
            { ("Legs", "#legs-for-blood-death-knight-tank-pre-raid") },
            { ("Feet", "#feet-for-blood-death-knight-tank-pre-raid") },
            { ("Neck", "#neck-for-blood-death-knight-tank-pre-raid") },
            { ("Ring", "#rings-for-blood-death-knight-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tank-pre-raid") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Main Hand", "h3#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tank-pre-raid") },
        };

    public override string Phase1Url => "tank-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tank-phase-1") },
        };

    public override string Phase2Url => "tank-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
    {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-2") },
        };

    public override string Phase3Url => "tank-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-3") },
        };

    public override string Phase4Url => "tank-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Ranged/Relic", "#sigil") },
        };

    public override string Phase5Url => "tank-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Ranged/Relic", "#sigil") },
        };

    public override string PrePatchUrl => "tank-bis-gear-pve";

    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Two Hand", "h2#weapons~h3") },
        { ("Ranged/Relic", "#sigil") },
    };
}