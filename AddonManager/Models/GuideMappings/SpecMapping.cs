﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal abstract class SpecMapping
{
    public int CurrentPhaseNumber { get; } = 4;
    public string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/";
    public abstract string Class { get; }
    public abstract string Spec { get; }

    public abstract string Phase1Url { get; }
    public abstract List<(string, GuideMapping)> Phase1 { get; }
    public abstract string Phase2Url { get; }
    public abstract List<(string, GuideMapping)> Phase2 { get; }
    public abstract string Phase3Url { get; }
    public abstract List<(string, GuideMapping)> Phase3 { get; }
    public abstract string Phase4Url { get; }
    public abstract List<(string, GuideMapping)> Phase4 { get; }
    public abstract string Phase5Url { get; }
    public abstract List<(string, GuideMapping)> Phase5 { get; }

    public string CurrentUrl { 
        get {
            switch(CurrentPhaseNumber)
            {
                case 1:
                    return Phase1Url;
                case 2:
                    return Phase2Url;
                case 3:
                    return Phase3Url;
                case 4:
                    return Phase4Url;
                case 5:
                    return Phase5Url;
                default:
                    throw new Exception("Invalid Phase !");
            }
        } 
    }
    public List<(string, GuideMapping)> CurrentPhase { 
        get {
            switch(CurrentPhaseNumber)
            {
                case 1:
                    return Phase1;
                case 2:
                    return Phase2;
                case 3:
                    return Phase3;
                case 4:
                    return Phase4;
                case 5:
                    return Phase5;
                default:
                    throw new Exception("Invalid Phase !");
            }
        }
    }

    public List<ClassGuideMapping> ToList()
    {
        var list = new List<ClassGuideMapping>
        {
            new ClassGuideMapping(UrlBase + CurrentUrl, Spec, Class, "CurrentPhase", CurrentPhaseNumber, CurrentPhase)
        };

        return list;
    }
}