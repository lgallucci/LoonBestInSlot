namespace AddonManager.Models.GuideMappings.SOD;

internal class SODPaladinDpsMapping : SODSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/paladin/";
    public override string Class => "Paladin";
    public override string Spec => "DPS";

    public override string PreRaidUrl => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapons-twisting-stacking") },
            { ("Two Hand", "#weapons-exodin") },
            { ("Ranged/Relic", "#libram") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Trinket", "#active-trinkets-twisting-stacking-wrath-like") },
            { ("Trinket", "#passive-trinkets-twisting-stacking-wrath-like") },
            { ("Trinket", "#active-trinkets-exodin") },
            { ("Trinket", "#passive-trinkets-exodin") },
            { ("Two Hand", "h3#weapons-stacking-wrath-like") },
            { ("Two Hand", "h3#weapons-twisting") },
            { ("Two Hand", "h3#weapons-exodin") },
            { ("Ranged/Relic", "#libram") },
        };
}

