using AddonManager.Models;

namespace AddonManager.FileManagers;

public static class ItemSpecFileManager
{
    public static void WriteItemSpec(string path, string className, string specName, 
        Dictionary<int, GemSpec> gems, 
        Dictionary<string, EnchantSpec> enchants, 
        List<Tuple<int, List<ItemSpec>>> itemsList)
    {
        var itemSB = new StringBuilder();

        itemSB.AppendLine($"local spec0 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"0\")");
        itemSB.AppendLine($"local spec1 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"1\")");
        itemSB.AppendLine($"local spec2 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"2\")");
        itemSB.AppendLine($"local spec3 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"3\")");
        itemSB.AppendLine($"local spec4 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"4\")");
        itemSB.AppendLine($"local spec5 = LBIS:RegisterSpec(LBIS.L[\"{className}\"], LBIS.L[\"{specName}\"], \"5\")");

        foreach (var gem in gems)
        {
            string specString = "spec";

            if (gem.Value.Phase > 0)
                specString += gem.Value.Phase;

            itemSB.AppendLine($"LBIS:AddGem({specString}, \"{gem.Value.GemId}\", \"{gem.Value.Quality}\", \"{gem.Value.IsMeta.ToString()}\") --{gem.Value.Name}");
        }
        itemSB.AppendLine();

        foreach (var enchant in enchants)
        {
            itemSB.AppendLine($"LBIS:AddEnchant(\"spec1\", \"{enchant.Value.EnchantId}\", LBIS.L[\"{enchant.Value.Slot}\"]) --{enchant.Value.Name}");
        }
        itemSB.AppendLine();

        foreach (var phaseItems in itemsList)
        {
            itemSB.AppendLine();
            var items = phaseItems.Item2;
            items.Sort();

            foreach (var item in items)
            {
                itemSB.AppendLine($"LBIS:AddItem(spec{phaseItems.Item1}, \"{item.ItemId}\", LBIS.L[\"{item.Slot}\"], \"{item.BisStatus}\") --{item.Name}");
            }
        }

        System.IO.File.WriteAllText(path, itemSB.ToString());
    }

    public static Tuple<Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>, List<Tuple<int, List<ItemSpec>>>> ReadItemSpec(string path)
    {
        return new Tuple<Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>, List<Tuple<int, List<ItemSpec>>>>(new Dictionary<int, GemSpec>(),
            new Dictionary<string, EnchantSpec>(),
            new List<Tuple<int, List<ItemSpec>>>());
    }

    public static Tuple<Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>> ReadGemEnchants(string path)
    {
        var gems = new Dictionary<int, GemSpec>();
        var enchants = new Dictionary<string, EnchantSpec>();

        string[] itemSpecLines = System.IO.File.ReadAllLines(path);

        foreach (var itemSpecLine in itemSpecLines)
        {
            if (itemSpecLine.Contains("local spec"))
            {
                continue;
            }

            if (itemSpecLine.Contains("LBIS:AddGem(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddGem(spec", "").Trim().Split('"');

                var gemId = Int32.Parse(itemSplit[1]);
                gems.Add(gemId, new GemSpec
                {
                    GemId = gemId,
                    Name = itemSplit[6].Replace(") --", ""),
                    Phase = Int32.Parse(itemSplit[0].Replace(", ", "")),
                    Quality = Int32.Parse(itemSplit[3]),
                    IsMeta = bool.Parse(itemSplit[5])
                });
            }

            if (itemSpecLine.Contains("LBIS:AddEnchant(spec"))
            {
                var itemSplit = itemSpecLine.Replace("LBIS:AddEnchant(spec", "").Trim().Split('"');

                var enchantId = Int32.Parse(itemSplit[1]);
                var slot = itemSplit[3];
                enchants.Add(enchantId + slot, new EnchantSpec
                {
                    EnchantId = enchantId,
                    Name = itemSplit[4].Replace(") --", ""),
                    Slot = slot,
                    IsSpell = false,
                });
            }
        }

        return new Tuple<Dictionary<int, GemSpec>, Dictionary<string, EnchantSpec>>(gems, enchants);
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
}
