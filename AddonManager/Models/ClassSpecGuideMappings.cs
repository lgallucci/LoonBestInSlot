using AddonManager.Models.GuideMappings;

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

        GuideMappings.AddRange(new DeathKnightBloodMapping().ToList());
        GuideMappings.AddRange(new DeathKnightFrostMapping().ToList());
        GuideMappings.AddRange(new DeathKnightUnholyMapping().ToList());
        GuideMappings.AddRange(new DruidBalanceMapping().ToList());
        GuideMappings.AddRange(new DruidCatMapping().ToList());
        GuideMappings.AddRange(new DruidBearMapping().ToList());
        GuideMappings.AddRange(new DruidRestoMapping().ToList());
        GuideMappings.AddRange(new HunterBeastMasteryMapping().ToList());
        GuideMappings.AddRange(new HunterMarksmanshipMapping().ToList());
        GuideMappings.AddRange(new HunterSurvivalMapping().ToList());
        GuideMappings.AddRange(new MageArcaneMapping().ToList());
        GuideMappings.AddRange(new MageFireMapping().ToList());
        GuideMappings.AddRange(new MageFrostMapping().ToList());
        GuideMappings.AddRange(new PaladinHolyMapping().ToList());
        GuideMappings.AddRange(new PaladinProtectionMapping().ToList());
        GuideMappings.AddRange(new PaladinRetributionMapping().ToList());
        GuideMappings.AddRange(new PriestDisciplineMapping().ToList());
        GuideMappings.AddRange(new PriestHolyMapping().ToList());
        GuideMappings.AddRange(new PriestShadowMapping().ToList());
        GuideMappings.AddRange(new RogueAssassinationMapping().ToList());
        GuideMappings.AddRange(new RogueCombatMapping().ToList());
        GuideMappings.AddRange(new RogueSubtletyMapping().ToList());
        GuideMappings.AddRange(new ShamanElementalMapping().ToList());
        GuideMappings.AddRange(new ShamanEnhancementMapping().ToList());
        GuideMappings.AddRange(new ShamanRestorationMapping().ToList());
        GuideMappings.AddRange(new WarlockAfflictionMapping().ToList());
        GuideMappings.AddRange(new WarlockDemonologyMapping().ToList());
        GuideMappings.AddRange(new WarlockDestructionMapping().ToList());
        GuideMappings.AddRange(new WarriorArmsMapping().ToList());
        GuideMappings.AddRange(new WarriorFuryMapping().ToList());
        GuideMappings.AddRange(new WarriorProtectionMapping().ToList());
    }
}
