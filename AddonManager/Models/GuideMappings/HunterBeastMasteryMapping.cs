using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class HunterBeastMasteryMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/";
    public override string Class => "Hunter";
    public override string Spec => "Beast Mastery";

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
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Back", "#back-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Chest", "#chest-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Wrist", "#wrist-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Hands", "#hands-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Waist", "#waist-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Legs", "#legs-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Feet", "#feet-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Neck", "#neck-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Ring", "#rings-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-pre-raid") }
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

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();

}