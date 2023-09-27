using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueAssassinationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/";
    public override string Class => "Rogue";
    public override string Spec => "Assassination";

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
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-assassination-rogue-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-assassination-rogue-dps-pre-raid") },
            { ("Back", "#back-for-assassination-rogue-dps-pre-raid") },
            { ("Chest", "#chest-for-assassination-rogue-dps-pre-raid") },
            { ("Wrist", "#wrist-for-assassination-rogue-dps-pre-raid") },
            { ("Hands", "#hands-for-assassination-rogue-dps-pre-raid") },
            { ("Waist", "#waist-for-assassination-rogue-dps-pre-raid") },
            { ("Legs", "#legs-for-assassination-rogue-dps-pre-raid") },
            { ("Feet", "#feet-for-assassination-rogue-dps-pre-raid") },
            { ("Neck", "#neck-for-assassination-rogue-dps-pre-raid") },
            { ("Ring", "#rings-for-assassination-rogue-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-assassination-rogue-dps-pre-raid") },
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-3") }
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();

}