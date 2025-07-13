using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPriestShadowMapping : ClassicSpecMapping
{
    public override string Class => "Priest";
    public override string Spec => "Shadow";

    public override string Phase1Url => "wow-classic-shadow-priest-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#main-hand-2") },
            { ("Ranged/Relic", "#ranged") },
        };

    public override string Phase2Url => "wow-classic-shadow-priest-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#main-hand-2") },
            { ("Ranged/Relic", "#ranged") },
        };

    public override string Phase3Url => "wow-classic-shadow-priest-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#main-hand-2") },
            { ("Ranged/Relic", "#ranged") },
        };

    public override string Phase4Url => "wow-classic-shadow-priest-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps") },
            { ("Shoulder", "#shoulders-for-shadow-priest-dps") },
            { ("Back", "#back-for-shadow-priest-dps") },
            { ("Chest", "#chest-for-shadow-priest-dps") },
            { ("Wrist", "#wrist-for-shadow-priest-dps") },
            { ("Hands", "#hands-for-shadow-priest-dps") },
            { ("Waist", "#waist-for-shadow-priest-dps") },
            { ("Legs", "#legs-for-shadow-priest-dps") },
            { ("Feet", "#feet-for-shadow-priest-dps") },
            { ("Neck", "#neck-for-shadow-priest-dps") },
            { ("Ring", "#rings-for-shadow-priest-dps") },
            { ("Trinket", "#trinkets-for-shadow-priest-dps") },
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps") },
            { ("Off Hand", "#off-hand-weapons-for-shadow-priest-dps") },
            { ("Two Hand", "#staves-for-shadow-priest-dps") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps") },
        };

    public override string Phase5Url => "wow-classic-shadow-priest-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Shoulder", "#shoulders-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Back", "#back-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Chest", "#chest-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Wrist", "#wrist-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Hands", "#hands-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Waist", "#waist-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Legs", "#legs-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Feet", "#feet-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Neck", "#neck-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Ring", "#rings-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Trinket", "#trinkets-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Two Hand", "#staves-for-shadow-priest-dps-in-wow-classic-phase-5") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-in-wow-classic-phase-5") },
        };

    public override string Phase6Url => throw new NotImplementedException();

    public override List<(string, GuideMapping)> Phase6 => throw new NotImplementedException();
}