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
    public override List<(string, GuideMapping)> Phase2 =>  new List<(string, GuideMapping)>
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

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}