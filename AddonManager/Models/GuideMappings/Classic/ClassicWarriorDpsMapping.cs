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
            { ("Main Hand", "#main-hand") },
            { ("Off Hand", "#off-hand") },
            { ("Two Hand", "#main-hand-2") },
            { ("Ranged/Relic", "#ranged") }
        };

    public override string Phase3Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase3 => throw new NotImplementedException();

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => throw new NotImplementedException();

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => throw new NotImplementedException();
}