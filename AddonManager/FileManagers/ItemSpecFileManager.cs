using AddonManager.Models;
using System.Linq;

namespace AddonManager.FileManagers;

public static class ItemSpecFileManager
{
    public static void WriteItemSpec(string path, string className, string specName, string phaseText, List<ItemSpec> items)
    {
        var itemSB = new StringBuilder();

        var phaseNumber = Int32.Parse(phaseText.Replace("Phase", ""));

        itemSB.AppendLine($"local spec = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"{phaseNumber}\")");

        items.Sort();

        var previousSlot = "LBIS.L[\"Head\"]";
        foreach (var item in items)
        {
            if (previousSlot != item.Slot)
            {
                previousSlot = item.Slot;
                itemSB.AppendLine();
            }
            itemSB.AppendLine($"LBIS:AddItem(spec, \"{item.ItemId}\", LBIS.L[\"{item.Slot}\"], \"{item.BisStatus}\") --{item.Name}");
        }

        System.IO.File.WriteAllText(path, itemSB.ToString());
    }

    public static Dictionary<int, ItemSpec> ReadPhaseFromFile(string path)
    {
        Dictionary<int, ItemSpec> items = new Dictionary<int, ItemSpec>();

        string[] itemSpecLines = System.IO.File.ReadAllLines(path);

        foreach (var itemSpecLine in itemSpecLines)
        {
            if (itemSpecLine.Contains("local spec = LBIS:RegisterSpec("))
            {
                continue;
            }
            if (itemSpecLine.Contains("LBIS:AddItem(spec,"))
            {
                var itemSplit = itemSpecLine.Remove(itemSpecLine.Length - 1).Replace("LBIS:AddItem(spec,", "").Trim().Split('"');

                var itemId = Int32.Parse(itemSplit[1]);
                items.Add(itemId, new ItemSpec
                {
                    ItemId = itemId,
                    Slot = itemSplit[3],
                    Name = itemSplit[6].Replace(") --", ""),
                    BisStatus = itemSplit[5]
                });
            }
        }

        return items;
    }

    public static void WriteGemAndEnchantSpec(string path, string className, string specName, Dictionary<int, GemSpec> gems, Dictionary<string, EnchantSpec> enchants)
    {
        var GAndESB = new StringBuilder();

        GAndESB.AppendLine($"local spec1 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"1\")");
        GAndESB.AppendLine($"local spec2 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"2\")");
        GAndESB.AppendLine($"local spec3 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"3\")");
        GAndESB.AppendLine($"local spec4 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"4\")");

        GAndESB.AppendLine();
        foreach (var gem in gems)
        {
            string specString = "spec";

            if (gem.Value.Phase > 0)
                specString += gem.Value.Phase;

            GAndESB.AppendLine($"LBIS:AddGem({specString}, \"{gem.Value.GemId}\", \"{gem.Value.Quality}\", \"{gem.Value.IsMeta.ToString()}\") --{gem.Value.Name}");
        }
        GAndESB.AppendLine();

        var previousSlot = "LBIS.L[\"Head\"]";
        foreach (var enchant in enchants)
        {
            string specString = "spec1";

            if (previousSlot != enchant.Value.Slot)
            {
                previousSlot = enchant.Value.Slot;
                GAndESB.AppendLine();
            }

            GAndESB.AppendLine($"LBIS:AddEnchant({specString}, \"{enchant.Value.EnchantId}\", LBIS.L[\"{enchant.Value.Slot}\"]) --{enchant.Value.Name}");
        }
        GAndESB.AppendLine();

        System.IO.File.WriteAllText(path, GAndESB.ToString());
    }
}
