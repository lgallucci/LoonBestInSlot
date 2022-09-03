LBIS.GemList = {};

local function IsInPhase(specGem)
    if LBISSettings.SelectedPhase == LBIS.L["All"] then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["PreRaid"] and specGem.Phase == "PreRaid" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 1"] and specGem.Phase == "Phase 1" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 2"] and specGem.Phase == "Phase 2" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 3"] and specGem.Phase == "Phase 3" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 4"] and specGem.Phase == "Phase 4" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 5"] and specGem.Phase == "Phase 5" then
        return true;
    end
    return false;
end

local function itemSortFunction(table, k1, k2)

    local item1 = table[k1];
    local item2 = table[k2];

    if item1.IsMeta == "True" then
        return true;
    else
        return item1.Phase > item2.Phase;
    end
end

local function createItemRow(f, specGem, specGemSource)
    
    LBIS:GetItemInfo(specGem.Id, function(item)
        local window = LBIS.BrowserWindow.Window;
        local b, b2, t, t2 = nil, nil, nil, nil;

        b = CreateFrame("Button", nil, f);
        b:SetSize(32, 32);
        local bt = b:CreateTexture();
        bt:SetAllPoints();
        bt:SetTexture(item.Texture);
        b:SetPoint("TOPLEFT", f, 2, -5);

        LBIS:SetTooltipOnButton(b, item);

        t = f:CreateFontString(nil, nil, "GameFontNormal");
        t:SetText((item.Link or item.Name):gsub("[%[%]]", ""));
        t:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);
        
        if tonumber(specGemSource.DesignId) > 0 and tonumber(specGemSource.DesignId) < 99999 then
            LBIS:GetItemInfo(specGemSource.DesignId, function(designItem)

                if designItem.Name == nil then
                    return;
                end

                b2 = CreateFrame("Button", nil, f);
                b2:SetSize(32, 32);
                local bt2 = b2:CreateTexture();
                bt2:SetAllPoints();
                bt2:SetTexture(designItem.Texture);                                        
                b2:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

                LBIS:SetTooltipOnButton(b2, designItem);
        
                t2 = f:CreateFontString(nil, nil, "GameFontNormal");
                t2:SetText((designItem.Link or designItem.Name):gsub("[%[%]]", ""));
                t2:SetPoint("TOPLEFT", b2, "TOPRIGHT", 2, -2);
            end); 
        end
    end);
end

function LBIS.GemList:UpdateItems()
    LBIS.BrowserWindow:UpdateItemsForSpec(function(point)

        local specGems = LBIS.SpecGems[LBIS.SpecToName[LBISSettings.SelectedSpec]];
        
        for gemId, specGem in LBIS:spairs(specGems, itemSortFunction) do
        
            local specGemSource = LBIS.GemSources[tonumber(specGem.Id)];
    
            if specGemSource == nil then
                LBIS:Error("Missing gem source: ", specGem);
            else
                if IsInPhase(specGem) then
                    point = LBIS.BrowserWindow:CreateItemRow(specGem, specGemSource, point, createItemRow)
                end
            end
        end
    end);
end

function LBIS.GemList:Open()
    
    --local window = LBIS.BrowserWindow.Window;
    
end