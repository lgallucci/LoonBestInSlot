using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanRestorationMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-shaman-healing-molten-core-best-in-slot-gear";
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

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
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#bracers-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#belt-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#boots-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#rings-for-shaman-healer") },
            { ("Trinket", "#trinkets-for-shaman-healer") },
            { ("Main Hand", "#one-handed-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-handed-for-shaman-healer") },
        };
}