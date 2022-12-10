LBIS.CustomList = {};
LBIS.CustomList.Items = {};

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

local function assignItemsToFrame(f, itemList)

    local itemCount = 1;

    for orderId, itemId in pairs(itemList) do

        LBIS:GetItemInfo(itemId, function(item)

            if item == nil or item.Id == nil or item.Link == nil or item.Type == nil then
                LBIS:Error("Failed Load: "..itemId);
                failedLoad = true;
            end

            f.CustomButtons[itemCount].ItemButton:SetNormalTexture(item.Texture);
            LBIS:SetTooltipOnButton(f.CustomButtons[itemCount].ItemButton, item);
                        
        end);

        f.CustomButtons[itemCount]:ShowButtons();

        if LBIS.CustomList.Items[itemId] == nil then
            LBIS.CustomList.Items[itemId] = {};
        end

        LBIS.CustomList.Items[itemId][LBIS.SpecToName[LBISSettings.SelectedSpec]] = itemCount;
        
        itemCount = itemCount + 1;
    end

    for i = itemCount,6 do     
        f.CustomButtons[i]:HideButtons();
    end
end

local function createCustomRow(f, slot, itemList)

    local t, eb = nil, nil;
            
    t = f:CreateFontString(nil, nil, "GameFontNormal");
    t:SetText(slot..":");
    t:SetPoint("LEFT", f, "LEFT", 10, 0);
        
    f.CustomButtons = {};

    for i=1,6 do

        local b, t2 = nil, nil;
        b = CreateFrame("Button", nil, f);
        b:SetSize(32, 32);
        b:SetPoint("TOPLEFT", f, 50 + (i * 85), -5);
        b:Hide();
        
        t2 = f:CreateFontString(nil, nil, "GameFontNormal");
        t2:SetText(i..": ");
        t2:SetPoint("RIGHT", b, "LEFT", -5, 0);
        t2:Hide();

        f.CustomButtons[i] = { ItemButton = b, 
        ShowButtons = function() 
            b:Show();t2:Show();
        end,
        HideButtons = function()
            b:Hide();t2:Hide();
        end}
    end

    eb = CreateFrame("Button", nil, f);
    eb:SetPoint("RIGHT", f, "RIGHT", -10, 0)
    eb:SetSize(32, 32);
    eb:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\edit.tga");
    eb:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\edit_down.tga")
    eb:SetScript("OnClick", 
        function(self, button)
            if button == "LeftButton" then                
                LBIS.SearchFrame:ShowSearchFrame(slot, itemList);
            end
        end
    );

    assignItemsToFrame(f, itemList);

    return 46;
end

local defaultCustomList = {
	[LBIS.L["Head"]] = {},
	[LBIS.L["Shoulder"]] = {},
	[LBIS.L["Back"]] = {},
	[LBIS.L["Chest"]] = {},
	[LBIS.L["Wrist"]] = {},
	[LBIS.L["Hands"]] = {},
	[LBIS.L["Waist"]] = {},
	[LBIS.L["Legs"]] = {},
	[LBIS.L["Feet"]] = {},
	[LBIS.L["Neck"]] = {},
	[LBIS.L["Ring"]] = {},
	[LBIS.L["Trinket"]] = {},
	[LBIS.L["Main Hand"]] = {},
	[LBIS.L["Off Hand"]] = {},
	[LBIS.L["Two Hand"]] = {},
	[LBIS.L["Ranged/Relic"]] = {}
};
function LBIS.CustomList:UpdateItems()

    LBIS.BrowserWindow.Window.SlotDropDown:Hide();
    LBIS.BrowserWindow.Window.PhaseDropDown:Hide();
    LBIS.BrowserWindow.Window.SourceDropDown:Hide();
    LBIS.BrowserWindow.Window.RaidDropDown:Hide();

    LBIS.BrowserWindow:UpdateItemsForSpec(function(point)        

        local selectedSpec = LBIS.SpecToName[LBISSettings.SelectedSpec];

        if selectedSpec == nil then
            return;
        end

        local savedCustomList = LBISCustomSettings[selectedSpec];

        if savedCustomList == nil then
            LBISCustomSettings[selectedSpec] = defaultCustomList;
            savedCustomList = defaultCustomList;
        end

        for slot, itemList in LBIS:spairs(savedCustomList, itemSortFunction) do
            
            point = LBIS.BrowserWindow:CreateItemRow(slot, itemList, "Custom"..LBISSettings.SelectedSpec..slot, point, createCustomRow);

        end

    end);
end