using AddonManager.Models.GuideMappings;

namespace AddonManager.Models;
public class ClassGuideMapping
{
    public ClassGuideMapping(string webAddress, string specName, string className, int phase, string classUri)
    {
        WebAddress = webAddress;
        SpecName = specName;
        ClassName = className;
        Phase = phase; 
        ClassUri = classUri;
    }

    public string WebAddress { get; set; }
    public string SpecName { get; set; }
    public string ClassName { get; set; }
    public string ClassUri { get; set; }
    public int Phase { get; set; }

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
    public List<ClassGuideMapping> GuideMappings { get; set; }
    public ClassSpecGuideMappings()
    {
        GuideMappings = new List<ClassGuideMapping>();

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
        GuideMappings.AddRange(new PriestHolyMapping().ToList());
        GuideMappings.AddRange(new PriestShadowMapping().ToList());
        GuideMappings.AddRange(new RogueMapping().ToList());
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