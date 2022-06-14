namespace AddonManager.Models;
public class ClassGuideMapping
{
    public ClassGuideMapping(string fileName, string specName, string className, List<GuideMapping> guideMappings)
    {
        FileName = fileName; 
        SpecName = specName;
        ClassName = className;
        GuideMappings = guideMappings;
    }

    public string FileName { get; set; }
    public string SpecName { get; set; }
    public string ClassName { get; set; }
    public List<GuideMapping> GuideMappings { get; set; }
}

public class GuideMapping
{
    public GuideMapping(string slotHtmlId, string slot)
    {
        SlotHtmlId = slotHtmlId;
        Slot = slot;
    }
    public string SlotHtmlId { get; }
    public string Slot { get; }
}

public class ClassSpecGuideMappings
{
    public List<ClassGuideMapping> GuideMappings { get; set; }
    public ClassSpecGuideMappings()
    {
        GuideMappings = new List<ClassGuideMapping>();

        GuideMappings.Add(new ClassGuideMapping("DruidBalancePhase0", "Balance", "Druid", new List<GuideMapping> 
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidBalance", "Balance", "Druid", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidCat", "Cat", "Druid", new List<GuideMapping> 
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#weapons~h4", "Two-Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidBear", "Bear", "Druid", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#weapons~h4", "Two-Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidRestoration", "Restoration", "Druid", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterBM", "Beast Mastery", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#two-handed", "Two-Hand"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterMarks", "Marksmanship", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#two-handed", "Two-Hand"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterSurvival", "Survival", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#two-handed", "Two-Hand"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFrost", "Frost", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFrostPhase3", "Frost", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFrostPhase4", "Frost", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFrostPhase5", "Frost", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFire", "Fire", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFirePhase3", "Fire", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFirePhase4", "Fire", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFirePhase5", "Fire", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageArcane", "Arcane", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageArcanePhase3", "Arcane", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageArcanePhase4", "Arcane", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageArcanePhase5", "Arcane", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#jewelry", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets~.last li div .gem2", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHoly", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#offhands-and-shields", "Off Hand"),
            new GuideMapping("#librams", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHolyPhase2", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healing-in-phase-2", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healing-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-holy-paladin-healing-in-phase-2", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healing-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healing-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-holy-paladin-healing-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-holy-paladin-healing-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healing-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healing-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healing-in-phase-2", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healing-in-phase-2", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healing-in-phase-2", "Trinket"),
            new GuideMapping("#weapons-for-holy-paladin-healing-in-phase-2", "Main Hand"),
            new GuideMapping("#offhands-and-shields-for-holy-paladin-healing-in-phase-2", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healing-in-phase-2", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHolyPhase3", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healing-in-phase-3", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healing-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-holy-paladin-healing-in-phase-3", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healing-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healing-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-holy-paladin-healing-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-holy-paladin-healing-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healing-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healing-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healing-in-phase-3", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healing-in-phase-3", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healing-in-phase-3", "Trinket"),
            new GuideMapping("#weapons-for-holy-paladin-healing-in-phase-3", "Main Hand"),
            new GuideMapping("#offhands-and-shields-for-holy-paladin-healing-in-phase-3", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healing-in-phase-3", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHolyPhase4", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healing-in-phase-4", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healing-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-holy-paladin-healing-in-phase-4", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healing-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healing-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-holy-paladin-healing-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-holy-paladin-healing-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healing-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healing-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healing-in-phase-4", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healing-in-phase-4", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healing-in-phase-4", "Trinket"),
            new GuideMapping("#weapons-for-holy-paladin-healing-in-phase-4", "Main Hand"),
            new GuideMapping("#offhands-and-shields-for-holy-paladin-healing-in-phase-4", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healing-in-phase-4", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHolyPhase5", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healing-in-phase-5", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healing-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-holy-paladin-healing-in-phase-5", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healing-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healing-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-holy-paladin-healing-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-holy-paladin-healing-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healing-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healing-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healing-in-phase-5", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healing-in-phase-5", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healing-in-phase-5", "Trinket"),
            new GuideMapping("#weapons-for-holy-paladin-healing-in-phase-5", "Main Hand"),
            new GuideMapping("#offhands-and-shields-for-holy-paladin-healing-in-phase-5", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healing-in-phase-5", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtection", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#mitigation-trinkets", "Trinket"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#threat-generation-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtectionPhase1", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#crit-crush-reduction-avoidance-mitigation-trinkets", "Trinket"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#threat-generation-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtectionPhase2", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#defensive-necks", "Neck"),
            new GuideMapping("#offensive-necks", "Neck"),
            new GuideMapping("#defensive-rings", "Ring"),
            new GuideMapping("#spellpower-rings", "Ring"),
            new GuideMapping("#crit-crush-reduction-avoidance-mitigation-trinkets", "Trinket"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#threat-generation-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtectionPhase3", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#mitigation-rings", "Ring"),
            new GuideMapping("#threat-rings", "Ring"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#mitigation-trinkets", "Trinket"),
            new GuideMapping("#threat-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtectionPhase4", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#mitigation-rings", "Ring"),
            new GuideMapping("#threat-rings", "Ring"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#mitigation-trinkets", "Trinket"),
            new GuideMapping("#threat-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtectionPhase5", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#mitigation-rings", "Ring"),
            new GuideMapping("#threat-rings", "Ring"),
            new GuideMapping("#stamina-trinkets", "Trinket"),
            new GuideMapping("#mitigation-trinkets", "Trinket"),
            new GuideMapping("#threat-trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinRetribution", "Retribution", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("#librams", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PriestHoly", "Holy", "Priest", new List<GuideMapping>
        {        
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-and-two-handed", "Main Hand"),
            new GuideMapping("#off-hands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("PriestShadow", "Shadow", "Priest", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons", "Main Hand"),
            new GuideMapping("#off-hand", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("Rogue", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("RoguePhase1", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head-for-rogue-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-rogue-dps-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-rogue-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-rogue-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-rogue-dps-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-rogue-dps-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-rogue-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-rogue-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-rogue-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-rogue-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-rogue-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-rogue-dps-in-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-rogue-dps-in-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-rogue-dps-in-phase-1", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-rogue-dps-in-phase-1", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("RoguePhase2", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head-for-rogue-dps-in-phase-2", "Head"),
            new GuideMapping("#shoulders-for-rogue-dps-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-rogue-dps-in-phase-2", "Back"),
            new GuideMapping("#chest-for-rogue-dps-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-rogue-dps-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-rogue-dps-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-rogue-dps-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-rogue-dps-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-rogue-dps-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-rogue-dps-in-phase-2", "Neck"),
            new GuideMapping("#rings-for-rogue-dps-in-phase-2", "Ring"),
            new GuideMapping("#trinkets-for-rogue-dps-in-phase-2", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-rogue-dps-in-phase-2", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-rogue-dps-in-phase-2", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-rogue-dps-in-phase-2", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("RoguePhase3", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head-for-rogue-dps-in-phase-3", "Head"),
            new GuideMapping("#shoulders-for-rogue-dps-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-rogue-dps-in-phase-3", "Back"),
            new GuideMapping("#chest-for-rogue-dps-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-rogue-dps-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-rogue-dps-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-rogue-dps-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-rogue-dps-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-rogue-dps-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-rogue-dps-in-phase-3", "Neck"),
            new GuideMapping("#rings-for-rogue-dps-in-phase-3", "Ring"),
            new GuideMapping("#trinkets-for-rogue-dps-in-phase-3", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-rogue-dps-in-phase-3", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-rogue-dps-in-phase-3", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-rogue-dps-in-phase-3", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("RoguePhase4", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head-for-rogue-dps-in-phase-4", "Head"),
            new GuideMapping("#shoulders-for-rogue-dps-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-rogue-dps-in-phase-4", "Back"),
            new GuideMapping("#chest-for-rogue-dps-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-rogue-dps-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-rogue-dps-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-rogue-dps-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-rogue-dps-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-rogue-dps-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-rogue-dps-in-phase-4", "Neck"),
            new GuideMapping("#rings-for-rogue-dps-in-phase-4", "Ring"),
            new GuideMapping("#trinkets-for-rogue-dps-in-phase-4", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-rogue-dps-in-phase-4", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-rogue-dps-in-phase-4", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-rogue-dps-in-phase-4", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("RoguePhase5", "", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head-for-rogue-dps-in-phase-5", "Head"),
            new GuideMapping("#shoulders-for-rogue-dps-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-rogue-dps-in-phase-5", "Back"),
            new GuideMapping("#chest-for-rogue-dps-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-rogue-dps-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-rogue-dps-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-rogue-dps-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-rogue-dps-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-rogue-dps-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-rogue-dps-in-phase-5", "Neck"),
            new GuideMapping("#rings-for-rogue-dps-in-phase-5", "Ring"),
            new GuideMapping("#trinkets-for-rogue-dps-in-phase-5", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-rogue-dps-in-phase-5", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-rogue-dps-in-phase-5", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-rogue-dps-in-phase-5", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElemental", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#ring", "Ring"),
            new GuideMapping("#trinket", "Trinket"),
            new GuideMapping("h4#weapons", "Main Hand"),
            new GuideMapping("#shields-off-hands", "Off Hand"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElementalPhase1", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-1", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-1", "Trinket"),
            new GuideMapping("h4#weapons-for-elemental-shaman-dps-in-phase-1", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-1", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-1", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElementalPhase2", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-2", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-2", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-2", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-2", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-2", "Trinket"),
            new GuideMapping("h4#weapons-for-elemental-shaman-dps-in-phase-2", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-2", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-2", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElementalPhase3", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-3", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-3", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-3", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-3", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-3", "Trinket"),
            new GuideMapping("h4#weapons-for-elemental-shaman-dps-in-phase-3", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-3", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-3", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElementalPhase4", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-4", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-4", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-4", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-4", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-4", "Trinket"),
            new GuideMapping("h4#weapons-for-elemental-shaman-dps-in-phase-4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-4", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-4", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElementalPhase5", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-5", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-5", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-5", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-5", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-5", "Trinket"),
            new GuideMapping("h4#weapons-for-elemental-shaman-dps-in-phase-5", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-5", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-5", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancement", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancementPhase1", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-enhancement-shaman-dps-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-enhancement-shaman-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-enhancement-shaman-dps-in-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-1", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancementPhase2", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-2", "Head"),
            new GuideMapping("#shoulders-for-enhancement-shaman-dps-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-2", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-2", "Neck"),
            new GuideMapping("#rings-for-enhancement-shaman-dps-in-phase-2", "Ring"),
            new GuideMapping("#trinkets-for-enhancement-shaman-dps-in-phase-2", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-2", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancementPhase3", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-3", "Head"),
            new GuideMapping("#shoulders-for-enhancement-shaman-dps-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-3", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-3", "Neck"),
            new GuideMapping("#rings-for-enhancement-shaman-dps-in-phase-3", "Ring"),
            new GuideMapping("#trinkets-for-enhancement-shaman-dps-in-phase-3", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-3", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancementPhase4", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-4", "Head"),
            new GuideMapping("#shoulders-for-enhancement-shaman-dps-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-4", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-4", "Neck"),
            new GuideMapping("#rings-for-enhancement-shaman-dps-in-phase-4", "Ring"),
            new GuideMapping("#trinkets-for-enhancement-shaman-dps-in-phase-4", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-4", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancementPhase5", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-5", "Head"),
            new GuideMapping("#shoulders-for-enhancement-shaman-dps-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-5", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-5", "Neck"),
            new GuideMapping("#rings-for-enhancement-shaman-dps-in-phase-5", "Ring"),
            new GuideMapping("#trinkets-for-enhancement-shaman-dps-in-phase-5", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-5", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestoration", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#ring", "Ring"),
            new GuideMapping("#trinket", "Trinket"),
            new GuideMapping("h4#weapons", "Main Hand"),
            new GuideMapping("#shields-off-hands", "Off Hand"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestorationPhase1", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healing-in-phase-1", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healing-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-restoration-shaman-healing-in-phase-1", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healing-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healing-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-restoration-shaman-healing-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-restoration-shaman-healing-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healing-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healing-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healing-in-phase-1", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healing-in-phase-1", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healing-in-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healing-in-phase-1", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healing-in-phase-1", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestorationPhase2", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healing-in-phase-2", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healing-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-restoration-shaman-healing-in-phase-2", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healing-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healing-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-restoration-shaman-healing-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-restoration-shaman-healing-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healing-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healing-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healing-in-phase-2", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healing-in-phase-2", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healing-in-phase-2", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healing-in-phase-2", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healing-in-phase-2", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestorationPhase3", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healing-in-phase-3", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healing-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-restoration-shaman-healing-in-phase-3", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healing-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healing-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-restoration-shaman-healing-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-restoration-shaman-healing-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healing-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healing-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healing-in-phase-3", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healing-in-phase-3", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healing-in-phase-3", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healing-in-phase-3", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healing-in-phase-3", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestorationPhase4", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healing-in-phase-4", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healing-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-restoration-shaman-healing-in-phase-4", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healing-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healing-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-restoration-shaman-healing-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-restoration-shaman-healing-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healing-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healing-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healing-in-phase-4", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healing-in-phase-4", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healing-in-phase-4", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healing-in-phase-4", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healing-in-phase-4", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestorationPhase5", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healing-in-phase-5", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healing-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-restoration-shaman-healing-in-phase-5", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healing-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healing-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-restoration-shaman-healing-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-restoration-shaman-healing-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healing-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healing-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healing-in-phase-5", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healing-in-phase-5", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healing-in-phase-5", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healing-in-phase-5", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healing-in-phase-5", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockAfflicPhase0", "Affliction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockAfflicPhase1", "Affliction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockAfflic", "Affliction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDemoPhase0", "Demonology", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDemo", "Demonology", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDestroPhase0", "Destruction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#offhands", "Off Hand"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDestro", "Destruction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase0", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt-for-warrior-dps-in-pre-raid", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("h3#weapons~h4~h4~h4", "Two-Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase1", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-warrior-dps-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-warrior-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-warrior-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-warrior-dps-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-warrior-dps-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-warrior-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-warrior-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-warrior-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-warrior-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-warrior-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-warrior-dps-in-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("h3#weapons~h4~h4~h4", "Two-Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase2", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-2", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase3", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-3", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase4", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-4", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFuryPhase5", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-5", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase0", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt-for-warrior-dps-in-pre-raid", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("h3#weapons~h4~h4~h4", "Two-Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase1", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-warrior-dps-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-warrior-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-warrior-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-warrior-dps-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-warrior-dps-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-warrior-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-warrior-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-warrior-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-warrior-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-warrior-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-warrior-dps-in-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("h3#weapons~h4~h4~h4", "Two-Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase2", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-2", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h4#weapons", "Two-Hand"),
            new GuideMapping("#dw-arms-mh", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase3", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-3", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#two-hand-weapons", "Two-Hand"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase4", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-4", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#two-hand-weapons", "Two-Hand"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArmsPhase5", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-warrior-dps-in-phase-5", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#two-hand-weapons", "Two-Hand"),
            new GuideMapping("#main-hand-weapons", "Main Hand"),
            new GuideMapping("#off-hand-weapons", "Off Hand"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtection", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields", "Shield"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtectionPhase1", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-1", "Shoulders"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-1", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-1", "Bracers"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-1", "Gloves"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-1", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-1", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtectionPhase2", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-2", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-2", "Shoulders"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-2", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-2", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-2", "Bracers"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-2", "Gloves"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-2", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-2", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-2", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-2", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-2", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-2", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-2", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-2", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtectionPhase3", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-3", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-3", "Shoulders"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-3", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-3", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-3", "Bracers"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-3", "Gloves"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-3", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-3", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-3", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-3", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-3", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-3", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-3", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-3", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtectionPhase4", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-4", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-4", "Shoulders"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-4", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-4", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-4", "Bracers"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-4", "Gloves"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-4", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-4", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-4", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-4", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-4", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-4", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-4", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-4", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtectionPhase5", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-5", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-5", "Shoulders"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-5", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-5", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-5", "Bracers"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-5", "Gloves"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-5", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-5", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-5", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-5", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-5", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-5", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-5", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-5", "Ranged")
        }));
    }
}
