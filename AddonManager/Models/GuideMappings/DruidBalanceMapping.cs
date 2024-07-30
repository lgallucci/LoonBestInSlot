using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBalanceMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/druid/balance/";
    public override string Class => "Druid";
    public override string Spec => "Balance";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps") },
            { ("Back", "#back-for-balance-druid-dps") },
            { ("Chest", "#chest-for-balance-druid-dps") },
            { ("Wrist", "#wrist-for-balance-druid-dps") },
            { ("Hands", "#hands-for-balance-druid-dps") },
            { ("Waist", "#waist-for-balance-druid-dps") },
            { ("Legs", "#legs-for-balance-druid-dps") },
            { ("Feet", "#feet-for-balance-druid-dps") },
            { ("Neck", "#neck-for-balance-druid-dps") },
            { ("Ring", "#rings-for-balance-druid-dps") },
            { ("Trinket", "#trinkets-for-balance-druid-dps") },
            { ("Main Hand", "#weapons-for-balance-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-balance-druid-dps") },
            { ("Ranged/Relic", "#relic-for-balance-druid-dps") }
        };

    public override string CurrentPhaseUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps") },
            { ("Back", "#back-for-balance-druid-dps") },
            { ("Chest", "#chest-for-balance-druid-dps") },
            { ("Wrist", "#wrist-for-balance-druid-dps") },
            { ("Hands", "#hands-for-balance-druid-dps") },
            { ("Waist", "#waist-for-balance-druid-dps") },
            { ("Legs", "#legs-for-balance-druid-dps") },
            { ("Feet", "#feet-for-balance-druid-dps") },
            { ("Neck", "#neck-for-balance-druid-dps") },
            { ("Ring", "#rings-for-balance-druid-dps") },
            { ("Trinket", "#trinkets-for-balance-druid-dps") },
            { ("Main Hand", "#weapons-for-balance-druid-dps") },
            { ("Off Hand", "#off-hand-items-for-balance-druid-dps") },
            { ("Ranged/Relic", "#relic-for-balance-druid-dps") }
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
        { ("Head", "#head-enchant-arcanum-of-hyjal") },
        { ("Shoulder", "#shoulder-enchant-felfire-inscription-greater-inscription-of-charged-lodestone") },
        { ("Back", "#cloak-enchant-lightweave-embroidery-enchant-cloak-greater-intellect") },
        { ("Chest", "#chest-enchant-enchant-chest-peerless-stats") },
        { ("Wrist", "#bracer-enchant-draconic-embossment-intellect-enchant-bracer-mighty-intellect") },
        { ("Hands", "#gloves-enchant-enchant-gloves-haste-enchant-gloves-greater-mastery-engineers") },
        { ("Legs", "#legs-enchant-powerful-ghostly-spellthread") },
        { ("Feet", "#boots-enchant-enchant-boots-lavawalker-enchant-boots-haste") },
        { ("Main Hand", "#weapon-enchant-enchant-weapon-power-torrent-enchant-weapon-hurricane") },
        { ("Off Hand", "#off-hand-enchant-enchant-off-hand-superior-intellect") },
        { ("Ring", "#ring-enchant-enchant-ring-intellect") },
    };
}