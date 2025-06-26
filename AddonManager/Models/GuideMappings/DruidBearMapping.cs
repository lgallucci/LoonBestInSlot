using AddonManager.Models;

namespace AddonManager.Models.GuideMappings;

internal class DruidBearMapping : SpecMapping
{
    public override string UrlBase => "druid/feral/";
    public override string Class => "Druid";
    public override string Spec => "Bear";

    public override string Phase0Url => "tank-bis-gear-pre-raid";
    public override List<(string, GuideMapping)> Phase0 => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#defensive-trinkets-for-feral-druid-tank") },
            { ("Trinket", "#offensive-trinkets-for-feral-druid-tank") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-tank") },
            { ("Ranged/Relic", "#relics-for-feral-druid-tank") }
        };

    public override string CurrentPhaseUrl => "tank-bis-gear-pve";
    public override List<(string, GuideMapping)> CurrentPhase => new List<(string, GuideMapping)>
        {
            { ("Head", "#head-for-feral-druid-tank") },
            { ("Shoulder", "#shoulders-for-feral-druid-tank") },
            { ("Back", "#back-for-feral-druid-tank") },
            { ("Chest", "#chest-for-feral-druid-tank") },
            { ("Wrist", "#wrist-for-feral-druid-tank") },
            { ("Hands", "#hands-for-feral-druid-tank") },
            { ("Waist", "#waist-for-feral-druid-tank") },
            { ("Legs", "#legs-for-feral-druid-tank") },
            { ("Feet", "#feet-for-feral-druid-tank") },
            { ("Neck", "#neck-for-feral-druid-tank") },
            { ("Ring", "#rings-for-feral-druid-tank") },
            { ("Trinket", "#defensive-trinkets-for-feral-druid-tank") },
            { ("Trinket", "#offensive-trinkets-for-feral-druid-tank") },
            { ("Two Hand", "#two-handed-weapons-for-feral-druid-tank") },
            { ("Ranged/Relic", "#relics-for-feral-druid-tank") }
        };
}