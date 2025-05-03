using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarlockDpsMapping : ClassicSpecMapping
{
    public override string Class => "Warlock";
    public override string Spec => "Dps";

    public override string Phase1Url => "wow-classic-warlock-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-warlocks") },
            { ("Shoulder", "#shoulders-for-warlocks") },
            { ("Back", "#back-for-warlocks") },
            { ("Chest", "#chest-for-warlocks") },
            { ("Wrist", "#wrist-for-warlocks") },
            { ("Hands", "#hands-for-warlocks") },
            { ("Waist", "#waist-for-warlocks") },
            { ("Legs", "#legs-for-warlocks") },
            { ("Feet", "#feet-for-warlocks") },
            { ("Neck", "#neck-for-warlocks") },
            { ("Ring", "#rings-for-warlocks") },
            { ("Trinket", "#trinkets-for-warlocks") },
            { ("Main Hand", "#main-hand-for-warlocks") },
            { ("Off Hand", "#off-hand-for-warlocks") },
            { ("Two Hand", "#off-hand-for-warlocks ~ h4") },
            { ("Ranged/Relic", "#wand-for-warlocks") }
        };

    public override string Phase2Url => "wow-classic-warlock-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-warlocks") },
            { ("Shoulder", "#shoulders-for-warlocks") },
            { ("Back", "#back-for-warlocks") },
            { ("Chest", "#chest-for-warlocks") },
            { ("Wrist", "#wrist-for-warlocks") },
            { ("Hands", "#hands-for-warlocks") },
            { ("Waist", "#waist-for-warlocks") },
            { ("Legs", "#legs-for-warlocks") },
            { ("Feet", "#feet-for-warlocks") },
            { ("Neck", "#neck-for-warlocks") },
            { ("Ring", "#rings-for-warlocks") },
            { ("Trinket", "#trinkets-for-warlocks") },
            { ("Main Hand", "#main-hand-for-warlocks") },
            { ("Off Hand", "#off-hand-for-warlocks") },
            { ("Two Hand", "#off-hand-for-warlocks ~ h4") },
            { ("Ranged/Relic", "#wand-for-warlocks") }
        };

    public override string Phase3Url => "wow-classic-warlock-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Wrist", "#wrists") },
            { ("Ring", "#ring") },
            { ("Main Hand", "#weapon") },
            { ("Off Hand", "#off-hand") },
            { ("Ranged/Relic", "#ranged") }
        };

    public override string Phase4Url => "wow-classic-warlock-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons") },
            { ("Two Hand", "#two-hand-weapons") },
            { ("Off Hand", "#offhand-weapons") },
            { ("Ranged/Relic", "#wands") }
        };

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-warlocks") },
            { ("Shoulder", "#shoulders-for-warlocks") },
            { ("Back", "#back-for-warlocks") },
            { ("Chest", "#chest-for-warlocks") },
            { ("Wrist", "#wrist-for-warlocks") },
            { ("Hands", "#hands-for-warlocks") },
            { ("Waist", "#waist-for-warlocks") },
            { ("Legs", "#legs-for-warlocks") },
            { ("Feet", "#feet-for-warlocks") },
            { ("Neck", "#neck-for-warlocks") },
            { ("Ring", "#rings-for-warlocks") },
            { ("Trinket", "#trinkets-for-warlocks") },
            { ("Main Hand", "#main-hand-for-warlocks") },
            { ("Off Hand", "#off-hand-for-warlocks") },
            { ("Two Hand", "#off-hand-for-warlocks ~ h4") },
            { ("Ranged/Relic", "#wand-for-warlocks") }
        };
}