﻿namespace AddonManager.Models;

public class ItemSource
{
    public int ItemId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string SourceType { get; set; } = string.Empty;
    public string Source { get; set; } = string.Empty;
    public string SourceNumber { get; set; } = string.Empty;
    public string SourceLocation { get; set; } = string.Empty;
    public string SourceFaction { get; set; } = "B";
}

public class GemSource
{
    public int GemId { get; set; }
    public int DesignId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Source { get; set; } = string.Empty;
    public string SourceLocation { get; set; } = string.Empty;
}

public class EnchantSource
{
    public int EnchantId { get; set; }
    public int DesignId { get; set; }
    public int ScrollId { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Source { get; set; } = string.Empty;
    public string SourceLocation { get; set; } = string.Empty;
    public string TextureId { get; set; } = string.Empty;
}

public class TierSource
{
    public int TierId { get; set; }
    public List<int> ItemIds { get; set; } = new List<int>();
}

