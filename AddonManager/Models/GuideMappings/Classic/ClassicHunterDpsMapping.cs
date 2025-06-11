using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicHunterDpsMapping : ClassicSpecMapping
{
    public override string Class => "Hunter";
    public override string Spec => "DPS";

    public override string Phase1Url => "wow-classic-hunter-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-hunters") },
            { ("Shoulder", "#shoulder-for-hunters") },
            { ("Back", "#back-for-hunters") },
            { ("Chest", "#chest-for-hunters") },
            { ("Wrist", "#bracers-for-hunters") },
            { ("Hands", "#hands-for-hunters") },
            { ("Waist", "#belt-for-hunters") },
            { ("Legs", "#legs-for-hunters") },
            { ("Feet", "#boots-for-hunters") },
            { ("Neck", "#neck-for-hunters") },
            { ("Ring", "#rings-for-hunters") },
            { ("Trinket", "#trinkets-for-hunters") },
            { ("Main Hand", "#one-hand-weapons-for-hunters") },
            { ("Two Hand", "#two-hand-weapons-for-hunters") },
            { ("Ranged/Relic", "#ranged-weapons-for-hunters") },
        };

    public override string Phase2Url => "wow-classic-hunter-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-hunters") },
            { ("Shoulder", "#shoulder-for-hunters") },
            { ("Back", "#back-for-hunters") },
            { ("Chest", "#chest-for-hunters") },
            { ("Wrist", "#bracers-for-hunters") },
            { ("Hands", "#hands-for-hunters") },
            { ("Waist", "#belt-for-hunters") },
            { ("Legs", "#legs-for-hunters") },
            { ("Feet", "#boots-for-hunters") },
            { ("Neck", "#neck-for-hunters") },
            { ("Ring", "#rings-for-hunters") },
            { ("Trinket", "#trinkets-for-hunters") },
            { ("Main Hand", "#one-hand-weapons-for-hunters") },
            { ("Two Hand", "#two-hand-weapons-for-hunters") },
            { ("Ranged/Relic", "#ranged-weapons-for-hunters") },
        };

    public override string Phase3Url => "wow-classic-hunter-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-hunters") },
            { ("Shoulder", "#shoulder-for-hunters") },
            { ("Back", "#back-for-hunters") },
            { ("Chest", "#chest-for-hunters") },
            { ("Wrist", "#bracers-for-hunters") },
            { ("Hands", "#hands-for-hunters") },
            { ("Waist", "#belt-for-hunters") },
            { ("Legs", "#legs-for-hunters") },
            { ("Feet", "#boots-for-hunters") },
            { ("Neck", "#neck-for-hunters") },
            { ("Ring", "#rings-for-hunters") },
            { ("Trinket", "#trinkets-for-hunters") },
            { ("Main Hand", "#one-hand-weapons-for-hunters") },
            { ("Two Hand", "#two-hand-weapons-for-hunters") },
            { ("Ranged/Relic", "#ranged-weapons-for-hunters") },
        };

    public override string Phase4Url => "wow-classic-hunter-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-hunter-dps") },
            { ("Shoulder", "#shoulders-for-hunter-dps") },
            { ("Back", "#back-for-hunter-dps") },
            { ("Chest", "#chest-for-hunter-dps") },
            { ("Wrist", "#wrist-for-hunter-dps") },
            { ("Hands", "#hands-for-hunter-dps") },
            { ("Waist", "#waist-for-hunter-dps") },
            { ("Legs", "#legs-for-hunter-dps") },
            { ("Feet", "#feet-for-hunter-dps") },
            { ("Neck", "#neck-for-hunter-dps") },
            { ("Ring", "#rings-for-hunter-dps") },
            { ("Trinket", "#trinkets-for-hunter-dps") },
            { ("Main Hand", "#one-handed-weapons-for-hunter-dps") },
            { ("Two Hand", "#two-handed-weapons-for-hunter-dps") },
            { ("Ranged/Relic", "#guns-and-bows-for-hunter-dps") },
        };

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-hunters") },
            { ("Shoulder", "#shoulder-for-hunters") },
            { ("Back", "#back-for-hunters") },
            { ("Chest", "#chest-for-hunters") },
            { ("Wrist", "#bracers-for-hunters") },
            { ("Hands", "#hands-for-hunters") },
            { ("Waist", "#belt-for-hunters") },
            { ("Legs", "#legs-for-hunters") },
            { ("Feet", "#boots-for-hunters") },
            { ("Neck", "#neck-for-hunters") },
            { ("Ring", "#rings-for-hunters") },
            { ("Trinket", "#trinkets-for-hunters") },
            { ("Main Hand", "#one-hand-weapons-for-hunters") },
            { ("Two Hand", "#two-hand-weapons-for-hunters") },
            { ("Ranged/Relic", "#ranged-weapons-for-hunters") },
        };
}