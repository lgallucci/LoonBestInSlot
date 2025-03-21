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

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
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

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
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
}
