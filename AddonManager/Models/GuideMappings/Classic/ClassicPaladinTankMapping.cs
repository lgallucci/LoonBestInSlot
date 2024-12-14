using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinTankMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-paladin-tank-molten-core-best-in-slot-gear";
    public override string Class => "Paladin";
    public override string Spec => "Protection";

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
            { ("Head", "#helm-for-paladin-tanks") },
            { ("Shoulder", "#shoulder-for-paladin-tanks") },
            { ("Back", "#back-for-paladin-tanks") },
            { ("Chest", "#chest-for-paladin-tanks") },
            { ("Wrist", "#bracers-for-paladin-tanks") },
            { ("Hands", "#hands-for-paladin-tanks") },
            { ("Waist", "#belt-for-paladin-tanks") },
            { ("Legs", "#legs-for-paladin-tanks") },
            { ("Feet", "#boots-for-paladin-tanks") },
            { ("Neck", "#neck-for-paladin-tanks") },
            { ("Ring", "#rings-for-paladin-tanks") },
            { ("Trinket", "#trinkets-for-paladin-tanks") },
            { ("Main Hand", "#main-hand-weapon-for-paladin-tanks") },
            { ("Off Hand", "#shield-for-paladin-tanks") },
            //TODO: Wait til ranged are added
        };
}