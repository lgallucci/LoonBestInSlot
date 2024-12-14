using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarlockDpsMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-warlock-dps-molten-core-best-in-slot-gear";
    public override string Class => "Warlock";
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
            { ("Head", "#head-for-warlock-dps") },
            { ("Shoulder", "#shoulder-for-warlock-dps") },
            { ("Back", "#back-for-warlock-dps") },
            { ("Chest", "#chest-for-warlock-dps") },
            { ("Wrist", "#bracers-for-warlock-dps") },
            { ("Hands", "#hands-for-warlock-dps") },
            { ("Waist", "#belt-for-warlock-dps") },
            { ("Legs", "#legs-for-warlock-dps") },
            { ("Feet", "#boots-for-warlock-dps") },
            { ("Neck", "#neck-for-warlock-dps") },
            { ("Ring", "#rings-for-warlock-dps") },
            { ("Trinket", "#trinkets-for-warlock-dps") },
            { ("Main Hand", "#main-hand-for-warlock-dps") },
            { ("Off Hand", "#off-hand-for-warlock-dps") },
            { ("Two Hand", "#2h-weapon-for-warlock-dps") },
            { ("Ranged/Relic", "#wand-for-warlock-dps") }
        };
}