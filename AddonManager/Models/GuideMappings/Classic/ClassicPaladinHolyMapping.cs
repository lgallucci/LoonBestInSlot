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

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}