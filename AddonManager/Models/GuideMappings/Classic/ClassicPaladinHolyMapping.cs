using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinHolyMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-paladin-healing-molten-core-best-in-slot-gear";
    public override string Class => "Paladin";
    public override string Spec => "Holy";

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
            { ("Head", "#helm-for-paladin-healers") },
            { ("Shoulder", "#shoulder-for-paladin-healers") },
            { ("Back", "#back-for-paladin-healers") },
            { ("Chest", "#chest-for-paladin-healers") },
            { ("Wrist", "#bracers-for-paladin-healers") },
            { ("Hands", "#hands-for-paladin-healers") },
            { ("Waist", "#belt-for-paladin-healers") },
            { ("Legs", "#legs-for-paladin-healers") },
            { ("Feet", "#boots-for-paladin-healers") },
            { ("Neck", "#neck-for-paladin-healers") },
            { ("Ring", "#rings-for-paladin-healers") },
            { ("Trinket", "#trinkets-for-paladin-healers") },
            { ("Main Hand", "#one-hand-weapons-for-paladin-healers") },
            { ("Off Hand", "#off-hand-items-for-paladin-healers") },
            //TODO: Wait til ranged are added
        };
}