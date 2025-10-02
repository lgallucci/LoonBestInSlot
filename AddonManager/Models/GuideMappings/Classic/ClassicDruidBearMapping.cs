using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;

internal class ClassicDruidBearMapping : ClassicSpecMapping
{
    public override string Class => "Druid";
    public override string Spec => "Bear";
    public override string Phase1Url => "wow-classic-feral-druid-tank-molten-core-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-druid-tanks") },
            { ("Shoulder", "#shoulder-for-druid-tanks") },
            { ("Back", "#back-for-druid-tanks") },
            { ("Chest", "#chest-for-druid-tanks") },
            { ("Wrist", "#bracers-for-druid-tanks") },
            { ("Hands", "#hands-for-druid-tanks") },
            { ("Waist", "#belt-for-druid-tanks") },
            { ("Legs", "#legs-for-druid-tanks") },
            { ("Feet", "#boots-for-druid-tanks") },
            { ("Neck", "#neck-for-druid-tanks") },
            { ("Ring", "#rings-for-druid-tanks") },
            { ("Trinket", "#trinkets-for-druid-tanks") },
            { ("Main Hand", "#one-hand-weapons-for-druid-tanks") },
            { ("Off Hand", "#off-hand-items-for-druid-tanks") },
            { ("Two Hand", "#two-hand-weapons-for-druid-tanks") },
            //TODO: Wait til ranged are added
        };

    public override string Phase2Url => "wow-classic-druid-tank-molten-core-phase-2-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-druid-tanks") },
            { ("Shoulder", "#shoulder-for-druid-tanks") },
            { ("Back", "#back-for-druid-tanks") },
            { ("Chest", "#chest-for-druid-tanks") },
            { ("Wrist", "#bracers-for-druid-tanks") },
            { ("Hands", "#hands-for-druid-tanks") },
            { ("Waist", "#belt-for-druid-tanks") },
            { ("Legs", "#legs-for-druid-tanks") },
            { ("Feet", "#boots-for-druid-tanks") },
            { ("Neck", "#neck-for-druid-tanks") },
            { ("Ring", "#rings-for-druid-tanks") },
            { ("Trinket", "#trinkets-for-druid-tanks") },
            { ("Main Hand", "#one-hand-weapons-for-druid-tanks") },
            { ("Off Hand", "#off-hand-items-for-druid-tanks") },
            { ("Two Hand", "#two-hand-weapons-for-druid-tanks") },
            //TODO: Wait til ranged are added
        };

    public override string Phase3Url => "wow-classic-feral-druid-tank-blackwing-lair-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Head", "#helm-for-druid-tanks") },
            { ("Shoulder", "#shoulder-for-druid-tanks") },
            { ("Back", "#back-for-druid-tanks") },
            { ("Chest", "#chest-for-druid-tanks") },
            { ("Wrist", "#bracers-for-druid-tanks") },
            { ("Hands", "#hands-for-druid-tanks") },
            { ("Waist", "#belt-for-druid-tanks") },
            { ("Legs", "#legs-for-druid-tanks") },
            { ("Feet", "#boots-for-druid-tanks") },
            { ("Neck", "#neck-for-druid-tanks") },
            { ("Ring", "#rings-for-druid-tanks") },
            { ("Trinket", "#trinkets-for-druid-tanks") },
            { ("Main Hand", "#one-hand-weapons-for-druid-tanks") },
            { ("Off Hand", "#off-hand-items-for-druid-tanks") },
            { ("Two Hand", "#two-hand-weapons-for-druid-tanks") },
            //TODO: Wait til ranged are added
        };

    public override string Phase4Url => "wow-classic-feral-druid-tank-blackwing-lair-zg-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#trinkets-for-feral-druid-tank") },
            { ("Main Hand", "#weapons-for-feral-druid-tank") },
            //TODO: Wait til ranged are added
        };

    public override string Phase5Url => "wow-classic-feral-druid-tank-ahnqiraj-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Shoulder", "#shoulders-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Back", "#back-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Chest", "#chest-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Wrist", "#wrist-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Hands", "#hands-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Waist", "#waist-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Legs", "#legs-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Feet", "#feet-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Neck", "#neck-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Ring", "#rings-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Trinket", "#trinkets-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Main Hand", "#weapons-for-feral-druid-tank-in-wow-classic-phase-5") },
        { ("Ranged/Relic", "#idols-for-feral-druid-tank-in-wow-classic-phase-5") },
    };

    public override string Phase6Url => "wow-classic-feral-druid-tank-naxxramas-best-in-slot-gear";
    public override List<(string, GuideMapping)> Phase6 => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Shoulder", "#shoulders-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Back", "#back-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Chest", "#chest-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Wrist", "#wrist-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Hands", "#hands-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Waist", "#waist-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Legs", "#legs-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Feet", "#feet-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Neck", "#neck-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Ring", "#rings-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Trinket", "#trinkets-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Main Hand", "#weapons-for-feral-druid-tank-in-wow-classic-phase-6") },
        { ("Ranged/Relic", "#idols-for-feral-druid-tank-in-wow-classic-phase-6") },
    };
}