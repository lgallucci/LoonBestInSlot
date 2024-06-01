using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class MageFrostMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/mage/frost/";
    public override string Class => "Mage";
    public override string Spec => "Frost";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-mage-dps-phase-1-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-frost-mage-dps-phase-1-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-1-pre-raid") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-1-pre-raid") }
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-two-handed-weapons-for-fire-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-1") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-4") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-4") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-4") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-5") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-5") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-5") }
        };

    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-pre-patch") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-pre-patch") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-pre-patch") },
        };

    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", ".box:nth-of-type(1)") },
        { ("Gem", ".box:nth-of-type(2)") },
        { ("Gem", ".box:nth-of-type(3)") },
        { ("Gem", ".box:nth-of-type(4)") },
        { ("Gem", ".box:nth-of-type(5)") },
        //Enchants
        { ("Head", ".box:nth-of-type(6)") },
        { ("Shoulder", ".box:nth-of-type(7)") },
        { ("Back", ".box:nth-of-type(8)") },
        { ("Chest", ".box:nth-of-type(9)") },
        { ("Waist", ".box:nth-of-type(10)") },
        { ("Wrist", ".box:nth-of-type(11)") },
        { ("Hands", ".box:nth-of-type(12)") },
        { ("Legs", ".box:nth-of-type(13)") },
        { ("Feet", ".box:nth-of-type(14)") },
        { ("Main Hand", ".box:nth-of-type(15)") },
        { ("Off Hand", ".box:nth-of-type(16)") },
        { ("Ring", ".box:nth-of-type(17)") },
    };
}