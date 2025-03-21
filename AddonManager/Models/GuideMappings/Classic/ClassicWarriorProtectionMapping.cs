using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarriorProtectionMapping : ClassicSpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Protection";

    public override string Phase1Url => "wow-classic-warrior-tank-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-warrior-tank") },
            { ("Shoulder", "#shoulders-for-warrior-tank") },
            { ("Back", "#back-for-warrior-tank") },
            { ("Chest", "#chest-for-warrior-tank") },
            { ("Wrist", "#wrist-for-warrior-tank") },
            { ("Hands", "#hands-for-warrior-tank") },
            { ("Waist", "#waist-for-warrior-tank") },
            { ("Legs", "#legs-for-warrior-tank") },
            { ("Feet", "#feet-for-warrior-tank") },
            { ("Neck", "#neck-for-warrior-tank") },
            { ("Ring", "#rings-for-warrior-tank") },
            { ("Trinket", "#trinkets-for-warrior-tank") },
            { ("Main Hand", "#main-hand-for-warrior-tank") },
            { ("Off Hand", "#off-hand-for-warrior-tank") },
            { ("Off Hand", "#shield-for-warrior-tank") },
            { ("Ranged/Relic", "#ranged-for-warrior-tank") }
        };

    public override string Phase2Url => "wow-classic-warrior-tank-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulders") },
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
            { ("Main Hand", "#main-hand-weapons") },
            { ("Off Hand", "#off-hand-weapons") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "#ranged-weapons") }
        };

    public override string Phase3Url => "wow-classic-warrior-tank-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulders") },
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
            { ("Main Hand", "#main-hand-weapons") },
            { ("Off Hand", "#off-hand-weapons") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "#ranged-weapons") }
        };

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulders") },
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
            { ("Main Hand", "#main-hand-weapons") },
            { ("Off Hand", "#off-hand-weapons") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "#ranged-weapons") }
        };

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulders") },
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
            { ("Main Hand", "#main-hand-weapons") },
            { ("Off Hand", "#off-hand-weapons") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "#ranged-weapons") }
        };
}
