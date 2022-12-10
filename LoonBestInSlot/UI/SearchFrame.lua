LBIS.SearchFrame = {}

function LBIS.SearchFrame:HideSearchFrame()
    LBIS.BrowserWindow.Window.ScrollBar:Enable();
    LBIS.BrowserWindow.Window.Container:Show();
    LBIS.SearchFrame.Frame:Hide();
end

function LBIS.SearchFrame:ShowSearchFrame(slot, itemList)
    LBIS.BrowserWindow.Window.ScrollBar:Disable();
    LBIS.BrowserWindow.Window.Container:Hide();
    clearAll();
    showCustomList(itemList);
    LBIS.SearchFrame.Frame.SearchLabel:SetText("Search for items to add to "..slot.." list:");
    LBIS.SearchFrame.Frame:Show();
end

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        -- We grab the first index of our sub-table instead
        if value[1] == val then
            return true
        end
    end

    return false
end

function showCustomList(itemList)
    
    --TODO CREATE LIST OF ITEMS IN THAT SLOT
    --TODO CREATE BUTTONS TO MOVE/REMOVE ITEMS FROM LIST
    
    local itemCount = 1;
    local totalItems = getn(itemList);
    local f = LBIS.SearchFrame.Frame.ItemListFrame;
    for orderId, itemId in pairs(itemList) do

        LBIS:GetItemInfo(itemId, function(item)

            if item == nil or item.Id == nil or item.Link == nil or item.Type == nil then
                LBIS:Error("Failed Load: "..itemId);
                failedLoad = true;
            end

            f.CustomButtons[itemCount].ItemButton:SetNormalTexture(item.Texture);
            LBIS:SetTooltipOnButton(f.CustomButtons[itemCount].ItemButton, item);
            f.CustomButtons[itemCount].LeftButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then
                    itemList[itemCount], itemList[itemCount-1] = itemList[itemCount-1], itemList[itemCount]                    
                    showCustomList(itemList);
                end
            end);
            f.CustomButtons[itemCount].RightButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then
                    itemList[itemCount], itemList[itemCount+1] = itemList[itemCount+1], itemList[itemCount]
                    showCustomList(itemList);
                end
            end);
            f.CustomButtons[itemCount].DeleteButton:SetScript("OnClick", function(self, button)
                if button == "LeftButton" then
                    f.AddButton:Enable();
                    local itemId = itemList[itemCount];
                    table.remove(itemList, itemCount);
                    LBIS.CustomList.Items[itemId][LBIS.SpecToName[LBISSettings.SelectedSpec]] = nil;
                    showCustomList(itemList);
                end
            end);

            if itemCount == 1 then
                f.CustomButtons[itemCount].LeftButton:Disable();
            else                
                f.CustomButtons[itemCount].LeftButton:Enable();
            end

            if itemCount == totalItems then
                f.CustomButtons[itemCount].RightButton:Disable();
            else                
                f.CustomButtons[itemCount].RightButton:Enable();
            end

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

function selectButton(buttonIndex)
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

function isEmpty()
    return LBIS.SearchFrame.Frame.AutoCompleteMenu.buttonCount == 0
end

function clearAll()
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

local function createButton()
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    local button = CreateFrame('Button', nil, ac)

    --button.ShowTooltip = function()
    --  if button.info.onTooltipShow ~= nil then
    --    GameTooltip:SetOwner(button, 'ANCHOR_RIGHT')
    --    button.info.onTooltipShow(GameTooltip, button.info.value)
    --  end
    --end
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

    --button:GetFontString():SetPoint('LEFT', button, 'LEFT', 15, 0)
    --button:SetScript('OnLeave', function()
    --  GameTooltip:Hide()
    --end)
    --button:SetScript('OnEnter', button.ShowTooltip)
    --button:SetScript('OnClick', function()
    --  if button.info.onClick ~= nil then
    --    button.info.onClick(button.info.value)
    --  end
    --end)

    return button
end

local function addButton(text)
    local ac = LBIS.SearchFrame.Frame.AutoCompleteMenu;
    
    if ac.buttonCount > 5 then
        clearAll();
    end

    ac.buttonCount = ac.buttonCount + 1

    if ac.buttons[ac.buttonCount] == nil then
      -- Create a new button frame if one does not exist
      ac.buttons[ac.buttonCount] = createButton()
    end
    
    local button = ac.buttons[ac.buttonCount]
    button:SetText(text)
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
        local text = editBox:GetText();
        if (#text > 0) then
            addButton(text);
        end
    end)
      
end

function createCustomList(f)

    local itemf = CreateFrame('Frame', nil, f, 'BackdropTemplate')

    itemf:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = 1,
            tileSize = 10,
            edgeSize = 10,
            insets = { left = 3, right = 3, top = 3, bottom = 3 },
          });
        
    itemf:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b, 1)
    itemf:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b, 1)
    itemf:SetPoint('TOP', f, 'CENTER', 0, 75);
    itemf:SetSize(700, 300);
    itemf.CustomButtons = {};

    for i=1,6 do

        local b, bLeft, bRight, bDelete, t2 = nil, nil, nil, nil, nil;
        b = CreateFrame("Button", nil, itemf);
        b:SetSize(32, 32);
        b:SetPoint("TOPLEFT", itemf, 50 + (i * 85), -5);
        b:Hide();

        bLeft = CreateFrame("Button", nil, itemf);
        bLeft:SetSize(12, 12);
        bLeft:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup.tga");
        bLeft:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup_down.tga");
        bLeft:SetDisabledTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowup_dis.tga");
        bLeft:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, 0);
        bLeft:Hide();
                    
        bRight = CreateFrame("Button", nil, itemf);
        bRight:SetSize(12, 12);
        bRight:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown.tga");
        bRight:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown_down.tga")
        bRight:SetDisabledTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\arrowdown_dis.tga");
        bRight:SetPoint("TOPLEFT", bLeft, "BOTTOMLEFT", 0, 0);
        bRight:Hide();

        bDelete = CreateFrame("Button", nil, itemf);
        bDelete:SetSize(12, 12);
        bDelete:SetNormalTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\delete.tga");
        bDelete:SetPushedTexture("Interface\\AddOns\\LoonBestInSlot\\Icons\\delete_down.tga")
        bDelete:SetPoint("TOPLEFT", bRight, "BOTTOMLEFT", 0, 0);
        bDelete:Hide();
        
        t2 = itemf:CreateFontString(nil, nil, "GameFontNormal");
        t2:SetText(i..": ");
        t2:SetPoint("RIGHT", b, "LEFT", -5, 0);
        t2:Hide();

        itemf.CustomButtons[i] = { ItemButton = b, LeftButton = bLeft, RightButton = bRight, DeleteButton = bDelete,
        ShowButtons = function() 
            b:Show();bLeft:Show();bRight:Show();bDelete:Show();t2:Show();
        end,
        HideButtons = function()
            b:Hide();bLeft:Hide();bRight:Hide();bDelete:Hide();t2:Hide();
        end}
    end

    return itemf;
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

    --TODO CREATE EDITBOX
    local eb = CreateFrame("EditBox", nil, f, "InputBoxTemplate");
    eb:SetPoint("TOP", f, "TOP", 0, -20)
    eb:SetWidth(600);
    eb:SetHeight(25);
    eb:SetMovable(false);
    eb:SetAutoFocus(true);
    eb:SetScript("OnTextChanged", HandleTextChanged)

    local fl = f:CreateFontString(nil, nil, "GameFontNormal");
    fl:SetPoint("BOTTOMLEFT", eb, "TOPLEFT", 0, 0);

    --TODO CREATE CLOSE BUTTON
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
    
    ac:SetBackdropBorderColor(TOOLTIP_DEFAULT_COLOR.r, TOOLTIP_DEFAULT_COLOR.g, TOOLTIP_DEFAULT_COLOR.b, 1)
    ac:SetBackdropColor(TOOLTIP_DEFAULT_BACKGROUND_COLOR.r, TOOLTIP_DEFAULT_BACKGROUND_COLOR.g, TOOLTIP_DEFAULT_BACKGROUND_COLOR.b, 1)

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