using AddonManager.Models;

namespace AddonManager.FileManagers;

public class ItemSpecFileManager
{
    internal void WriteItemSpec(string path, string className, string specName, string phaseText, Dictionary<int, ItemSpec> items)
    {
        var itemSB = new StringBuilder();

        var phaseNumber = Int32.Parse(phaseText.Replace("Phase", ""));

        itemSB.AppendLine($"local spec = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"{phaseNumber}\")");

        var previousSlot = "LBIS.L[\"Head\"]";
        foreach (var item in items)
        {
            if (previousSlot != item.Value.Slot)
            {
                previousSlot = item.Value.Slot;
                itemSB.AppendLine();
            }
            itemSB.AppendLine($"LBIS:AddItem(spec, \"{item.Value.ItemId}\", LBIS.L[\"{item.Value.Slot}\"], \"{item.Value.BisStatus}\") --{item.Value.Name}");
        }
                
        System.IO.File.WriteAllText(path, itemSB.ToString());
    }

    internal Dictionary<int, ItemSpec> ReadPhaseFromFile(string path)
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

    internal void WriteGemAndEnchantSpec(string path, string className, string specName, string phaseText, Dictionary<int, GemSpec> gems, Dictionary<string, EnchantSpec> enchants)
    {
        var GAndESB = new StringBuilder();

        var phaseNumber = "0";//Int32.Parse(phaseText.Replace("Phase", ""));

        GAndESB.AppendLine($"local spec = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"{phaseNumber}\")");

        foreach (var gem in gems)
        {
            GAndESB.AppendLine($"LBIS:AddGem(spec, \"{gem.Value.GemId}\", \"{gem.Value.IsMeta.ToString()}\") --{gem.Value.Name}");
        }
        GAndESB.AppendLine();

        var previousSlot = "LBIS.L[\"Head\"]";
        foreach (var enchant in enchants)
        {
            if (previousSlot != enchant.Value.Slot)
            {
                previousSlot = enchant.Value.Slot;
                GAndESB.AppendLine();
            }

            GAndESB.AppendLine($"LBIS:AddEnchant(spec, \"{enchant.Value.EnchantId}\", LBIS.L[\"{enchant.Value.Slot}\"], \"{enchant.Value.IsSpell.ToString()}\") --{enchant.Value.Name}");
        }
        GAndESB.AppendLine();

        System.IO.File.WriteAllText(path, GAndESB.ToString());
    }
}
