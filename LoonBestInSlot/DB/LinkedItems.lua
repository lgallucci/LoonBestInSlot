LBIS.LinkedItems = {
    {96179, 96924}, -- Example: Greatsword of Frozen Hells (Normal -> Thunderforged)
    {95568, 96313}, -- Example: Ji-Kun's Rising Winds (Normal -> Thunderforged)
    {95713, 96458}, -- Example: Tortos' Shell-Cracker (Normal -> Thunderforged)
}

LBIS.LinkedItemLookup = {}
for _, pair in ipairs(LBIS.LinkedItems) do
    local baseID = pair[1]
    local tfID = pair[2]
    
    -- Map BOTH IDs to the exact same pair array
    LBIS.LinkedItemLookup[baseID] = pair
    LBIS.LinkedItemLookup[tfID] = pair
end