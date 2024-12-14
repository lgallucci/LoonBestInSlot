using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarlockDpsMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-warlock-dps-molten-core-best-in-slot-gear";
    public override string Class => "Warlock";
    public override string Spec => "Dps";

    public override string PreRaidUrl => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
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