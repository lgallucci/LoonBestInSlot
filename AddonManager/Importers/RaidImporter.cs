using System.Globalization;
using System.IO;
using AddonManager.Models;
using CsvHelper;
using CsvHelper.Configuration.Attributes;

namespace AddonManager.Importers;

public class RaidImporter : LootImporter
{
    private class RaidItem
    {
        [Index(0)]
        public string? InstanceName { get; set; }

        [Index(1)]
        public string? BossName { get; set; }

        [Index(2)]
        public string? ItemName { get; set; }

        [Index(3)]
        public string? ItemQuality { get; set; }

        [Index(4)]
        public int ItemId { get; set; }
    }

    internal override string FileName { get => "RaidItemList"; }
    internal override Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        var raidModifiers = new Dictionary<string, string> { { "H10", "Heroic 10" }, { "H25", "Heroic 25" }, { "N10", "10" }, { "N25", "10" } };

        using (var reader = new StreamReader(@$".\wotlk-loot-table.csv"))
        using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
        {
            var records = csv.GetRecords<RaidItem>();

            foreach (var record in records)
            {
                try
                {
                    var raidNameSplit = record.InstanceName.Split(" ");
                    var raidModifier = raidNameSplit[raidNameSplit.Length - 1].Trim('\"');

                    _ = items.Items.TryAdd(record.ItemId, new DatabaseItem
                    {
                        Name = record.ItemName,
                        SourceNumber = "0",
                        Source = record.BossName,
                        SourceLocation = $"{string.Join(" ", raidNameSplit.Take(raidNameSplit.Length - 1))} ({raidModifiers[raidModifier]})",
                        SourceType = "Drop"
                    });
                }
                catch (Exception ex)
                {
                }
            }
        }

        return Task.FromResult(items);
    }
}
