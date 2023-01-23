using System.IO;
using Newtonsoft.Json;

namespace AddonManager.Models;

public static class TierPiecesAndTokens
{
    private static Dictionary<int, (int, string)> _tierPieces = new Dictionary<int, (int, string)>();
    public static Dictionary<int, (int, string)> TierPieces 
    { 
        get
        {
            if (_tierPieces.Count > 0) return _tierPieces;

            var jsonFileString = File.ReadAllText(@$"{Constants.ItemDbPath}\TierSetList.json");
            DatabaseItems dbItems = JsonConvert.DeserializeObject<DatabaseItems>(jsonFileString) ?? new DatabaseItems();
            dbItems.Items.ToList().ForEach((kvp) => {
                _tierPieces.Add(kvp.Key, new(Int32.Parse(kvp.Value.SourceNumber), kvp.Value.Source));
            });
            return _tierPieces;
        } 
    }
}
