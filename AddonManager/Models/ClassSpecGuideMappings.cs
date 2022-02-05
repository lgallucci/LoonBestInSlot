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

        GuideMappings.Add(new ClassGuideMapping("DruidBalance", "Balance", "Druid", new List<GuideMapping> 
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#offhands", "OH"),
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
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#weapons~h4", "2H"),
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
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#weapons~h4", "2H"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("DruidRestoration", "Resto", "Druid", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#offhands", "OH"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterBM", "", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "MH"),
            new GuideMapping("#offhand", "OH"),
            new GuideMapping("#two-handed", "2H"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterMarks", "", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "MH"),
            new GuideMapping("#offhand", "OH"),
            new GuideMapping("#two-handed", "2H"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("HunterSurvival", "", "Hunter", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand", "MH"),
            new GuideMapping("#offhand", "OH"),
            new GuideMapping("#two-handed", "2H"),
            new GuideMapping("#ranged-weapon", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFrost", "", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#offhands", "OH"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageFire", "", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#offhands", "OH"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("MageArcane", "", "Mage", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#offhands", "OH"),
            new GuideMapping("#wands", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinHoly", "Holy", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "MH"),
            new GuideMapping("#offhands-and-shields", "OH"),
            new GuideMapping("#librams", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinProtection", "Prot", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "MH"),
            new GuideMapping("#librams", "Libram"),
            new GuideMapping("#shields", "Shield")
        }));

        GuideMappings.Add(new ClassGuideMapping("PaladinRetribution", "Ret", "Paladin", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "2H"),
            new GuideMapping("#librams", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("PriestHolyPhase0", "Holy", "Priest", new List<GuideMapping>
        {
            new GuideMapping("#head-for-priest-healing-in-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-priest-healing-in-pre-raid", "Shoulders"),
            new GuideMapping("#back-for-priest-healing-in-pre-raid", "Back"),
            new GuideMapping("#chest-for-priest-healing-in-pre-raid", "Chest"),
            new GuideMapping("#wrists-for-priest-healing-in-pre-raid", "Bracers"),
            new GuideMapping("#hands-for-priest-healing-in-pre-raid", "Gloves"),
            new GuideMapping("#waist-for-priest-healing-in-pre-raid", "Belt"),
            new GuideMapping("#legs-for-priest-healing-in-pre-raid", "Legs"),
            new GuideMapping("#feet-for-priest-healing-in-pre-raid", "Feet"),
            new GuideMapping("#neck-for-priest-healing-in-pre-raid", "Neck"),
            new GuideMapping("#rings-for-priest-healing-in-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-priest-healing-in-pre-raid", "Trinket"),
            new GuideMapping("#main-and-two-handed-for-priest-healing-in-pre-raid", "MH"),
            new GuideMapping("#off-hand-for-priest-healing-in-pre-raid", "OH"),
            new GuideMapping("#wands-for-priest-healing-in-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("PriestHoly", "Holy", "Priest", new List<GuideMapping>
        {        
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrists", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-and-two-handed", "MH"),
            new GuideMapping("#off-hands", "OH"),
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
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons", "MH"),
            new GuideMapping("#off-hand", "OH"),
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
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "MH"),
            new GuideMapping("#off-hand-weapons", "OH"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanElemental", "Elemental", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#ring", "Ring"),
            new GuideMapping("#trinket", "Trinket"),
            new GuideMapping("h4#weapons", "MH"),
            new GuideMapping("#shields-off-hands", "OH"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanEnhancement", "Enhance", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "MH"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("ShamanRestoration", "Resto", "Shaman", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulder", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#ring", "Ring"),
            new GuideMapping("#trinket", "Trinket"),
            new GuideMapping("h4#weapons", "MH"),
            new GuideMapping("#shields-off-hands", "OH"),
            new GuideMapping("#totems", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockAfflic", "", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#wands", "Wand"),
            new GuideMapping("#offhands", "OH")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDemo", "", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#wands", "Wand"),
            new GuideMapping("#offhands", "OH")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarlockDestro", "", "Warlock", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#back", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#wrist", "Bracers"),
            new GuideMapping("#hands", "Gloves"),
            new GuideMapping("#waist", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#feet", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons+h4", "MH"),
            new GuideMapping("h3#weapons+h4~h4", "2H"),
            new GuideMapping("#wands", "Wand"),
            new GuideMapping("#offhands", "OH")
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPS", "DPS", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "MH"),
            new GuideMapping("#off-hand-weapons", "OH"),
            new GuideMapping("h3#weapons~h4~h4~h4", "2H"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorDPSPhase0", "DPS", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt-for-warrior-dps-in-pre-raid", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("#main-hand-weapons", "MH"),
            new GuideMapping("#off-hand-weapons", "OH"),
            new GuideMapping("h3#weapons~h4~h4~h4", "2H"),
            new GuideMapping("#guns-and-bows", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("WarriorProtection", "Prot", "Warrior", new List<GuideMapping>
        {
            new GuideMapping("#head", "Head"),
            new GuideMapping("#shoulders", "Shoulders"),
            new GuideMapping("#cloak", "Back"),
            new GuideMapping("#chest", "Chest"),
            new GuideMapping("#bracer", "Bracers"),
            new GuideMapping("#gloves", "Gloves"),
            new GuideMapping("#belt", "Belt"),
            new GuideMapping("#legs", "Legs"),
            new GuideMapping("#boots", "Feet"),
            new GuideMapping("#neck", "Neck"),
            new GuideMapping("#rings", "Ring"),
            new GuideMapping("#trinkets", "Trinket"),
            new GuideMapping("h3#weapons~h4", "MH"),
            new GuideMapping("#shields", "Shield"),
            new GuideMapping("#guns-and-bows", "Ranged")
        }));
    }
}
