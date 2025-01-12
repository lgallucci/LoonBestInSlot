using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinTankMapping : ClassicSpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string Phase1Url => "wow-classic-paladin-tank-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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
        };

    public override string Phase2Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
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

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}