using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinRetributionMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-paladin-dps-molten-core-best-in-slot-gear";
    public override string Class => "Paladin";
    public override string Spec => "Retribution";

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
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
            //TODO: Wait til ranged are added
        };
}