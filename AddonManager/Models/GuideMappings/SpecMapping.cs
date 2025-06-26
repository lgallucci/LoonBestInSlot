﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings;
internal abstract class SpecMapping
{
    public int CurrentPhaseNumber { get; } = 0;
    public string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/" + Class.ToLower() + "/" + Spec.ToLower() + "/";
    public abstract string Class { get; }
    public abstract string Spec { get; }

    public abstract string CurrentPhaseUrl { get; }
    public abstract List<(string, GuideMapping)> CurrentPhase { get; }

    public List<ClassGuideMapping> ToList()
    {
        var list = new List<ClassGuideMapping>
        {
            new ClassGuideMapping(UrlBase + CurrentPhaseUrl, Spec, Class, CurrentPhaseNumber, CurrentPhase)
        };

        return list;
    }
}