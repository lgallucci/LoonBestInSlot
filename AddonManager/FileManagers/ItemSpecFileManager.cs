using AddonManager.Models;
using AngleSharp.Dom;

namespace AddonManager.FileManagers;

public static class ItemSpecFileManager
{
    public static void WriteItemSpec(string path, string className, string specName, 
        Dictionary<int, List<GemSpec>> gemsList, 
        Dictionary<int, List<EnchantSpec>> enchantsList,
        Dictionary<int, List<ItemSpec>> itemsList)
    {
        var itemSB = new StringBuilder();

        itemSB.AppendLine($"function LBIS:Load{className.Replace(" ", "")}{specName.Replace(" ", "")}()");
        itemSB.AppendLine($"    local spec0 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"0\")");
        itemSB.AppendLine($"    local spec1 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"1\")");
        itemSB.AppendLine($"    local spec2 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"2\")");
        itemSB.AppendLine($"    local spec3 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"3\")");
        itemSB.AppendLine($"    local spec4 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"4\")");
        itemSB.AppendLine($"    local spec5 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"5\")");

        itemSB.AppendLine();
        foreach (var phaseGems in gemsList)
        {
            var gems = phaseGems.Value;
            gems.Sort();
            foreach (var gem in gems)
            {
                string specString = $"spec{phaseGems.Key}";

                itemSB.AppendLine($"    LBIS:AddGem({specString}, \"{gem.GemId}\", \"{gem.Quality}\", \"{gem.IsMeta.ToString()}\") --{gem.Name}");
            }
        }

        itemSB.AppendLine();
        foreach (var phaseEnchants in enchantsList)
        {
            var enchants = phaseEnchants.Value;
            enchants.Sort();

            foreach (var enchant in enchants)
            {
                itemSB.AppendLine($"    LBIS:AddEnchant(spec{phaseEnchants.Key}, \"{enchant.EnchantId}\", LBIS.L[\"{enchant.Slot}\"]) --{enchant.Name}");
            }
        }

        foreach (var phaseItems in itemsList)
        {
            itemSB.AppendLine();
            var items = phaseItems.Value;
            items.Sort();

            foreach (var item in items)
            {
                itemSB.AppendLine($"    LBIS:AddItem(spec{phaseItems.Key}, \"{item.ItemId}\", LBIS.L[\"{item.Slot}\"], \"{item.BisStatus}\") --{item.Name}");
            }
        }

        itemSB.AppendLine($"end");
        System.IO.File.WriteAllText(path, itemSB.ToString());
    }

    public static Tuple<Dictionary<int, List<GemSpec>>, Dictionary<int, List<EnchantSpec>>, Dictionary<int, List<ItemSpec>>> ReadGuide(string path)
    {
        var gems = new Dictionary<int, List<GemSpec>>();
        var enchants = new Dictionary<int, List<EnchantSpec>>();
        var items = new Dictionary<int, List<ItemSpec>>();

        string[] itemSpecLines = System.IO.File.ReadAllLines(path);

        int count = 0;        
        foreach (var itemSpecLine in itemSpecLines)
        {
            if (itemSpecLine.Contains("local spec") || itemSpecLine.StartsWith("function LBIS:Load") || itemSpecLine == "end")
            {
                continue;
            }

            if (itemSpecLine.Contains("LBIS:AddGem(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddGem(spec", "").Trim().Split('"');

                var gemId = Int32.Parse(itemSplit[1]);
                var phase = Int32.Parse(itemSplit[0].Replace(", ", ""));

                if (!gems.ContainsKey(phase))
                    gems.Add(phase, new List<GemSpec>());

                gems[phase].Add(new GemSpec
                {
                    GemId = gemId,
                    Name = itemSplit[6].Replace(") --", ""),
                    Quality = Int32.Parse(itemSplit[3]),
                    IsMeta = bool.Parse(itemSplit[5])
                });
            }

            if (itemSpecLine.Contains("LBIS:AddEnchant(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddEnchant(spec", "").Trim().Split('"');

                var enchantId = Int32.Parse(itemSplit[1]);
                var phase = Int32.Parse(itemSplit[0].Replace(", ", ""));
                var slot = itemSplit[3];

                if (!enchants.ContainsKey(phase))
                    enchants.Add(phase, new List<EnchantSpec>());

                enchants[phase].Add(new EnchantSpec
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
                    Name = itemSplit[6].Replace(") --", ""),
                    BisStatus = itemSplit[5],
                    ItemOrder = count
                });
                count++;
            }
        }

        return new Tuple<Dictionary<int, List<GemSpec>>, Dictionary<int, List<EnchantSpec>>, Dictionary<int, List<ItemSpec>>>(gems, enchants, items);

    }
}
