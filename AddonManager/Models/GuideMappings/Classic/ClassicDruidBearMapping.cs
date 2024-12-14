using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidBearMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-feral-druid-dps-molten-core-best-in-slot-gear";
    public override string Class => "Druid";
    public override string Spec => "Bear";

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
            { ("Head", "#helm-for-druid-tanks") },
            { ("Shoulder", "#shoulder-for-druid-tanks") },
            { ("Back", "#back-for-druid-tanks") },
            { ("Chest", "#chest-for-druid-tanks") },
            { ("Wrist", "#bracers-for-druid-tanks") },
            { ("Hands", "#hands-for-druid-tanks") },
            { ("Waist", "#belt-for-druid-tanks") },
            { ("Legs", "#legs-for-druid-tanks") },
            { ("Feet", "#boots-for-druid-tanks") },
            { ("Neck", "#neck-for-druid-tanks") },
            { ("Ring", "#rings-for-druid-tanks") },
            { ("Trinket", "#trinkets-for-druid-tanks") },
            { ("Main Hand", "#one-hand-weapons-for-druid-tanks") },
            { ("Off Hand", "#off-hand-items-for-druid-tanks") },
            { ("Two Hand", "#two-hand-weapons-for-druid-tanks") },
            { ("Ranged/Relic", "#idols-for-druid-tanks") },
        };
}