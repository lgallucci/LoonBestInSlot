using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanElementalMapping : ClassicSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/wow-classic-elemental-shaman-dps-molten-core-best-in-slot-gear";
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string PreRaidUrl => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "h3#off-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman") },
            { ("Shoulder", "#shoulders-for-elemental-shaman") },
            { ("Back", "#back-for-elemental-shaman") },
            { ("Chest", "#chest-for-elemental-shaman") },
            { ("Wrist", "#wrist-for-elemental-shaman") },
            { ("Hands", "#hands-for-elemental-shaman") },
            { ("Waist", "#waist-for-elemental-shaman") },
            { ("Legs", "#legs-for-elemental-shaman") },
            { ("Feet", "#feet-for-elemental-shaman") },
            { ("Neck", "#neck-for-elemental-shaman") },
            { ("Ring", "#ring-for-elemental-shaman") },
            { ("Trinket", "#trinket-for-elemental-shaman") },
            { ("Main Hand", "#one-handed-weapons-for-elemental-shaman") },
            { ("Off Hand", "#off-hands-for-elemental-shaman") },
            { ("Two Hand", "#two-handed-weapons-for-elemental-shaman") },
            //TODO: Wait til ranged are added
        };
}