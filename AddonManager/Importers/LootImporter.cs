using System.IO;
using AddonManager.Models;
using Newtonsoft.Json;

namespace AddonManager.Importers;
public abstract class LootImporter
{
    public virtual async Task Convert(Action<string> writeToLog)
    {
        var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\{FileName}.json");
        DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();

        //write dictionary to file
        File.WriteAllText(@$"{Constants.ItemDbPath}\{FileName}.json", JsonConvert.SerializeObject(await InnerConvert(dbItems, writeToLog), Formatting.Indented));
    }

    internal abstract string FileName { get; }
    internal abstract Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog);
}
