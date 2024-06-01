using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class ShamanElementalMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/shaman/elemental/";
    public override string Class => "Shaman";
    public override string Spec => "Elemental";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps") },
            { ("Shoulder", "#shoulders-for-elemental-shaman-dps") },
            { ("Back", "#back-for-elemental-shaman-dps") },
            { ("Chest", "#chest-for-elemental-shaman-dps") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps") },
            { ("Hands", "#hands-for-elemental-shaman-dps") },
            { ("Waist", "#waist-for-elemental-shaman-dps") },
            { ("Legs", "#legs-for-elemental-shaman-dps") },
            { ("Feet", "#feet-for-elemental-shaman-dps") },
            { ("Neck", "#neck-for-elemental-shaman-dps") },
            { ("Ring", "#rings-for-elemental-shaman-dps") },
            { ("Trinket", "#trinkets-for-elemental-shaman-dps") },
            { ("Two Hand", "#staff-weapons-for-elemental-shaman-dps")},
            { ("Main Hand", "#main-hand-weapons-for-elemental-shaman-dps") },
            { ("Off Hand", "#off-hands-for-elemental-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-elemental-shaman-dps") }
        };

    public override string Phase1Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps") },
            { ("Shoulder", "#shoulders-for-elemental-shaman-dps") },
            { ("Back", "#back-for-elemental-shaman-dps") },
            { ("Chest", "#chest-for-elemental-shaman-dps") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps") },
            { ("Hands", "#hands-for-elemental-shaman-dps") },
            { ("Waist", "#waist-for-elemental-shaman-dps") },
            { ("Legs", "#legs-for-elemental-shaman-dps") },
            { ("Feet", "#feet-for-elemental-shaman-dps") },
            { ("Neck", "#neck-for-elemental-shaman-dps") },
            { ("Ring", "#rings-for-elemental-shaman-dps") },
            { ("Trinket", "#trinkets-for-elemental-shaman-dps") },
            { ("Two Hand", "#staff-weapons-for-elemental-shaman-dps")},
            { ("Main Hand", "#main-hand-weapons-for-elemental-shaman-dps") },
            { ("Off Hand", "#off-hands-for-elemental-shaman-dps") },
            { ("Ranged/Relic", "#relics-for-elemental-shaman-dps") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-2") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-3") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-5") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-5") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-5") }
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-pre-patch") },
        { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-pre-patch") },
        { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-pre-patch") },
    };

    public override string GemsEnchantsUrl => "dps-enchants-gems-pve";
    public override List<(string, GuideMapping)> GemsEnchants => new List<(string, GuideMapping)>
    {
        //Gems
        { ("Meta", "#meta-gem-burning-shadowspirit-diamond") },
        { ("Gem", "#red-gems-brilliant-inferno-ruby") },
        { ("Gem", "#orange-gems-reckless-ember-topaz") },
        { ("Gem", "#purple-gems-purified-demonseye") },
        //Enchants
        { ("Head", "#ead-enchant-arcanum-of-hyjal") },
        { ("Shoulder", "#shoulder-enchant-felfire-inscription-greater-inscription-of-charged-lodestone") },
        { ("Back", "#cloak-enchant-lightweave-embroidery-enchant-cloak-greater-intellect") },
        { ("Chest", "#chest-enchant-enchant-chest-peerless-stats") },
        { ("Wrist", "#bracer-enchant-draconic-embossment-intellect-enchant-bracer-mighty-intellect") },
        { ("Hands", "#gloves-enchant-enchant-gloves-haste-enchant-gloves-greater-mastery-engineers") },
        { ("Legs", "#legs-enchant-powerful-ghostly-spellthread") },
        { ("Feet", "#boots-enchant-enchant-boots-lavawalker-enchant-boots-haste") },
        { ("Main Hand", "#weapon-enchant-enchant-weapon-power-torrent-enchant-weapon-hurricane") },
        { ("#Off Hand", "#off-hand-enchant-enchant-off-hand-superior-intellect") },
        { ("Ring", "#ring-enchant-enchant-ring-intellect") },
    };
}