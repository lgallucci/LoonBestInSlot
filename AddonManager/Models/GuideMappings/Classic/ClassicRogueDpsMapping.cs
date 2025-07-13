using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicRogueDpsMapping : ClassicSpecMapping
{
    public override string Class => "Rogue";
    public override string Spec => "DPS";

    public override string Phase1Url => "wow-classic-rogue-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-rogues") },
            { ("Shoulder", "#shoulder-for-rogues") },
            { ("Back", "#back-for-rogues") },
            { ("Chest", "#chest-for-rogues") },
            { ("Wrist", "#bracers-for-rogues") },
            { ("Hands", "#hands-for-rogues") },
            { ("Waist", "#belt-for-rogues") },
            { ("Legs", "#legs-for-rogues") },
            { ("Feet", "#boots-for-rogues") },
            { ("Neck", "#neck-for-rogues") },
            { ("Ring", "#rings-for-rogues") },
            { ("Trinket", "#trinkets-for-rogues") },
            { ("Main Hand", "#main-hand-swords-for-rogues") },
            { ("Main Hand", "#main-hand-daggers-for-rogues") },
            { ("Off Hand", "#off-hand-swords-for-rogues") },
            { ("Off Hand", "#off-hand-daggers-for-rogues") },
            { ("Ranged/Relic", "#ranged-weapons-for-rogues") },
        };

    public override string Phase2Url => "wow-classic-rogue-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-rogues") },
            { ("Shoulder", "#shoulder-for-rogues") },
            { ("Back", "#back-for-rogues") },
            { ("Chest", "#chest-for-rogues") },
            { ("Wrist", "#bracers-for-rogues") },
            { ("Hands", "#hands-for-rogues") },
            { ("Waist", "#belt-for-rogues") },
            { ("Legs", "#legs-for-rogues") },
            { ("Feet", "#boots-for-rogues") },
            { ("Neck", "#neck-for-rogues") },
            { ("Ring", "#rings-for-rogues") },
            { ("Trinket", "#trinkets-for-rogues") },
            { ("Main Hand", "#main-hand-swords-for-rogues") },
            { ("Main Hand", "#main-hand-daggers-for-rogues") },
            { ("Off Hand", "#off-hand-swords-for-rogues") },
            { ("Off Hand", "#off-hand-daggers-for-rogues") },
            { ("Ranged/Relic", "#ranged-weapons-for-rogues") },
        };

    public override string Phase3Url => "wow-classic-rogue-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-rogues") },
            { ("Shoulder", "#shoulders-for-rogues") },
            { ("Back", "#back-for-rogues") },
            { ("Chest", "#chest-for-rogues") },
            { ("Wrist", "#bracers-for-rogues") },
            { ("Hands", "#hands-for-rogues") },
            { ("Waist", "#belt-for-rogues") },
            { ("Legs", "#legs-for-rogues") },
            { ("Feet", "#boots-for-rogues") },
            { ("Neck", "#neck-for-rogues") },
            { ("Ring", "#rings-for-rogues") },
            { ("Trinket", "#trinkets-for-rogues") },
            { ("Main Hand", "#main-hand-swords-for-rogues") },
            { ("Main Hand", "#main-hand-daggers-for-rogues") },
            { ("Off Hand", "#off-hand-swords-for-rogues") },
            { ("Off Hand", "#off-hand-daggers-for-rogues") },
            { ("Ranged/Relic", "#ranged-weapons-for-rogues") },
        };

    public override string Phase4Url => "wow-classic-rogue-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-rogue-dps") },
            { ("Shoulder", "#shoulders-for-rogue-dps") },
            { ("Back", "#back-for-rogue-dps") },
            { ("Chest", "#chest-for-rogue-dps") },
            { ("Wrist", "#wrist-for-rogue-dps") },
            { ("Hands", "#hands-for-rogue-dps") },
            { ("Waist", "#waist-for-rogue-dps") },
            { ("Legs", "#legs-for-rogue-dps") },
            { ("Feet", "#feet-for-rogue-dps") },
            { ("Neck", "#neck-for-rogue-dps") },
            { ("Ring", "#rings-for-rogue-dps") },
            { ("Trinket", "#trinkets-for-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-rogue-dps") },
            { ("Ranged/Relic", "#guns-and-bows-for-rogue-dps") },
        };

    public override string Phase5Url => "wow-classic-rogue-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-rogue-dps") },
            { ("Shoulder", "#shoulders-for-rogue-dps") },
            { ("Back", "#back-for-rogue-dps") },
            { ("Chest", "#chest-for-rogue-dps") },
            { ("Wrist", "#wrist-for-rogue-dps") },
            { ("Hands", "#hands-for-rogue-dps") },
            { ("Waist", "#waist-for-rogue-dps") },
            { ("Legs", "#legs-for-rogue-dps") },
            { ("Feet", "#feet-for-rogue-dps") },
            { ("Neck", "#neck-for-rogue-dps") },
            { ("Ring", "#rings-for-rogue-dps") },
            { ("Trinket", "#trinkets-for-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-rogue-dps") },
            { ("Ranged/Relic", "#guns-and-bows-for-rogue-dps") },
        };

    public override string Phase6Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase6 => throw new NotImplementedException();
}
