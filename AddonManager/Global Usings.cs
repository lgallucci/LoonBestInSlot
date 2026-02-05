﻿global using System;
global using System.Threading;
global using System.Collections.Generic;
global using System.Linq;
global using System.Text;
global using System.Threading.Tasks;
using System.IO;

public static class Constants
{
    public static int CurrentPhase = 1;

    public static string AddonPath 
    {
        get 
        {
            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
            {
                return @$"C:\GIT\LoonBestInSlot\LoonBestInSlot\";
            }
            else
            {
                return @$"/media/windowsdisk/GIT/LoonBestInSlot/LoonBestInSlot";
            }
        }
    }

    public static string ItemDbPath
    {
        get 
        {
            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
            {
                return @$"C:\GIT\LoonBestInSlot\AddonManager\ItemDatabase\";
            }
            else
            {
                return @$"/media/windowsdisk/GIT/LoonBestInSlot/AddonManager/ItemDatabase";
            }
        }
    }

    public static string LocalizationPath     
    {
        get 
        {
            if (Environment.OSVersion.Platform == PlatformID.Win32NT)
            {
                return @$"C:\GIT\LoonBestInSlot\AddonManager\LocalizationCreator\";
            }
            else
            {
                return @$"/media/windowsdisk/GIT/LoonBestInSlot/AddonManager/LocalizationCreator";
            }
        }
    }

    public static string CombinePath(string addonPath, string path)
    {
        addonPath = addonPath.TrimEnd('/').TrimEnd('\\').Replace('/', Path.DirectorySeparatorChar).Replace('\\', Path.DirectorySeparatorChar);
        path = path.TrimStart('/').TrimStart('\\').Replace('/', Path.DirectorySeparatorChar).Replace('\\', Path.DirectorySeparatorChar);
        return Path.Combine(addonPath, path);
    }
}