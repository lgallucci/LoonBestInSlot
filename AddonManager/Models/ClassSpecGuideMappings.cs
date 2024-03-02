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

        if (Phase == "Enchants")
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
            foreach(var mapping in guideMappings)
            {
                if (_mappings.ContainsKey(mapping.Item1))
                    _mappings.Remove(mapping.Item1);
            }

            foreach (var mapping in guideMappings)
            {                
                if (_mappings.ContainsKey(mapping.Item1))
                    _mappings[mapping.Item1] = $"{_mappings[mapping.Item1].SlotHtmlId};{mapping.Item2.SlotHtmlId}";
                else
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

        GuideMappings.AddRange(new DruidBalanceDpsMapping().ToList());
        GuideMappings.AddRange(new DruidFeralDpsMapping().ToList());
        GuideMappings.AddRange(new HunterDpsMapping().ToList());
        GuideMappings.AddRange(new MageDpsMapping().ToList());
        GuideMappings.AddRange(new PaladinDpsMapping().ToList());
        GuideMappings.AddRange(new PriestDpsMapping().ToList());
        GuideMappings.AddRange(new RogueDpsMapping().ToList());
        GuideMappings.AddRange(new ShamanElementalDpsMapping().ToList());
        GuideMappings.AddRange(new ShamanEnhancementDpsMapping().ToList());
        GuideMappings.AddRange(new WarlockDpsMapping().ToList());
        GuideMappings.AddRange(new WarriorDpsMapping().ToList());
        
        GuideMappings.AddRange(new DruidHealerMapping().ToList());
        GuideMappings.AddRange(new MageHealerMapping().ToList());
        GuideMappings.AddRange(new PaladinHealerMapping().ToList());
        GuideMappings.AddRange(new PriestHealerMapping().ToList());
        GuideMappings.AddRange(new ShamanHealerMapping().ToList());
        
        GuideMappings.AddRange(new DruidTankMapping().ToList());
        GuideMappings.AddRange(new PaladinTankMapping().ToList());
        GuideMappings.AddRange(new RogueTankMapping().ToList());
        GuideMappings.AddRange(new ShamanTankMapping().ToList());
        GuideMappings.AddRange(new WarlockTankMapping().ToList());
        GuideMappings.AddRange(new WarriorTankMapping().ToList());
    }
}

