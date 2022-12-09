LBIS.SearchFrame = {}

function LBIS.SearchFrame:HideSearchFrame()
    LBIS.BrowserWindow.Window.ScrollBar:Enable();
    LBIS.BrowserWindow.Window.Container:Show();
    LBIS.SearchFrame.Frame:Hide();
end

function LBIS.SearchFrame:ShowSearchFrame(slot, itemList)
    LBIS.BrowserWindow.Window.ScrollBar:Disable();
    LBIS.BrowserWindow.Window.Container:Hide();

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
    
    ac.buttonCount = ac.buttonCount + 1

    if ac.buttons[ac.buttonCount] == nil then
      -- Create a new button frame if one does not exist
      ac.buttons[ac.buttonCount] = createButton()
    end
    
    local button = ac.buttons[ac.buttonCount]
    button:SetText(text)
    button:Show();

    if ac.buttonCount > 5 then
        ac.buttonCount = 0;
    end

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
        addButton(editBox:GetText());
    end)
      
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

    --TODO CREATE AUTOCOMPLETE ITEM LIST BOX
    local ac = CreateFrame('Frame', nil, f, 'BackdropTemplate')
    --ac:SetFrameLevel(10)
    --ac:Hide()
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

    --TODO CREATE LIST OF ITEMS IN THAT SLOT
    --TODO CREATE BUTTONS TO MOVE/REMOVE ITEMS FROM LIST

    LBIS.SearchFrame.Frame = f;
    LBIS.SearchFrame.Frame.SearchLabel = fl;
    LBIS.SearchFrame.Frame.SearchBox = eb;
    LBIS.SearchFrame.Frame.AutoCompleteMenu = ac;
    
end
