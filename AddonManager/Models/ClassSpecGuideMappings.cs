using AddonManager.Models.GuideMappings;
using AddonManager.Models.GuideMappings.Classic;
using AddonManager.Models.GuideMappings.SOD;

namespace AddonManager.Models;
public class ClassGuideMapping
{
    public ClassGuideMapping(string webAddress, string specName, string className, string guideFolder, string phase, List<(string, GuideMapping)> guideMappings)
    {
        WebAddress = webAddress;
        SpecName = specName;
        ClassName = className;
        Phase = phase;
        GuideFolder = guideFolder;

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
                    _mappings[mapping.Item1] = new GuideMapping() { Enabled = false };
            }

            foreach (var mapping in guideMappings)
            {
                if (_mappings.ContainsKey(mapping.Item1) && _mappings[mapping.Item1].Enabled)
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
    public string GuideFolder { get; set; }

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

    public override string ToString()
    {
        return ClassName+SpecName;
    }
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
    public List<ClassGuideMapping> SODGuideMappings { get; set; }
    public List<ClassGuideMapping> ClassicGuideMappings { get; set; }
    public ClassSpecGuideMappings()
    {
        SODGuideMappings = new List<ClassGuideMapping>();

        SODGuideMappings.AddRange(new SODDruidBalanceDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODDruidFeralDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODHunterRangedDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODHunterMeleeDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODMageDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODPaladinDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODPriestDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODRogueDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODShamanElementalDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODShamanEnhancementDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODWarlockDpsMapping().ToList());
        SODGuideMappings.AddRange(new SODWarriorDpsMapping().ToList());

        SODGuideMappings.AddRange(new SODDruidHealerMapping().ToList());
        SODGuideMappings.AddRange(new SODMageHealerMapping().ToList());
        SODGuideMappings.AddRange(new SODPaladinHealerMapping().ToList());
        SODGuideMappings.AddRange(new SODPriestHealerMapping().ToList());
        SODGuideMappings.AddRange(new SODShamanHealerMapping().ToList());

        SODGuideMappings.AddRange(new SODDruidTankMapping().ToList());
        SODGuideMappings.AddRange(new SODPaladinTankMapping().ToList());
        SODGuideMappings.AddRange(new SODRogueTankMapping().ToList());
        SODGuideMappings.AddRange(new SODShamanTankMapping().ToList());
        SODGuideMappings.AddRange(new SODWarlockTankMapping().ToList());
        SODGuideMappings.AddRange(new SODWarriorTankMapping().ToList());

        ClassicGuideMappings = new List<ClassGuideMapping>();

        ClassicGuideMappings.AddRange(new ClassicDruidBalanceMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicDruidBearMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicDruidRestorationMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicDruidCatMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicHunterDpsMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicMageDpsMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicPaladinHolyMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicPaladinRetributionMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicPaladinTankMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicPriestHolyMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicPriestShadowMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicShamanElementalMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicShamanEnhancementMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicShamanRestorationMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicWarlockDpsMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicRogueDpsMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicWarriorDpsMapping().ToList());
        ClassicGuideMappings.AddRange(new ClassicWarriorProtectionMapping().ToList());

    }
}

