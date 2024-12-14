using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicMageDpsMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-mage-dps-molten-core-best-in-slot-gear";
    public override string Class => "Mage";
    public override string Spec => "Dps";

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
            { ("Head", "#helm-for-mages") },
            { ("Shoulder", "#shoulder-for-mages") },
            { ("Back", "#back-for-mages") },
            { ("Chest", "#chest-for-mages") },
            { ("Wrist", "#bracers-for-mages") },
            { ("Hands", "#hands-for-mages") },
            { ("Waist", "#belt-for-mages") },
            { ("Legs", "#legs-for-mages") },
            { ("Feet", "#boots-for-mages") },
            { ("Neck", "#neck-for-mages") },
            { ("Ring", "#rings-for-mages") },
            { ("Trinket", "#trinkets-for-mages") },
            { ("Main Hand", "#one-hand-weapons-for-mages") },
            { ("Off Hand", "#off-hand-items-for-mages") },
            { ("Two Hand", "#two-hand-weapons-for-mages") },
            { ("Ranged/Relic", "#wands-for-mages") },
        };
}
