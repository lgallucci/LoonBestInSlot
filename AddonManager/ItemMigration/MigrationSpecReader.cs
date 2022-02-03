using System.Text.RegularExpressions;
using AddonManager.Models;

namespace AddonManager.ItemMigration;

internal class MigrationSpecReader
{

    public List<Tuple<ItemSpec, ItemSource>> ReadFile(string specName)
    {
        string[] lines = System.IO.File.ReadAllLines(@$"..\..\..\..\LoonBestInSlot\Items\{specName}.lua");
        var specList = new List<Tuple<ItemSpec, ItemSource>>();
        // Display the file contents by using a foreach loop.
        System.Console.WriteLine("Contents of WriteLines2.txt = ");

        var firstItem = true;

        foreach (string line in lines)
        {
            if (firstItem) { firstItem = false; continue; }

            if (line.Trim().Length > 0)
            {
                var specItem = GetSpecItemFromLine(line);
                specList.Add(specItem);
            }
        }

        return specList;
    }

    private Tuple<ItemSpec, ItemSource> GetSpecItemFromLine(string line)
    {
        var specLine = Regex.Replace(line, @",[\t\s]+", ",");

        specLine = specLine.Substring(29, specLine.Length-31);

        var splitFields = specLine.Split("\",\"");

        return new Tuple<ItemSpec, ItemSource>(
            new ItemSpec
            {
                ItemId = Int32.Parse(splitFields[0]),
                Name = splitFields[2],
                Slot = splitFields[1],
                BisStatus = splitFields[3],
                PhaseStatus = splitFields[4]
            },
            new ItemSource
            {
                ItemId = Int32.Parse(splitFields[0]),
                Name = splitFields[2],
                SourceType = splitFields[5],
                Source = splitFields[6],
                SourceLocation = splitFields.Length > 7 ? splitFields[7] : ""
            });
    }
}
