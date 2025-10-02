using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal class ClassicDruidCatMapping : ClassicSpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Cat";

    public override string Phase1Url => "wow-classic-feral-druid-dps-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-feral-druid-dps") },
            { ("Shoulder", "#shoulder-for-feral-druid-dps") },
            { ("Back", "#back-for-feral-druid-dps") },
            { ("Chest", "#chest-for-feral-druid-dps") },
            { ("Wrist", "#bracers-for-feral-druid-dps") },
            { ("Hands", "#hands-for-feral-druid-dps") },
            { ("Waist", "#belt-for-feral-druid-dps") },
            { ("Legs", "#legs-for-feral-druid-dps") },
            { ("Feet", "#boots-for-feral-druid-dps") },
            { ("Neck", "#neck-for-feral-druid-dps") },
            { ("Ring", "#rings-for-feral-druid-dps") },
            { ("Trinket", "#trinkets-for-feral-druid-dps") },
            { ("Main Hand", "#one-hand-weapons-for-feral-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-feral-druid-dps") },
            { ("Two Hand", "#two-hand-weapons-for-feral-druid-dps") },
        };

    public override string Phase2Url => "wow-classic-feral-druid-dps-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulder") },
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
            { ("Main Hand", "#one-hand-weapons") },
            { ("Off Hand", "#off-hand-items") },
            { ("Two Hand", "#two-hand-weapons") },
        };

    public override string Phase3Url => "wow-classic-feral-druid-dps-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm") },
            { ("Shoulder", "#shoulder") },
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
            { ("Main Hand", "#one-hand-weapons") },
            { ("Off Hand", "#off-hand-items") },
            { ("Two Hand", "#two-hand-weapons") },
        };

    public override string Phase4Url => "wow-classic-feral-druid-dps-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-dps") },
            { ("Shoulder", "#shoulders-for-feral-druid-dps") },
            { ("Back", "#back-for-feral-druid-dps") },
            { ("Chest", "#chest-for-feral-druid-dps") },
            { ("Wrist", "#wrist-for-feral-druid-dps") },
            { ("Hands", "#hands-for-feral-druid-dps") },
            { ("Waist", "#waist-for-feral-druid-dps") },
            { ("Legs", "#legs-for-feral-druid-dps") },
            { ("Feet", "#feet-for-feral-druid-dps") },
            { ("Neck", "#neck-for-feral-druid-dps") },
            { ("Ring", "#rings-for-feral-druid-dps") },
            { ("Trinket", "#trinkets-for-feral-druid-dps") },
            { ("Main Hand", "#weapons-for-feral-druid-dps") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps") },
        };

    public override string Phase5Url => "wow-classic-feral-druid-dps-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 =>new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Shoulder", "#shoulders-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Back", "#back-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Chest", "#chest-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Wrist", "#wrist-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Hands", "#hands-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Waist", "#waist-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Legs", "#legs-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Feet", "#feet-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Neck", "#neck-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Ring", "#rings-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Trinket", "#trinkets-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Main Hand", "#weapons-for-feral-druid-dps-in-wow-classic-phase-5") },
        { ("Ranged/Relic", "#idols-for-feral-druid-dps-in-wow-classic-phase-5") },
    };

    public override string Phase6Url => "wow-classic-feral-druid-dps-naxxramas-best-in-slot-gear";

    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Shoulder", "#shoulders-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Back", "#back-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Chest", "#chest-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Wrist", "#wrist-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Hands", "#hands-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Waist", "#waist-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Legs", "#legs-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Feet", "#feet-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Neck", "#neck-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Ring", "#rings-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Trinket", "#trinkets-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Main Hand", "#weapons-for-feral-druid-dps-in-wow-classic-phase-6") },
        { ("Ranged/Relic", "#idols-for-feral-druid-dps-in-wow-classic-phase-6") },
    };
}
