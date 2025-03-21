using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicWarriorDpsMapping : ClassicSpecMapping
{
    public override string Class => "Warrior";
    public override string Spec => "Dps";

    public override string Phase1Url => "wow-classic-fury-warrior-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#main-hand-2") },
            { ("Ranged/Relic", "#ranged") }
        };

    public override string Phase2Url => "wow-classic-warrior-dps-molten-core-phase-2-best-in-slot-gear";
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
            { ("Ranged/Relic", "#ranged-weapons") }
        };

    public override string Phase3Url => "wow-classic-fury-warrior-dps-blackwing-lair-best-in-slot-gear";
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
            { ("Ranged/Relic", "#ranged-weapons") }
        };
}