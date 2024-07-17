local function LoadData()
    local spec1 = LBIS:RegisterSpec(LBIS.L["Warrior"], LBIS.L["Protection"], "1")
end
if C_Seasons and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason() ~= Enum.SeasonID.SeasonOfDiscovery then
    LoadData();
end
