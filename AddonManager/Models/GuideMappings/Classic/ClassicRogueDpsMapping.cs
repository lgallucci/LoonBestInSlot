using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicRogueDpsMapping : ClassicSpecMapping
{
    public override string Class => "Rogue";
    public override string Spec => "Dps";

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

    public override string Phase4Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
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

    public override string Phase5Url => throw new NotImplementedException();
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
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
}
