using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicHunterDpsMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-hunter-dps-molten-core-best-in-slot-gear";
    public override string Class => "Hunter";
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
            { ("Head", "#helm-for-hunters") },
            { ("Shoulder", "#shoulder-for-hunters") },
            { ("Back", "#back-for-hunters") },
            { ("Chest", "#chest-for-hunters") },
            { ("Wrist", "#bracers-for-hunters") },
            { ("Hands", "#hands-for-hunters") },
            { ("Waist", "#belt-for-hunters") },
            { ("Legs", "#legs-for-hunters") },
            { ("Feet", "#boots-for-hunters") },
            { ("Neck", "#neck-for-hunters") },
            { ("Ring", "#rings-for-hunters") },
            { ("Trinket", "#trinkets-for-hunters") },
            { ("Main Hand", "#one-hand-weapons-for-hunters") },
            { ("Two Hand", "#two-hand-weapons-for-hunters") },
            { ("Ranged/Relic", "#ranged-weapons-for-hunters") },
        };
}