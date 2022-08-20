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

        GuideMappings.Add(new ClassGuideMapping("DeathKnightBloodPhase0", "Blood", "DeathKnight", new List<GuideMapping>
        {           
            new GuideMapping("#head-for-blood-death-knight-tank-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-blood-death-knight-tank-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-blood-death-knight-tank-pre-raid", "Back"),
            new GuideMapping("#chest-for-blood-death-knight-tank-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-blood-death-knight-tank-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-blood-death-knight-tank-pre-raid", "Hands"),
            new GuideMapping("#waist-for-blood-death-knight-tank-pre-raid", "Waist"),
            new GuideMapping("#legs-for-blood-death-knight-tank-pre-raid", "Legs"),
            new GuideMapping("#feet-for-blood-death-knight-tank-pre-raid", "Feet"),
            new GuideMapping("#neck-for-blood-death-knight-tank-pre-raid", "Neck"),
            new GuideMapping("#rings-for-blood-death-knight-tank-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-blood-death-knight-tank-pre-raid", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#relics-for-blood-death-knight-tank-pre-raid", "Relic"),
        })); 

        GuideMappings.Add(new ClassGuideMapping("DeathKnightBloodPhase1", "Blood", "DeathKnight", new List<GuideMapping>
        {
            new GuideMapping("#head-for-blood-death-knight-tank-phase-1", "Head"),
            new GuideMapping("#shoulders-for-blood-death-knight-tank-phase-1", "Shoulder"),
            new GuideMapping("#back-for-blood-death-knight-tank-phase-1", "Back"),
            new GuideMapping("#chest-for-blood-death-knight-tank-phase-1", "Chest"),
            new GuideMapping("#wrist-for-blood-death-knight-tank-phase-1", "Wrist"),
            new GuideMapping("#hands-for-blood-death-knight-tank-phase-1", "Hands"),
            new GuideMapping("#waist-for-blood-death-knight-tank-phase-1", "Waist"),
            new GuideMapping("#legs-for-blood-death-knight-tank-phase-1", "Legs"),
            new GuideMapping("#feet-for-blood-death-knight-tank-phase-1", "Feet"),
            new GuideMapping("#neck-for-blood-death-knight-tank-phase-1", "Neck"),
            new GuideMapping("#rings-for-blood-death-knight-tank-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-blood-death-knight-tank-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Two-Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#relics-for-blood-death-knight-tank-phase-1", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("DeathKnightFrostPhase0", "Frost", "DeathKnight", new List<GuideMapping>
        {           
            new GuideMapping("#head-for-frost-death-knight-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-frost-death-knight-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-frost-death-knight-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-frost-death-knight-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-frost-death-knight-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-frost-death-knight-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-frost-death-knight-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-frost-death-knight-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-frost-death-knight-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-frost-death-knight-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-frost-death-knight-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-frost-death-knight-dps-pre-raid", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#relics-for-frost-death-knight-dps-pre-raid", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("DeathKnightFrostPhase1", "Frost", "DeathKnight", new List<GuideMapping>
        {
            new GuideMapping("#head-for-frost-death-knight-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-frost-death-knight-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-frost-death-knight-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-frost-death-knight-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-frost-death-knight-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-frost-death-knight-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-frost-death-knight-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-frost-death-knight-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-frost-death-knight-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-frost-death-knight-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-frost-death-knight-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-frost-death-knight-dps-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#relics-for-frost-death-knight-dps-phase-1", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("DeathKnightUnholyPhase0", "Unholy", "DeathKnight", new List<GuideMapping>
        {            
            new GuideMapping("#head-for-unholy-death-knight-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-unholy-death-knight-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-unholy-death-knight-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-unholy-death-knight-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-unholy-death-knight-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-unholy-death-knight-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-unholy-death-knight-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-unholy-death-knight-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-unholy-death-knight-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-unholy-death-knight-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-unholy-death-knight-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-unholy-death-knight-dps-pre-raid", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#relics-for-unholy-death-knight-dps-pre-raid", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("DeathKnightUnholyPhase1", "Unholy", "DeathKnight", new List<GuideMapping>
        {
            new GuideMapping("#head-for-unholy-death-knight-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-unholy-death-knight-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-unholy-death-knight-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-unholy-death-knight-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-unholy-death-knight-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-unholy-death-knight-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-unholy-death-knight-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-unholy-death-knight-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-unholy-death-knight-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-unholy-death-knight-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-unholy-death-knight-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-unholy-death-knight-dps-phase-1", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Two-Hand"),
            new GuideMapping("#relics-for-unholy-death-knight-dps-phase-1", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidBalance", "Balance", "Druid", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("MageFire", "Fire", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("MageArcane", "Arcane", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("PaladinHoly", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("PaladinProtection", "Protection", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("PaladinRetribution", "Retribution", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("PriestDiscipline", "Holy", "Discipline", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("RogueAssassination", "Assassination", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("RogueSubtlety", "Subtlety", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("RogueCombat", "Combat", "Rogue", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("ShamanElemental", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancement", "Enhancement", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
            new GuideMapping("#waist", "Waist"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "Main Hand"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestoration", "Restoration", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarlockAfflic", "Affliction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarlockDemo", "Demonology", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarlockDestro", "Destruction", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Wrist"),
            new GuideMapping("#hands", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSFury", "Fury", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSArms", "Arms", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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

        GuideMappings.Add(new ClassGuideMapping("WarriorProtection", "Protection", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulder"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Wrist"),
            new GuideMapping("#gloves", "Hands"),
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
    }
}
