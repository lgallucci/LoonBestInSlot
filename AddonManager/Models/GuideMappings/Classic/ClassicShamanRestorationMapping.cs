using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanRestorationMapping : ClassicSpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Restoration";

    public override string Phase1Url => "wow-classic-shaman-healing-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#wrist-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#waist-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#feet-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#ring-for-shaman-healer") },
            { ("Trinket", "#trinket-for-shaman-healer") },
            { ("Main Hand", "#one-hand-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-hand-for-shaman-healer") },
        };

    public override string Phase2Url => "wow-classic-shaman-healer-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#wrist-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#waist-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#feet-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#ring-for-shaman-healer") },
            { ("Trinket", "#trinket-for-shaman-healer") },
            { ("Main Hand", "#one-hand-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-hand-for-shaman-healer") },
            //TODO: Wait til ranged are added
        };

    public override string Phase3Url => "wow-classic-shaman-healing-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#wrist-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#waist-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#feet-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#ring-for-shaman-healer") },
            { ("Trinket", "#trinket-for-shaman-healer") },
            { ("Main Hand", "#one-hand-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-hand-for-shaman-healer") },
            //TODO: Wait til ranged are added
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#wrist-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#waist-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#feet-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#ring-for-shaman-healer") },
            { ("Trinket", "#trinket-for-shaman-healer") },
            { ("Main Hand", "#one-hand-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-hand-for-shaman-healer") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shaman-healer") },
            { ("Shoulder", "#shoulder-for-shaman-healer") },
            { ("Back", "#back-for-shaman-healer") },
            { ("Chest", "#chest-for-shaman-healer") },
            { ("Wrist", "#wrist-for-shaman-healer") },
            { ("Hands", "#hands-for-shaman-healer") },
            { ("Waist", "#waist-for-shaman-healer") },
            { ("Legs", "#legs-for-shaman-healer") },
            { ("Feet", "#feet-for-shaman-healer") },
            { ("Neck", "#neck-for-shaman-healer") },
            { ("Ring", "#ring-for-shaman-healer") },
            { ("Trinket", "#trinket-for-shaman-healer") },
            { ("Main Hand", "#one-hand-for-shaman-healer") },
            { ("Off Hand", "#off-hand-for-shaman-healer") },
            { ("Two Hand", "#two-hand-for-shaman-healer") },
            //TODO: Wait til ranged are added
        };
}