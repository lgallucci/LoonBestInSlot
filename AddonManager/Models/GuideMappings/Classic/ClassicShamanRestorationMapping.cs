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

    public override string Phase4Url => "wow-classic-shaman-healing-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer") },
            { ("Back", "#back-for-restoration-shaman-healer") },
            { ("Chest", "#chest-for-restoration-shaman-healer") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer") },
            { ("Hands", "#hands-for-restoration-shaman-healer") },
            { ("Waist", "#waist-for-restoration-shaman-healer") },
            { ("Legs", "#legs-for-restoration-shaman-healer") },
            { ("Feet", "#feet-for-restoration-shaman-healer") },
            { ("Neck", "#neck-for-restoration-shaman-healer") },
            { ("Ring", "#rings-for-restoration-shaman-healer") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer") },
            { ("Off Hand", "#off-hands-and-shields-for-restoration-shaman-healer") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => "wow-classic-shaman-healing-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Shoulder", "#shoulders-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Back", "#back-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Chest", "#chest-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Hands", "#hands-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Waist", "#waist-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Legs", "#legs-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Feet", "#feet-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Neck", "#neck-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Ring", "#rings-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Trinket", "#trinkets-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Off Hand", "#off-hands-and-shields-for-restoration-shaman-healer-in-wow-classic-phase-5") },
            { ("Ranged/Relic", "#relics-for-restoration-shaman-healer-in-wow-classic-phase-5") }
    };

    public override string Phase6Url => "wow-classic-shaman-healing-naxxramas-best-in-slot-gear";

    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head") },
            { ("Shoulder", "#shoulders") },
            { ("Back", "#back") },
            { ("Chest", "#chest") },
            { ("Wrist", "#wrist") },
            { ("Hands", "#hands") },
            { ("Waist", "#wasit") },
            { ("Legs", "#legs") },
            { ("Feet", "#feet") },
            { ("Neck", "#neck") },
            { ("Ring", "#rings") },
            { ("Trinket", "#trinkets") },
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#two-hand") },
            { ("Ranged/Relic", "#relics") }
    };
}