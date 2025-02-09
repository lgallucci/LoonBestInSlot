namespace AddonManager.Models.GuideMappings.SOD;

internal class SODPaladinDpsMapping : SODSpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/paladin/";
    public override string Class => "Paladin";
    public override string Spec => "Dps";

    public override string PreRaidUrl => "dps-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "#weapon-seal-twisting") },
            { ("Two Hand", "#weapon-exodin") },
            { ("Ranged/Relic", "#libram") },
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Trinket", "#trinkets-for-seal-twisting-stacking") },
            { ("Trinket", "#trinkets-for-exodin") },
            { ("Two Hand", "h3#weapons-stacking") },
            { ("Two Hand", "h3#weapons-twisting") },
            { ("Two Hand", "h3#weapons-exodin") },
            { ("Ranged/Relic", "#libram") },
        };
}

