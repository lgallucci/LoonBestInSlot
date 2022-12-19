using System.IO;
using Newtonsoft.Json;

namespace AddonManager.Models;

internal static class TierPiecesAndTokens
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

    public static readonly Dictionary<int, (int, string)> Transmutes = new Dictionary<int, (int, string)>()
    {
        { 34405, (34339, "Cowl of Light's Purity") }, //Helm of Arcane Purity
        { 34406, (34342, "Handguards of the Dawn") }, //Gloves of Tyri's Power
        { 34381, (34180, "Felfury Legplates") }, //Felstrength Legplates
        { 34382, (34167, "Legplates of the Holy Juggernaut") }, //Judicator's Legguards
        { 34383, (34186, "Chain Links of the Tumultuous Storm") }, // Kilt of Spiritual Reconstruction
        { 34384, (34169, "Breeches of Natural Aggression") }, //Breeches of Natural Splendor
        { 34385, (34188, "Leggings of the Immortal Night") }, //Leggings of the Immortal Beast
        { 34386, (34170, "Pantaloons of Calming Strife") }, //Pantaloons of Growing Strife
        { 34388, (34192, "Pauldrons of Perseverance") }, //Pauldrons of Berserking
        { 34389, (34193, "Spaulders of the Thalassian Savior") }, //Spaulders of the Thalassian Defender
        { 34390, (34208, "Equilibrium Epaulets") }, //Erupting Epaulets
        { 34391, (34209, "Spaulders of Reclamation") }, //Spaulders of Devastation
        { 34392, (34195, "Shoulderpads of Vehemence") }, //Demontooth Shoulderpads
        { 34393, (34202, "Shawl of Wonderment") }, //Shoulderpads of Knowledge's Pursuit
        { 34394, (34215, "Warharness of Reckless Fury") }, //Breastplate of Agony's Aversion
        { 34395, (34216, "Heroic Judicator's Chestguard") }, //Noble Judicator's Chestguard
        { 34396, (34229, "Garments of Serene Shores") }, //Garments of Crashing Shores
        { 34397, (34211, "Harness of Carnal Instinct") }, //Bladed Chaos Tunic
        { 34398, (34212, "Sunglow Vest") }, //Utopian Tunic of Elune
        { 34399, (34233, "Robes of Faltered Light") }, //Robes of Ghostly Hatred
        { 34400, (34345, "Crown of Anasterian") }, //Crown of Dath'Remar
        { 34401, (34243, "Helm of Burning Righteousness") }, //Helm of Uther's Resolve
        { 34402, (34332, "Cowl of Gul'dan") }, //Shroud of Chieftain Ner'zhul
        { 34403, (34245, "Cover of Ursol the Wise") }, //Cover of Ursoc the Mighty
        { 34404, (34244, "Duplicitous Guise") }, //Mask of the Fury Hunter
        { 34408, (34234, "Shadowed Gauntlets of Paroxysm") }, //Gloves of the Forest Drifter
        { 34409, (34350, "Gauntlets of the Ancient Shadowmoon") }, //Gauntlets of the Ancient Frostwolf
        { 34407, (34351, "Tranquil Majesty Wraps") }, //Tranquil Moonlight Wraps
    };
}
