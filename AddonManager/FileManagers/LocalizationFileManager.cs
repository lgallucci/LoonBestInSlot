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
            var translatedLocalizations = GetExistingTranslations(language);
            var fileText = $"if GetLocale() == \"{language}\" then\n"; 
            
            foreach (var localization in localList)
            {
                if (translatedLocalizations.ContainsKey(localization))
                {
                    fileText += translatedLocalizations[localization] + "\n";
                } 
                else
                {
                    fileText += $"--  LBIS.L[\"{localization}\"] = \"\";\n";
                }
            }

            fileText += "end";

            System.IO.File.WriteAllText(@$"..\..\..\..\LoonBestInSlot\Localization\localization.{language}.lua", fileText);
        }
    }

    private static Dictionary<string, string> GetExistingTranslations(string language)
    {
        var translatedLocalizations = new Dictionary<string, string>();

        string[] itemSources = System.IO.File.ReadAllLines(@$"..\..\..\..\LoonBestInSlot\Localization\localization.{language}.lua");
        var lineCount = 0;
        foreach(var line in itemSources)
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
