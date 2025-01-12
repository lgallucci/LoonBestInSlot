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

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}