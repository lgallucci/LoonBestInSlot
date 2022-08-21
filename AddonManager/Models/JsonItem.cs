using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AddonManager.Models;
public class JsonItem
{
    public int ItemId { get; set; }
    public string Name { get; set; }
    public string Zone { get; set; }
    public string ItemQuality { get; set; }
    public string ItemSlot { get; set; }
    public string ItemType { get; set; }
    public string DropChance { get; set; }
    public string AcquisitionName { get; set; }
    public string ItemLink { get; set; }
    public string AcquisitionLink { get; set; }
    public string Id { get; set; }
    public string Classes { get; set; }
    public string PrimaryClasses { get; set; }
    public string SecondaryClasses { get; set; }
    public string TertiaryClasses { get; set; }
    public string ClassRoles { get; set; }
    public string Acquisitions { get; set; }
}
