using System.IO;

namespace AddonManager.FileManagers;

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
        var di = new System.IO.DirectoryInfo(@$"..\..\..\..\LoonBestInSlot\");

        var localizations = RecursivelySearch(di);
        var localList = localizations.ToList();
        localList.Sort();

        var localizedLanguages = new[] { "esES", "esMX", "deDE", "frFR", "ruRU", "zhCN", "koKR", "zhTW" };

        foreach (var language in localizedLanguages)
        {
            var foundLocalization = FindLocalizations(language);
            var translatedLocalizations = GetExistingTranslations(language);
            var fileText = $"if GetLocale() == \"{language}\" then\n";

            foreach (var localizeTerm in localList)
            {
                if (translatedLocalizations.ContainsKey(localizeTerm))
                {
                    fileText += translatedLocalizations[localizeTerm] + "\n";
                }
                else
                {
                    var lineText = string.Empty;
                    var localizeSplit = localizeTerm.Split('/');
                    var localizedString = string.Empty;
                    bool skipFirst = false, foundAll = true;
                    foreach (var localize in localizeSplit)
                    {
                        if (skipFirst)
                            localizedString += "/";

                        if (foundLocalization.ContainsKey(localize))
                            localizedString += foundLocalization[localize];
                        else
                            foundAll = false;
                        skipFirst = true;
                    }

                    lineText = $"  LBIS.L[\"{localizeTerm}\"] = \"{localizedString}\";\n";

                    if (!foundAll)
                        lineText = "--" + lineText;
                    fileText += lineText;
                }
            }

            fileText += "end";

            System.IO.File.WriteAllText(@$"..\..\..\..\LoonBestInSlot\Localization\localization.{language}.lua", fileText);
        }
    }

    private static Dictionary<string, string> FindLocalizations(string language)
    {
        var localizations = new Dictionary<string, string>();

        LocalizeFromAtlasLootClassic(ref localizations, language);

        LocalizeFromWIM(ref localizations, language);

        LocalizeFromLibBabbleSubZone(ref localizations, language);

        LocalizeFromLibBabbleBoss(ref localizations, language);

        LocalizeFromLibBabbleFaction(ref localizations, language);

        LocalizeFromLibBabbleInventory(ref localizations, language);

        LocalizeFromQuestie(ref localizations, language);

        return localizations;
    }

    private static void LocalizeFromQuestie(ref Dictionary<string, string> localizations, string language)
    {
        //Create Local Db
        string[] itemSources = System.IO.File.ReadAllLines($@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\Questie\tbcQuestDB.lua");
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

        itemSources = System.IO.File.ReadAllLines(@$"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\Questie\{language}.lua");
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
        string[] itemSources = System.IO.File.ReadAllLines($@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\LibBabble-Inventory-3.0\LibBabble-Inventory-3.0.lua");
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
        string[] itemSources = System.IO.File.ReadAllLines($@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\LibBabble-Faction-3.0\LibBabble-Faction-3.0.lua");
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
        string[] itemSources = System.IO.File.ReadAllLines($@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\LibBabble-Boss-3.0\LibBabble-Boss-3.0.lua");
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
        string alcPath = $@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\LibBabble-SubZone-3.0\";
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
        string alcPath = @$"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\WIM\";
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
        var alcPath = $@"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\AtlasLootClassic\";
        switch (language)
        {
            case "esES":
                alcPath += "constants.es.lua";
                break;
            case "esMX":
                alcPath += "constants.mx.lua";
                break;
            case "deDE":
                alcPath += "constants.de.lua";
                break;
            case "frFR":
                alcPath += "constants.fr.lua";
                break;
            case "ruRU":
                alcPath += "constants.ru.lua";
                break;
            case "zhCN":
                alcPath += "constants.cn.lua";
                break;
            case "koKR":
                alcPath += "constants.kr.lua";
                break;
            case "zhTW":
                alcPath += "constants.tw.lua";
                break;
        }

        string[] itemSources = System.IO.File.ReadAllLines(alcPath);
        foreach (var line in itemSources)
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

        string[] itemSources = System.IO.File.ReadAllLines(@$"..\..\..\..\LoonBestInSlot\Localization\localization.{language}.lua");
        var lineCount = 0;
        foreach (var line in itemSources)
        {
            if (lineCount == 0 || line.StartsWith("--") || line == "end")
            {
                lineCount++;
                continue;
            }
            var localizedString = string.Empty;

            var indexes = line.AllIndexesOf("LBIS.L[");

            var position = indexes[0] + 8;
            while (position <= line.Length && line[position] != ']')
            {
                localizedString += line[position];
                position++;
            }
            localizedString = localizedString.Trim('\"');

            translatedLocalizations.Add(localizedString, line);

            lineCount++;
        }
        return translatedLocalizations;
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
