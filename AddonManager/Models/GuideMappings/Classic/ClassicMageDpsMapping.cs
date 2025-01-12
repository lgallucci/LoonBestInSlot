using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicMageDpsMapping : ClassicSpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "Dps";

    public override string Phase1Url => "wow-classic-mage-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-mages") },
            { ("Shoulder", "#shoulder-for-mages") },
            { ("Back", "#back-for-mages") },
            { ("Chest", "#chest-for-mages") },
            { ("Wrist", "#bracers-for-mages") },
            { ("Hands", "#hands-for-mages") },
            { ("Waist", "#belt-for-mages") },
            { ("Legs", "#legs-for-mages") },
            { ("Feet", "#boots-for-mages") },
            { ("Neck", "#neck-for-mages") },
            { ("Ring", "#rings-for-mages") },
            { ("Trinket", "#trinkets-for-mages") },
            { ("Main Hand", "#one-hand-weapons-for-mages") },
            { ("Off Hand", "#off-hand-items-for-mages") },
            { ("Two Hand", "#two-hand-weapons-for-mages") },
            { ("Ranged/Relic", "#wands-for-mages") },
        };

    public override string Phase2Url => "wow-classic-mage-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-mages") },
            { ("Shoulder", "#shoulder-for-mages") },
            { ("Back", "#back-for-mages") },
            { ("Chest", "#chest-for-mages") },
            { ("Wrist", "#bracers-for-mages") },
            { ("Hands", "#hands-for-mages") },
            { ("Waist", "#belt-for-mages") },
            { ("Legs", "#legs-for-mages") },
            { ("Feet", "#boots-for-mages") },
            { ("Neck", "#neck-for-mages") },
            { ("Ring", "#rings-for-mages") },
            { ("Trinket", "#trinkets-for-mages") },
            { ("Main Hand", "#one-hand-weapons-for-mages") },
            { ("Off Hand", "#off-hand-items-for-mages") },
            { ("Two Hand", "#two-hand-weapons-for-mages") },
            { ("Ranged/Relic", "#wands-for-mages") },
        };

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}
