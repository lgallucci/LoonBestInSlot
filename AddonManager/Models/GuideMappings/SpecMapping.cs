using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings;
internal abstract class SpecMapping
{
    public abstract string UrlBase { get; }
    public abstract string Class { get; }
    public abstract string Spec { get; }

    public abstract string Phase0Url { get; }
    public abstract List<(string, GuideMapping)> Phase0 { get; }
    public abstract string CurrentPhaseUrl { get; }
    public abstract List<(string, GuideMapping)> CurrentPhase { get; }


    public List<ClassGuideMapping> ToList()
    {
        var list = new List<ClassGuideMapping>();

        list.Add(new ClassGuideMapping(UrlBase + Phase0Url, Spec, Class, "Phase0", Phase0));

        //list.Add(new ClassGuideMapping(UrlBase + Phase1Url, Spec, Class, "Phase1", Phase1));

        //list.Add(new ClassGuideMapping(UrlBase + CurrentPhaseUrl, Spec, Class, "Phase2", CurrentPhase));

        //list.Add(new ClassGuideMapping(UrlBase + CurrentPhaseUrl, Spec, Class, "Phase3", CurrentPhase));

        list.Add(new ClassGuideMapping(UrlBase + CurrentPhaseUrl, Spec, Class, "Phase4", CurrentPhase));

        //list.Add(new ClassGuideMapping(UrlBase + PrePatchUrl, Spec, Class, "PrePatch", PrePatch));

        return list;
    }
}
