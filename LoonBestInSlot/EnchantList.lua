LBIS.EnchantList = {};

local itemSlotOrder = {}
itemSlotOrder[LBIS.L["Head"]] = 0;
itemSlotOrder[LBIS.L["Shoulder"]] = 1;
itemSlotOrder[LBIS.L["Back"]] = 2;
itemSlotOrder[LBIS.L["Chest"]] = 3;
itemSlotOrder[LBIS.L["Wrist"]] = 4;
itemSlotOrder[LBIS.L["Hands"]] = 5;
itemSlotOrder[LBIS.L["Waist"]] = 6;
itemSlotOrder[LBIS.L["Legs"]] = 7;
itemSlotOrder[LBIS.L["Feet"]] = 8;
itemSlotOrder[LBIS.L["Neck"]] = 9;
itemSlotOrder[LBIS.L["Ring"]] = 10;
itemSlotOrder[LBIS.L["Trinket"]] = 11;
itemSlotOrder[LBIS.L["Main Hand"]] = 12;
itemSlotOrder[LBIS.L["Off Hand"]] = 13;
itemSlotOrder[LBIS.L["Two Hand"]] = 14;
itemSlotOrder[LBIS.L["Shield"]] = 15;
itemSlotOrder[LBIS.L["Ranged"]] = 16;
itemSlotOrder[LBIS.L["Wand"]] = 17;
itemSlotOrder[LBIS.L["Totem"]] = 18;
itemSlotOrder[LBIS.L["Idol"]] = 19;
itemSlotOrder[LBIS.L["Libram"]] = 20;

local function itemSortFunction(table, k1, k2)

    local item1 = table[k1];
    local item2 = table[k2];

    local item1Score = 0;
    local item2Score = 0;
    
    if itemSlotOrder[item1.Slot] < itemSlotOrder[item2.Slot] then
        item1Score = item1Score + 1000;
    end
    if itemSlotOrder[item1.Slot] > itemSlotOrder[item2.Slot] then
        item2Score = item2Score +  1000;
    end

    local _, lastNumber1 = LBIS:GetPhaseNumbers(item1.Phase)
    local _, lastNumber2 = LBIS:GetPhaseNumbers(item2.Phase)

    item1Score = item1Score + lastNumber1;
    item2Score = item2Score + lastNumber2;

    if item1Score == item2Score then
        return item1.Id > item2.Id;
    else
        return item1Score > item2Score
    end
end

local function IsInSlot(specItem)
    if LBISSettings.SelectedSlot == LBIS.L["All"] then
        return true;
    elseif LBISSettings.SelectedSlot == specItem.Slot then
        return true;
    end
    return false;
end

local function createItemRow(f, specEnchant, specEnchantSource)

    local function createItemRowInternal(f, item, specEnchant, specEnchantSource)
        local window = LBIS.BrowserWindow.Window;
        local b, t, dl = nil, nil, nil;

        b = CreateFrame("Button", nil, f);
        b:SetSize(32, 32);
        local bt = b:CreateTexture();
        bt:SetAllPoints();
        bt:SetTexture(item.Texture);
        b:SetPoint("TOPLEFT", f, 2, -5);

        LBIS:SetTooltipOnButton(b, item, specEnchantSource.IsSpell == "true");

        t = f:CreateFontString(nil, nil, "GameFontNormal");
        t:SetText((item.Link or item.Name):gsub("[%[%]]", ""));
        t:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);

        local st = f:CreateFontString(nil, nil,"GameFontNormalGraySmall");
        st:SetText(specEnchant.Slot);
        st:SetPoint("BOTTOMLEFT", b, "BOTTOMRIGHT", 2, 2);
        
        d = f:CreateFontString(nil, nil, "GameFontNormal");
        d:SetText(specEnchantSource.Source);
        d:SetJustifyH("LEFT");
        d:SetWidth(window.ScrollFrame:GetWidth() / 2);
        d:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

        dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");
        dl:SetText(specEnchantSource.SourceLocation);
        dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
    end

    if specEnchantSource.IsSpell == "true" then
        LBIS:GetSpellInfo(specEnchant.Id, function(item)
            createItemRowInternal(f, item, specEnchant, specEnchantSource);
        end);
    else    
        LBIS:GetItemInfo(specEnchant.Id, function(item)
            createItemRowInternal(f, item, specEnchant, specEnchantSource);
        end);
    end
end
    
function LBIS.EnchantList:UpdateItems()    
    LBIS.BrowserWindow:UpdateItemsForSpec(function(point)

        local specEnchants = LBIS.SpecEnchants[LBIS.SpecToName[LBISSettings.SelectedSpec]];
        
        for enchantId, specEnchant in LBIS:spairs(specEnchants, itemSortFunction) do
        
            local specEnchantSource = LBIS.EnchantSources[tonumber(specEnchant.Id)];
    
            if specEnchantSource == nil then
                LBIS:Error("Missing Enchant source: ", specEnchant);
            else
                if IsInSlot(specEnchant) then
                    point = LBIS.BrowserWindow:CreateItemRow(specEnchant, specEnchantSource, point, createItemRow)
                end
            end
        end
    end);
end

function LBIS.EnchantList:Open()
    
    --local window = LBIS.BrowserWindow.Window;

    
end