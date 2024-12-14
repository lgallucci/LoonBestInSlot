using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicRogueDpsMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-rogue-dps-molten-core-best-in-slot-gear";
    public override string Class => "Rogue";
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
            { ("Head", "#helm-for-rogues") },
            { ("Shoulder", "#shoulder-for-rogues") },
            { ("Back", "#back-for-rogues") },
            { ("Chest", "#chest-for-rogues") },
            { ("Wrist", "#bracers-for-rogues") },
            { ("Hands", "#hands-for-rogues") },
            { ("Waist", "#belt-for-rogues") },
            { ("Legs", "#legs-for-rogues") },
            { ("Feet", "#boots-for-rogues") },
            { ("Neck", "#neck-for-rogues") },
            { ("Ring", "#rings-for-rogues") },
            { ("Trinket", "#trinkets-for-rogues") },
            { ("Main Hand", "#main-hand-swords-for-rogues") },
            { ("Main Hand", "#main-hand-daggers-for-rogues") },
            { ("Off Hand", "#off-hand-swords-for-rogues") },
            { ("Off Hand", "#off-hand-daggers-for-rogues") },
            { ("Ranged/Relic", "#ranged-weapons-for-rogues") },
        };
}
