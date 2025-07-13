using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicPaladinRetributionMapping : ClassicSpecMapping
{
    public override string Class => "Paladin";
    public override string Spec => "Retribution";

    public override string Phase1Url => "wow-classic-paladin-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
        };

    public override string Phase2Url => "wow-classic-paladin-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
            //TODO: Wait til ranged are added
        };

    public override string Phase3Url => "wow-classic-paladin-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
            //TODO: Wait til ranged are added
        };

    public override string Phase4Url => "wow-classic-paladin-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => "wow-classic-paladin-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-paladin-dps") },
            { ("Shoulder", "#shoulder-for-paladin-dps") },
            { ("Back", "#back-for-paladin-dps") },
            { ("Chest", "#chest-for-paladin-dps") },
            { ("Wrist", "#bracers-for-paladin-dps") },
            { ("Hands", "#hands-for-paladin-dps") },
            { ("Waist", "#belt-for-paladin-dps") },
            { ("Legs", "#legs-for-paladin-dps") },
            { ("Feet", "#boots-for-paladin-dps") },
            { ("Neck", "#neck-for-paladin-dps") },
            { ("Ring", "#rings-for-paladin-dps") },
            { ("Trinket", "#trinkets-for-paladin-dps") },
            { ("Two Hand", "#two-hand-weapons-for-paladin-dps") },
            //{ ("Ranged/Relic", "#librams-for-paladin-dps") },
        };

    public override string Phase6Url => throw new NotImplementedException();

    public override List<(string, GuideMapping)> Phase6 => throw new NotImplementedException();
}