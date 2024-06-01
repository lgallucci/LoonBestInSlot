using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class RogueAssassinationMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/rogue/assassination/";
    public override string Class => "Rogue";
    public override string Spec => "Assassination";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-assassination-rogue-dps") },
            { ("Shoulder", "#shoulders-for-assassination-rogue-dps") },
            { ("Back", "#back-for-assassination-rogue-dps") },
            { ("Chest", "#chest-for-assassination-rogue-dps") },
            { ("Wrist", "#wrist-for-assassination-rogue-dps") },
            { ("Hands", "#hands-for-assassination-rogue-dps") },
            { ("Waist", "#waist-for-assassination-rogue-dps") },
            { ("Legs", "#legs-for-assassination-rogue-dps") },
            { ("Feet", "#feet-for-assassination-rogue-dps") },
            { ("Neck", "#neck-for-assassination-rogue-dps") },
            { ("Ring", "#rings-for-assassination-rogue-dps") },
            { ("Trinket", "#trinkets-for-assassination-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-assassination-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-assassination-rogue-dps") },
            { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-assassination-rogue-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-assassination-rogue-dps") },
            { ("Shoulder", "#shoulders-for-assassination-rogue-dps") },
            { ("Back", "#back-for-assassination-rogue-dps") },
            { ("Chest", "#chest-for-assassination-rogue-dps") },
            { ("Wrist", "#wrist-for-assassination-rogue-dps") },
            { ("Hands", "#hands-for-assassination-rogue-dps") },
            { ("Waist", "#waist-for-assassination-rogue-dps") },
            { ("Legs", "#legs-for-assassination-rogue-dps") },
            { ("Feet", "#feet-for-assassination-rogue-dps") },
            { ("Neck", "#neck-for-assassination-rogue-dps") },
            { ("Ring", "#rings-for-assassination-rogue-dps") },
            { ("Trinket", "#trinkets-for-assassination-rogue-dps") },
            { ("Main Hand", "#main-hand-weapons-for-assassination-rogue-dps") },
            { ("Off Hand", "#off-hand-weapons-for-assassination-rogue-dps") },
            { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-assassination-rogue-dps") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-4") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-5") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Head", "#head-for-assassination-rogue-dps")},
        { ("Shoulder", "#shoulders-for-assassination-rogue-dps") },
        { ("Back", "#back-for-assassination-rogue-dps") },
        { ("Chest", "#chest-for-assassination-rogue-dps") },
        { ("Wrist", "#wrist-for-assassination-rogue-dps") },
        { ("Hands", "#hands-for-assassination-rogue-dps") },
        { ("Waist", "#waist-for-assassination-rogue-dps") },
        { ("Legs", "#legs-for-assassination-rogue-dps") },
        { ("Feet", "#feet-for-assassination-rogue-dps") },
        { ("Neck", "#neck-for-assassination-rogue-dps") },
        { ("Ring", "#rings-for-assassination-rogue-dps") },
        { ("Trinket", "#trinkets-for-assassination-rogue-dps") },
        { ("Main Hand", "#weapons-for-assassination-rogue-dps-pre-patch") },
        { ("Ranged/Relic", "#guns-bows-and-thrown-weapons-for-assassination-rogue-dps") },
    };

    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
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
        { ("Ring", ".box:nth-of-type(14)") },
    };
}