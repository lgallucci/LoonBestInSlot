LBIS.SearchFrame = {}
LBIS.SearchFrame.Slot = "";
LBIS.SearchFrame.ItemList = {};

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        -- We grab the first index of our sub-table instead
        if value[1] == val then
            return true
        end
    end

    return false
end

local function selectButton(buttonIndex)
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    assert(buttonIndex == nil or buttonIndex >= 1 and buttonIndex <= ac.buttonCount,
           'Button index is out of bounds')

    local previousButton = ac.buttons[ac.selectedButtonIndex]
    local selectedButton = ac.buttons[buttonIndex]

    if previousButton ~= nil then
        previousButton:UnlockHighlight()

        -- if GameTooltip:GetOwner() == previousButton then
        --     GameTooltip:Hide()
        -- end
    end

    if selectedButton ~= nil then
      selectedButton:LockHighlight()
      selectedButton:ShowTooltip()
    end

    ac.selectedButtonIndex = buttonIndex
end

local function isEmpty()
    return LBIS.SearchFrame.Frame.AutoCompleteMenu.buttonCount == 0
end

local function clearAll()
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    if isEmpty() then
      return
    end

    selectButton(nil)

    for i = 1, ac.buttonCount do
        ac.buttons[i]:Hide()
    end

    ac.buttonCount = 0
    ac:SetHeight(ac.baseHeight);
end

local function conductSearch(text, foundFunc)
    local function slotMatches(slot)
        if slot == "Main Hand" or slot == "Off Hand" then
            return "One Hand";
        end
        return slot
    end

    local foundItems = {};
    for itemId, entry in pairs(LBIS.ItemSources) do
        if entry.Name:lower():match(string.gsub(text, " ", '.*'):lower()) then
            LBIS:GetItemInfo(itemId, function (item)
                if item and slotMatches(LBIS.SearchFrame.Slot) == item.Slot then
                    table.insert(foundItems, item)
                end
            end);
        end
    end
    foundFunc(foundItems);
end

local function showCustomList()
        
    local itemCount = 0;
    local totalItems = getn(LBIS.SearchFrame.ItemList);
    local f = LBIS.SearchFrame.Frame.ItemListFrame;
    LBIS.SearchFrame.Frame.SearchLabel:SetText("Search for items to add to "..LBIS.SearchFrame.Slot.." list:");

    for orderId, itemId in pairs(LBIS.SearchFrame.ItemList) do
        
        itemCount = itemCount + 1;

        LBIS:GetItemInfo(itemId, function(item)
            f.CustomButtons[itemCount].ItemButton:SetNormalTexture(item.Texture);
            LBIS:SetTooltipOnButton(f.CustomButtons[itemCount].ItemButton, item);

            f.CustomButtons[itemCount].ItemLink:SetText((item.Link or item.Name):gsub("[%[%]]", ""));

            local type = item.Type;
            if item.Subtype and item.Type ~= item.Subtype then
                type = item.Type .. ", " .. item.Subtype;
            end
            type = type.. ", "..LBIS.SearchFrame.Slot;
            f.CustomButtons[itemCount].ItemType:SetText(type);

            f.CustomButtons[itemCount].UpButton.CustomIndex = itemCount;
            f.CustomButtons[itemCount].UpButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then
                    local swap = LBIS.SearchFrame.ItemList[self.CustomIndex]
                    LBIS.SearchFrame.ItemList[self.CustomIndex] = LBIS.SearchFrame.ItemList[self.CustomIndex-1]
                    LBIS.SearchFrame.ItemList[self.CustomIndex-1] = swap;
                    showCustomList();
                end
            end);
            f.CustomButtons[itemCount].DownButton.CustomIndex = itemCount;
            f.CustomButtons[itemCount].DownButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then  
                    local swap = LBIS.SearchFrame.ItemList[self.CustomIndex]
                    LBIS.SearchFrame.ItemList[self.CustomIndex] = LBIS.SearchFrame.ItemList[self.CustomIndex+1]
                    LBIS.SearchFrame.ItemList[self.CustomIndex+1] = swap;
                    showCustomList();
                end
            end);
            f.CustomButtons[itemCount].DeleteButton.CustomIndex = itemCount;
            f.CustomButtons[itemCount].DeleteButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then
                    table.remove(LBIS.SearchFrame.ItemList, self.CustomIndex);
                    showCustomList();
                end
            end);

            if itemCount == 1 then
                f.CustomButtons[itemCount].UpButton:Disable();
            else                
                f.CustomButtons[itemCount].UpButton:Enable();
            end

            if itemCount == totalItems then
                f.CustomButtons[itemCount].DownButton:Disable();
            else                
                f.CustomButtons[itemCount].DownButton:Enable();
            end

        end);

        f.CustomButtons[itemCount]:ShowButtons();
    end

    for i = itemCount+1,6 do
        f.CustomButtons[i]:HideButtons();
    end

    if totalItems >= 6 then
        LBIS.SearchFrame.Frame.SearchBox:Disable();
        LBIS.SearchFrame.Frame.SearchLabel:SetFontObject("GameFontDisable");
        LBIS.SearchFrame.Frame.AutoCompleteMenu:Hide();
    else
        LBIS.SearchFrame.Frame.SearchBox:Enable();
        LBIS.SearchFrame.Frame.SearchLabel:SetFontObject("GameFontNormal");
        LBIS.SearchFrame.Frame.AutoCompleteMenu:Show();
    end

end

local function createButton()
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    local button = CreateFrame('Button', nil, ac)

    button:SetSize(50, 14);
    button:SetNormalFontObject("GameFontNormal");
    button:SetHighlightFontObject("GameFontHighlight");
    button:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestLogTitleHighlight");

    if ac.buttonCount == 1 then
        button:SetPoint('TOPLEFT', 0, -10)
        button:SetPoint('TOPRIGHT', 0, -10)
    else
        local previousButton = ac.buttons[ac.buttonCount - 1]

        button:SetPoint('TOPLEFT', previousButton, 'BOTTOMLEFT')
        button:SetPoint('TOPRIGHT', previousButton, 'BOTTOMRIGHT')
    end

    LBIS:SetTooltipOnButton(button, { Id = -1, Link = ""});

    button:SetScript("OnClick", function(self)

        local found = false;
        for _, item in pairs(LBIS.SearchFrame.ItemList) do
            if item == self.ItemId then
                found = true;
            end
        end
        if not found then
            table.insert(LBIS.SearchFrame.ItemList, self.ItemId);
            showCustomList();
        end
    end);

    return button
end

local function addButton(item)
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    
    ac.buttonCount = ac.buttonCount + 1

    if ac.buttons[ac.buttonCount] == nil then
      -- Create a new button frame if one does not exist
        ac.buttons[ac.buttonCount] = createButton()
    end
    
    local button = ac.buttons[ac.buttonCount]
    LBIS:UpdateTooltipOnButton(button, item)
    button:SetText(item.Link)
    button:Show();

    ac:SetHeight(ac.baseHeight + button:GetHeight() * ac.buttonCount)
    ac:SetWidth(595)
end

local debounceTimer = nil;
local function HandleTextChanged(editBox, isUserInput)

    if not isUserInput then
        return
    end

    --[[
      -- If it's potentially a secure command, abort to avoid runtime taint
      if string.byte(editBox:GetText() or '') == string.byte('/') then
        self.buttonMenu:Hide()
        return
      end
    
      local searchTerm = self:_GetEditBoxSearchTerm(editBox)
    
      if util.IsNilOrEmpty(searchTerm) then
        -- Save the cursor position for when the search was initiated
        self.initialCursorOffsetX = searchTerm == '' and self.editBoxCursorOffsets[editBox] or nil
        self.buttonMenu:Hide()
        return
      end
      
      self.activeCompletionSource:QueryAsync(searchTerm, function(entries)
        self:_OnQueryComplete(editBox, entries, {
          searchTerm = searchTerm,
          cursorOffsetX = self.initialCursorOffsetX or self.editBoxCursorOffsets[editBox],
        })
      end)]]

    if debounceTimer ~= nil then
        debounceTimer:Cancel();
    end
    debounceTimer = C_Timer.NewTimer(0.5, function() 
        clearAll();
        local text = strtrim(editBox:GetText());
        if (#text > 3) then
            conductSearch(text, function (searchedItems) 
                for _, item in pairs(searchedItems) do
                    addButton(item);
                end
            end)
        end
    end)
      
end

local function createCustomList(f)

    local itemf = CreateFrame('Frame', nil, f, 'BackdropTemplate')

    itemf:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = 1,
            tileSize = 10,
            edgeSize = 10,
            insets = { left = 3, right = 3, top = 3, bottom = 3 },
          });

    itemf:SetBackdropBorderColor(1, 1, 1)
    itemf:SetBackdropColor(0.09, 0.09,  0.19);
    itemf:SetPoint('TOP', f, 'CENTER', 0, 75);
    itemf:SetSize(700, 300);
    itemf.CustomButtons = {};

    for i=1,6 do

        local b, bUp, bDown, bDelete, il, it, t2 = nil, nil, nil, nil, nil, nil, nil;
        b = CreateFrame("Button", nil, itemf);
        b:SetSize(32, 32);
        b:SetPoint("TOPLEFT", itemf, (math.floor((i-1) / 3) * 350) + 25, (math.fmod(i-1, 3) * -50) - 10);
        b:Hide();        

        il = itemf:CreateFontString(nil, nil, "GameFontNormal");
        il:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);
        il:Hide();

        it = itemf:CreateFontString(nil, nil,"GameFontNormalGraySmall");
        it:SetPoint("BOTTOMLEFT", b, "BOTTOMRIGHT", 2, 2);
        il:Hide();

        bDelete = CreateFrame("Button", nil, itemf);
        bDelete:SetSize(24, 24);
        bDelete:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\delete.tga");
        bDelete:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\delete_down.tga")
        bDelete:SetPoint("TOPLEFT", (math.floor((i+2) / 3) * 350) - 30, (math.fmod(i-1, 3) * -50) - 15);
        bDelete:Hide();

        bDown = CreateFrame("Button", nil, itemf);
        bDown:SetSize(24, 24);
        bDown:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown.tga");
        bDown:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown_down.tga")
        bDown:SetDisabledTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown_dis.tga");
        bDown:SetPoint("TOPRIGHT", bDelete, "TOPLEFT", -2, 0);
        bDown:Hide();

        bUp = CreateFrame("Button", nil, itemf);
        bUp:SetSize(24, 24);
        bUp:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup.tga");
        bUp:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup_down.tga");
        bUp:SetDisabledTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup_dis.tga");
        bUp:SetPoint("TOPRIGHT", bDown, "TOPLEFT", -2, 0);
        bUp:Hide();
        
        t2 = itemf:CreateFontString(nil, nil, "GameFontNormal");
        t2:SetText(i..": ");
        t2:SetPoint("RIGHT", b, "LEFT", -5, 0);
        t2:Hide();

        itemf.CustomButtons[i] = { 
            ItemButton = b, ItemLink = il, ItemType = it, 
            UpButton = bUp, DownButton = bDown, DeleteButton = bDelete,
            ShowButtons = function() 
                b:Show();il:Show();it:Show();bUp:Show();bDown:Show();bDelete:Show();t2:Show();
            end,
            HideButtons = function()
                b:Hide();il:Hide();it:Hide();bUp:Hide();bDown:Hide();bDelete:Hide();t2:Hide();
            end
        }
    end

    return itemf;
end

local onCloseFunc = function() end
function LBIS.SearchFrame:HideSearchFrame()
    LBIS.BrowserWindow.Window.ScrollBar:Enable();
    LBIS.BrowserWindow.Window.Container:Show();
    onCloseFunc();
    LBIS.SearchFrame.Frame:Hide();
end

function LBIS.SearchFrame:ShowSearchFrame(slot, itemList, onClose)
    LBIS.BrowserWindow.Window.ScrollBar:Disable();
    LBIS.BrowserWindow.Window.Container:Hide();
    LBIS.SearchFrame.ItemList = itemList;
    LBIS.SearchFrame.Slot = slot;
    LBIS.SearchFrame.Frame.SearchBox:SetText("");
    clearAll();
    showCustomList();
    onCloseFunc = onClose;
    LBIS.SearchFrame.Frame:Show();
end

function LBIS.SearchFrame:CreateSearch()

    local scrollframe = LBIS.BrowserWindow.Window.ScrollFrame;

    local f = CreateFrame("Frame", nil, scrollframe, "BackdropTemplate");
    f:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
        tile = true
    })
    f:SetBackdropColor(.1, .1, .1, 1);
    f:SetSize(scrollframe:GetWidth(), scrollframe:GetHeight());
    f:ClearAllPoints();
    f:SetPoint("TOPLEFT", scrollframe, 0, 0);
    f:SetFrameStrata("DIALOG");
    f:Hide();

    local eb = CreateFrame("EditBox", nil, f, "InputBoxTemplate");
    eb:SetPoint("TOP", f, "TOP", 0, -20)
    eb:SetWidth(600);
    eb:SetHeight(25);
    eb:SetMovable(false);
    eb:SetAutoFocus(true);
    eb:SetScript("OnTextChanged", HandleTextChanged)

    local fl = f:CreateFontString(nil, nil, "GameFontNormal");
    fl:SetPoint("BOTTOMLEFT", eb, "TOPLEFT", 0, 0);

    local cb = CreateFrame("Button", nil, f);
    cb:SetSize(25, 25);
    cb:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\close.tga");
    cb:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\close_down.tga")
    cb:SetPoint("TOPRIGHT", f, "TOPRIGHT", -5, -5);
    cb:SetScript("OnClick", 
        function(self, button)
            if button == "LeftButton" then
                LBIS.SearchFrame:HideSearchFrame()
            end
        end
    );

    local ac = CreateFrame('Frame', nil, f, 'BackdropTemplate')
    ac:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = 1,
        tileSize = 10,
        edgeSize = 10,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
      });
    
    ac:SetBackdropBorderColor(1, 1, 1)
    ac:SetBackdropColor(0.09, 0.09,  0.19);

    ac.selectedButtonIndex = nil
    ac.buttonCount = 0
    ac.buttons = {}
    ac.buttonMargin = 30
    ac.baseHeight = 40

    ac:ClearAllPoints();
    ac:SetPoint('TOPLEFT', eb, 'BOTTOMLEFT', 0, 4);

    local acf = ac:CreateFontString(nil, nil, "GameFontDisableSmall");
    acf:SetText("PRESS_TAB");
    acf:SetPoint("BOTTOMLEFT", 15, 10);
    
    local cf = createCustomList(f);
    
    LBIS.SearchFrame.Frame = f;
    LBIS.SearchFrame.Frame.ItemListFrame = cf;
    LBIS.SearchFrame.Frame.SearchLabel = fl;
    LBIS.SearchFrame.Frame.SearchBox = eb;
    LBIS.SearchFrame.Frame.AutoCompleteMenu = ac;
    
end