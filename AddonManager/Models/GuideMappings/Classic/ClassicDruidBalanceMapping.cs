using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AddonManager.Models.GuideMappings.SOD;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidBalanceMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-balance-druid-dps-molten-core-best-in-slot-gear";
    public override string Class => "Druid";
    public override string Spec => "Balance";

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
            { ("Head", "#helm-for-balance-druids") },        
            { ("Shoulder", "#shoulder-for-balance-druids") },
            { ("Back", "#back-for-balance-druids") },
            { ("Chest", "#chest-for-balance-druids") },
            { ("Wrist", "#bracers-for-balance-druids") },
            { ("Hands", "#hands-for-balance-druids") },
            { ("Waist", "#belt-for-balance-druids") },
            { ("Legs", "#legs-for-balance-druids") },
            { ("Feet", "#boots-for-balance-druids") },
            { ("Neck", "#neck-for-balance-druids") },
            { ("Ring", "#rings-for-balance-druids") },
            { ("Trinket", "#trinkets-for-balance-druids") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druids") },
            { ("Off Hand", "#off-hand-items-for-balance-druids") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druids") },
            { ("Ranged/Relic", "#idols-for-balance-druids") },
        };
}