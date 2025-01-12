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

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}