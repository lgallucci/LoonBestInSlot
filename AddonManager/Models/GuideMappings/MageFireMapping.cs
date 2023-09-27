using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFireMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/wotlk/guide/classes/mage/fire/";
    public override string Class => "Mage";
    public override string Spec => "Fire";

    public override string GemsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> Gems => new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        };

    public override string Phase0Url => "dps-bis-gear-pre-raid-pve-p3";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fire-mage-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-fire-mage-dps-pre-raid") },
            { ("Back", "#back-for-fire-mage-dps-pre-raid") },
            { ("Chest", "#chest-for-fire-mage-dps-pre-raid") },
            { ("Wrist", "#wrist-for-fire-mage-dps-pre-raid") },
            { ("Hands", "#hands-for-fire-mage-dps-pre-raid") },
            { ("Waist", "#waist-for-fire-mage-dps-pre-raid") },
            { ("Legs", "#legs-for-fire-mage-dps-pre-raid") },
            { ("Feet", "#feet-for-fire-mage-dps-pre-raid") },
            { ("Neck", "#neck-for-fire-mage-dps-pre-raid") },
            { ("Ring", "#rings-for-fire-mage-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-fire-mage-dps-pre-raid") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-3") }
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();

}