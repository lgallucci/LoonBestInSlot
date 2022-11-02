LBIS.PriorityList = {};

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
itemSlotOrder[LBIS.L["Ranged/Relic"]] = 15;

local function itemSortFunction(table, k1, k2)

    local item1Score = 0;
    local item2Score = 0;
    
    if itemSlotOrder[k1] < itemSlotOrder[k2] then
        item1Score = item1Score + 1000;
    end
    if itemSlotOrder[k1] > itemSlotOrder[k2] then
        item2Score = item2Score +  1000;
    end

    return item1Score > item2Score
end

local function createPriorityRow(f, slot, itemList)

    local t, eb = nil, nil;
    local window = LBIS.BrowserWindow.Window;
            
    t = f:CreateFontString(nil, nil, "GameFontNormal");
    t:SetText(slot..":");
    t:SetPoint("LEFT", f, "LEFT", 10, 0);
    local itemCount = 1;
    for orderId, itemId in pairs(itemList) do

        print("ItemId: "..itemId);

        LBIS:GetItemInfo(itemId, function(item)

            local b, t2 = nil;

            if item == nil or item.Id == nil or item.Link == nil or item.Type == nil then
                LBIS:Error("Failed Load: "..itemId);
                failedLoad = true;
            end

            b = CreateFrame("Button", nil, f);
            b:SetSize(32, 32);
            local bt = b:CreateTexture();
            bt:SetAllPoints();
            bt:SetTexture(item.Texture);
            b:SetPoint("TOPLEFT", f, 50 + (itemCount * 65), -5);
            LBIS:SetTooltipOnButton(b, item);

            t2 = f:CreateFontString(nil, nil, "GameFontNormal");
            t2:SetText(itemCount..": ");
            t2:SetPoint("RIGHT", b, "LEFT", -5, 0);

        end);
        itemCount = itemCount + 1;
    end

    eb = CreateFrame("Button", nil, f, "ItemButtonTemplate");
    eb:SetPoint("RIGHT", f, "RIGHT", -10, 0)
    eb:SetText("Edit");
    eb:SetNormalFontObject("GameFontNormalSmall");

    return 46;

end

function LBIS.PriorityList:UpdateItems()    

    LBIS.BrowserWindow.Window.SlotDropDown:Hide();
    LBIS.BrowserWindow.Window.PhaseDropDown:Hide();
    LBIS.BrowserWindow.Window.SourceDropDown:Hide();
    LBIS.BrowserWindow.Window.RaidDropDown:Hide();

    LBIS.BrowserWindow:UpdateItemsForSpec(function(point)

        for slot, itemList in LBIS:spairs(LBISSettings.PriorityList, itemSortFunction) do
            
            point = LBIS.BrowserWindow:CreateItemRow(slot, itemList, "Priority"..slot, point, createPriorityRow);

        end

    end);
end