using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanEnhancementMapping : ClassicSpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Enhancement";

    public override string Phase1Url => "wow-classic-enhancement-shaman-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman") },
            { ("Back", "#back-for-enhancement-shaman") },
            { ("Chest", "#chest-for-enhancement-shaman") },
            { ("Wrist", "#wrist-for-enhancement-shaman") },
            { ("Hands", "#hands-for-enhancement-shaman") },
            { ("Waist", "#waist-for-enhancement-shaman") },
            { ("Legs", "#legs-for-enhancement-shaman") },
            { ("Feet", "#feet-for-enhancement-shaman") },
            { ("Neck", "#neck-for-enhancement-shaman") },
            { ("Ring", "#rings-for-enhancement-shaman") },
            { ("Trinket", "#trinkets-for-enhancement-shaman") },
            { ("Main Hand", "#one-handed-for-enhancement-shaman") },
            { ("Two Hand", "#two-handed-for-enhancement-shaman") },
        };

    public override string Phase2Url => "wow-classic-enhancement-shaman-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman") },
            { ("Back", "#back-for-enhancement-shaman") },
            { ("Chest", "#chest-for-enhancement-shaman") },
            { ("Wrist", "#wrist-for-enhancement-shaman") },
            { ("Hands", "#hands-for-enhancement-shaman") },
            { ("Waist", "#waist-for-enhancement-shaman") },
            { ("Legs", "#legs-for-enhancement-shaman") },
            { ("Feet", "#feet-for-enhancement-shaman") },
            { ("Neck", "#neck-for-enhancement-shaman") },
            { ("Ring", "#rings-for-enhancement-shaman") },
            { ("Trinket", "#trinkets-for-enhancement-shaman") },
            { ("Main Hand", "#one-handed-for-enhancement-shaman") },
            { ("Two Hand", "#two-handed-for-enhancement-shaman") },
            //TODO: Wait til ranged are added
        };

    public override string Phase3Url => "wow-classic-enhancement-shaman-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman") },
            { ("Back", "#back-for-enhancement-shaman") },
            { ("Chest", "#chest-for-enhancement-shaman") },
            { ("Wrist", "#wrist-for-enhancement-shaman") },
            { ("Hands", "#hands-for-enhancement-shaman") },
            { ("Waist", "#waist-for-enhancement-shaman") },
            { ("Legs", "#legs-for-enhancement-shaman") },
            { ("Feet", "#feet-for-enhancement-shaman") },
            { ("Neck", "#neck-for-enhancement-shaman") },
            { ("Ring", "#rings-for-enhancement-shaman") },
            { ("Trinket", "#trinkets-for-enhancement-shaman") },
            { ("Main Hand", "#one-handed-for-enhancement-shaman") },
            { ("Off Hand", "#off-hand-weapon-for-enhancement-shaman") },
            { ("Two Hand", "#two-handed-for-enhancement-shaman") },
            //TODO: Wait til ranged are added
        };

    public override string Phase4Url => "wow-classic-enhancement-shaman-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps") },
            { ("Shoulder", "#shoulders-for-enhancement-shaman-dps") },
            { ("Back", "#back-for-enhancement-shaman-dps") },
            { ("Chest", "#chest-for-enhancement-shaman-dps") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps") },
            { ("Hands", "#hands-for-enhancement-shaman-dps") },
            { ("Waist", "#waist-for-enhancement-shaman-dps") },
            { ("Legs", "#legs-for-enhancement-shaman-dps") },
            { ("Feet", "#feet-for-enhancement-shaman-dps") },
            { ("Neck", "#neck-for-enhancement-shaman-dps") },
            { ("Ring", "#rings-for-enhancement-shaman-dps") },
            { ("Trinket", "#trinkets-for-enhancement-shaman-dps") },
            { ("Main Hand", "#main-hand-weapons-for-enhancement-shaman-dps") },
            { ("Off Hand", "#shields-for-enhancement-shaman-dps") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => "wow-classic-enhancement-shaman-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman-dps") },
            { ("Back", "#back-for-enhancement-shaman-dps") },
            { ("Chest", "#chest-for-enhancement-shaman-dps") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps") },
            { ("Hands", "#hands-for-enhancement-shaman-dps") },
            { ("Waist", "#waist-for-enhancement-shaman-dps") },
            { ("Legs", "#legs-for-enhancement-shaman-dps") },
            { ("Feet", "#feet-for-enhancement-shaman-dps") },
            { ("Neck", "#neck-for-enhancement-shaman-dps") },
            { ("Ring", "#rings-for-enhancement-shaman-dps") },
            { ("Trinket", "#trinkets-for-enhancement-shaman-dps") },
            { ("Main Hand", "#one-handed-for-enhancement-shaman-dps") },
            { ("Two Hand", "#two-handed-for-enhancement-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-enhancement-shaman-dps") }

        };

    public override string Phase6Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase6 => throw new NotImplementedException();
}
