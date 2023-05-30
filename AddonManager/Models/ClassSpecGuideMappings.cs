namespace AddonManager.Models;
public class ClassGuideMapping
{
    public ClassGuideMapping(string webAddress, string specName, string className, string phase, List<(string, GuideMapping)> guideMappings)
    {
        WebAddress = webAddress;
        SpecName = specName;
        ClassName = className;
        Phase = phase;

        if (Phase == "GemsEnchants")
        {
            _mappings.Clear();
            foreach (var mapping in guideMappings)
            {
                if (_mappings.ContainsKey(mapping.Item1))
                    _mappings[mapping.Item1] = $"{_mappings[mapping.Item1].SlotHtmlId};{mapping.Item2.SlotHtmlId}";
                else
                    _mappings[mapping.Item1] = mapping.Item2;
            }
        }
        else
        {
            foreach (var mapping in guideMappings)
            {
                _mappings[mapping.Item1] = mapping.Item2;
            }
        }        
    }

    public string WebAddress { get; set; }
    public string SpecName { get; set; }
    public string ClassName { get; set; }
    public string Phase { get; set; }

    public IEnumerable<KeyValuePair<string, GuideMapping>> GuideMappings 
    { 
        get
        {
            return _mappings.Where(m => m.Value.Enabled);
        }
    }

    private Dictionary<string, GuideMapping> _mappings = new Dictionary<string, GuideMapping>
    {
        { "Head", "#head" },
        { "Shoulder", "#shoulders" },
        { "Back", "#back" },
        { "Chest", "#chest" },
        { "Wrist", "#wrist" },
        { "Hands", "#hands" },
        { "Waist", "#waist" },
        { "Legs", "#legs" },
        { "Feet", "#feet" },
        { "Neck", "#neck" },
        { "Ring", "#rings" },
        { "Trinket", "#trinkets" },
        { "Main Hand", new GuideMapping { Enabled = false } },
        { "Off Hand", new GuideMapping { Enabled = false } },
        { "Two Hand", new GuideMapping { Enabled = false } },
        { "Ranged/Relic", new GuideMapping { Enabled = false } },
    };
}

public class GuideMapping
{
    public string SlotHtmlId { get; set; } = string.Empty;
    public bool Enabled { get; set; } = false;

    public static implicit operator GuideMapping(string htmlId)
    {
        return new GuideMapping()
        {
            SlotHtmlId = htmlId,
            Enabled = true
        };
    }
}

public class ClassSpecGuideMappings
{
    public List<ClassGuideMapping> GuideMappings { get; set; }
    public ClassSpecGuideMappings()
    {
        GuideMappings = new List<ClassGuideMapping>();

        #region Blood DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/blood/tank-enchants-gems-pve",
            "Blood", "Death Knight", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h3#meta-gems+.box") },
            { ("Gem", "h3#blue-gems+.box") },
            { ("Gem", "h3#purple-gems+.box") },
            { ("Gem", "h3#purple-gems+.box~.box") },
            { ("Gem", "h3#purple-gems+.box~.box~.box") },
            { ("Gem", "h3#green-gems+.box") },
            { ("Gem", "h3#green-gems+.box~.box") },

            { ("Head", "h3#helm-enchants+.box") },
            { ("Shoulder", "h3#shoulder-enchants+.box") },
            { ("Back", "h3#cloak-enchants+.box") },
            { ("Chest", "h3#chest-enchants+.box") },
            { ("Wrist", "h3#bracer-enchants+.box") },
            { ("Hands", "h3#glove-enchants+.box") },
            { ("Legs", "h3#leg-enchants+.box") },
            { ("Feet", "h3#boot-enchants+.box") },
            { ("Two Hand", "h3#runewords+.box") },
            { ("Main Hand", "h3#runewords+.box~.box") },
            { ("Main Hand", "h3#runewords+.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/blood/tank-bis-gear-pre-raid-pve-p2",
            "Blood", "Death Knight", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-blood-death-knight-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-blood-death-knight-tank-pre-raid") },
            { ("Back", "#back-for-blood-death-knight-tank-pre-raid") },
            { ("Chest", "#chest-for-blood-death-knight-tank-pre-raid") },
            { ("Wrist", "#wrist-for-blood-death-knight-tank-pre-raid") },
            { ("Hands", "#hands-for-blood-death-knight-tank-pre-raid") },
            { ("Waist", "#waist-for-blood-death-knight-tank-pre-raid") },
            { ("Legs", "#legs-for-blood-death-knight-tank-pre-raid") },
            { ("Feet", "#feet-for-blood-death-knight-tank-pre-raid") },
            { ("Neck", "#neck-for-blood-death-knight-tank-pre-raid") },
            { ("Ring", "#rings-for-blood-death-knight-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-blood-death-knight-tank-pre-raid") },
            { ("Two Hand", "h3#weapons~h4") },
            { ("Main Hand", "h3#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tank-pre-raid") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/blood/tank-bis-gear-pve-phase-1",
            "Blood", "Death Knight", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tank-phase-1") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/blood/tank-bis-gear-pve-phase-2",
            "Blood", "Death Knight", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-2") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/blood/tank-bis-gear-pve-phase-3",
            "Blood", "Death Knight", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Ranged/Relic", "#relics-for-blood-death-knight-tanks-in-phase-3") },
        }));
        #endregion

        #region Frost DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/dps-enchants-gems-pve",
            "Frost", "Death Knight", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/dps-bis-gear-pre-raid-pve-p2",
            "Frost", "Death Knight", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-death-knight-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-frost-death-knight-dps-pre-raid") },
            { ("Back", "#back-for-frost-death-knight-dps-pre-raid") },
            { ("Chest", "#chest-for-frost-death-knight-dps-pre-raid") },
            { ("Wrist", "#wrist-for-frost-death-knight-dps-pre-raid") },
            { ("Hands", "#hands-for-frost-death-knight-dps-pre-raid") },
            { ("Waist", "#waist-for-frost-death-knight-dps-pre-raid") },
            { ("Legs", "#legs-for-frost-death-knight-dps-pre-raid") },
            { ("Feet", "#feet-for-frost-death-knight-dps-pre-raid") },
            { ("Neck", "#neck-for-frost-death-knight-dps-pre-raid") },
            { ("Ring", "#rings-for-frost-death-knight-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-frost-death-knight-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-pre-raid") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-pre-raid") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/dps-bis-gear-pve-phase-1",
            "Frost", "Death Knight", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-1") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-1") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/dps-bis-gear-pve-phase-2",
            "Frost", "Death Knight", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-2") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-2") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/frost/dps-bis-gear-pve-phase-3",
            "Frost", "Death Knight", "Phase3", new List<(string, GuideMapping)>
{
            { ("Main Hand", "#main-hand-weapons-for-frost-death-knight-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-frost-death-knight-dps-phase-3") },
            { ("Ranged/Relic", "#sigils-for-frost-death-knight-dps-phase-3") },
}));
        #endregion

        #region Unholy DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/dps-enchants-gems-pve",
            "Unholy", "Death Knight", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/dps-bis-gear-pre-raid-pve-p2",
            "Unholy", "Death Knight", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-unholy-death-knight-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-unholy-death-knight-dps-pre-raid") },
            { ("Back", "#back-for-unholy-death-knight-dps-pre-raid") },
            { ("Chest", "#chest-for-unholy-death-knight-dps-pre-raid") },
            { ("Wrist", "#wrist-for-unholy-death-knight-dps-pre-raid") },
            { ("Hands", "#hands-for-unholy-death-knight-dps-pre-raid") },
            { ("Waist", "#waist-for-unholy-death-knight-dps-pre-raid") },
            { ("Legs", "#legs-for-unholy-death-knight-dps-pre-raid") },
            { ("Feet", "#feet-for-unholy-death-knight-dps-pre-raid") },
            { ("Neck", "#neck-for-unholy-death-knight-dps-pre-raid") },
            { ("Ring", "#rings-for-unholy-death-knight-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-unholy-death-knight-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-pre-raid") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-pre-raid") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/dps-bis-gear-pve-phase-1",
            "Unholy", "Death Knight", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-1") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-1") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/dps-bis-gear-pve-phase-2",
            "Unholy", "Death Knight", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-2") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-2") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/death-knight/unholy/dps-bis-gear-pve-phase-3",
            "Unholy", "Death Knight", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-unholy-death-knight-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-unholy-death-knight-dps-phase-3") },
            { ("Ranged/Relic", "#sigils-for-unholy-death-knight-dps-phase-3") },
        }));
        #endregion

        #region Balance Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/balance/dps-enchants-gems-pve",
            "Balance", "Druid", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/balance/dps-bis-gear-pre-raid-pve-p2",
            "Balance", "Druid", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-balance-druid-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-balance-druid-dps-pre-raid") },
            { ("Back", "#back-for-balance-druid-dps-pre-raid") },
            { ("Chest", "#chest-for-balance-druid-dps-pre-raid") },
            { ("Wrist", "#wrist-for-balance-druid-dps-pre-raid") },
            { ("Hands", "#hands-for-balance-druid-dps-pre-raid") },
            { ("Waist", "#waist-for-balance-druid-dps-pre-raid") },
            { ("Legs", "#legs-for-balance-druid-dps-pre-raid") },
            { ("Feet", "#feet-for-balance-druid-dps-pre-raid") },
            { ("Neck", "#neck-for-balance-druid-dps-pre-raid") },
            { ("Ring", "#rings-for-balance-druid-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-balance-druid-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-pre-raid") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/balance/dps-bis-gear-pve-phase-1",
            "Balance", "Druid", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-1") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/balance/dps-bis-gear-pve-phase-2",
            "Balance", "Druid", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-2") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/balance/dps-bis-gear-pve-phase-3",
            "Balance", "Druid", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-balance-druid-dps-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-balance-druid-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-balance-druid-dps-phase-3") },
            { ("Ranged/Relic", "#idols-for-balance-druid-dps-phase-3") }
        }));
        #endregion

        #region Cat Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/dps-enchants-gems-pve",
            "Cat", "Druid", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/dps-bis-gear-pre-raid-pve-p2",
            "Cat", "Druid", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-feral-druid-dps-pre-raid") },
            { ("Back", "#back-for-feral-druid-dps-pre-raid") },
            { ("Chest", "#chest-for-feral-druid-dps-pre-raid") },
            { ("Wrist", "#wrist-for-feral-druid-dps-pre-raid") },
            { ("Hands", "#hands-for-feral-druid-dps-pre-raid") },
            { ("Waist", "#waist-for-feral-druid-dps-pre-raid") },
            { ("Legs", "#legs-for-feral-druid-dps-pre-raid") },
            { ("Feet", "#feet-for-feral-druid-dps-pre-raid") },
            { ("Neck", "#neck-for-feral-druid-dps-pre-raid") },
            { ("Ring", "#rings-for-feral-druid-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-feral-druid-dps-pre-raid") },
            { ("Two Hand", "#weapons-for-feral-druid-dps-pre-raid") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/dps-bis-gear-pve-phase-1",
            "Cat", "Druid", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-1") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/dps-bis-gear-pve-phase-3",
            "Cat", "Druid", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-dps-phase-3") },
            { ("Ranged/Relic", "#idols-for-feral-druid-dps-phase-3") }
        }));
        #endregion

        #region Bear Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/tank-enchants-gems-pve",
            "Bear", "Druid", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/tank-bis-gear-pre-raid-pve-p2",
            "Bear", "Druid", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank-pre-raid") },
            { ("Back", "#back-for-feral-druid-tank-pre-raid") },
            { ("Chest", "#chest-for-feral-druid-tank-pre-raid") },
            { ("Wrist", "#wrist-for-feral-druid-tank-pre-raid") },
            { ("Hands", "#hands-for-feral-druid-tank-pre-raid") },
            { ("Waist", "#waist-for-feral-druid-tank-pre-raid") },
            { ("Legs", "#legs-for-feral-druid-tank-pre-raid") },
            { ("Feet", "#feet-for-feral-druid-tank-pre-raid") },
            { ("Neck", "#neck-for-feral-druid-tank-pre-raid") },
            { ("Ring", "#rings-for-feral-druid-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-feral-druid-tank-pre-raid") },
            { ("Two Hand", "#weapons-for-feral-druid-tank-pre-raid") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/tank-bis-gear-pve-phase-1",
            "Bear", "Druid", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-1") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/tank-bis-gear-pve-phase-2",
            "Bear", "Druid", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-2") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/feral/tank-bis-gear-pve-phase-3",
            "Bear", "Druid", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-for-feral-druid-tank-phase-3") },
            { ("Ranged/Relic", "#idols-for-feral-druid-tank-phase-3") }
        }));
        #endregion

        #region Resto Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/restoration/healer-enchants-gems-pve",
            "Restoration", "Druid", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/restoration/healer-bis-gear-pre-raid-pve-p2",
            "Restoration", "Druid", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-druid-healer-pre-raid") },
            { ("Shoulder", "#shoulders-for-restoration-druid-healer-pre-raid") },
            { ("Back", "#back-for-restoration-druid-healer-pre-raid") },
            { ("Chest", "#chest-for-restoration-druid-healer-pre-raid") },
            { ("Wrist", "#wrist-for-restoration-druid-healer-pre-raid") },
            { ("Hands", "#hands-for-restoration-druid-healer-pre-raid") },
            { ("Waist", "#waist-for-restoration-druid-healer-pre-raid") },
            { ("Legs", "#legs-for-restoration-druid-healer-pre-raid") },
            { ("Feet", "#feet-for-restoration-druid-healer-pre-raid") },
            { ("Neck", "#neck-for-restoration-druid-healer-pre-raid") },
            { ("Ring", "#rings-for-restoration-druid-healer-pre-raid") },
            { ("Trinket", "#trinkets-for-restoration-druid-healer-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-pre-raid") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/restoration/healer-bis-gear-pve-phase-1",
            "Restoration", "Druid", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-1") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/restoration/healer-bis-gear-pve-phase-2",
            "Restoration", "Druid", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-2") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/druid/restoration/healer-bis-gear-pve-phase-3",
            "Restoration", "Druid", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-restoration-druid-healer-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-restoration-druid-healer-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-restoration-druid-healer-phase-3") },
            { ("Ranged/Relic", "#idols-for-restoration-druid-healer-phase-3") }
        }));
        #endregion

        #region BM Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/dps-enchants-gems-pve",
            "Beast Mastery", "Hunter", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/dps-bis-gear-pre-raid-pve-p2",
            "Beast Mastery", "Hunter", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Back", "#back-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Chest", "#chest-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Wrist", "#wrist-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Hands", "#hands-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Waist", "#waist-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Legs", "#legs-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Feet", "#feet-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Neck", "#neck-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Ring", "#rings-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/dps-bis-gear-pve-phase-1",
            "Beast Mastery", "Hunter", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-1") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/dps-bis-gear-pve-phase-2",
            "Beast Mastery", "Hunter", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-2") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/beast-mastery/dps-bis-gear-pve-phase-3",
            "Beast Mastery", "Hunter", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-beast-mastery-hunter-dps-phase-3") },
            { ("Two Hand", "#two-hand-weapons-for-beast-mastery-hunter-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-beast-mastery-hunter-dps-phase-3") }
        }));
        #endregion

        #region Marks Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/marksmanship/dps-enchants-gems-pve",
            "Marksmanship", "Hunter", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/marksmanship/dps-bis-gear-pre-raid-pve-p2",
            "Marksmanship", "Hunter", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-marksmanship-hunter-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-marksmanship-hunter-dps-pre-raid") },
            { ("Back", "#back-for-marksmanship-hunter-dps-pre-raid") },
            { ("Chest", "#chest-for-marksmanship-hunter-dps-pre-raid") },
            { ("Wrist", "#wrist-for-marksmanship-hunter-dps-pre-raid") },
            { ("Hands", "#hands-for-marksmanship-hunter-dps-pre-raid") },
            { ("Waist", "#waist-for-marksmanship-hunter-dps-pre-raid") },
            { ("Legs", "#legs-for-marksmanship-hunter-dps-pre-raid") },
            { ("Feet", "#feet-for-marksmanship-hunter-dps-pre-raid") },
            { ("Neck", "#neck-for-marksmanship-hunter-dps-pre-raid") },
            { ("Ring", "#rings-for-marksmanship-hunter-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-marksmanship-hunter-dps-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-marksmanship-hunter-dps-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-marksmanship-hunter-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-marksmanship-hunter-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/marksmanship/dps-bis-gear-pve-phase-1",
            "Marksmanship", "Hunter", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-marksmanship-hunter-dps-phase-1") },
            { ("Two Hand", "#two-hand-weapons-for-marksmanship-hunter-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-marksmanship-hunter-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/marksmanship/dps-bis-gear-pve-phase-2",
            "Marksmanship", "Hunter", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-marksmanship-hunter-dps-phase-2") },
            { ("Two Hand", "#two-hand-weapons-for-marksmanship-hunter-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-marksmanship-hunter-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/marksmanship/dps-bis-gear-pve-phase-3",
            "Marksmanship", "Hunter", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-marksmanship-hunter-dps-phase-3") },
            { ("Two Hand", "#two-hand-weapons-for-marksmanship-hunter-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-marksmanship-hunter-dps-phase-3") }
        }));
        #endregion

        #region Survival Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/survival/dps-enchants-gems-pve",
            "Survival", "Hunter", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/survival/dps-bis-gear-pre-raid-pve-p2",
            "Survival", "Hunter", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-survival-hunter-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-survival-hunter-dps-pre-raid") },
            { ("Back", "#back-for-survival-hunter-dps-pre-raid") },
            { ("Chest", "#chest-for-survival-hunter-dps-pre-raid") },
            { ("Wrist", "#wrist-for-survival-hunter-dps-pre-raid") },
            { ("Hands", "#hands-for-survival-hunter-dps-pre-raid") },
            { ("Waist", "#waist-for-survival-hunter-dps-pre-raid") },
            { ("Legs", "#legs-for-survival-hunter-dps-pre-raid") },
            { ("Feet", "#feet-for-survival-hunter-dps-pre-raid") },
            { ("Neck", "#neck-for-survival-hunter-dps-pre-raid") },
            { ("Ring", "#rings-for-survival-hunter-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-survival-hunter-dps-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-survival-hunter-dps-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-survival-hunter-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-survival-hunter-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/survival/dps-bis-gear-pve-phase-1",
            "Survival", "Hunter", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-survival-hunter-dps-phase-1") },
            { ("Two Hand", "#two-hand-weapons-for-survival-hunter-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-survival-hunter-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/survival/dps-bis-gear-pve-phase-2",
            "Survival", "Hunter", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-survival-hunter-dps-phase-2") },
            { ("Two Hand", "#two-hand-weapons-for-survival-hunter-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-survival-hunter-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/hunter/survival/dps-bis-gear-pve-phase-3",
            "Survival", "Hunter", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-survival-hunter-dps-phase-3") },
            { ("Two Hand", "#two-hand-weapons-for-survival-hunter-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-survival-hunter-dps-phase-3") }
        }));
        #endregion

        #region Arcane Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-enchants-gems-pve",
            "Arcane", "Mage", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-bis-gear-pre-raid-pve-p2",
            "Arcane", "Mage", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-arcane-mage-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-arcane-mage-dps-pre-raid") },
            { ("Back", "#back-for-arcane-mage-dps-pre-raid") },
            { ("Chest", "#chest-for-arcane-mage-dps-pre-raid") },
            { ("Wrist", "#wrist-for-arcane-mage-dps-pre-raid") },
            { ("Hands", "#hands-for-arcane-mage-dps-pre-raid") },
            { ("Waist", "#waist-for-arcane-mage-dps-pre-raid") },
            { ("Legs", "#legs-for-arcane-mage-dps-pre-raid") },
            { ("Feet", "#feet-for-arcane-mage-dps-pre-raid") },
            { ("Neck", "#neck-for-arcane-mage-dps-pre-raid") },
            { ("Ring", "#rings-for-arcane-mage-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-arcane-mage-dps-pre-raid") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-bis-gear-pve-phase-1",
            "Arcane", "Mage", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-bis-gear-pve-phase-2",
            "Arcane", "Mage", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/arcane/dps-bis-gear-pve-phase-3",
            "Arcane", "Mage", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-arcane-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-arcane-mage-dps-phase-3") }
        }));
        #endregion

        #region Fire Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-enchants-gems-pve",
            "Fire", "Mage", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-bis-gear-pre-raid-pve-p2",
            "Fire", "Mage", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fire-mage-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-fire-mage-dps-pre-raid") },
            { ("Back", "#back-for-fire-mage-dps-pre-raid") },
            { ("Chest", "#chest-for-fire-mage-dps-pre-raid") },
            { ("Wrist", "#wrist-for-fire-mage-dps-pre-raid") },
            { ("Hands", "#hands-for-fire-mage-dps-pre-raid") },
            { ("Waist", "#waist-for-fire-mage-dps-pre-raid") },
            { ("Legs", "#legs-for-fire-mage-dps-pre-raid") },
            { ("Feet", "#feet-for-fire-mage-dps-pre-raid") },
            { ("Neck", "#neck-for-fire-mage-dps-pre-raid") },
            { ("Ring", "#rings-for-fire-mage-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-fire-mage-dps-pre-raid") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-bis-gear-pve-phase-1",
            "Fire", "Mage", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-bis-gear-pve-phase-2",
            "Fire", "Mage", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/fire/dps-bis-gear-pve-phase-3",
            "Fire", "Mage", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-fire-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-fire-mage-dps-phase-3") }
        }));
        #endregion

        #region Frost Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-enchants-gems-pve",
            "Frost", "Mage", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-bis-gear-pre-raid-pve-p2",
            "Frost", "Mage", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-frost-mage-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-frost-mage-dps-pre-raid") },
            { ("Back", "#back-for-frost-mage-dps-pre-raid") },
            { ("Chest", "#chest-for-frost-mage-dps-pre-raid") },
            { ("Wrist", "#wrist-for-frost-mage-dps-pre-raid") },
            { ("Hands", "#hands-for-frost-mage-dps-pre-raid") },
            { ("Waist", "#waist-for-frost-mage-dps-pre-raid") },
            { ("Legs", "#legs-for-frost-mage-dps-pre-raid") },
            { ("Feet", "#feet-for-frost-mage-dps-pre-raid") },
            { ("Neck", "#neck-for-frost-mage-dps-pre-raid") },
            { ("Ring", "#rings-for-frost-mage-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-frost-mage-dps-pre-raid") },
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-bis-gear-pve-phase-1",
            "Frost", "Mage", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-1") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-bis-gear-pve-phase-2",
            "Frost", "Mage", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/mage/frost/dps-bis-gear-pve-phase-3",
            "Frost", "Mage", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-frost-mage-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-frost-mage-dps-phase-3") }
        }));
        #endregion

        #region Holy Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/holy/healer-enchants-gems-pve",
            "Holy", "Paladin", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/holy/healeer-bis-gear-pre-raid-pve-p2",
            "Holy", "Paladin", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-paladin-healer-phase-1") },
            { ("Shoulder", "#shoulders-for-holy-paladin-healer-phase-1") },
            { ("Back", "#back-for-holy-paladin-healer-phase-1") },
            { ("Chest", "#chest-for-holy-paladin-healer-phase-1") },
            { ("Wrist", "#wrist-for-holy-paladin-healer-phase-1") },
            { ("Hands", "#hands-for-holy-paladin-healer-phase-1") },
            { ("Waist", "#waist-for-holy-paladin-healer-phase-1") },
            { ("Legs", "#legs-for-holy-paladin-healer-phase-1") },
            { ("Feet", "#feet-for-holy-paladin-healer-phase-1") },
            { ("Neck", "#neck-for-holy-paladin-healer-phase-1") },
            { ("Ring", "#rings-for-holy-paladin-healer-phase-1") },
            { ("Trinket", "#trinkets-for-holy-paladin-healer-phase-1") },
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-1") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-1") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/holy/healer-bis-gear-pve-phase-1",
            "Holy", "Paladin", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-1") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-1") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/holy/healer-bis-gear-pve-phase-2",
            "Holy", "Paladin", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-2") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-2") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/holy/healer-bis-gear-pve-phase-3",
            "Holy", "Paladin", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-holy-paladin-healer-phase-3") },
            { ("Off Hand", "#shields-and-off-hands-for-holy-paladin-healer-phase-3") },
            { ("Ranged/Relic", "#librams-for-holy-paladin-healer-phase-3") }
        }));
        #endregion

        #region Prot Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/protection/tank-enchants-gems-pve",
            "Protection", "Paladin", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/protection/tank-bis-gear-pre-raid-pve-p2",
            "Protection", "Paladin", "Phase0", new List<(string, GuideMapping)>
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
            { ("Ranged/Relic", "#librams-for-protection-paladin-tank-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/protection/tank-bis-gear-pve-phase-1",
            "Protection", "Paladin", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-protection-paladin-tank-phase-1") },
            { ("Off Hand", "#shields-for-protection-paladin-tank-phase-1") },
            { ("Ranged/Relic", "#librams-for-protection-paladin-tank-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/protection/tank-bis-gear-pve-phase-2",
            "Protection", "Paladin", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/protection/tank-bis-gear-pve-phase-3",
            "Protection", "Paladin", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#weapons") },
            { ("Off Hand", "h3#shields") },
            { ("Ranged/Relic", "h3#librams") }
        }));
        #endregion

        #region Ret Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/dps-enchants-gems-pve",
            "Retribution", "Paladin", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            //{ ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box") },
            { ("Back", "h2#best-enchants~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/dps-bis-gear-pre-raid-pve-p2",
            "Retribution", "Paladin", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-retribution-paladin-pre-raid") },
            { ("Shoulder", "#shoulders-for-retribution-paladin-pre-raid") },
            { ("Back", "#back-for-retribution-paladin-pre-raid") },
            { ("Chest", "#chest-for-retribution-paladin-pre-raid") },
            { ("Wrist", "#wrist-for-retribution-paladin-pre-raid") },
            { ("Hands", "#hands-for-retribution-paladin-pre-raid") },
            { ("Waist", "#waist-for-retribution-paladin-pre-raid") },
            { ("Legs", "#legs-for-retribution-paladin-pre-raid") },
            { ("Feet", "#feet-for-retribution-paladin-pre-raid") },
            { ("Neck", "#neck-for-retribution-paladin-pre-raid") },
            { ("Ring", "#rings-for-retribution-paladin-pre-raid") },
            { ("Trinket", "#trinkets-for-retribution-paladin-pre-raid") },
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-pre-raid") },
            { ("Ranged/Relic", "#libram") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/dps-bis-gear-pve-phase-1",
            "Retribution", "Paladin", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-1") },
            { ("Ranged/Relic", "#libram") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/dps-bis-gear-pve-phase-2",
            "Retribution", "Paladin", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-2") },
            { ("Ranged/Relic", "#libram") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/paladin/retribution/dps-bis-gear-pve-phase-3",
            "Retribution", "Paladin", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-hand-weapons-for-retribution-paladin-phase-3") },
            { ("Ranged/Relic", "#libram") }
        }));
        #endregion

        #region Disc Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/discipline/healer-enchants-gems-pve",
            "Discipline", "Priest", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/discipline/healer-bis-gear-pre-raid-pve-p2",
            "Discipline", "Priest", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-discipline-priest-healer-pre-raid") },
            { ("Shoulder", "#shoulders-for-discipline-priest-healer-pre-raid") },
            { ("Back", "#back-for-discipline-priest-healer-pre-raid") },
            { ("Chest", "#chest-for-discipline-priest-healer-pre-raid") },
            { ("Wrist", "#wrist-for-discipline-priest-healer-pre-raid") },
            { ("Hands", "#hands-for-discipline-priest-healer-pre-raid") },
            { ("Waist", "#waist-for-discipline-priest-healer-pre-raid") },
            { ("Legs", "#legs-for-discipline-priest-healer-pre-raid") },
            { ("Feet", "#feet-for-discipline-priest-healer-pre-raid") },
            { ("Neck", "#neck-for-discipline-priest-healer-pre-raid") },
            { ("Ring", "#rings-for-discipline-priest-healer-pre-raid") },
            { ("Trinket", "#trinkets-for-discipline-priest-healer-pre-raid") },
            { ("Main Hand", "#main-and-two-handed-weapons-for-discipline-priest-healer-pre-raid") },
            { ("Off Hand", "#off-hands-for-discipline-priest-healer-pre-raid") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/discipline/healer-bis-gear-pve-phase-1",
            "Discipline", "Priest", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-discipline-priest-healer-phase-1") },
            { ("Off Hand", "#off-hands-for-discipline-priest-healer-phase-1") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/discipline/healer-bis-gear-pve-phase-2",
            "Discipline", "Priest", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-discipline-priest-healer-phase-2") },
            { ("Off Hand", "#off-hands-for-discipline-priest-healer-phase-2") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/discipline/healer-bis-gear-pve-phase-3",
            "Discipline", "Priest", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-discipline-priest-healer-phase-3") },
            { ("Off Hand", "#off-hands-for-discipline-priest-healer-phase-3") },
            { ("Ranged/Relic", "#wands-for-discipline-priest-healer-phase-3") }
        }));
        #endregion

        #region Holy Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/holy/healer-enchants-gems-pve",
            "Holy", "Priest", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/holy/healer-bis-gear-pre-raid-pve-p2",
            "Holy", "Priest", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-holy-priest-healer-pre-raid") },
            { ("Shoulder", "#shoulders-for-holy-priest-healer-pre-raid") },
            { ("Back", "#back-for-holy-priest-healer-pre-raid") },
            { ("Chest", "#chest-for-holy-priest-healer-pre-raid") },
            { ("Wrist", "#wrist-for-holy-priest-healer-pre-raid") },
            { ("Hands", "#hands-for-holy-priest-healer-pre-raid") },
            { ("Waist", "#waist-for-holy-priest-healer-pre-raid") },
            { ("Legs", "#legs-for-holy-priest-healer-pre-raid") },
            { ("Feet", "#feet-for-holy-priest-healer-pre-raid") },
            { ("Neck", "#neck-for-holy-priest-healer-pre-raid") },
            { ("Ring", "#rings-for-holy-priest-healer-pre-raid") },
            { ("Trinket", "#trinkets-for-holy-priest-healer-pre-raid") },
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-pre-raid") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-pre-raid") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/holy/healer-bis-gear-pve-phase-1",
            "Holy", "Priest", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-1") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-1") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/holy/healer-bis-gear-pve-phase-2",
            "Holy", "Priest", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-2") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-2") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/holy/healer-bis-gear-pve-phase-3",
            "Holy", "Priest", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-and-two-handed-weapons-for-holy-priest-healer-phase-3") },
            { ("Off Hand", "#off-hands-for-holy-priest-healer-phase-3") },
            { ("Ranged/Relic", "#wands-for-holy-priest-healer-phase-3") }
        }));
        #endregion

        #region Shadow Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/shadow/dps-enchants-gems-pve",
            "Shadow", "Priest", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box") },
            { ("Gem", "h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box~.socket-meta>.socket-blue>.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Two Hand", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/shadow/dps-bis-gear-pre-raid-pve-p2",
            "Shadow", "Priest", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-shadow-priest-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-shadow-priest-dps-pre-raid") },
            { ("Back", "#back-for-shadow-priest-dps-pre-raid") },
            { ("Chest", "#chest-for-shadow-priest-dps-pre-raid") },
            { ("Wrist", "#wrist-for-shadow-priest-dps-pre-raid") },
            { ("Hands", "#hands-for-shadow-priest-dps-pre-raid") },
            { ("Waist", "#waist-for-shadow-priest-dps-pre-raid") },
            { ("Legs", "#legs-for-shadow-priest-dps-pre-raid") },
            { ("Feet", "#feet-for-shadow-priest-dps-pre-raid") },
            { ("Neck", "#neck-for-shadow-priest-dps-pre-raid") },
            { ("Ring", "#rings-for-shadow-priest-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-shadow-priest-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-pre-raid") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-pre-raid") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/shadow/dps-bis-gear-pve-phase-1",
            "Shadow", "Priest", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-in-phase-1") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-in-phase-1") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/shadow/dps-bis-gear-pve-phase-2",
            "Shadow", "Priest", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-2") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-2") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-2") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/priest/shadow/dps-bis-gear-pve-phase-3",
            "Shadow", "Priest", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-shadow-priest-dps-phase-3") },
            { ("Off Hand", "#off-hands-for-shadow-priest-dps-phase-3") },
            { ("Two Hand", "#two-handed-weapons-for-shadow-priest-dps-phase-3") },
            { ("Ranged/Relic", "#wands-for-shadow-priest-dps-phase-3") }
        }));
        #endregion

        #region Assassination Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/dps-enchants-gems-pve",
            "Assassination", "Rogue", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/dps-bis-gear-pre-raid-pve-p2",
            "Assassination", "Rogue", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-assassination-rogue-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-assassination-rogue-dps-pre-raid") },
            { ("Back", "#back-for-assassination-rogue-dps-pre-raid") },
            { ("Chest", "#chest-for-assassination-rogue-dps-pre-raid") },
            { ("Wrist", "#wrist-for-assassination-rogue-dps-pre-raid") },
            { ("Hands", "#hands-for-assassination-rogue-dps-pre-raid") },
            { ("Waist", "#waist-for-assassination-rogue-dps-pre-raid") },
            { ("Legs", "#legs-for-assassination-rogue-dps-pre-raid") },
            { ("Feet", "#feet-for-assassination-rogue-dps-pre-raid") },
            { ("Neck", "#neck-for-assassination-rogue-dps-pre-raid") },
            { ("Ring", "#rings-for-assassination-rogue-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-assassination-rogue-dps-pre-raid") },
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/dps-bis-gear-pve-phase-1",
            "Assassination", "Rogue", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/dps-bis-gear-pve-phase-2",
            "Assassination", "Rogue", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/assassination/dps-bis-gear-pve-phase-3",
            "Assassination", "Rogue", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-assassination-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-assassination-rogue-dps-phase-3") }
        }));
        #endregion

        #region Combat Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/combat/dps-enchants-gems-pve",
            "Combat", "Rogue", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/combat/dps-bis-gear-pre-raid-pve-p2",
            "Combat", "Rogue", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-combat-rogue-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-combat-rogue-dps-pre-raid") },
            { ("Back", "#back-for-combat-rogue-dps-pre-raid") },
            { ("Chest", "#chest-for-combat-rogue-dps-pre-raid") },
            { ("Wrist", "#wrist-for-combat-rogue-dps-pre-raid") },
            { ("Hands", "#hands-for-combat-rogue-dps-pre-raid") },
            { ("Waist", "#waist-for-combat-rogue-dps-pre-raid") },
            { ("Legs", "#legs-for-combat-rogue-dps-pre-raid") },
            { ("Feet", "#feet-for-combat-rogue-dps-pre-raid") },
            { ("Neck", "#neck-for-combat-rogue-dps-pre-raid") },
            { ("Ring", "#rings-for-combat-rogue-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-combat-rogue-dps-pre-raid") },
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps-pre-raid") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-combat-rogue-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/combat/dps-bis-gear-pve-phase-1",
            "Combat", "Rogue", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps-phase-1") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-combat-rogue-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/combat/dps-bis-gear-pve-phase-2",
            "Combat", "Rogue", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-combat-rogue-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/combat/dps-bis-gear-pve-phase-3",
            "Combat", "Rogue", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-combat-rogue-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-combat-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-combat-rogue-dps-phase-3") }
        }));
        #endregion

        #region Subtlety Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/subtlety/dps-enchants-gems-pve",
            "Subtlety", "Rogue", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/subtlety/dps-bis-gear-pre-raid-pve-p2",
            "Subtlety", "Rogue", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-subtlety-rogue-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-subtlety-rogue-dps-pre-raid") },
            { ("Back", "#back-for-subtlety-rogue-dps-pre-raid") },
            { ("Chest", "#chest-for-subtlety-rogue-dps-pre-raid") },
            { ("Wrist", "#wrist-for-subtlety-rogue-dps-pre-raid") },
            { ("Hands", "#hands-for-subtlety-rogue-dps-pre-raid") },
            { ("Waist", "#waist-for-subtlety-rogue-dps-pre-raid") },
            { ("Legs", "#legs-for-subtlety-rogue-dps-pre-raid") },
            { ("Feet", "#feet-for-subtlety-rogue-dps-pre-raid") },
            { ("Neck", "#neck-for-subtlety-rogue-dps-pre-raid") },
            { ("Ring", "#rings-for-subtlety-rogue-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-subtlety-rogue-dps-pre-raid") },
            { ("Main Hand", "#weapons-for-subtlety-rogue-dps-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/subtlety/dps-bis-gear-pve-phase-1",
            "Subtlety", "Rogue", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-subtlety-rogue-dps-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/subtlety/dps-bis-gear-pve-phase-2",
            "Subtlety", "Rogue", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-2") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/rogue/subtlety/dps-bis-gear-pve-phase-3",
            "Subtlety", "Rogue", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#main-hand-weapons-for-subtlety-rogue-dps-phase-3") },
            { ("Off Hand", "#off-hand-weapons-for-subtlety-rogue-dps-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-subtlety-rogue-dps-phase-3") }
        }));
        #endregion

        #region Elemental Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/elemental/dps-enchants-gems-pve",
            "Elemental", "Shaman", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/elemental/dps-bis-gear-pre-raid-pve-p2",
            "Elemental", "Shaman", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-elemental-shaman-dps-in-pre-raid") },
            { ("Shoulder", "#shoulder-for-elemental-shaman-dps-in-pre-raid") },
            { ("Back", "#back-for-elemental-shaman-dps-in-pre-raid") },
            { ("Chest", "#chest-for-elemental-shaman-dps-in-pre-raid") },
            { ("Wrist", "#wrist-for-elemental-shaman-dps-in-pre-raid") },
            { ("Hands", "#hands-for-elemental-shaman-dps-in-pre-raid") },
            { ("Waist", "#waist-for-elemental-shaman-dps-in-pre-raid") },
            { ("Legs", "#legs-for-elemental-shaman-dps-in-pre-raid") },
            { ("Feet", "#feet-for-elemental-shaman-dps-in-pre-raid") },
            { ("Neck", "#neck-for-elemental-shaman-dps-in-pre-raid") },
            { ("Ring", "#finger-for-elemental-shaman-dps-in-pre-raid") },
            { ("Trinket", "#trinket-for-elemental-shaman-dps-in-pre-raid") },
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-pre-raid") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-pre-raid") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/elemental/dps-bis-gear-pve-phase-1",
            "Elemental", "Shaman", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/elemental/dps-bis-gear-pve-phase-2",
            "Elemental", "Shaman", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/elemental/dps-bis-gear-pve-phase-3",
            "Elemental", "Shaman", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-elemental-shaman-dps-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-elemental-shaman-dps-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-elemental-shaman-dps-in-phase-3") }
        }));
        #endregion

        #region Enhancement Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/enhancement/dps-enchants-gems-pve",
            "Enhancement", "Shaman", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/enhancement/dps-bis-gear-pre-raid-pve-p2",
            "Enhancement", "Shaman", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Shoulder", "#shoulder-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Back", "#back-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Chest", "#chest-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Wrist", "#wrist-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Hands", "#hands-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Waist", "#waist-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Legs", "#legs-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Feet", "#feet-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Neck", "#neck-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Ring", "#finger-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Trinket", "#trinket-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps-in-pre-raid") },
            { ("Ranged/Relic", "#totems-for-enhancement-shaman-dps-in-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/enhancement/dps-bis-gear-pve-phase-1",
            "Enhancement", "Shaman", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-enhancement-shaman-dps-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/enhancement/dps-bis-gear-pve-phase-2",
            "Enhancement", "Shaman", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-enhancement-shaman-dps-in-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/enhancement/dps-bis-gear-pve-phase-3",
            "Enhancement", "Shaman", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-enhancement-shaman-dps-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-enhancement-shaman-dps-in-phase-3") }
        }));
        #endregion

        #region Resto Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/healer-enchants-gems-pve",
            "Restoration", "Shaman", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.socket-prismatic>.box") },
            { ("Waist", "h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Legs", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box") },
            { ("Feet", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box") },
            { ("Main Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/healer-bis-gear-pre-raid-pve-p2",
            "Restoration", "Shaman", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-restoration-shaman-healer-in-pre-raid") },
            { ("Shoulder", "#shoulder-for-restoration-shaman-healer-in-pre-raid") },
            { ("Back", "#back-for-restoration-shaman-healer-in-pre-raid") },
            { ("Chest", "#chest-for-restoration-shaman-healer-in-pre-raid") },
            { ("Wrist", "#wrist-for-restoration-shaman-healer-in-pre-raid") },
            { ("Hands", "#hands-for-restoration-shaman-healer-in-pre-raid") },
            { ("Waist", "#waist-for-restoration-shaman-healer-in-pre-raid") },
            { ("Legs", "#legs-for-restoration-shaman-healer-in-pre-raid") },
            { ("Feet", "#feet-for-restoration-shaman-healer-in-pre-raid") },
            { ("Neck", "#neck-for-restoration-shaman-healer-in-pre-raid") },
            { ("Ring", "#finger-for-restoration-shaman-healer-in-pre-raid") },
            { ("Trinket", "#trinket-for-restoration-shaman-healer-in-pre-raid") },
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-pre-raid") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-pre-raid") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/healer-bis-gear-pve-phase-1",
            "Restoration", "Shaman", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-1") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-1") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/healer-bis-gear-pve-phase-2",
            "Restoration", "Shaman", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-2") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-2") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/shaman/restoration/healer-bis-gear-pve-phase-3",
            "Restoration", "Shaman", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#weapons-for-restoration-shaman-healer-in-phase-3") },
            { ("Off Hand", "#shields-off-hands-for-restoration-shaman-healer-in-phase-3") },
            { ("Ranged/Relic", "#totems-for-restoration-shaman-healer-in-phase-3") }
        }));
        #endregion

        #region Affliction Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/affliction/dps-enchants-gems-pve",
            "Affliction", "Warlock", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems~.box") },
            { ("Gem", "h2#best-gems~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/affliction/dps-bis-gear-pre-raid-pve-p2",
            "Affliction", "Warlock", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h3#weapons~h4") },
            { ("Main Hand", "h3#weapons~h4~h4") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/affliction/dps-bis-gear-pve-phase-1",
            "Affliction", "Warlock", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/affliction/dps-bis-gear-pve-phase-2",
            "Affliction", "Warlock", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/affliction/dps-bis-gear-pve-phase-3",
            "Affliction", "Warlock", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));
        #endregion

        #region Demonology Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/demonology/dps-enchants-gems-pve",
            "Demonology", "Warlock", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems~.box") },
            { ("Gem", "h2#best-gems~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/demonology/dps-bis-gear-pre-raid-pve-p2",
            "Demonology", "Warlock", "Phase0", new List<(string, GuideMapping)>
        {
            { ("h3#weapons~h4", "Two Hand") },
            { ("h3#weapons~h4~h4", "Main Hand") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/demonology/dps-bis-gear-pve-phase-1",
            "Demonology", "Warlock", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/demonology/dps-bis-gear-pve-phase-2",
            "Demonology", "Warlock", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/demonology/dps-bis-gear-pve-phase-3",
            "Demonology", "Warlock", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));
        #endregion

        #region Destruction Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/destruction/dps-enchants-gems-pve",
            "Destruction", "Warlock", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems~.box") },
            { ("Gem", "h2#best-gems~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box") },
            { ("Gem", "h2#best-gems~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/destruction/dps-bis-gear-pre-raid-pve-p2",
            "Destruction", "Warlock", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h3#weapons~h4" ) },
            { ("Main Hand", "h3#weapons~h4~h4" ) },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/destruction/dps-bis-gear-pve-phase-1",
            "Destruction", "Warlock", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/destruction/dps-bis-gear-pve-phase-2",
            "Destruction", "Warlock", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warlock/destruction/dps-bis-gear-pve-phase-3",
            "Destruction", "Warlock", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        }));
        #endregion

        #region Arms Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/arms/dps-enchants-gems-pve",
            "Arms", "Warrior", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/arms/dps-bis-gear-pre-raid-pve-p2",
            "Arms", "Warrior", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-arms-warrior-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-arms-warrior-dps-pre-raid") },
            { ("Back", "#back-for-arms-warrior-dps-pre-raid") },
            { ("Chest", "#chest-for-arms-warrior-dps-pre-raid") },
            { ("Wrist", "#wrist-for-arms-warrior-dps-pre-raid") },
            { ("Hands", "#hands-for-arms-warrior-dps-pre-raid") },
            { ("Waist", "#waist-for-arms-warrior-dps-pre-raid") },
            { ("Legs", "#legs-for-arms-warrior-dps-pre-raid") },
            { ("Feet", "#feet-for-arms-warrior-dps-pre-raid") },
            { ("Neck", "#neck-for-arms-warrior-dps-pre-raid") },
            { ("Ring", "#rings-for-arms-warrior-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-arms-warrior-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-pre-raid") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-pre-raid") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/arms/dps-bis-gear-pve-phase-1",
            "Arms", "Warrior", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-phase-1") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-phase-1") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/arms/dps-bis-gear-pve-phase-2",
            "Arms", "Warrior", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-2") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-2") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/arms/dps-bis-gear-pve-phase-3",
            "Arms", "Warrior", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-arms-warrior-dps-in-phase-3") },
            { ("Ranged/Relic", "#ranged-weapons-for-arms-warrior-dps-in-phase-3") },
        }));
        #endregion

        #region Fury Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/fury/dps-enchants-gems-pve",
            "Fury", "Warrior", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Waist", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/fury/dps-bis-gear-pre-raid-pve-p2",
            "Fury", "Warrior", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-fury-warrior-dps-pre-raid") },
            { ("Shoulder", "#shoulders-for-fury-warrior-dps-pre-raid") },
            { ("Back", "#back-for-fury-warrior-dps-pre-raid") },
            { ("Chest", "#chest-for-fury-warrior-dps-pre-raid") },
            { ("Wrist", "#wrist-for-fury-warrior-dps-pre-raid") },
            { ("Hands", "#hands-for-fury-warrior-dps-pre-raid") },
            { ("Waist", "#waist-for-fury-warrior-dps-pre-raid") },
            { ("Legs", "#legs-for-fury-warrior-dps-pre-raid") },
            { ("Feet", "#feet-for-fury-warrior-dps-pre-raid") },
            { ("Neck", "#neck-for-fury-warrior-dps-pre-raid") },
            { ("Ring", "#rings-for-fury-warrior-dps-pre-raid") },
            { ("Trinket", "#trinkets-for-fury-warrior-dps-pre-raid") },
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-pre-raid") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-pre-raid") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/fury/dps-bis-gear-pve-phase-1",
            "Fury", "Warrior", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-1") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-1") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/fury/dps-bis-gear-pve-phase-2",
            "Fury", "Warrior", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-2") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-2") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/fury/dps-bis-gear-pve-phase-3",
            "Fury", "Warrior", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#two-handed-weapons-for-fury-warrior-dps-in-phase-3") },
            { ("Ranged/Relic", "#ranged-weapons-for-fury-warrior-dps-in-phase-3") },
        }));
        #endregion

        #region Prot Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-enchants-gems-pve",
            "Protection", "Warrior", "GemsEnchants", new List<(string, GuideMapping)>
        {
            { ("Meta", "h2#best-gems+.box") },
            { ("Gem", "h2#best-gems+.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box") },
            { ("Gem", "h2#best-gems+.box~.box~.box~.box") },

            { ("Head", "h2#best-enchants~.box") },
            { ("Shoulder", "h2#best-enchants~.box~.box") },
            { ("Back", "h2#best-enchants~.box~.box~.box") },
            { ("Chest", "h2#best-enchants~.box~.box~.box~.box") },
            { ("Wrist", "h2#best-enchants~.box~.box~.box~.box~.box") },
            { ("Hands", "h2#best-enchants~.box~.box~.box~.box~.box~.box") },
            { ("Legs", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box") },
            { ("Feet", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ring", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Main Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Off Hand", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
            { ("Ranged/Relic", "h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box") },
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-bis-gear-pre-raid-pve-p2",
            "Protection", "Warrior", "Phase0", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank-pre-raid") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank-pre-raid") },
            { ("Back", "#back-for-protection-warrior-tank-pre-raid") },
            { ("Chest", "#chest-for-protection-warrior-tank-pre-raid") },
            { ("Wrist", "#wrist-for-protection-warrior-tank-pre-raid") },
            { ("Hands", "#hands-for-protection-warrior-tank-pre-raid") },
            { ("Waist", "#waist-for-protection-warrior-tank-pre-raid") },
            { ("Legs", "#legs-for-protection-warrior-tank-pre-raid") },
            { ("Feet", "#feet-for-protection-warrior-tank-pre-raid") },
            { ("Neck", "#neck-for-protection-warrior-tank-pre-raid") },
            { ("Ring", "#rings-for-protection-warrior-tank-pre-raid") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank-pre-raid") },
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-pre-raid") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-pre-raid") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-pre-raid") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-bis-gear-pve-phase-1",
            "Protection", "Warrior", "Phase1", new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-in-phase-1") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-in-phase-1") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-in-phase-1") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-bis-gear-pve-phase-2",
            "Protection", "Warrior", "Phase2", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank-in-phase-2") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank-in-phase-2") },
            { ("Back", "#back-for-protection-warrior-tank-in-phase-2") },
            { ("Chest", "#chest-for-protection-warrior-tank-in-phase-2") },
            { ("Wrist", "#wrist-for-protection-warrior-tank-in-phase-2") },
            { ("Hands", "#hands-for-protection-warrior-tank-in-phase-2") },
            { ("Waist", "#waist-for-protection-warrior-tank-in-phase-2") },
            { ("Legs", "#legs-for-protection-warrior-tank-in-phase-2") },
            { ("Feet", "#feet-for-protection-warrior-tank-in-phase-2") },
            { ("Neck", "#neck-for-protection-warrior-tank-in-phase-2") },
            { ("Ring", "#rings-for-protection-warrior-tank-in-phase-2") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank-in-phase-2") },
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-in-phase-2") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-in-phase-2") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-in-phase-2") }
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-bis-gear-pve-phase-3",
            "Protection", "Warrior", "Phase3", new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-protection-warrior-tank-in-phase-3") },
            { ("Shoulder", "#shoulders-for-protection-warrior-tank-in-phase-3") },
            { ("Back", "#back-for-protection-warrior-tank-in-phase-3") },
            { ("Chest", "#chest-for-protection-warrior-tank-in-phase-3") },
            { ("Wrist", "#wrist-for-protection-warrior-tank-in-phase-3") },
            { ("Hands", "#hands-for-protection-warrior-tank-in-phase-3") },
            { ("Waist", "#waist-for-protection-warrior-tank-in-phase-3") },
            { ("Legs", "#legs-for-protection-warrior-tank-in-phase-3") },
            { ("Feet", "#feet-for-protection-warrior-tank-in-phase-3") },
            { ("Neck", "#neck-for-protection-warrior-tank-in-phase-3") },
            { ("Ring", "#rings-for-protection-warrior-tank-in-phase-3") },
            { ("Trinket", "#trinkets-for-protection-warrior-tank-in-phase-3") },
            { ("Main Hand", "#one-handed-weapons-for-protection-warrior-tank-in-phase-3") },
            { ("Off Hand", "#shields-for-protection-warrior-tank-in-phase-3") },
            { ("Ranged/Relic", "#guns-and-bows-for-protection-warrior-tank-in-phase-3") }
        }));
        #endregion
    }
}
