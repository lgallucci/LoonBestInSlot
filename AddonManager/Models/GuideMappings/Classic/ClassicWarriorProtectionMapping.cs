using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarriorProtectionMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-warrior-tank-molten-core-best-in-slot-gear";
    public override string Class => "Warrior";
    public override string Spec => "Protection";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-warrior-tank") },
            { ("Shoulder", "#shoulders-for-warrior-tank") },
            { ("Back", "#back-for-warrior-tank") },
            { ("Chest", "#chest-for-warrior-tank") },
            { ("Wrist", "#wrist-for-warrior-tank") },
            { ("Hands", "#hands-for-warrior-tank") },
            { ("Waist", "#waist-for-warrior-tank") },
            { ("Legs", "#legs-for-warrior-tank") },
            { ("Feet", "#feet-for-warrior-tank") },
            { ("Neck", "#neck-for-warrior-tank") },
            { ("Ring", "#rings-for-warrior-tank") },
            { ("Trinket", "#trinkets-for-warrior-tank") },
            { ("Main Hand", "#main-hand-for-warrior-tank") },
            { ("Off Hand", "#off-hand-for-warrior-tank") },
            { ("Off Hand", "#shield-for-warrior-tank") },
            { ("Ranged/Relic", "#ranged-for-warrior-tank") }
        };
}
