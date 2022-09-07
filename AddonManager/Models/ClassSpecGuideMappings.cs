namespace AddonManager.Models;
public class ClassGuideMapping
{
    public ClassGuideMapping(string webAddress, string specName, string className, string phase, List<GuideMapping> guideMappings)
    {
        WebAddress = webAddress;
        SpecName = specName;
        ClassName = className;
        Phase = phase;
        GuideMappings = guideMappings;
    }

    public string WebAddress { get; set; }
    public string SpecName { get; set; }
    public string ClassName { get; set; }
    public string Phase { get; set; }
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

        #region Blood DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/blood-death-knight-tank-enchants-gems",
            "Blood", "Death Knight", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h3#meta-gems+.box", "Meta"),
            new GuideMapping("h3#blue-gems+.box", "Gem"),
            new GuideMapping("h3#purple-gems+.box", "Gem"),
            new GuideMapping("h3#purple-gems+.box~.box", "Gem"),
            new GuideMapping("h3#purple-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h3#green-gems+.box", "Gem"),
            new GuideMapping("h3#green-gems+.box~.box", "Gem"),
            new GuideMapping("h3#helm-enchants+.box", "Head"),
            new GuideMapping("h3#shoulder-enchants+.box", "Shoulder"),
            new GuideMapping("h3#cloak-enchants+.box", "Back"),
            new GuideMapping("h3#chest-enchants+.box", "Chest"),
            new GuideMapping("h3#bracer-enchants+.box", "Wrist"),
            new GuideMapping("h3#glove-enchants+.box", "Hands"),
            new GuideMapping("h3#leg-enchants+.box", "Legs"),
            new GuideMapping("h3#boot-enchants+.box", "Feet"),
            new GuideMapping("h3#runewords+.box", "Two Hand"),
            new GuideMapping("h3#runewords+.box~.box", "Main Hand"),
            new GuideMapping("h3#runewords+.box~.box~.box", "Main Hand"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/blood-death-knight-tank-best-in-slot-gear-pre-raid",
            "Blood", "Death Knight", "Phase0", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#relics-for-blood-death-knight-tank-pre-raid", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/blood-death-knight-tank-best-in-slot-gear-phase-1",
            "Blood", "Death Knight", "Phase1", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#relics-for-blood-death-knight-tank-phase-1", "Relic"),
        }));
        #endregion

        #region Frost DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-death-knight-dps-enchants-gems",
            "Frost", "Death Knight", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-death-knight-dps-best-in-slot-gear-pre-raid",
            "Frost", "Death Knight", "Phase0", new List<GuideMapping>
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
            new GuideMapping("#main-hand-weapons-for-frost-death-knight-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-frost-death-knight-dps-pre-raid", "Off Hand"),
            new GuideMapping("#sigils-for-frost-death-knight-dps-pre-raid", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-death-knight-dps-best-in-slot-gear-phase-1",
            "Frost", "Death Knight", "Phase1", new List<GuideMapping>
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
            new GuideMapping("#main-hand-weapons-for-frost-death-knight-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-frost-death-knight-dps-phase-1", "Off Hand"),
            new GuideMapping("#sigils-for-frost-death-knight-dps-phase-1", "Relic"),
        }));
        #endregion

        #region Unholy DK
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/unholy-death-knight-dps-enchants-gems",
            "Unholy", "Death Knight", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/unholy-death-knight-dps-best-in-slot-gear-pre-raid",
            "Unholy", "Death Knight", "Phase0", new List<GuideMapping>
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
            new GuideMapping("#main-hand-weapons-for-unholy-death-knight-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-unholy-death-knight-dps-pre-raid", "Off Hand"),
            new GuideMapping("#sigils-for-unholy-death-knight-dps-pre-raid", "Relic"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/unholy-death-knight-dps-best-in-slot-gear-phase-1",
            "Unholy", "Death Knight", "Phase1", new List<GuideMapping>
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
            new GuideMapping("#main-hand-weapons-for-unholy-death-knight-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-unholy-death-knight-dps-phase-1", "Off Hand"),
            new GuideMapping("#sigils-for-unholy-death-knight-dps-phase-1", "Relic"),
        }));
        #endregion

        #region Balance Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/balance-druid-dps-enchants-gems",
            "Balance", "Druid", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/balance-druid-dps-best-in-slot-gear-pre-raid",
            "Balance", "Druid", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-balance-druid-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-balance-druid-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-balance-druid-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-balance-druid-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-balance-druid-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-balance-druid-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-balance-druid-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-balance-druid-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-balance-druid-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-balance-druid-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-balance-druid-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-balance-druid-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-balance-druid-dps-pre-raid", "Main Hand"),
            new GuideMapping("#two-handed-weapons-for-balance-druid-dps-pre-raid", "Two Hand"),
            new GuideMapping("#off-hand-weapons-for-balance-druid-dps-pre-raid", "Off Hand"),
            new GuideMapping("#idols-for-balance-druid-dps-pre-raid", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/balance-druid-dps-best-in-slot-gear-phase-1",
            "Balance", "Druid", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-balance-druid-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-balance-druid-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-balance-druid-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-balance-druid-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-balance-druid-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-balance-druid-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-balance-druid-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-balance-druid-dps-1", "Legs"),
            new GuideMapping("#feet-for-balance-druid-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-balance-druid-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-balance-druid-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-balance-druid-dps-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-balance-druid-dps-phase-1", "Main Hand"),
            new GuideMapping("#two-handed-weapons-for-balance-druid-dps-phase-1", "Two Hand"),
            new GuideMapping("#off-hand-weapons-for-balance-druid-dps-phase-1", "Off Hand"),
            new GuideMapping("#idols-for-balance-druid-dps-phase-1", "Idol")
        }));
        #endregion

        #region Cat Druid
        GuideMappings.Add(new ClassGuideMapping("",
            "Cat", "Druid", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("",
            "Cat", "Druid", "Phase0", new List<GuideMapping>
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
            new GuideMapping("#weapons~h4", "Two Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("",
            "Cat", "Druid", "Phase1", new List<GuideMapping>
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
            new GuideMapping("#weapons~h4", "Two Hand"),
            new GuideMapping("#idols", "Idol")
        }));
        #endregion

        #region Bear Druid
        GuideMappings.Add(new ClassGuideMapping("",
            "Bear", "Druid", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("",
            "Bear", "Druid", "Phase0", new List<GuideMapping>
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
            new GuideMapping("#weapons~h4", "Two Hand"),
            new GuideMapping("#idols", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("",
            "Bear", "Druid", "Phase1", new List<GuideMapping>
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
            new GuideMapping("#weapons~h4", "Two Hand"),
            new GuideMapping("#idols", "Idol")
        }));
        #endregion

        #region Resto Druid
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-druid-healer-enchants-gems",
            "Restoration", "Druid", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-druid-healer-best-in-slot-gear-pre-raid",
            "Restoration", "Druid", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-druid-healer-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-restoration-druid-healer-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-restoration-druid-healer-pre-raid", "Back"),
            new GuideMapping("#chest-for-restoration-druid-healer-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-restoration-druid-healer-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-restoration-druid-healer-pre-raid", "Hands"),
            new GuideMapping("#waist-for-restoration-druid-healer-pre-raid", "Waist"),
            new GuideMapping("#legs-for-restoration-druid-healer-pre-raid", "Legs"),
            new GuideMapping("#feet-for-restoration-druid-healer-pre-raid", "Feet"),
            new GuideMapping("#neck-for-restoration-druid-healer-pre-raid", "Neck"),
            new GuideMapping("#rings-for-restoration-druid-healer-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-restoration-druid-healer-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-restoration-druid-healer-pre-raid", "Main Hand"),
            new GuideMapping("#two-handed-weapons-for-restoration-druid-healer-pre-raid", "Two Hand"),
            new GuideMapping("#off-hand-weapons-for-restoration-druid-healer-pre-raid", "Off Hand"),
            new GuideMapping("#idols-for-restoration-druid-healer-pre-raid", "Idol")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-druid-healer-best-in-slot-gear-phase-1",
            "Restoration", "Druid", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-druid-healer-phase-1", "Head"),
            new GuideMapping("#shoulders-for-restoration-druid-healer-phase-1", "Shoulder"),
            new GuideMapping("#back-for-restoration-druid-healer-phase-1", "Back"),
            new GuideMapping("#chest-for-restoration-druid-healer-phase-1", "Chest"),
            new GuideMapping("#wrist-for-restoration-druid-healer-phase-1", "Wrist"),
            new GuideMapping("#hands-for-restoration-druid-healer-phase-1", "Hands"),
            new GuideMapping("#waist-for-restoration-druid-healer-phase-1", "Waist"),
            new GuideMapping("#legs-for-restoration-druid-healer-phase-1", "Legs"),
            new GuideMapping("#feet-for-restoration-druid-healer-phase-1", "Feet"),
            new GuideMapping("#neck-for-restoration-druid-healer-phase-1", "Neck"),
            new GuideMapping("#rings-for-restoration-druid-healer-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-restoration-druid-healer-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-restoration-druid-healer-phase-1", "Main Hand"),
            new GuideMapping("#two-handed-weapons-for-restoration-druid-healer-phase-1", "Two Hand"),
            new GuideMapping("#off-hand-weapons-for-restoration-druid-healer-phase-1", "Off Hand"),
            new GuideMapping("#idols-for-restoration-druid-healer-phase-1", "Idol")
        }));
        #endregion

        #region BM Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/beast-mastery-hunter-dps-enchants-gems",
            "Beast Mastery", "Hunter", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/beast-mastery-hunter-dps-best-in-slot-gear-pre-raid",
            "Beast Mastery", "Hunter", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-beast-mastery-hunter-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-beast-mastery-hunter-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-beast-mastery-hunter-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-beast-mastery-hunter-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-beast-mastery-hunter-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-beast-mastery-hunter-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-beast-mastery-hunter-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-beast-mastery-hunter-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-beast-mastery-hunter-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-beast-mastery-hunter-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-beast-mastery-hunter-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-beast-mastery-hunter-dps-pre-raid", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-beast-mastery-hunter-dps-pre-raid", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-beast-mastery-hunter-dps-pre-raid", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-beast-mastery-hunter-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/beast-mastery-hunter-dps-best-in-slot-gear-phase-1",
            "Beast Mastery", "Hunter", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-beast-mastery-hunter-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-beast-mastery-hunter-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-beast-mastery-hunter-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-beast-mastery-hunter-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-beast-mastery-hunter-dps-phase-1", "Wrist"),
            new GuideMapping("#gloves-for-beast-mastery-hunter-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-beast-mastery-hunter-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-beast-mastery-hunter-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-beast-mastery-hunter-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-beast-mastery-hunter-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-beast-mastery-hunter-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-beast-mastery-hunter-dps-phase-1", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-beast-mastery-hunter-dps-phase-1", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-beast-mastery-hunter-dps-phase-1", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-beast-mastery-hunter-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Marks Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/marksmanship-hunter-dps-enchants-gems",
            "Marksmanship", "Hunter", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/marksmanship-hunter-dps-best-in-slot-gear-pre-raid",
            "Marksmanship", "Hunter", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-marksmanship-hunter-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-marksmanship-hunter-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-marksmanship-hunter-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-marksmanship-hunter-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-marksmanship-hunter-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-marksmanship-hunter-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-marksmanship-hunter-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-marksmanship-hunter-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-marksmanship-hunter-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-marksmanship-hunter-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-marksmanship-hunter-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-marksmanship-hunter-dps-pre-raid", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-marksmanship-hunter-dps-pre-raid", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-marksmanship-hunter-dps-pre-raid", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-marksmanship-hunter-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/marksmanship-hunter-dps-best-in-slot-gear-phase-1",
            "Marksmanship", "Hunter", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-marksmanship-hunter-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-marksmanship-hunter-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-marksmanship-hunter-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-marksmanship-hunter-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-marksmanship-hunter-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-marksmanship-hunter-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-marksmanship-hunter-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-marksmanship-hunter-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-marksmanship-hunter-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-marksmanship-hunter-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-marksmanship-hunter-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-marksmanship-hunter-dps-phase-1", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-marksmanship-hunter-dps-phase-1", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-marksmanship-hunter-dps-phase-1", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-marksmanship-hunter-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Survival Hunter
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/survival-hunter-dps-enchants-gems",
            "Survival", "Hunter", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/survival-hunter-dps-best-in-slot-gear-pre-raid",
            "Survival", "Hunter", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-survival-hunter-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-survival-hunter-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-survival-hunter-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-survival-hunter-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-survival-hunter-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-survival-hunter-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-survival-hunter-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-survival-hunter-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-survival-hunter-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-survival-hunter-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-survival-hunter-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-survival-hunter-dps-pre-raid", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-survival-hunter-dps-pre-raid", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-survival-hunter-dps-pre-raid", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-survival-hunter-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/survival-hunter-dps-best-in-slot-gear-phase-1",
            "Survival", "Hunter", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-survival-hunter-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-survival-hunter-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-survival-hunter-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-survival-hunter-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-survival-hunter-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-marksmanship-hunter-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-survival-hunter-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-survival-hunter-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-survival-hunter-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-survival-hunter-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-survival-hunter-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-survival-hunter-dps-phase-1", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-survival-hunter-dps-phase-1", "Main Hand"),
            new GuideMapping("#two-hand-weapons-for-survival-hunter-dps-phase-1", "Two Hand"),
            new GuideMapping("#guns-and-bows-for-survival-hunter-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Arcane Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arcane-mage-dps-enchants-gems",
            "Arcane", "Mage", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arcane-mage-dps-best-in-slot-gear-pre-raid",
            "Arcane", "Mage", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-arcane-mage-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-arcane-mage-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-arcane-mage-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-arcane-mage-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-arcane-mage-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-arcane-mage-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-arcane-mage-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-arcane-mage-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-arcane-mage-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-arcane-mage-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-arcane-mage-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-arcane-mage-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-arcane-mage-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-arcane-mage-dps-pre-raid", "Off Hand"),
            new GuideMapping("#wands-for-arcane-mage-dps-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arcane-mage-dps-best-in-slot-gear-phase-1",
            "Arcane", "Mage", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-arcane-mage-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-arcane-mage-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-arcane-mage-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-arcane-mage-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-arcane-mage-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-arcane-mage-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-arcane-mage-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-arcane-mage-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-arcane-mage-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-arcane-mage-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-arcane-mage-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-arcane-mage-dps-phase-1", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-arcane-mage-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-arcane-mage-dps-phase-1", "Off Hand"),
            new GuideMapping("#wands-for-arcane-mage-dps-phase-1", "Wand")
        }));
        #endregion

        #region Fire Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fire-mage-dps-enchants-gems",
            "Fire", "Mage", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fire-mage-dps-best-in-slot-gear-pre-raid",
            "Fire", "Mage", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-fire-mage-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-fire-mage-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-fire-mage-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-fire-mage-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-fire-mage-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-fire-mage-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-fire-mage-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-fire-mage-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-fire-mage-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-fire-mage-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-fire-mage-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-fire-mage-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-fire-mage-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-fire-mage-dps-pre-raid", "Off Hand"),
            new GuideMapping("#wands-for-fire-mage-dps-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fire-mage-dps-best-in-slot-gear-phase-1",
            "Fire", "Mage", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-fire-mage-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-fire-mage-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-fire-mage-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-fire-mage-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-fire-mage-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-fire-mage-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-fire-mage-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-fire-mage-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-fire-mage-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-fire-mage-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-fire-mage-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-fire-mage-dps-phase-1", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-fire-mage-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-fire-mage-dps-phase-1", "Off Hand"),
            new GuideMapping("#wands-for-fire-mage-dps-phase-1", "Wand")
        }));
        #endregion

        #region Frost Mage
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-mage-dps-enchants-gems",
            "Frost", "Mage", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-mage-dps-best-in-slot-gear-pre-raid",
            "Frost", "Mage", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-frost-mage-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-frost-mage-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-frost-mage-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-frost-mage-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-frost-mage-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-frost-mage-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-frost-mage-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-frost-mage-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-frost-mage-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-frost-mage-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-frost-mage-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-frost-mage-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-frost-mage-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-frost-mage-dps-pre-raid", "Off Hand"),
            new GuideMapping("#wands-for-frost-mage-dps-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/frost-mage-dps-best-in-slot-gear-phase-1",
            "Frost", "Mage", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-frost-mage-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-frost-mage-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-frost-mage-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-frost-mage-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-frost-mage-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-frost-mage-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-frost-mage-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-frost-mage-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-frost-mage-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-frost-mage-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-frost-mage-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-frost-mage-dps-phase-1", "Trinket"),
            new GuideMapping("#main-hand-and-two-handed-weapons-for-frost-mage-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-frost-mage-dps-phase-1", "Off Hand"),
            new GuideMapping("#wands-for-frost-mage-dps-phase-1", "Wand")
        }));
        #endregion

        #region Holy Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-paladin-healer-enchants-gems",
            "Holy", "Paladin", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Shield"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-paladin-healer-best-in-slot-gear-pre-raid",
            "Holy", "Paladin", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healer-phase-1", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healer-phase-1", "Shoulder"),
            new GuideMapping("#back-for-holy-paladin-healer-phase-1", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healer-phase-1", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healer-phase-1", "Wrist"),
            new GuideMapping("#hands-for-holy-paladin-healer-phase-1", "Hands"),
            new GuideMapping("#waist-for-holy-paladin-healer-phase-1", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healer-phase-1", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healer-phase-1", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healer-phase-1", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healer-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healer-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-holy-paladin-healer-phase-1", "Main Hand"),
            new GuideMapping("#shields-and-off-hands-for-holy-paladin-healer-phase-1", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healer-phase-1", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-paladin-healer-best-in-slot-gear-phase-1",
            "Holy", "Paladin", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-paladin-healer-phase-1", "Head"),
            new GuideMapping("#shoulders-for-holy-paladin-healer-phase-1", "Shoulder"),
            new GuideMapping("#back-for-holy-paladin-healer-phase-1", "Back"),
            new GuideMapping("#chest-for-holy-paladin-healer-phase-1", "Chest"),
            new GuideMapping("#wrist-for-holy-paladin-healer-phase-1", "Wrist"),
            new GuideMapping("#hands-for-holy-paladin-healer-phase-1", "Hands"),
            new GuideMapping("#waist-for-holy-paladin-healer-phase-1", "Waist"),
            new GuideMapping("#legs-for-holy-paladin-healer-phase-1", "Legs"),
            new GuideMapping("#feet-for-holy-paladin-healer-phase-1", "Feet"),
            new GuideMapping("#neck-for-holy-paladin-healer-phase-1", "Neck"),
            new GuideMapping("#rings-for-holy-paladin-healer-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-holy-paladin-healer-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-holy-paladin-healer-phase-1", "Main Hand"),
            new GuideMapping("#shields-and-off-hands-for-holy-paladin-healer-phase-1", "Off Hand"),
            new GuideMapping("#librams-for-holy-paladin-healer-phase-1", "Libram")
        }));
        #endregion

        #region Prot Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-paladin-tank-enchants-gems",
            "Protection", "Paladin", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-paladin-tank-best-in-slot-gear-pre-raid",
            "Protection", "Paladin", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-paladin-tank-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-protection-paladin-tank-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-protection-paladin-tank-pre-raid", "Back"),
            new GuideMapping("#chest-for-protection-paladin-tank-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-protection-paladin-tank-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-protection-paladin-tank-pre-raid", "Hands"),
            new GuideMapping("#waist-for-protection-paladin-tank-pre-raid", "Waist"),
            new GuideMapping("#legs-for-protection-paladin-tank-pre-raid", "Legs"),
            new GuideMapping("#feet-for-protection-paladin-tank-pre-raid", "Feet"),
            new GuideMapping("#neck-for-protection-paladin-tank-pre-raid", "Neck"),
            new GuideMapping("#rings-for-protection-paladin-tank-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-protection-paladin-tank-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-protection-paladin-tank-pre-raid", "Main Hand"),
            new GuideMapping("#shields-for-protection-paladin-tank-pre-raid", "Shield"),
            new GuideMapping("#librams-for-protection-paladin-tank-pre-raid", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-paladin-tank-best-in-slot-gear-phase-1",
            "Protection", "Paladin", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-paladin-tank-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-protection-paladin-tank-phase-1", "Shoulder"),
            new GuideMapping("#back-for-protection-paladin-tank-phase-1", "Back"),
            new GuideMapping("#chest-for-protection-paladin-tank-phase-1", "Chest"),
            new GuideMapping("#wrist-for-protection-paladin-tank-phase-1", "Wrist"),
            new GuideMapping("#hands-for-protection-paladin-tank-phase-1", "Hands"),
            new GuideMapping("#waist-for-protection-paladin-tank-phase-1", "Waist"),
            new GuideMapping("#legs-for-protection-paladin-tank-phase-1", "Legs"),
            new GuideMapping("#feet-for-protection-paladin-tank-phase-1", "Feet"),
            new GuideMapping("#neck-for-protection-paladin-tank-phase-1", "Neck"),
            new GuideMapping("#rings-for-protection-paladin-tank-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-protection-paladin-tank-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-protection-paladin-tank-phase-1", "Main Hand"),
            new GuideMapping("#shields-for-protection-paladin-tank-phase-1", "Shield"),
            new GuideMapping("#librams-for-protection-paladin-tank-phase-1", "Libram")
        }));
        #endregion

        #region Ret Paladin
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/retribution-paladin-dps-enchants-gems",
            "Retribution", "Paladin", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            //new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/retribution-paladin-dps-best-in-slot-gear-pre-raid",
            "Retribution", "Paladin", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-retribution-paladin-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-retribution-paladin-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-retribution-paladin-pre-raid", "Back"),
            new GuideMapping("#chest-for-retribution-paladin-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-retribution-paladin-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-retribution-paladin-pre-raid", "Hands"),
            new GuideMapping("#waist-for-retribution-paladin-pre-raid", "Waist"),
            new GuideMapping("#legs-for-retribution-paladin-pre-raid", "Legs"),
            new GuideMapping("#feet-for-retribution-paladin-pre-raid", "Feet"),
            new GuideMapping("#neck-for-retribution-paladin-pre-raid", "Neck"),
            new GuideMapping("#rings-for-retribution-paladin-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-retribution-paladin-pre-raid", "Trinket"),
            new GuideMapping("#two-hand-weapons-for-retribution-paladin-pre-raid", "Two Hand"),
            new GuideMapping("#libram", "Libram")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/retribution-paladin-dps-best-in-slot-gear-phase-1",
            "Retribution", "Paladin", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-retribution-paladin-phase-1", "Head"),
            new GuideMapping("#shoulders-for-retribution-paladin-phase-1", "Shoulder"),
            new GuideMapping("#back-for-retribution-paladin-phase-1", "Back"),
            new GuideMapping("#chest-for-retribution-paladin-phase-1", "Chest"),
            new GuideMapping("#wrist-for-retribution-paladin-phase-1", "Wrist"),
            new GuideMapping("#hands-for-retribution-paladin-phase-1", "Hands"),
            new GuideMapping("#waist-for-retribution-paladin-phase-1", "Waist"),
            new GuideMapping("#legs-for-retribution-paladin-phase-1", "Legs"),
            new GuideMapping("#feet-for-retribution-paladin-phase-1", "Feet"),
            new GuideMapping("#neck-for-retribution-paladin-phase-1", "Neck"),
            new GuideMapping("#rings-for-retribution-paladin-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-retribution-paladin-phase-1", "Trinket"),
            new GuideMapping("#two-hand-weapons-for-retribution-paladin-phase-1", "Two Hand"),
            new GuideMapping("#libram", "Libram")
        }));
        #endregion

        #region Holy Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-priest-healer-enchants-gems",
            "Holy", "Priest", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-priest-healer-best-in-slot-gear-pre-raid",
            "Holy", "Priest", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-priest-healer-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-holy-priest-healer-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-holy-priest-healer-pre-raid", "Back"),
            new GuideMapping("#chest-for-holy-priest-healer-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-holy-priest-healer-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-holy-priest-healer-pre-raid", "Hands"),
            new GuideMapping("#waist-for-holy-priest-healer-pre-raid", "Waist"),
            new GuideMapping("#legs-for-holy-priest-healer-pre-raid", "Legs"),
            new GuideMapping("#feet-for-holy-priest-healer-pre-raid", "Feet"),
            new GuideMapping("#neck-for-holy-priest-healer-pre-raid", "Neck"),
            new GuideMapping("#rings-for-holy-priest-healer-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-holy-priest-healer-pre-raid", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons-for-holy-priest-healer-pre-raid", "Main Hand"),
            new GuideMapping("#off-hands-for-holy-priest-healer-pre-raid", "Off Hand"),
            new GuideMapping("#wands-for-holy-priest-healer-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/holy-priest-healer-best-in-slot-gear-phase-1",
            "Holy", "Priest", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-holy-priest-healer-phase-1", "Head"),
            new GuideMapping("#shoulders-for-holy-priest-healer-phase-1", "Shoulder"),
            new GuideMapping("#back-for-holy-priest-healer-phase-1", "Back"),
            new GuideMapping("#chest-for-holy-priest-healer-phase-1", "Chest"),
            new GuideMapping("#wrist-for-holy-priest-healer-phase-1", "Wrist"),
            new GuideMapping("#hands-for-holy-priest-healer-phase-1", "Hands"),
            new GuideMapping("#waist-for-holy-priest-healer-phase-1", "Waist"),
            new GuideMapping("#legs-for-holy-priest-healer-phase-1", "Legs"),
            new GuideMapping("#feet-for-holy-priest-healer-phase-1", "Feet"),
            new GuideMapping("#neck-for-holy-priest-healer-phase-1", "Neck"),
            new GuideMapping("#rings-for-holy-priest-healer-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-holy-priest-healer-phase-1", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons-for-holy-priest-healer-phase-1", "Main Hand"),
            new GuideMapping("#off-hands-for-holy-priest-healer-phase-1", "Off Hand"),
            new GuideMapping("#wands-for-holy-priest-healer-phase-1", "Wand")
        }));
        #endregion

        #region Disc Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/discipline-priest-healer-enchants-gems",
            "Discipline", "Priest", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/discipline-priest-healer-best-in-slot-gear-pre-raid",
            "Discipline", "Priest", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-discipline-priest-healer-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-discipline-priest-healer-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-discipline-priest-healer-pre-raid", "Back"),
            new GuideMapping("#chest-for-discipline-priest-healer-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-discipline-priest-healer-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-discipline-priest-healer-pre-raid", "Hands"),
            new GuideMapping("#waist-for-discipline-priest-healer-pre-raid", "Waist"),
            new GuideMapping("#legs-for-discipline-priest-healer-pre-raid", "Legs"),
            new GuideMapping("#feet-for-discipline-priest-healer-pre-raid", "Feet"),
            new GuideMapping("#neck-for-discipline-priest-healer-pre-raid", "Neck"),
            new GuideMapping("#rings-for-discipline-priest-healer-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-discipline-priest-healer-pre-raid", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons-for-discipline-priest-healer-pre-raid", "Main Hand"),
            new GuideMapping("#off-hands-for-discipline-priest-healer-pre-raid", "Off Hand"),
            new GuideMapping("#wands-for-discipline-priest-healer-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/discipline-priest-healer-best-in-slot-gear-phase-1",
            "Discipline", "Priest", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-discipline-priest-healer-phase-1", "Head"),
            new GuideMapping("#shoulders-for-discipline-priest-healer-phase-1", "Shoulder"),
            new GuideMapping("#back-for-discipline-priest-healer-phase-1", "Back"),
            new GuideMapping("#chest-for-discipline-priest-healer-phase-1", "Chest"),
            new GuideMapping("#wrist-for-discipline-priest-healer-phase-1", "Wrist"),
            new GuideMapping("#hands-for-discipline-priest-healer-phase-1", "Hands"),
            new GuideMapping("#waist-for-discipline-priest-healer-phase-1", "Waist"),
            new GuideMapping("#legs-for-discipline-priest-healer-phase-1", "Legs"),
            new GuideMapping("#feet-for-discipline-priest-healer-phase-1", "Feet"),
            new GuideMapping("#neck-for-discipline-priest-healer-phase-1", "Neck"),
            new GuideMapping("#rings-for-discipline-priest-healer-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-discipline-priest-healer-phase-1", "Trinket"),
            new GuideMapping("#main-and-two-handed-weapons-for-discipline-priest-healer-phase-1", "Main Hand"),
            new GuideMapping("#off-hands-for-discipline-priest-healer-phase-1", "Off Hand"),
            new GuideMapping("#wands-for-discipline-priest-healer-phase-1", "Wand")
        }));
        #endregion

        #region Shadow Priest
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/shadow-priest-dps-enchants-gems",
            "Shadow", "Priest", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box", "Gem"),
            new GuideMapping("h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box", "Gem"),
            new GuideMapping("h2#best-gems~.socket-red>.socket-yellow>.socket-yellow>.box~.socket-red>.socket-blue>.box~.socket-meta>.socket-blue>.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box", "Two Hand"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/shadow-priest-dps-best-in-slot-gear-pre-raid",
            "Shadow", "Priest", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-shadow-priest-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-shadow-priest-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-shadow-priest-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-shadow-priest-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-shadow-priest-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-shadow-priest-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-shadow-priest-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-shadow-priest-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-shadow-priest-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-shadow-priest-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-shadow-priest-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-shadow-priest-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-shadow-priest-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hands-for-shadow-priest-dps-pre-raid", "Off Hand"),
            new GuideMapping("#two-handed-weapons-for-shadow-priest-dps-pre-raid", "Two Hand"),
            new GuideMapping("#wands-for-shadow-priest-dps-pre-raid", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/shadow-priest-dps-best-in-slot-gear-phase-1",
            "Shadow", "Priest", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-shadow-priest-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-shadow-priest-dps-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-shadow-priest-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-shadow-priest-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-shadow-priest-dps-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-shadow-priest-dps-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-shadow-priest-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-shadow-priest-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-shadow-priest-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-shadow-priest-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-shadow-priest-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-shadow-priest-dps-in-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-shadow-priest-dps-in-phase-1", "Main Hand"),
            new GuideMapping("#off-hands-for-shadow-priest-dps-in-phase-1", "Off Hand"),
            new GuideMapping("#two-handed-weapons-for-shadow-priest-dps-in-phase-1", "Two Hand"),
            new GuideMapping("#wands-for-shadow-priest-dps-in-phase-1", "Wand")
        }));
        #endregion

        #region Assassination Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/assassination-rogue-dps-enchants-gems",
            "Assassination", "Rogue", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/assassination-rogue-dps-best-in-slot-gear-pre-raid",
            "Assassination", "Rogue", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-assassination-rogue-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-assassination-rogue-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-assassination-rogue-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-assassination-rogue-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-assassination-rogue-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-assassination-rogue-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-assassination-rogue-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-assassination-rogue-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-assassination-rogue-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-assassination-rogue-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-assassination-rogue-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-assassination-rogue-dps-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-assassination-rogue-dps-pre-raid", "Main Hand"),
            new GuideMapping("#guns-and-bows-for-assassination-rogue-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/assassination-rogue-dps-best-in-slot-gear-phase-1",
            "Assassination", "Rogue", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-assassination-rogue-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-assassination-rogue-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-assassination-rogue-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-assassination-rogue-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-assassination-rogue-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-assassination-rogue-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-assassination-rogue-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-assassination-rogue-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-assassination-rogue-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-assassination-rogue-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-assassination-rogue-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-assassination-rogue-dps-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-assassination-rogue-dps-phase-1", "Main Hand"),
            new GuideMapping("#guns-and-bows-for-assassination-rogue-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Combat Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/combat-rogue-dps-enchants-gems",
            "Combat", "Rogue", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/combat-rogue-dps-best-in-slot-gear-pre-raid",
            "Combat", "Rogue", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-combat-rogue-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-combat-rogue-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-combat-rogue-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-combat-rogue-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-combat-rogue-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-combat-rogue-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-combat-rogue-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-combat-rogue-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-combat-rogue-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-combat-rogue-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-combat-rogue-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-combat-rogue-dps-pre-raid", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-combat-rogue-dps-pre-raid", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-combat-rogue-dps-pre-raid", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-combat-rogue-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/combat-rogue-dps-best-in-slot-gear-phase-1",
            "Combat", "Rogue", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-combat-rogue-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-combat-rogue-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-combat-rogue-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-combat-rogue-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-combat-rogue-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-combat-rogue-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-combat-rogue-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-combat-rogue-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-combat-rogue-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-combat-rogue-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-combat-rogue-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-combat-rogue-dps-phase-1", "Trinket"),
            new GuideMapping("#main-hand-weapons-for-combat-rogue-dps-phase-1", "Main Hand"),
            new GuideMapping("#off-hand-weapons-for-combat-rogue-dps-phase-1", "Off Hand"),
            new GuideMapping("#guns-and-bows-for-combat-rogue-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Subtlety Rogue
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/subtlety-rogue-dps-enchants-gems",
            "Subtlety", "Rogue", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/subtlety-rogue-dps-best-in-slot-gear-pre-raid",
            "Subtlety", "Rogue", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-subtlety-rogue-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-subtlety-rogue-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-subtlety-rogue-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-subtlety-rogue-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-subtlety-rogue-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-subtlety-rogue-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-subtlety-rogue-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-subtlety-rogue-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-subtlety-rogue-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-subtlety-rogue-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-subtlety-rogue-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-subtlety-rogue-dps-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-subtlety-rogue-dps-pre-raid", "Main Hand"),
            new GuideMapping("#guns-and-bows-for-subtlety-rogue-dps-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/subtlety-rogue-dps-best-in-slot-gear-phase-1",
            "Subtlety", "Rogue", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-subtlety-rogue-dps-phase-1", "Head"),
            new GuideMapping("#shoulders-for-subtlety-rogue-dps-phase-1", "Shoulder"),
            new GuideMapping("#back-for-subtlety-rogue-dps-phase-1", "Back"),
            new GuideMapping("#chest-for-subtlety-rogue-dps-phase-1", "Chest"),
            new GuideMapping("#wrist-for-subtlety-rogue-dps-phase-1", "Wrist"),
            new GuideMapping("#hands-for-subtlety-rogue-dps-phase-1", "Hands"),
            new GuideMapping("#waist-for-subtlety-rogue-dps-phase-1", "Waist"),
            new GuideMapping("#legs-for-subtlety-rogue-dps-phase-1", "Legs"),
            new GuideMapping("#feet-for-subtlety-rogue-dps-phase-1", "Feet"),
            new GuideMapping("#neck-for-subtlety-rogue-dps-phase-1", "Neck"),
            new GuideMapping("#rings-for-subtlety-rogue-dps-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-subtlety-rogue-dps-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-subtlety-rogue-dps-phase-1", "Main Hand"),
            new GuideMapping("#guns-and-bows-for-subtlety-rogue-dps-phase-1", "Ranged")
        }));
        #endregion

        #region Elemental Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/elemental-shaman-dps-enchants-gems",
            "Elemental", "Shaman", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box", "Waist"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box", "Legs"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/elemental-shaman-dps-best-in-slot-gear-pre-raid",
            "Elemental", "Shaman", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-pre-raid", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-pre-raid", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-pre-raid", "Hands"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-pre-raid", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-pre-raid", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-pre-raid", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-pre-raid", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-pre-raid", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-elemental-shaman-dps-in-pre-raid", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-pre-raid", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-pre-raid", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/elemental-shaman-dps-best-in-slot-gear-phase-1",
            "Elemental", "Shaman", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-elemental-shaman-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulder-for-elemental-shaman-dps-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-elemental-shaman-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-elemental-shaman-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-elemental-shaman-dps-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-elemental-shaman-dps-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-elemental-shaman-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-elemental-shaman-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-elemental-shaman-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-elemental-shaman-dps-in-phase-1", "Neck"),
            new GuideMapping("#finger-for-elemental-shaman-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinket-for-elemental-shaman-dps-in-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-elemental-shaman-dps-in-phase-1", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-elemental-shaman-dps-in-phase-1", "Off Hand"),
            new GuideMapping("#totems-for-elemental-shaman-dps-in-phase-1", "Totem")
        }));
        #endregion

        #region Enhancement Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/enhancement-shaman-dps-enchants-gems",
            "Enhancement", "Shaman", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box", "Waist"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box", "Legs"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/enhancement-shaman-dps-best-in-slot-gear-pre-raid",
            "Enhancement", "Shaman", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-pre-raid", "Head"),
            new GuideMapping("#shoulder-for-enhancement-shaman-dps-in-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-pre-raid", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-pre-raid", "Hands"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-pre-raid", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-pre-raid", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-pre-raid", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-pre-raid", "Neck"),
            new GuideMapping("#finger-for-enhancement-shaman-dps-in-pre-raid", "Ring"),
            new GuideMapping("#trinket-for-enhancement-shaman-dps-in-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-enhancement-shaman-dps-in-pre-raid", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-pre-raid", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/enhancement-shaman-dps-best-in-slot-gear-phase-1",
            "Enhancement", "Shaman", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-enhancement-shaman-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulder-for-enhancement-shaman-dps-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-enhancement-shaman-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-enhancement-shaman-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-enhancement-shaman-dps-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-enhancement-shaman-dps-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-enhancement-shaman-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-enhancement-shaman-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-enhancement-shaman-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-enhancement-shaman-dps-in-phase-1", "Neck"),
            new GuideMapping("#finger-for-enhancement-shaman-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinket-for-enhancement-shaman-dps-in-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-enhancement-shaman-dps-in-phase-1", "Main Hand"),
            new GuideMapping("#totems-for-enhancement-shaman-dps-in-phase-1", "Totem")
        }));
        #endregion

        #region Resto Shaman
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-shaman-healer-enchants-gems",
            "Restoration", "Shaman", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.socket-prismatic>.box~.socket-prismatic>.box", "Waist"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box", "Legs"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.socket-prismatic>.box~.socket-prismatic>.box~.socket-prismatic>.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-shaman-healer-best-in-slot-gear-pre-raid",
            "Restoration", "Shaman", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healer-in-pre-raid", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healer-in-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-restoration-shaman-healer-in-pre-raid", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healer-in-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healer-in-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-restoration-shaman-healer-in-pre-raid", "Hands"),
            new GuideMapping("#waist-for-restoration-shaman-healer-in-pre-raid", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healer-in-pre-raid", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healer-in-pre-raid", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healer-in-pre-raid", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healer-in-pre-raid", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healer-in-pre-raid", "Trinket"),
            new GuideMapping("#weapons-for-restoration-shaman-healer-in-pre-raid", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healer-in-pre-raid", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healer-in-pre-raid", "Totem")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/restoration-shaman-healer-best-in-slot-gear-phase-1",
            "Restoration", "Shaman", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-restoration-shaman-healer-in-phase-1", "Head"),
            new GuideMapping("#shoulder-for-restoration-shaman-healer-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-restoration-shaman-healer-in-phase-1", "Back"),
            new GuideMapping("#chest-for-restoration-shaman-healer-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-restoration-shaman-healer-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-restoration-shaman-healer-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-restoration-shaman-healer-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-restoration-shaman-healer-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-restoration-shaman-healer-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-restoration-shaman-healer-in-phase-1", "Neck"),
            new GuideMapping("#finger-for-restoration-shaman-healer-in-phase-1", "Ring"),
            new GuideMapping("#trinket-for-restoration-shaman-healer-in-phase-1", "Trinket"),
            new GuideMapping("#weapons-for-restoration-shaman-healer-in-phase-1", "Main Hand"),
            new GuideMapping("#shields-off-hands-for-restoration-shaman-healer-in-phase-1", "Off Hand"),
            new GuideMapping("#totems-for-restoration-shaman-healer-in-phase-1", "Totem")
        }));
        #endregion

        #region Affliction Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/affliction-warlock-dps-enchants-gems",
            "Affliction", "Warlock", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems~.box", "Meta"),
            new GuideMapping("h2#best-gems~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/affliction-warlock-dps-best-in-slot-gear-pre-raid",
            "Affliction", "Warlock", "Phase0", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/affliction-warlock-dps-best-in-slot-gear-phase-1",
            "Affliction", "Warlock", "Phase1", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));
        #endregion

        #region Demonology Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/demonology-warlock-dps-enchants-gems",
            "Demonology", "Warlock", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems~.box", "Meta"),
            new GuideMapping("h2#best-gems~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/demonology-warlock-dps-best-in-slot-gear-pre-raid",
            "Demonology", "Warlock", "Phase0", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/demonology-warlock-dps-best-in-slot-gear-phase-1",
            "Demonology", "Warlock", "Phase1", new List<GuideMapping>
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
                    new GuideMapping("h3#weapons~h4", "Two Hand"),
                    new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
                    new GuideMapping("#offhand", "Off Hand"),
                    new GuideMapping("#wand", "Wand")
        }));
        #endregion

        #region Destruction Warlock
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/destruction-warlock-dps-enchants-gems",
            "Destruction", "Warlock", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems~.box", "Meta"),
            new GuideMapping("h2#best-gems~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/destruction-warlock-dps-best-in-slot-gear-pre-raid", 
            "Destruction", "Warlock", "Phase0", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/destruction-warlock-dps-best-in-slot-gear-phase-1",
            "Destruction", "Warlock", "Phase1", new List<GuideMapping>
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
            new GuideMapping("h3#weapons~h4", "Two Hand"),
            new GuideMapping("h3#weapons~h4~h4", "Main Hand"),
            new GuideMapping("#offhand", "Off Hand"),
            new GuideMapping("#wand", "Wand")
        }));
        #endregion

        #region Arms Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arms-warrior-dps-enchants-gems",
            "Arms", "Warrior", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arms-warrior-dps-best-in-slot-gear-pre-raid",
            "Arms", "Warrior", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-arms-warrior-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-arms-warrior-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-arms-warrior-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-arms-warrior-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-arms-warrior-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-arms-warrior-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-arms-warrior-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-arms-warrior-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-arms-warrior-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-arms-warrior-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-arms-warrior-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-arms-warrior-dps-pre-raid", "Trinket"),
            new GuideMapping("#two-handed-weapons-for-arms-warrior-dps-pre-raid", "Two Hand"),
            new GuideMapping("#ranged-weapons-for-arms-warrior-dps-pre-raid", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/arms-warrior-dps-best-in-slot-gear-phase-1",
            "Arms", "Warrior", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-arms-warrior-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-arms-warrior-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-arms-warrior-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-arms-warrior-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-arms-warrior-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-arms-warrior-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-arms-warrior-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-arms-warrior-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-arms-warrior-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-arms-warrior-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-arms-warrior-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-arms-warrior-dps-pre-raid", "Trinket"),
            new GuideMapping("#two-handed-weapons-for-arms-warrior-dps-pre-raid", "Two Hand"),
            new GuideMapping("#ranged-weapons-for-arms-warrior-dps-pre-raid", "Ranged"),
        }));
        #endregion

        #region Fury Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fury-warrior-dps-enchants-gems", 
            "Fury", "Warrior", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Waist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fury-warrior-dps-best-in-slot-gear-pre-raid", 
            "Fury", "Warrior", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-fury-warrior-dps-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-fury-warrior-dps-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-fury-warrior-dps-pre-raid", "Back"),
            new GuideMapping("#chest-for-fury-warrior-dps-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-fury-warrior-dps-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-fury-warrior-dps-pre-raid", "Hands"),
            new GuideMapping("#waist-for-fury-warrior-dps-pre-raid", "Waist"),
            new GuideMapping("#legs-for-fury-warrior-dps-pre-raid", "Legs"),
            new GuideMapping("#feet-for-fury-warrior-dps-pre-raid", "Feet"),
            new GuideMapping("#neck-for-fury-warrior-dps-pre-raid", "Neck"),
            new GuideMapping("#rings-for-fury-warrior-dps-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-fury-warrior-dps-pre-raid", "Trinket"),
            new GuideMapping("#two-handed-weapons-for-fury-warrior-dps-pre-raid", "Two Hand"),
            new GuideMapping("#ranged-weapons-for-fury-warrior-dps-pre-raid", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/fury-warrior-dps-best-in-slot-gear-phase-1", 
            "Fury", "Warrior", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-fury-warrior-dps-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-fury-warrior-dps-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-fury-warrior-dps-in-phase-1", "Back"),
            new GuideMapping("#chest-for-fury-warrior-dps-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-fury-warrior-dps-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-fury-warrior-dps-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-fury-warrior-dps-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-fury-warrior-dps-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-fury-warrior-dps-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-fury-warrior-dps-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-fury-warrior-dps-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-fury-warrior-dps-in-phase-1", "Trinket"),
            new GuideMapping("#two-handed-weapons-for-fury-warrior-dps-in-phase-1", "Two Hand"),
            new GuideMapping("#ranged-weapons-for-fury-warrior-dps-in-phase-1", "Ranged"),
        }));
        #endregion

        #region Prot Warrior
        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-warrior-tank-enchants-gems", 
            "Protection", "Warrior", "GemsEnchants", new List<GuideMapping>
        {
            new GuideMapping("h2#best-gems+.box", "Meta"),
            new GuideMapping("h2#best-gems+.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box", "Gem"),
            new GuideMapping("h2#best-gems+.box~.box~.box~.box", "Gem"),

            new GuideMapping("h2#best-enchants~.box", "Head"),
            new GuideMapping("h2#best-enchants~.box~.box", "Shoulder"),
            new GuideMapping("h2#best-enchants~.box~.box~.box", "Back"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box", "Chest"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box", "Wrist"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box", "Hands"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box", "Legs"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box", "Feet"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ring"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Main Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Off Hand"),
            new GuideMapping("h2#best-enchants~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box~.box", "Ranged"),
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-warrior-tank-best-in-slot-gear-pre-raid",
            "Protection", "Warrior", "Phase0", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-pre-raid", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-pre-raid", "Shoulder"),
            new GuideMapping("#back-for-protection-warrior-tank-pre-raid", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-pre-raid", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-pre-raid", "Wrist"),
            new GuideMapping("#hands-for-protection-warrior-tank-pre-raid", "Hands"),
            new GuideMapping("#waist-for-protection-warrior-tank-pre-raid", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-pre-raid", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-pre-raid", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-pre-raid", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-pre-raid", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-pre-raid", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-protection-warrior-tank-pre-raid", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-pre-raid", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-pre-raid", "Ranged")
        }));

        GuideMappings.Add(new ClassGuideMapping("https://www.wowhead.com/wotlk/guides/protection-warrior-tank-best-in-slot-gear-phase-1", 
            "Protection", "Warrior", "Phase1", new List<GuideMapping>
        {
            new GuideMapping("#head-for-protection-warrior-tank-in-phase-1", "Head"),
            new GuideMapping("#shoulders-for-protection-warrior-tank-in-phase-1", "Shoulder"),
            new GuideMapping("#back-for-protection-warrior-tank-in-phase-1", "Back"),
            new GuideMapping("#chest-for-protection-warrior-tank-in-phase-1", "Chest"),
            new GuideMapping("#wrist-for-protection-warrior-tank-in-phase-1", "Wrist"),
            new GuideMapping("#hands-for-protection-warrior-tank-in-phase-1", "Hands"),
            new GuideMapping("#waist-for-protection-warrior-tank-in-phase-1", "Waist"),
            new GuideMapping("#legs-for-protection-warrior-tank-in-phase-1", "Legs"),
            new GuideMapping("#feet-for-protection-warrior-tank-in-phase-1", "Feet"),
            new GuideMapping("#neck-for-protection-warrior-tank-in-phase-1", "Neck"),
            new GuideMapping("#rings-for-protection-warrior-tank-in-phase-1", "Ring"),
            new GuideMapping("#trinkets-for-protection-warrior-tank-in-phase-1", "Trinket"),
            new GuideMapping("#one-handed-weapons-for-protection-warrior-tank-in-phase-1", "Main Hand"),
            new GuideMapping("#shields-for-protection-warrior-tank-in-phase-1", "Shield"),
            new GuideMapping("#guns-and-bows-for-protection-warrior-tank-in-phase-1", "Ranged")
        }));
        #endregion
    }
}
