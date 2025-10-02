using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPriestHolyMapping : ClassicSpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Holy";

    public override string Phase1Url => "wow-classic-priest-healing-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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

    public override string Phase2Url => "wow-classic-priest-healing-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
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

    public override string Phase3Url => "wow-classic-priest-healing-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
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

    public override string Phase4Url => "wow-classic-priest-healing-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-priest-healer") },
            { ("Shoulder", "#shoulders-for-priest-healer") },
            { ("Back", "#back-for-priest-healer") },
            { ("Chest", "#chest-for-priest-healer") },
            { ("Wrist", "#wrist-for-priest-healer") },
            { ("Hands", "#hands-for-priest-healer") },
            { ("Waist", "#waist-for-priest-healer") },
            { ("Legs", "#legs-for-priest-healer") },
            { ("Feet", "#feet-for-priest-healer") },
            { ("Neck", "#neck-for-priest-healer") },
            { ("Ring", "#rings-for-priest-healer") },
            { ("Trinket", "#trinkets-for-priest-healer") },
            { ("Main Hand", "#main-hand-weapons-for-priest-healer") },
            { ("Off Hand", "#off-hand-weapons-for-priest-healer") },
            { ("Two Hand", "#staves-for-priest-healer") },
            { ("Ranged/Relic", "#wands-for-priest-healer") },
        };

    public override string Phase5Url => "wow-classic-priest-healing-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-priest-healer-in-wow-classic") },
            { ("Shoulder", "#shoulders-for-priest-healer-in-wow-classic-phase-5") },
            { ("Back", "#back-for-priest-healer-in-wow-classic-phase-5") },
            { ("Chest", "#chest-for-priest-healer-in-wow-classic-phase-5") },
            { ("Wrist", "#wrist-for-priest-healer-in-wow-classic-phase-5") },
            { ("Hands", "#hands-for-priest-healer-in-wow-classic-phase-5") },
            { ("Waist", "#waist-for-priest-healer-in-wow-classic-phase-5") },
            { ("Legs", "#legs-for-priest-healer-in-wow-classic-phase-5") },
            { ("Feet", "#feet-for-priest-healer-in-wow-classic-phase-5") },
            { ("Neck", "#neck-for-priest-healer-in-wow-classic-phase-5") },
            { ("Ring", "#rings-for-priest-healer-in-wow-classic-phase-5") },
            { ("Trinket", "#trinkets-for-priest-healer-in-wow-classic-phase-5") },
            { ("Main Hand", "#main-hand-weapons-for-priest-healer-in-wow-classic-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-priest-healer-in-wow-classic-phase-5") },
            { ("Two Hand", "#staves-for-priest-healer-in-wow-classic-phase-5") },
            { ("Ranged/Relic", "#wands-for-priest-healer-in-wow-classic-phase-5") },
        };

    public override string Phase6Url => "wow-classic-priest-healing-naxxramas-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head") },
            { ("Shoulder", "#shoulders") },
            { ("Back", "#back") },
            { ("Chest", "#chest") },
            { ("Wrist", "#wrist") },
            { ("Hands", "#hands") },
            { ("Waist", "#waist") },
            { ("Legs", "#legs") },
            { ("Feet", "#feet") },
            { ("Neck", "#neck") },
            { ("Ring", "#rings") },
            { ("Trinket", "#trinkets") },
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#staves") },
            { ("Ranged/Relic", "#wands") },
        };
}