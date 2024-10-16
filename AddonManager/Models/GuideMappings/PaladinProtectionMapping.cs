﻿using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class PaladinProtectionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/paladin/protection/";
    public override string Class => "Paladin";
    public override string Spec => "Protection";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-protection-paladin-tank-pre-raid") },
            { ("Back", "#back-for-protection-paladin-tank-pre-raid") },
            { ("Chest", "#chest-for-protection-paladin-tank-pre-raid") },
            { ("Wrist", "#wrist-for-protection-paladin-tank-pre-raid") },
            { ("Hands", "#hands-for-protection-paladin-tank-pre-raid") },
            { ("Waist", "#waist-for-protection-paladin-tank-pre-raid") },
            { ("Legs", "#legs-for-protection-paladin-tank-pre-raid") },
            { ("Feet", "#feet-for-protection-paladin-tank-pre-raid") },
            { ("Neck", "#neck-for-protection-paladin-tank-pre-raid") },
            { ("Ring", "#rings-for-protection-paladin-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-protection-paladin-tank-pre-raid") },
            { ("Main Hand", "#weapons-for-protection-paladin-tank-pre-raid") },
            { ("Off Hand", "#shields-for-protection-paladin-tank-pre-raid") },
            { ("Ranged/Relic", "#relics-for-protection-paladin-tank-pre-raid") }
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-paladin-tank") },
            { ("Shoulder", "#shoulders-for-protection-paladin-tank") },
            { ("Back", "#back-for-protection-paladin-tank") },
            { ("Chest", "#chest-for-protection-paladin-tank") },
            { ("Wrist", "#wrist-for-protection-paladin-tank") },
            { ("Hands", "#hands-for-protection-paladin-tank") },
            { ("Waist", "#waist-for-protection-paladin-tank") },
            { ("Legs", "#legs-for-protection-paladin-tank") },
            { ("Feet", "#feet-for-protection-paladin-tank") },
            { ("Neck", "#neck-for-protection-paladin-tank") },
            { ("Ring", "#rings-for-protection-paladin-tank") },
            { ("Trinket", "#trinkets-for-protection-paladin-tank") },
            { ("Main Hand", "#weapons-for-protection-paladin-tank") },
            { ("Off Hand", "#shields-for-protection-paladin-tank") },
            { ("Ranged/Relic", "#relics-for-protection-paladin-tank") }
        };

    public override string GemsEnchantsUrl => "tank-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", ".box:nth-of-type(1)") },
        { ("Gem", ".box:nth-of-type(2)") },
        { ("Gem", ".box:nth-of-type(3)") },
        { ("Gem", ".box:nth-of-type(4)") },
        //Enchants
        { ("Head", ".box:nth-of-type(5)") },
        { ("Shoulder", ".box:nth-of-type(6)") },
        { ("Back", ".box:nth-of-type(7)") },
        { ("Chest", ".box:nth-of-type(8)") },
        { ("Wrist", ".box:nth-of-type(9)") },
        { ("Hands", ".box:nth-of-type(10)") },
        { ("Legs", ".box:nth-of-type(11)") },
        { ("Feet", ".box:nth-of-type(12)") },
        { ("Main Hand", ".box:nth-of-type(13)") },
        { ("Off Hand", ".box:nth-of-type(14)") },
        { ("Ring", ".box:nth-of-type(15)") },
    };
}