using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AddonManager.Models.GuideMappings.SOD;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidBalanceMapping : ClassicSpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Balance";

    public override string Phase1Url => "wow-classic-balance-druid-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-balance-druids") },
            { ("Shoulder", "#shoulder-for-balance-druids") },
            { ("Back", "#back-for-balance-druids") },
            { ("Chest", "#chest-for-balance-druids") },
            { ("Wrist", "#bracers-for-balance-druids") },
            { ("Hands", "#hands-for-balance-druids") },
            { ("Waist", "#belt-for-balance-druids") },
            { ("Legs", "#legs-for-balance-druids") },
            { ("Feet", "#boots-for-balance-druids") },
            { ("Neck", "#neck-for-balance-druids") },
            { ("Ring", "#rings-for-balance-druids") },
            { ("Trinket", "#trinkets-for-balance-druids") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druids") },
            { ("Off Hand", "#off-hand-items-for-balance-druids") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druids") },
            { ("Ranged/Relic", "#idols-for-balance-druids") },
        };

    public override string Phase2Url => "wow-classic-balance-druid-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulder") },
            { ("Back", "#back") },
            { ("Chest", "#chest") },
            { ("Wrist", "#bracers") },
            { ("Hands", "#hands") },
            { ("Waist", "#belt") },
            { ("Legs", "#legs") },
            { ("Feet", "#boots") },
            { ("Neck", "#neck") },
            { ("Ring", "#rings") },
            { ("Trinket", "#trinkets") },
            { ("Main Hand", "#one-hand-weapons") },
            { ("Off Hand", "#off-hand-items") },
            { ("Two Hand", "#two-hand-weapons") },
            { ("Ranged/Relic", "#idols") },
        };

    public override string Phase3Url => "wow-classic-balance-druid-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps") },
            { ("Back", "#back-for-balance-druid-dps") },
            { ("Chest", "#chest-for-balance-druid-dps") },
            { ("Wrist", "#wrist-for-balance-druid-dps") },
            { ("Hands", "#hands-for-balance-druid-dps") },
            { ("Waist", "#waist-for-balance-druid-dps") },
            { ("Legs", "#legs-for-balance-druid-dps") },
            { ("Feet", "#feet-for-balance-druid-dps") },
            { ("Neck", "#neck-for-balance-druid-dps") },
            { ("Ring", "#rings-for-balance-druid-dps") },
            { ("Trinket", "#trinkets-for-balance-druid-dps") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druid-dps") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druid-dps") },
            { ("Ranged/Relic", "#idols") },
        };

    public override string Phase4Url => "wow-classic-balance-druid-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Back", "#back-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Chest", "#chest-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Wrist", "#wrist-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Hands", "#hands-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Waist", "#waist-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Legs", "#legs-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Feet", "#feet-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Neck", "#neck-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Ring", "#rings-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Trinket", "#trinkets-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-4") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-in-wow-classic-phase-4") },
        };

    public override string Phase5Url => "wow-classic-balance-druid-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
     {
            { ("Head", "#head-for-balance-druid-dps-in-wow-classic-phase-5") },        
            { ("Shoulder", "#shoulders-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Back", "#back-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Chest", "#chest-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Wrist", "#wrist-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Hands", "#hands-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Waist", "#waist-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Legs", "#legs-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Feet", "#feet-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Neck", "#neck-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Ring", "#rings-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Trinket", "#trinkets-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-5") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-in-wow-classic-phase-5") },
        };

    public override string Phase6Url => "wow-classic-balance-druid-dps-naxxramas-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
     {
            { ("Head", "#head-for-balance-druid-dps-in-wow-classic-phase-6") },        
            { ("Shoulder", "#shoulders-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Back", "#back-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Chest", "#chest-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Wrist", "#wrist-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Hands", "#hands-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Waist", "#waist-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Legs", "#legs-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Feet", "#feet-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Neck", "#neck-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Ring", "#rings-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Trinket", "#trinkets-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Main Hand", "#one-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Two Hand", "#two-hand-weapons-for-balance-druid-dps-in-wow-classic-phase-6") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-in-wow-classic-phase-6") },
        };
}