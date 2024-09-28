namespace AddonManager.Models.GuideMappings;

internal class PaladinDpsMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/paladin/";
    public override string Class => "Paladin";
    public override string Spec => "Dps";

    public override string Phase0Url => "";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
        };

    public override string CurrentUrl => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Two Hand", "h5#weapons-for-seal-twisting") },
            { ("Two Hand", "h5#weapons-for-exodin") },
            { ("Ranged/Relic", "h5#damage-librams") },
            { ("Ranged/Relic", "h5#mana-librams") },
        };
}

