using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidCatMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-feral-druid-dps-molten-core-best-in-slot-gear";
    public override string Class => "Druid";
    public override string Spec => "Cat";

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
            { ("Head", "#helm-for-feral-druid-dps") },
            { ("Shoulder", "#shoulder-for-feral-druid-dps") },
            { ("Back", "#back-for-feral-druid-dps") },
            { ("Chest", "#chest-for-feral-druid-dps") },
            { ("Wrist", "#bracers-for-feral-druid-dps") },
            { ("Hands", "#hands-for-feral-druid-dps") },
            { ("Waist", "#belt-for-feral-druid-dps") },
            { ("Legs", "#legs-for-feral-druid-dps") },
            { ("Feet", "#boots-for-feral-druid-dps") },
            { ("Neck", "#neck-for-feral-druid-dps") },
            { ("Ring", "#rings-for-feral-druid-dps") },
            { ("Trinket", "#trinkets-for-feral-druid-dps") },
            { ("Main Hand", "#one-hand-weapons-for-feral-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-feral-druid-dps") },
            { ("Two Hand", "#two-hand-weapons-for-feral-druid-dps") },
        };
}
