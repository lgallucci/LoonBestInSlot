using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanEnhancementMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-enhancement-shaman-dps-molten-core-best-in-slot-gear";
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string Phase0Url => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman") },
            { ("Back", "#back-for-enhancement-shaman") },
            { ("Chest", "#chest-for-enhancement-shaman") },
            { ("Wrist", "#bracers-for-enhancement-shaman") },
            { ("Hands", "#hands-for-enhancement-shaman") },
            { ("Waist", "#belt-for-enhancement-shaman") },
            { ("Legs", "#legs-for-enhancement-shaman") },
            { ("Feet", "#boots-for-enhancement-shaman") },
            { ("Neck", "#neck-for-enhancement-shaman") },
            { ("Ring", "#rings-for-enhancement-shaman") },
            { ("Trinket", "#trinkets-for-enhancement-shaman") },
            { ("Main Hand", "#one-handed-for-enhancement-shaman") },
            { ("Two Hand", "#two-handed-for-enhancement-shaman") },
        };
}
