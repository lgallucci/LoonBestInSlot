namespace AddonManager.Models.GuideMappings;

internal class WarriorDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/warrior/";
    public override string Class => "Warrior";
    public override string Spec => "Dps";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#dual-wield") },
            { ("Two Hand", "h3#two-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#dual-wield") },
            { ("Two Hand", "h3#two-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string Phase3Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#dual-wield") },
            { ("Two Hand", "h3#two-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string Phase4Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "#dual-wield") },
            { ("Two Hand", "h3#two-hand") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
        };
}
