using AddonManager.Models;

namespace AddonManager.FileManagers;

public class ItemSpecFileManager
{
    internal void WriteItemSpec(string path, string className, string specName, List<ItemSpec> items)
    {
        var itemSB = new StringBuilder();

        itemSB.AppendLine($"local spec = LoonBestInSlot:RegisterSpec(\"{className}\", \"{specName}\")");

        var previousSlot = "Head";
        foreach (var item in items)
        {
            if (previousSlot != item.Slot)
            {
                previousSlot = item.Slot;
                itemSB.AppendLine();
            }
            itemSB.AppendLine($"LoonBestInSlot:AddItem(spec, \"{item.ItemId}\", \"{item.Slot}\", \"{item.Name}\", \"{item.BisStatus}\")");
        }
                
        System.IO.File.WriteAllText(path, itemSB.ToString());
    }
}
