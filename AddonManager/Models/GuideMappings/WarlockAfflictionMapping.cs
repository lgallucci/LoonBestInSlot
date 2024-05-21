using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class WarlockAfflictionMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/cata/guide/classes/warlock/affliction/";
    public override string Class => "Warlock";
    public override string Spec => "Affliction";

    public override string Phase0Url => "dps-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h4") },
            { ("Main Hand", "h2#weapons~h4~h4") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string Phase3Url => "dps-bis-gear-pve-phase-3";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h2#weapons~h3") },
            { ("Main Hand", "h2#weapons~h3~h3") },
            { ("Off Hand", "#offhand") },
            { ("Ranged/Relic", "#wand") }
        };
        
    public override string PrePatchUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> PrePatch => new List<(string, GuideMapping)>
    {
        { ("Main Hand", "h2#weapons ~ h3 ~ h3") },
        { ("Off Hand", "#offhand") },
        { ("Two Hand", "h2#weapons ~ h3") },
        { ("Ranged/Relic", "#wand") },
    };
}