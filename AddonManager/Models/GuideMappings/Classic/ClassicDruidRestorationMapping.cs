using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidRestorationMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-druid-healing-molten-core-best-in-slot-gear";
    public override string Class => "Druid";
    public override string Spec => "Restoration";

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
            { ("Head", "#helm-for-druid-healers") },
            { ("Shoulder", "#shoulder-for-druid-healers") },
            { ("Back", "#back-for-druid-healers") },
            { ("Chest", "#chest-for-druid-healers") },
            { ("Wrist", "#bracers-for-druid-healers") },
            { ("Hands", "#hands-for-druid-healers") },
            { ("Waist", "#belt-for-druid-healers") },
            { ("Legs", "#legs-for-druid-healers") },
            { ("Feet", "#boots-for-druid-healers") },
            { ("Neck", "#neck-for-druid-healers") },
            { ("Ring", "#rings-for-druid-healers") },
            { ("Trinket", "#trinkets-for-druid-healers") },
            { ("Main Hand", "#one-hand-weapons-for-druid-healers") },
            { ("Off Hand", "#off-hand-items-for-druid-healers") },
            { ("Two Hand", "#two-hand-weapons-for-druid-healers") },
        };
}
