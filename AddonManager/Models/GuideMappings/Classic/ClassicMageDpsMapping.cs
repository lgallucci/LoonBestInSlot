using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicMageDpsMapping : ClassicSpecMapping
{
    public override string Class => "Mage";
    public override string Spec => "DPS";

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

    public override string Phase3Url => "wow-classic-mage-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Wrist", "#wrists") },
            { ("Ring", "#ring") },
            { ("Main Hand", "#weapon") },
            { ("Off Hand", "#off-hand") },
            { ("Ranged/Relic", "#ranged") },
        };

    public override string Phase4Url => "wow-classic-mage-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-mage-dps") },
            { ("Shoulder", "#shoulders-for-mage-dps") },
            { ("Back", "#back-for-mage-dps") },
            { ("Chest", "#chest-for-mage-dps") },
            { ("Wrist", "#wrist-for-mage-dps") },
            { ("Hands", "#hands-for-mage-dps") },
            { ("Waist", "#waist-for-mage-dps") },
            { ("Legs", "#legs-for-mage-dps") },
            { ("Feet", "#feet-for-mage-dps") },
            { ("Neck", "#neck-for-mage-dps") },
            { ("Ring", "#rings-for-mage-dps") },
            { ("Trinket", "#trinkets-for-mage-dps") },
            { ("Main Hand", "#weapons") },
            { ("Off Hand", "#weapons-2") },
            { ("Ranged/Relic", "#weapons-3") },
        };

    public override string Phase5Url => "wow-classic-mage-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Shoulder", "#shoulders-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Back", "#back-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Chest", "#chest-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Wrist", "#wrist-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Hands", "#hands-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Waist", "#waist-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Legs", "#legs-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Feet", "#feet-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Neck", "#neck-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Ring", "#rings-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Trinket", "#trinkets-for-mage-dps-in-season-of-mastery-phase-5") },
            { ("Main Hand", "#weapons") },
            { ("Off Hand", "#weapons-2") },
            { ("Ranged/Relic", "#weapons-3") },
        };

    public override string Phase6Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase6 => throw new NotImplementedException();
}
