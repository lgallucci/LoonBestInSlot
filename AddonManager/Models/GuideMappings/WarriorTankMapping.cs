
namespace AddonManager.Models.GuideMappings;

internal class WarriorTankMapping : SpecMapping
{
    public override string UrlBase => "https://www.wowhead.com/classic/guide/season-of-discovery/classes/warrior/";
    public override string Class => "Warrior";
    public override string Spec => "Tank";

    public override string Phase0Url => "tank-pre-raid-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "h3#ranged") },
        };

    public override string CurrentUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Main Hand", "h3#main-hand") },
            { ("Off Hand", "#shields") },
            { ("Ranged/Relic", "h3#ranged") },
        };
}
