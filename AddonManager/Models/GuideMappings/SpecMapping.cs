﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings;
internal abstract class SpecMapping
{
    public string UrlBase => "https://www.wowhead.com/mop-classic/guide/classes/" + Class.Replace(" ", "-").ToLower() + "/" + SpecUrl.Replace(" ", "-").ToLower() + "/";
    public abstract string Class { get; }
    public abstract string Spec { get; }
    public virtual string SpecUrl => Spec.ToLower();

    public abstract string PreRaidUrl { get; }
    public abstract string Phase1Url { get; }
    public abstract string Phase2Url { get; }
    public abstract string Phase3Url { get; }
    public abstract string Phase4Url { get; }
    public abstract string Phase5Url { get; }

    public List<ClassGuideMapping> ToList()
    {
        var list = new List<ClassGuideMapping>
        {
            new ClassGuideMapping(UrlBase + PreRaidUrl, Spec, Class, 0),
            new ClassGuideMapping(UrlBase + Phase1Url, Spec, Class, 1),
            new ClassGuideMapping(UrlBase + Phase2Url, Spec, Class, 2),
            new ClassGuideMapping(UrlBase + Phase3Url, Spec, Class, 3),
            new ClassGuideMapping(UrlBase + Phase4Url, Spec, Class, 4),
            new ClassGuideMapping(UrlBase + Phase5Url, Spec, Class, 5)
        };

        return list;
    }
}