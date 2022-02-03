using AddonManager.Models;

namespace AddonManager.FileManagers;

public class ItemSpecFileManager
{
    internal void WriteItemSpec(string path, string className, string specName, List<ItemSpec> items)
    {
        var itemSB = new StringBuilder();

        itemSB.AppendLine($"local spec = LoonBestInSlot:RegisterSpec(\"{className}\", \"{specName}\")");
        foreach (var item in items)
        {
            itemSB.AppendLine($"LoonBestInSlot:AddItem(spec, \"{item.ItemId}\", \"{item.Slot}\", \"{item.Name}\", \"{item.BisStatus}\")");
        }
                
        System.IO.File.WriteAllText(path, itemSB.ToString());
    }
}
