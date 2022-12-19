LBIS.AutoComplete = {}

local function selectButton(buttonIndex)
    local ac = LBIS.AutoComplete;
    assert(buttonIndex == nil or buttonIndex >= 1 and buttonIndex <= ac.buttonCount,
           'Button index is out of bounds')

    local previousButton = ac.buttons[ac.selectedButtonIndex]
    local selectedButton = ac.buttons[buttonIndex]

    if previousButton ~= nil then
        previousButton:UnlockHighlight()
        --previousButton:HideTooltip()
    end

    if selectedButton ~= nil then
      selectedButton:LockHighlight()
      --selectedButton:ShowTooltip()
    end

    ac.selectedButtonIndex = buttonIndex
end

local function isEmpty()
    return LBIS.AutoComplete.buttonCount == 0
end

local function selectItem(button)

    local found = false;
    for _, item in pairs(LBIS.SearchFrame.ItemList) do
        if item == button.ItemId then
            found = true;
        end
    end
    if not found then
        table.insert(LBIS.SearchFrame.ItemList, button.ItemId);
        LBIS.AutoComplete.SelectFunc();
    end
end

local function createButton()
    local ac = LBIS.AutoComplete;
    local button = CreateFrame('Button', nil, ac.Content)

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

    --LBIS:SetTooltipOnButton(button, { Id = -1, Link = ""});

    button:SetScript("OnClick", selectItem);

    return button
end

function LBIS.AutoComplete:Clear()
    local ac = LBIS.AutoComplete;
    if isEmpty() then
      return
    end

    selectButton(nil)

    for i = 1, ac.buttonCount do
        ac.buttons[i]:Hide()
    end

    ac.buttonCount = 0
    ac.Frame:SetHeight(ac.baseHeight);
    ac.Frame:Hide();
end

function LBIS.AutoComplete:Add(item)
    local ac = LBIS.AutoComplete;
    ac.Frame:Show();
    ac.buttonCount = ac.buttonCount + 1

    if ac.buttons[ac.buttonCount] == nil then
      -- Create a new button frame if one does not exist
        ac.buttons[ac.buttonCount] = createButton()
    end

    if ac.selectedButtonIndex == nil then
        selectButton(1)
    end
    
    local button = ac.buttons[ac.buttonCount]
    --LBIS:UpdateTooltipOnButton(button, item)
    button.ItemId = item.Id;
    button:SetText(item.Link)
    button:Show();

    local height = ac.baseHeight + button:GetHeight() * ac.buttonCount;
    if height > 150 then
      height = 150;
    end
    ac.Frame:SetHeight(height);
    ac.Frame:SetWidth(595)
end

local function getSelection()
    return LBIS.AutoComplete.buttons[LBIS.AutoComplete.selectedButtonIndex];
end

local function incrementSelection(decrement)
    if isEmpty() then
      return
    end

    local buttonIndex = LBIS.AutoComplete.selectedButtonIndex + (decrement and -1 or 1)

    if buttonIndex <= 0 then
      buttonIndex = LBIS.AutoComplete.buttonCount
    elseif buttonIndex > LBIS.AutoComplete.buttonCount then
      buttonIndex = 1
    end

    selectButton(buttonIndex);
end

function LBIS.AutoComplete:HandleKeyDown(key)
    local action = ({
        ['TAB'] = function()
          incrementSelection(IsShiftKeyDown())
        end,
        ['UP'] = function()
          incrementSelection(true)
        end,
        ['DOWN'] = function()
          incrementSelection(false)
        end,
        ['ESCAPE'] = function()
            LBIS.AutoComplete.Frame:Hide()
        end,
        ['ENTER'] = function()
          selectItem(getSelection())
        end,
      })[key]

      if action ~= nil then
        action()
      end
    
      --LBIS.SearchFrame.Frame.SearchBox:SetPropagateKeyboardInput(action == nil)
end

function LBIS.AutoComplete:Create(frame, selectFunc) 
    local step = 25;
    local scrollframe = CreateFrame("ScrollFrame", nil, frame, 'BackdropTemplate');
    local scrollbar = CreateFrame("Slider", nil, scrollframe, "UIPanelScrollFrameTemplate");
    local content = CreateFrame("Frame", nil, scrollframe);
    
    scrollframe:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
        edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
        tile = 1,
        tileSize = 10,
        edgeSize = 10,
        insets = { left = 3, right = 3, top = 3, bottom = 3 },
    });
    
    scrollframe:SetBackdropBorderColor(1, 1, 1)
    scrollframe:SetBackdropColor(0.09, 0.09,  0.19);

    local step = 25;
    scrollframe:ClearAllPoints();
    scrollframe:SetPoint('TOPLEFT', frame, 'BOTTOMLEFT', 0, 4);
    scrollbar:SetPoint("TOPLEFT", frame, "TOPRIGHT", 0, 0);
    scrollbar:SetPoint("BOTTOMLEFT", frame, "BOTTOMRIGHT", 0, 0);
    scrollbar:SetMinMaxValues(0,0);
    scrollbar:SetWidth(16);
    scrollbar:SetValue(0);
    scrollbar:SetValueStep(step);
    scrollbar.scrollStep = step;

    local acf = scrollframe:CreateFontString(nil, nil, "GameFontDisableSmall");
    acf:SetText("PRESS_TAB");
    acf:SetPoint("BOTTOMLEFT", 15, 10);

    LBIS.AutoComplete.selectedButtonIndex = nil
    LBIS.AutoComplete.buttonCount = 0
    LBIS.AutoComplete.buttons = {}
    LBIS.AutoComplete.buttonMargin = 30
    LBIS.AutoComplete.baseHeight = 40
    LBIS.AutoComplete.SelectFunc = selectFunc;
    LBIS.AutoComplete.Frame = scrollframe;
    LBIS.AutoComplete.Content = content;
end