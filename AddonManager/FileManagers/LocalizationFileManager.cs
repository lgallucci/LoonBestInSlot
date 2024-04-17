using System.IO;
using Newtonsoft.Json;

namespace AddonManager.FileManagers;

public class LocalizationDb
{
    public class LocalizationItems
    {
        public Dictionary<string, Dictionary<string, string>> Translations { get; set; } = new Dictionary<string, Dictionary<string, string>>();
    }

    public LocalizationItems Database { get; set; } = new LocalizationItems();

    public void AddLanguage(string language, Dictionary<string, string> translations)
    {
        foreach(var translation in translations)
        {
            Database.Translations[language][translation.Key] = translation.Value;
        }
    }

    public void ReadFile()
    {
        var jsonFileString = File.ReadAllText($@"{Constants.LocalizationPath}\localizationDb.json");
        Database = JsonConvert.DeserializeObject<LocalizationItems>(jsonFileString) ?? new LocalizationItems();
    }

    public void SaveFile()
    {
        //write dictionary to file
        File.WriteAllText($@"{Constants.LocalizationPath}\localizationDb.json", JsonConvert.SerializeObject(Database, Formatting.Indented));
    }
}

public static class LocalizationFileManager
{
    public static List<int> AllIndexesOf(this string str, string value)
    {
        if (String.IsNullOrEmpty(value))
            throw new ArgumentException("the string to find may not be empty", "value");
        List<int> indexes = new List<int>();
        for (int index = 0; ; index += value.Length)
        {
            index = str.IndexOf(value, index);
            if (index == -1)
                return indexes;
            indexes.Add(index);
        }
    }

    public static string[] _exludedList = new[] { "Druid", "Hunter", "Mage", "Paladin", "Priest", "Rogue", "Shaman", "Warlock", "Warrior", "Death Knight" };

    public static void WriteLocalizationFiles()
    {
        var di = new System.IO.DirectoryInfo(@$"{Constants.AddonPath}\");
        var localizationDb = new LocalizationDb();
        localizationDb.ReadFile();

        var localizations = RecursivelySearch(di);
        var localList = localizations.ToList();
        localList.Sort();

        var localizedLanguages = new[] { "esES", "esMX", "deDE", "frFR", "ruRU", "zhCN", "koKR", "zhTW" };

        foreach (var language in localizedLanguages)
        {
            var foundLocalization = FindLocalizations(language, localizationDb);
            var translatedLocalizations = GetExistingTranslations(language);
            var fileText = $"if GetLocale() == \"{language}\" then\n";

            foreach (var localizeTerm in localList)
            {
                if (translatedLocalizations.ContainsKey(localizeTerm))
                {                    
                    fileText += $"  LBIS.L[\"{localizeTerm}\"] = \"{translatedLocalizations[localizeTerm]}\";\n";
                }
                else
                {
                    var lineText = string.Empty;
                    var slashSplit = false;
                    var ampersandSplit = false;

                    slashSplit = localizeTerm.Contains("~");
                    ampersandSplit = localizeTerm.Contains("&");

                    string[] localizeSplit;
                    if (slashSplit)
                        localizeSplit = localizeTerm.Split("~");
                    else
                        localizeSplit = localizeTerm.Split('&');

                    var localizedString = string.Empty;
                    bool skipFirst = false, foundAll = true;
                    foreach (var localizeSlash in localizeSplit)
                    {
                        if (skipFirst && slashSplit)
                            localizedString += "~";
                        else if (skipFirst)
                            localizedString += " & ";

                        var parenSplit = localizeSlash.Split("(");
                        var mainTerm = parenSplit[0].Trim();
                        if (Int32.TryParse(mainTerm, out int mainResult))
                            localizedString += $" ({mainTerm})";
                        else
                        {
                            if (foundLocalization.ContainsKey(mainTerm))
                                localizedString += foundLocalization[mainTerm];
                            else
                                foundAll = false;
                        }

                        if (parenSplit.Length > 1)
                        {
                            var parenTerm = parenSplit[1].Replace(")", "");

                            if (Int32.TryParse(parenTerm, out int parenResult))
                                localizedString += $" ({parenTerm})";
                            else
                            {
                                if (foundLocalization.ContainsKey(parenTerm))
                                    localizedString += $" ({foundLocalization[parenTerm]})";
                                else
                                    foundAll = false;
                            }
                        }
                        skipFirst = true;
                    }

                    lineText = $"  LBIS.L[\"{localizeTerm}\"] = \"{localizedString}\";\n";

                    if (!foundAll)
                        lineText = "--" + lineText;
                    fileText += lineText;
                }
            }

            fileText += "end";

            localizationDb.AddLanguage(language, translatedLocalizations);

            System.IO.File.WriteAllText(@$"{Constants.AddonPath}\Localization\localization.{language}.lua", fileText);
        }

        localizationDb.SaveFile();
    }

    private static Dictionary<string, string> FindLocalizations(string language, LocalizationDb localizationDb)
    {
        var localizations = new Dictionary<string, string>();

        LocalizeFromAtlasLootClassic(ref localizations, language);

        LocalizeFromWIM(ref localizations, language);

        LocalizeFromLibBabbleSubZone(ref localizations, language);

        LocalizeFromLibBabbleBoss(ref localizations, language);

        LocalizeFromLibBabbleFaction(ref localizations, language);

        LocalizeFromLibBabbleInventory(ref localizations, language);

        LocalizeFromQuestie(ref localizations, language);

        LocalizeFromBlizzard(ref localizations, language);

        LocalizeFromLocalDb(ref localizations, language, localizationDb);

        return localizations;
    }

    private static void LocalizeFromLocalDb(ref Dictionary<string, string> localizations, string language, LocalizationDb localizationDb)
    {
        foreach(var dbLoc in localizationDb.Database.Translations[language])
        {
            if (!localizations.ContainsKey(dbLoc.Key))
                localizations[dbLoc.Key] = dbLoc.Value;
        }
    }

    private static void LocalizeFromBlizzard(ref Dictionary<string, string> localizations, string language)
    {
        List<string> enStrings = System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\Blizzard\GlueStrings\enUS.lua").ToList();
        enStrings.AddRange(System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\Blizzard\GlobalStrings\enUS.lua"));

        Dictionary<string, string> localizationSet = new Dictionary<string, string>();
        foreach (var line in enStrings)
        {
            if (line.StartsWith("--") || string.IsNullOrWhiteSpace(line))
                continue;

            var terms = line.Split('=');

            localizationSet[terms[0].Trim()] = terms[1].Trim(' ').Trim(';').Trim('"');
        }

        List<string> locStrings = new List<string>();
        if (System.IO.File.Exists($@"{Constants.LocalizationPath}\Blizzard\GlueStrings\{language}.lua"))
            locStrings.AddRange(System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\Blizzard\GlueStrings\{language}.lua"));

        if (System.IO.File.Exists($@"{Constants.LocalizationPath}\Blizzard\GlobalStrings\{language}.lua"))
            locStrings.AddRange(System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\Blizzard\GlobalStrings\{language}.lua"));

        foreach (var line in locStrings)
        {
            if (line.StartsWith("--") || string.IsNullOrWhiteSpace(line))
                continue;

            var terms = line.Split('=');

            if (localizationSet.ContainsKey(terms[0].Trim()))
                localizations[localizationSet[terms[0].Trim()]] = terms[1].Trim(' ').Trim(';').Trim('"');
        }
    }

    private static void LocalizeFromQuestie(ref Dictionary<string, string> localizations, string language)
    {
        string[] itemSources = System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\Questie\wotlkQuestDB.lua");
        var questNames = new Dictionary<int, string>();
        foreach (var line in itemSources)
        {
            if (!line.StartsWith("["))
                continue;
            string questIdString = string.Empty;
            var position = 1;
            while (position <= line.Length && line[position] != ']')
            {
                questIdString += line[position];
                position++;
            }
            questIdString = questIdString.Trim();

            string questName = string.Empty;
            while (position <= line.Length && (line[position] != '\"' || line[position + 1] != ','))
            {
                questName += line[position];
                position++;
            }
            questName = questName.Split("{")[1].Trim().Trim('\"');

            questNames.Add(Int32.Parse(questIdString), questName);
        }

        itemSources = System.IO.File.ReadAllLines(@$"{Constants.LocalizationPath}\Questie\{language}.lua");
        foreach (var line in itemSources)
        {
            if (!line.StartsWith("["))
                continue;
            string questIdString = string.Empty;
            var position = 1;
            while (position <= line.Length && line[position] != ']')
            {
                questIdString += line[position];
                position++;
            }
            var questId = Int32.Parse(questIdString.Trim());

            string questName = string.Empty;
            while (position <= line.Length && (line[position] != '\"' || line[position + 1] != ','))
            {
                questName += line[position];
                position++;
            }
            questName = questName.Split("{")[1].Trim().Trim('\"');

            if (questNames.ContainsKey(questId) && !localizations.ContainsKey(questNames[questId]))
                localizations[questNames[questId]] = questName;
        }
    }

    private static void LocalizeFromLibBabbleInventory(ref Dictionary<string, string> localizations, string language)
    {
        string[] itemSources = System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\LibBabble-Inventory-3.0\LibBabble-Inventory-3.0.lua");
        bool foundStart = false;
        foreach (var line in itemSources)
        {
            if (!foundStart && !line.StartsWith("elseif"))
                continue;

            if (foundStart && line.StartsWith("elseif"))
                break;

            if (line.StartsWith("elseif") && line.Contains(language))
                foundStart = true;

            if (!foundStart || !line.StartsWith("	["))
                continue;

            AddStringToLocalization(ref localizations, line, 2);
        }
    }

    private static void LocalizeFromLibBabbleFaction(ref Dictionary<string, string> localizations, string language)
    {
        string[] itemSources = System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\LibBabble-Faction-3.0\LibBabble-Faction-3.0.lua");
        bool foundStart = false;
        foreach (var line in itemSources)
        {
            if (!foundStart && !line.StartsWith("elseif"))
                continue;

            if (foundStart && line.StartsWith("elseif"))
                break;

            if (line.StartsWith("elseif") && line.Contains(language))
                foundStart = true;

            if (!foundStart || !line.StartsWith("	["))
                continue;

            AddStringToLocalization(ref localizations, line, 2);
        }
    }

    private static void LocalizeFromLibBabbleBoss(ref Dictionary<string, string> localizations, string language)
    {
        string[] itemSources = System.IO.File.ReadAllLines($@"{Constants.LocalizationPath}\LibBabble-Boss-3.0\LibBabble-Boss-3.0.lua");
        var foundStart = false;
        foreach (var line in itemSources)
        {
            if (!foundStart && !line.StartsWith("elseif"))
                continue;

            if (foundStart && line.StartsWith("elseif"))
                break;

            if (line.StartsWith("elseif") && line.Contains(language))
                foundStart = true;

            if (!foundStart || !line.StartsWith("	["))
                continue;


            AddStringToLocalization(ref localizations, line, 2);
        }
    }

    private static void LocalizeFromLibBabbleSubZone(ref Dictionary<string, string> localizations, string language)
    {
        string alcPath = $@"{Constants.LocalizationPath}\LibBabble-SubZone-3.0\";
        switch (language)
        {
            case "esES":
                alcPath += "LibBabble-SubZone-3.0_esES.lua";
                break;
            case "esMX":
                alcPath += "LibBabble-SubZone-3.0_esMX.lua";
                break;
            case "deDE":
                alcPath += "LibBabble-SubZone-3.0_deDE.lua";
                break;
            case "frFR":
                alcPath += "LibBabble-SubZone-3.0_frFR.lua";
                break;
            case "ruRU":
                alcPath += "LibBabble-SubZone-3.0_ruRU.lua";
                break;
            case "zhCN":
                alcPath += "LibBabble-SubZone-3.0_zhCN.lua";
                break;
            case "koKR":
                alcPath += "LibBabble-SubZone-3.0_koKR.lua";
                break;
            case "zhTW":
                alcPath += "LibBabble-SubZone-3.0_zhTW.lua";
                break;
        }

        string[] itemSources = System.IO.File.ReadAllLines(alcPath);
        foreach (var line in itemSources)
        {
            if (!line.StartsWith("	["))
                continue;

            AddStringToLocalization(ref localizations, line, 2);
        }
    }

    private static void LocalizeFromWIM(ref Dictionary<string, string> localizations, string language)
    {
        string alcPath = @$"{Constants.LocalizationPath}\WIM\";
        switch (language)
        {
            case "esES":
                alcPath += "esES.lua";
                break;
            case "esMX":
                alcPath += "esES.lua";
                break;
            case "deDE":
                alcPath += "deDE.lua";
                break;
            case "frFR":
                alcPath += "frFR.lua";
                break;
            case "ruRU":
                alcPath += "ruRU.lua";
                break;
            case "zhCN":
                alcPath += "zhCN.lua";
                break;
            case "koKR":
                alcPath += "koKR.lua";
                break;
            case "zhTW":
                alcPath += "zhTW.lua";
                break;
        }
        string[] itemSources = System.IO.File.ReadAllLines(alcPath);
        foreach (var line in itemSources)
        {
            if (!line.StartsWith("    [") && !line.StartsWith("	["))
                continue;

            if (line.StartsWith("    ["))
                AddStringToLocalization(ref localizations, line, 5);
            if (line.StartsWith("	["))
                AddStringToLocalization(ref localizations, line, 2);
        }
    }

    private static void LocalizeFromAtlasLootClassic(ref Dictionary<string, string> localizations, string language)
    {
        if (localizations == null)
        {
            localizations = new Dictionary<string, string>();
        }
        var alcPath = $@"{Constants.LocalizationPath}\AtlasLootClassic\";
        var alcPath2 = $@"{Constants.LocalizationPath}\AtlasLootClassic_Collections\";
        var alcPath3 = $@"{Constants.LocalizationPath}\AtlasLootClassic_DungeonAndRaid\";
        switch (language)
        {
            case "esES":
                alcPath += "constants.es.lua";
                alcPath2 += "constants.es.lua";
                alcPath3 += "constants.es.lua";
                break;
            case "esMX":
                alcPath += "constants.mx.lua";
                alcPath2 += "constants.mx.lua";
                alcPath3 += "constants.mx.lua";
                break;
            case "deDE":
                alcPath += "constants.de.lua";
                alcPath2 += "constants.de.lua";
                alcPath3 += "constants.de.lua";
                break;
            case "frFR":
                alcPath += "constants.fr.lua";
                alcPath2 += "constants.fr.lua";
                alcPath3 += "constants.fr.lua";
                break;
            case "ruRU":
                alcPath += "constants.ru.lua";
                alcPath2 += "constants.ru.lua";
                alcPath3 += "constants.ru.lua";
                break;
            case "zhCN":
                alcPath += "constants.cn.lua";
                alcPath2 += "constants.cn.lua";
                alcPath3 += "constants.cn.lua";
                break;
            case "koKR":
                alcPath += "constants.kr.lua";
                alcPath2 += "constants.kr.lua";
                alcPath3 += "constants.kr.lua";
                break;
            case "zhTW":
                alcPath += "constants.tw.lua";
                alcPath2 += "constants.tw.lua";
                alcPath3 += "constants.tw.lua";
                break;
        }

        string[] itemSources = System.IO.File.ReadAllLines(alcPath);
        foreach (var line in itemSources)
        {
            if (!line.StartsWith("AL["))
                continue;

            AddStringToLocalization(ref localizations, line, 3);
        }
        string[] itemSources2 = System.IO.File.ReadAllLines(alcPath2);
        foreach (var line in itemSources2)
        {
            if (!line.StartsWith("AL["))
                continue;

            AddStringToLocalization(ref localizations, line, 3);
        }
        string[] itemSources3 = System.IO.File.ReadAllLines(alcPath3);
        foreach (var line in itemSources3)
        {
            if (!line.StartsWith("AL["))
                continue;

            AddStringToLocalization(ref localizations, line, 3);
        }
    }

    private static void AddStringToLocalization(ref Dictionary<string, string> localizations, string line, int startPosition)
    {
        var localizedString = string.Empty;
        var position = startPosition;
        while (position <= line.Length && line[position] != ']')
        {
            localizedString += line[position];
            position++;
        }

        var translation = line.Split("=")[1].Trim().Trim(',').Trim('\"');
        if (!localizations.ContainsKey(localizedString.Trim('\"')))
            localizations.Add(localizedString.Trim('\"'), translation);
    }

    private static Dictionary<string, string> GetExistingTranslations(string language)
    {
        var translatedLocalizations = new Dictionary<string, string>();

        string[] itemSources = System.IO.File.ReadAllLines(@$"{Constants.AddonPath}\Localization\localization.{language}.lua");
        var lineCount = 0;
        foreach (var line in itemSources)
        {
            if (line == null || lineCount == 0 || line.StartsWith("--") || line == "end")
            {
                lineCount++;
                continue;
            }
            var localizedString = string.Empty;

            var localSplit = line.Split('=');

            var indexes = localSplit[0].AllIndexesOf("LBIS.L[");

            var position = indexes[0] + 8;
            while (position <= localSplit[0].Length && localSplit[0][position] != ']')
            {
                localizedString += localSplit[0][position];
                position++;
            }

            localizedString = localizedString.TrimSingleChar('\"');

            translatedLocalizations.Add(localizedString, localSplit[1].Trim(' ').Trim(';').TrimSingleChar('\"'));

            lineCount++;
        }
        return translatedLocalizations;
    }

    private static string TrimSingleChar(this string text, char removedChar)
    {
        string ret = text;

        if (text[0] == removedChar)
            ret = text.Substring(1);
        
        if (ret[ret.Length - 1] == removedChar)
            ret = ret.Substring(0, ret.Length - 1);

        return ret;
    }

    private static HashSet<string> RecursivelySearch(DirectoryInfo di)
    {
        var localizations = new HashSet<string>();
        var directories = di.GetDirectories();

        foreach (var d in directories.Where(d => d.Name != "Localization"))
        {
            localizations.UnionWith(RecursivelySearch(d));
        }

        var files = di.GetFiles();

        foreach (var file in files.Where(f => f.Extension == ".lua"))
        {
            string[] itemSources = System.IO.File.ReadAllLines(file.FullName);
            foreach (var source in itemSources)
            {
                var indexes = source.AllIndexesOf("LBIS.L[");
                foreach (var index in indexes)
                {
                    var position = index + 8;
                    var localizedString = string.Empty;
                    while (position <= source.Length && source[position] != ']')
                    {
                        localizedString += source[position];
                        position++;
                    }
                    localizedString = localizedString.Trim('\"');
                    if (localizedString.Length > 0 && !_exludedList.Contains(localizedString))
                        localizations.Add(localizedString);
                }
            }
        }

        return localizations;
    }
}
