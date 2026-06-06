using AddonManager.Models;
using AngleSharp.Dom;

namespace AddonManager.FileManagers;

public static class LinkedItemFileManager
{
    public static void WriteLinkedItems(string path, Dictionary<string, List<int>> linkedItems, Dictionary<string, string> linkedItemNames)
    {           
        var sb = new StringBuilder();
        sb.AppendLine($"LBIS.LinkedItems = {{");
        foreach(var kvp in linkedItems)
        {
            var name = linkedItemNames.ContainsKey(kvp.Key) ? linkedItemNames[kvp.Key] : "Unknown";
            sb.AppendLine($"    {{{string.Join(",", kvp.Value)}}}, --{kvp.Key} ({name})");
        }
        sb.AppendLine("}");

        sb.AppendLine("LBIS.LinkedItemLookup = {");
        sb.AppendLine("for _, pair in ipairs(LBIS.LinkedItems) do");
        sb.AppendLine("    local baseID = pair[1]");
        sb.AppendLine("    local tfID = pair[2]");
        
        sb.AppendLine("    -- Map BOTH IDs to the exact same pair array");
        sb.AppendLine("    LBIS.LinkedItemLookup[baseID] = pair");
        sb.AppendLine("    LBIS.LinkedItemLookup[tfID] = pair");
        sb.AppendLine("end\");");

        System.IO.File.WriteAllText(path, sb.ToString());
    }
}