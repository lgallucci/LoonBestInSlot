using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPriestHolyMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-priest-healing-molten-core-best-in-slot-gear";
    public override string Class => "Priest";
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
            { ("Head", "#helm-for-priest-healers") },
            { ("Shoulder", "#shoulder-for-priest-healers") },
            { ("Back", "#back-for-priest-healers") },
            { ("Chest", "#chest-for-priest-healers") },
            { ("Wrist", "#bracers-for-priest-healers") },
            { ("Hands", "#hands-for-priest-healers") },
            { ("Waist", "#belt-for-priest-healers") },
            { ("Legs", "#legs-for-priest-healers") },
            { ("Feet", "#boots-for-priest-healers") },
            { ("Neck", "#neck-for-priest-healers") },
            { ("Ring", "#rings-for-priest-healers") },
            { ("Trinket", "#trinkets-for-priest-healers") },
            { ("Main Hand", "#one-hand-weapons-for-priest-healers") },
            { ("Off Hand", "#off-hand-items-for-priest-healers") },
            { ("Two Hand", "#two-hand-weapons-for-priest-healers") },
            { ("Ranged/Relic", "#wand-for-priest-healers") },
        };
}