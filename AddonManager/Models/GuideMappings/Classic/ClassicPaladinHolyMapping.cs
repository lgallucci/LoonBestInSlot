using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinHolyMapping : ClassicSpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Holy";

    public override string Phase1Url => "wow-classic-paladin-healing-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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
        };

    public override string Phase2Url => "wow-classic-paladin-healer-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
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
            { ("Main Hand", "#weapons-for-paladin-healers") },
            { ("Off Hand", "#off-hand-items-for-paladin-healers") },
            //TODO: Wait til ranged are added
        };

    public override string Phase3Url => "wow-classic-paladin-healing-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
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
            { ("Main Hand", "#weapons-for-paladin-healers") },
            { ("Off Hand", "#off-hand-items-for-paladin-healers") },
            //TODO: Wait til ranged are added
        };

    public override string Phase4Url => "wow-classic-paladin-healing-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer") },
            { ("Back", "#back-for-holy-paladin-healer") },
            { ("Chest", "#chest-for-holy-paladin-healer") },
            { ("Wrist", "#wrist-for-holy-paladin-healer") },
            { ("Hands", "#hands-for-holy-paladin-healer") },
            { ("Waist", "#waist-for-holy-paladin-healer") },
            { ("Legs", "#legs-for-holy-paladin-healer") },
            { ("Feet", "#feet-for-holy-paladin-healer") },
            { ("Neck", "#neck-for-holy-paladin-healer") },
            { ("Ring", "#rings-for-holy-paladin-healer") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer") },
            { ("Off Hand", "#offhands-and-shields-for-holy-paladin-healer") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => "wow-classic-paladin-healing-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Back", "#back-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Chest", "#chest-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Wrist", "#wrist-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Hands", "#hands-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Waist", "#waist-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Legs", "#legs-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Feet", "#feet-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Neck", "#neck-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Ring", "#rings-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Trinket", "#trinkets-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-holy-paladin-healing-in-wow-classic-phase-5") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healing-in-wow-classic-phase-5") },
        };

    public override string Phase6Url => "wow-classic-paladin-healing-naxxramas-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Back", "#back-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Chest", "#chest-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Wrist", "#wrist-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Hands", "#hands-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Waist", "#waist-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Legs", "#legs-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Feet", "#feet-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Neck", "#neck-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Ring", "#rings-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Trinket", "#trinkets-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Off Hand", "#off-hand-weapons-for-holy-paladin-healing-in-wow-classic-phase-6") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healing-in-wow-classic-phase-6") },
        };
}