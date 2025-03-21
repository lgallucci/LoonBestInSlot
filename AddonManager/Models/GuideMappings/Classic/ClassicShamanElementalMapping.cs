using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicShamanElementalMapping : ClassicSpecMapping
{
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string Phase1Url => "wow-classic-elemental-shaman-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
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
        };

    public override string Phase2Url => "wow-classic-elemental-shaman-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
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

    public override string Phase3Url => "wow-classic-elemental-shaman-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
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

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
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

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
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