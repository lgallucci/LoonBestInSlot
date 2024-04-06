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

    public override string Phase1Url => "dps-bis-gear-pve-phase-1";
    public override List<(string, GuideMapping)> Phase1 => new List<(string, GuideMapping)>
        {
            { ("Feet", "#boots")},
            { ("Two Hand", "h3#weapon") },
            { ("Ranged/Relic", "h3#libram") },
        };

    public override string Phase2Url => "dps-bis-gear-pve-phase-2";
    public override List<(string, GuideMapping)> Phase2 => new List<(string, GuideMapping)>
        {
            { ("Feet", "#boots")},
            { ("Two Hand", "h3#weapon-divine-storm-dwarf") },
            { ("Two Hand", "h3#weapon-divine-storm-human") },
            { ("Two Hand", "h3#weapon-martyrdom") },
            { ("Ranged/Relic", "h3#libram") },
        };

    public override string Phase3Url => "dps-bis-gear-pve";
    public override List<(string, GuideMapping)> Phase3 => new List<(string, GuideMapping)>
        {
            { ("Feet", "#boots")},
            { ("Two Hand", "h3#weapon-divine-storm-dwarf") },
            { ("Two Hand", "h3#weapon-divine-storm-human") },
            { ("Two Hand", "h3#weapon-martyrdom") },
            { ("Ranged/Relic", "h3#libram") },
        };

    public override string Phase4Url => "dps-bis-gear-pve-phase-4";
    public override List<(string, GuideMapping)> Phase4 => new List<(string, GuideMapping)>
        {
        };

    public override string Phase5Url => "dps-bis-gear-pve-phase-5";
    public override List<(string, GuideMapping)> Phase5 => new List<(string, GuideMapping)>
        {
        };
}

