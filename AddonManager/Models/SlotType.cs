namespace AddonManager.Models;

public class SlotType
{
    private SlotType(string value) { Value = value; }

    public string Value { get; set; } = string.Empty;

    public static SlotType Head { get { return new SlotType("Head"); } }
    public static SlotType Shoulders { get { return new SlotType("Shoulders"); } }
    public static SlotType Back { get { return new SlotType("Back"); } }
    public static SlotType Chest { get { return new SlotType("Chest"); } }
    public static SlotType Bracers { get { return new SlotType("Bracers"); } }
    public static SlotType Gloves { get { return new SlotType("Gloves"); } }
    public static SlotType Belt { get { return new SlotType("Belt"); } }
    public static SlotType Legs { get { return new SlotType("Legs"); } }
    public static SlotType Feet { get { return new SlotType("Feet"); } }
    public static SlotType Neck { get { return new SlotType("Neck"); } }
    public static SlotType Ring { get { return new SlotType("Ring"); } }
    public static SlotType Trinket { get { return new SlotType("Trinket"); } }
    public static SlotType MainHand { get { return new SlotType("MH"); } }
    public static SlotType TwoHand { get { return new SlotType("2H"); } }
    public static SlotType OffHand { get { return new SlotType("OH"); } }
    public static SlotType Wand { get { return new SlotType("Wand"); } }
    public static SlotType Ranged { get { return new SlotType("Ranged"); } }
    public static SlotType Idol { get { return new SlotType("Idol"); } }
    public static SlotType Totem { get { return new SlotType("Totem"); } }
    public static SlotType Libram { get { return new SlotType("Libram"); } }
    public static SlotType Shield { get { return new SlotType("Shield"); } }
}
