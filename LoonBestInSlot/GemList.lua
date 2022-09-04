LBIS.GemList = {};

--TODO: Hide Dropdowns not relevant to Gems
--TODO: Show item sources for gems


local function itemSortFunction(table, k1, k2)

    local item1 = table[k1];
    local item2 = table[k2];

    local item1Score = 0;
    local item2Score = 0;

    if item1.IsMeta == "True" then
        item1Score = item1Score + 100;
    end
    if item2.IsMeta == "True" then
        item2Score = item2Score + 100;
    end

    item1Score = item1Score + tonumber(item1.Quality);
    item2Score = item2Score + tonumber(item2.Quality);

    if item1Score == item2Score then
        return item1.Id > item2.Id;
    else
        return item1Score > item2Score
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
                point = LBIS.BrowserWindow:CreateItemRow(specGem, specGemSource, point, createItemRow)
            end
        end
    end);
end

function LBIS.GemList:Open()
    
    --local window = LBIS.BrowserWindow.Window;
    
end