using AddonManager.Models;

namespace AddonManager.Importers;

public class ProfessionImporter : LootImporter
{
    internal override string FileName { get => "ProfessionItemList"; }
    internal override Task<DatabaseItems> InnerConvert(DatabaseItems items, Action<string> writeToLog)
    {
        writeToLog("Not Implemented!");
        throw new NotImplementedException();
    }
}
