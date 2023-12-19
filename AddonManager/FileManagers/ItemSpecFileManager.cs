using AddonManager.Models;
using AngleSharp.Dom;

namespace AddonManager.FileManagers;

public static class ItemSpecFileManager
{
    public static void WriteItemSpec(string path, string className, string specName,
        Dictionary<string, EnchantSpec> enchants,
        Dictionary<int, List<ItemSpec>> itemsList)
    {
        var itemSB = new StringBuilder();

        itemSB.AppendLine($"local spec0 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"0\")");
        itemSB.AppendLine($"local spec1 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"1\")");
        itemSB.AppendLine($"local spec2 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"2\")");
        itemSB.AppendLine($"local spec3 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"3\")");
        itemSB.AppendLine($"local spec4 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"4\")");
        itemSB.AppendLine($"local spec5 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"5\")");

        itemSB.AppendLine();
        foreach (var enchant in enchants)
        {
            itemSB.AppendLine($"LBIS:AddEnchant(spec1, \"{enchant.Value.EnchantId}\", LBIS.L[\"{enchant.Value.Slot}\"]) --{enchant.Value.Name}");
        }
        foreach (var phaseItems in itemsList)
        {
            itemSB.AppendLine();
            var items = phaseItems.Value;
            items.Sort();

            int count = 0;
            foreach (var item in items)
            {
                itemSB.AppendLine($"LBIS:AddItem(spec{phaseItems.Key}, \"{item.ItemId}\", LBIS.L[\"{item.Slot}\"], \"{item.BisStatus}\", \"{count}\") --{item.Name}");
                count++;
            }
        }

        System.IO.File.WriteAllText(path, itemSB.ToString());
    }

    public static Tuple<Dictionary<string, EnchantSpec>, Dictionary<int, List<ItemSpec>>> ReadGuide(string path)
    {
        var enchants = new Dictionary<string, EnchantSpec>();
        var items = new Dictionary<int, List<ItemSpec>>();

        if (!System.IO.File.Exists(path))
            return new Tuple<Dictionary<string, EnchantSpec>, Dictionary<int, List<ItemSpec>>>(
                new Dictionary<string, EnchantSpec>(), 
                new Dictionary<int, List<ItemSpec>>()); 

        string[] itemSpecLines = System.IO.File.ReadAllLines(path);

        foreach (var itemSpecLine in itemSpecLines)
        {
            if (itemSpecLine.Contains("local spec"))
            {
                continue;
            }

            if (itemSpecLine.Contains("LBIS:AddEnchant(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddEnchant(spec", "").Trim().Split('"');

                var enchantId = Int32.Parse(itemSplit[1]);
                var slot = itemSplit[3];
                enchants.Add(enchantId + slot, new EnchantSpec
                {
                    EnchantId = enchantId,
                    Name = itemSplit[4].Replace("]) --", ""),
                    Slot = slot                    
                });
            }
            
            if (itemSpecLine.Contains("LBIS:AddItem(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddItem(spec", "").Trim().Split('"');

                var itemId = Int32.Parse(itemSplit[1]);
                var phase = Int32.Parse(itemSplit[0].Replace(", ", ""));

                if (!items.ContainsKey(phase))
                    items.Add(phase, new List<ItemSpec>());

                items[phase].Add(new ItemSpec
                {
                    ItemId = itemId,
                    Slot = itemSplit[3],
                    Name = itemSplit[8].Replace(") --", ""),
                    BisStatus = itemSplit[5],
                    ItemOrder = items[phase].Count(i => i.Slot == itemSplit[3])
                });
            }
        }

        return new Tuple<Dictionary<string, EnchantSpec>, Dictionary<int, List<ItemSpec>>>(enchants, items);

    }
}
