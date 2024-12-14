using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models.GuideMappings.Classic;
internal abstract class ClassicSpecMapping
{
    public string GuideFolder = "ERA";
    public int CurrentPhaseNumber { get; } = 1;
    public abstract string UrlBase { get; }
    public abstract string Class { get; }
    public abstract string Spec { get; }

    public abstract string PreRaidUrl { get; }
    public abstract List<(string, GuideMapping)> Phase0 { get; }
    public abstract string CurrentUrl { get; }
    public abstract List<(string, GuideMapping)> CurrentPhase { get; }

    public List<ClassGuideMapping> ToList()
    {
        var list = new List<ClassGuideMapping>
        {
            new ClassGuideMapping(UrlBase + PreRaidUrl, Spec, Class, GuideFolder, "PreRaid", 0, Phase0),
            new ClassGuideMapping(UrlBase + CurrentUrl, Spec, Class, GuideFolder, "CurrentPhase", CurrentPhaseNumber, CurrentPhase)
        };

        return list;
    }
}