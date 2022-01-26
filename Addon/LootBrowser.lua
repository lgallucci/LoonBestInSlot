LoonBestInSlot.BrowserWindow = {
    MaxHeight = 0,
    CompareTooltip = {}
}

local deleted_windows = {}
function LoonBestInSlot.BrowserWindow:OpenWindow()
    LoonBestInSlot:BuildItemCache()
    if not LoonBestInSlot.BrowserWindow.Window then
        LoonBestInSlot.BrowserWindow:CreateBrowserWindow();
    end
    LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
    LoonBestInSlot.BrowserWindow.Window:Show();
end

function LoonBestInSlot.BrowserWindow:ToggleWindow()
    if LoonBestInSlot.BrowserWindow.Window and LoonBestInSlot.BrowserWindow.Window:IsShown() then
        LoonBestInSlot.BrowserWindow.Window:Hide();
    else
        LoonBestInSlot.BrowserWindow:OpenWindow();
    end    
end

local itemIsOnEnter = false;
--- Opts:
---     name (string): Name of the dropdown (lowercase)
---     parent (Frame): Parent frame of the dropdown.
---     items (Table): String table of the dropdown options.
---     defaultVal (String): String value for the dropdown to default to (empty otherwise).
---     changeFunc (Function): A custom function to be called, after selecting a dropdown option.
local function createDropdown(opts)
    local dropdown_name = '$parent_' .. opts['name'] .. '_dropdown'
    local menu_items = opts['items'] or {}
    local title_text = opts['title'] or ''
    local dropdown_width = 0
    local default_val = opts['defaultVal'] or ''
    local change_func = opts['changeFunc'] or function (dropdown_val) end

    local dropdown = CreateFrame("Frame", dropdown_name, opts['parent'], 'UIDropDownMenuTemplate')
    local dd_title = dropdown:CreateFontString(dropdown, 'OVERLAY', 'GameFontNormal')

    for _, item in pairs(menu_items) do -- Sets the dropdown width to the largest item string width.
        dd_title:SetText(item)
        local text_width = dd_title:GetStringWidth() + 20
        if text_width > dropdown_width then
            dropdown_width = text_width
        end
    end

    UIDropDownMenu_SetWidth(dropdown, dropdown_width)
    UIDropDownMenu_SetText(dropdown, default_val)
    dd_title:SetText(title_text)
    dd_title:SetPoint("TOPLEFT", (-1 * dd_title:GetStringWidth()) + 20, -8)

    UIDropDownMenu_Initialize(dropdown, function(self, level, _)
        local info = UIDropDownMenu_CreateInfo()
        for key, val in pairs(menu_items) do
            info.text = val;
            info.checked = false
            info.menuList= key
            info.hasArrow = false
            info.func = function(b)
                UIDropDownMenu_SetSelectedValue(dropdown, b.value, b.value)
                UIDropDownMenu_SetText(dropdown, b.value)
                b.checked = true
                change_func(dropdown, b.value)
            end
            UIDropDownMenu_AddButton(info)
        end
    end)

    return dropdown
end

local function IsInSlot(specItem)
    if LoonBestInSlotSettings.SelectedSlot == "All" then
        return true;
    elseif LoonBestInSlotSettings.SelectedSlot == specItem.Slot then
        return true;
    end
    return false;
end

local function FindInPhase(phaseText, phase)

    local phaseNumber = tonumber(phase);

    local firstNumber, lastNumber = strsplit(">", phaseText);

    if firstNumber == nil then
        return false;
    end
    if lastNumber == nil then
        lastNumber = firstNumber;
    end

    return tonumber(firstNumber) <= phaseNumber and tonumber(lastNumber) >= phaseNumber;
               
end

local function IsInPhase(specItem)
    if specItem.Source == "Token" then
        return false;
    elseif LoonBestInSlotSettings.SelectedPhase == "All" and specItem.Phase ~= "0" then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "PreRaid" and specItem.Phase == "0" then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "Phase 1" and FindInPhase(specItem.Phase, "1") then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "Phase 2" and FindInPhase(specItem.Phase, "2") then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "Phase 3" and FindInPhase(specItem.Phase, "3") then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "BIS" and strfind(specItem.Bis, "BIS") ~= nil then
        return true;
    end
    return false;
end

local function IsInSource(specItem)
    if LoonBestInSlotSettings.SelectedSource == "All" then
        return true;
    elseif LoonBestInSlotSettings.SelectedSource == specItem.Source then
        return true;
    end
    return false;
end

local function IsInZone(specItem)
    if LoonBestInSlotSettings.SelectedZone == "All" then
        return true;
    elseif strfind(specItem.Zone, LoonBestInSlotSettings.SelectedZone) ~= nil then
        return true;
    end
    return false;
end

local function createItemRow(specItem, point)
    local window = LoonBestInSlot.BrowserWindow.Window;
    local spacing = 1;
    local alt_color = false;
    local item = LoonBestInSlot:GetItemInfo(specItem.Id);
    local name = "frame_"..item.Id;
    local f, tex, t, l, b, d, dl, fh = nil, nil, nil, nil, nil, nil, nil, nil;
    local reusing = false;
    
    if item == nil then
        print("Failed to find object"..specItem.Id);
        return;
    end

    -- attempting to reuse a previous child frame if it exists 
    -- (which should include the previously created fontstring and button)
    if(next(deleted_windows) ~= nil) then
        for i=1, #deleted_windows do
            if(name == deleted_windows[i]:GetName()) then
                f = deleted_windows[i];
                reusing = true;
            end
        end
    end

    if(not resuing) then
        f = CreateFrame("Frame", "frame_"..item.Id, window.Container);
        
        tex = f:CreateTexture(nil, "BACKGROUND");
        tex:SetAllPoints();            

        --Create Item Button and Text

        b = CreateFrame("Button", nil, f);
        b:SetSize(32, 32);
        local bt = b:CreateTexture();
        bt:SetAllPoints();
        bt:SetTexture(item.Texture);
        b:SetPoint("TOPLEFT", f, 2, -5);
        
        t = f:CreateFontString(nil, nil, "GameFontNormal");
        t:SetText((item.Link or item.Name):gsub("[%[%]]", ""));
        t:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);

        local type = item.Type;
        if item.Subtype and item.Type ~= item.Subtype then
            type = item.Type .. ", " .. item.Subtype;
        end
        type = type.. ", "..specItem.Slot;
        local st = f:CreateFontString(nil, nil,"GameFontNormalGraySmall");
        st:SetText(type);
        st:SetPoint("BOTTOMLEFT", b, "BOTTOMRIGHT", 2, 2);

        local pt = f:CreateFontString(nil, nil, "GameFontNormalLarge");
        if specItem.Phase == "0" then
            pt:SetText("("..specItem.Bis..")");
        else
            pt:SetText("("..specItem.Bis.." "..specItem.Phase..")");
        end
        pt:SetPoint("TOPLEFT", t, "TOPRIGHT", 4, 4);

        fh = b:GetHeight()+10;

        --Create Drop Text
        local dtColor = "|cFF7727FF";
        if specItem.Source == "Profession" then
            dtColor = "|cFF33ADFF";
        elseif specItem.Source == "Reputation" then
            dtColor = "|cFF23E4C4";
        elseif specItem.Source == "Quest" then
            dtColor = "|cFFFFEF27";
        elseif specItem.Source == "Dungeon Token" then
            dtColor = "|cFFFF276D";
        elseif specItem.Source == "PvP" then
            dtColor = "|cFFE52AED";
        end
        d = f:CreateFontString(nil, nil, "GameFontNormal");
        d:SetText(dtColor..specItem.Source);
        d:SetJustifyH("LEFT");
        d:SetWidth(window.ScrollFrame:GetWidth() / 2);
        d:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

        dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");
        if specItem.Zone == "" then
            dl:SetText(specItem.DropLocation);
        else
            dl:SetText(specItem.DropLocation.." - "..specItem.Zone);
        end      
        dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);

        local userItemCache = LoonBestInSlot.UserItems[item.Id];
        if userItemCache then
            local ot = f:CreateTexture(nil,"BACKGROUND")
            ot:SetSize(24, 24);
            if userItemCache == "player" then
                ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/checkmark.tga")
            elseif userItemCache == "bag" then
                ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/bag.tga")
            elseif userItemCache == "bank" then
                ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/bank.tga")
            end
            ot:SetPoint("TOPRIGHT", -2, -6);
        end

        l = f:CreateLine();
        l:SetColorTexture(1,1,1,0.5);
        l:SetThickness(1);
        l:SetStartPoint("BOTTOMLEFT",5, 0);
        l:SetEndPoint("BOTTOMRIGHT",-5, 0);

        b:SetScript("OnClick", 
            function(self, button)
                if button == "LeftButton" then
                    HandleModifiedItemClick(item.Link);
                end
            end
        );

        b:SetScript("OnEnter", 
            function(self)
                GameTooltip:SetOwner(self, "ANCHOR_LEFT");
                GameTooltip:SetItemByID(item.Id);
                GameTooltip:Show();
                itemIsOnEnter = true;
                
                if IsShiftKeyDown() and itemIsOnEnter then
                    GameTooltip_ShowCompareItem(tooltip)
                end
            end
        );

        b:SetScript("OnLeave", 
            function(self)
                itemIsOnEnter = false;
                GameTooltip:SetOwner(UIParent, "ANCHOR_NONE");
                GameTooltip:Hide();
            end
        );
        
    end
    
    -- even if we are reusing, it may not be in the same order
    f:SetSize(window.ScrollFrame:GetWidth(), fh);
    f:ClearAllPoints();
    f:SetPoint("TOPLEFT", window.Container, 0, point);
    
    -- also may not have the same colour
    if(alt_color) then
        tex:SetColorTexture(1, 1, 1, 0.0);
        alt_color = false;
    else 
        tex:SetColorTexture(1, 1, 1, 0.05);
        alt_color = true;
    end
    point = point - (f:GetHeight()+spacing);
    
    LoonBestInSlot.BrowserWindow.MaxHeight = LoonBestInSlot.BrowserWindow.MaxHeight + (f:GetHeight()+spacing);

    f:Show(); -- forcing a show since if we are reusing, the old child was previously hidden

    return point;
end

function LoonBestInSlot.BrowserWindow:UpdateItemsForSpec()
            
    if LoonBestInSlotSettings.SelectedSpec == "" then
        return;
    end

    local specItems = LoonBestInSlot.SpecItems[LoonBestInSlot.SpecToName[LoonBestInSlotSettings.SelectedSpec]];

    local window = LoonBestInSlot.BrowserWindow.Window;
    local point = -2;
    local function clear_content(self)
        for i=1, self:GetNumChildren() do
        
            local child = select(i, self:GetChildren());
            
            -- Saving a reference to our previous child frame so that we can reuse it later
            if(not tContains(deleted_windows, child)) then 
                tinsert(deleted_windows, child) ;
            end
            
            child:Hide();
        end
    end

    clear_content(window.Container);
    
    LoonBestInSlot.BrowserWindow.MaxHeight = 0;
    
    window.ScrollFrame.content = nil;

    local topl = window.Container:CreateLine();
    topl:SetColorTexture(1,1,1,0.5);
    topl:SetThickness(1);
    topl:SetStartPoint("TOPLEFT",5, 0);
    topl:SetEndPoint("TOPRIGHT",-5, 0);

    for slot, specItem in pairs(specItems) do
        
        if IsInSlot(specItem) and IsInPhase(specItem) and IsInSource(specItem) and IsInZone(specItem) then
            point = createItemRow(specItem, point);
        end
    end

    window.Container:SetSize(window.ScrollFrame:GetWidth(), window.ScrollFrame:GetHeight());

    if LoonBestInSlot.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight() > 0 then
        window.ScrollBar:SetMinMaxValues(0, (LoonBestInSlot.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight()));
        window.ScrollBar:Enable();
    else
        window.ScrollBar:SetMinMaxValues(0, 0);
        window.ScrollBar:Disable();
    end
    window.ScrollFrame.content = window.Container;
    window.ScrollFrame:SetScrollChild(window.Container);

end

function LoonBestInSlot.BrowserWindow:CreateBrowserWindow()
    local step = 25;

    local window = CreateFrame("Frame", "Roll Window", UIParent, "BasicFrameTemplateWithInset");
    local scrollframe = CreateFrame("ScrollFrame", "ScrollFrame", window);
    local scrollbar = CreateFrame("Slider", "ScrollBar", scrollframe, "UIPanelScrollBarTemplate");
    local content = CreateFrame("Frame", "Container", scrollframe);

    local function UpdateScrollValue(self, delta)
        if(delta == 1 and scrollbar:GetValue() >= 0) then
            if(scrollbar:GetValue()-step < 0) then
                scrollbar:SetValue(0);
            else scrollbar:SetValue(scrollbar:GetValue() - step) end
        elseif(delta == -1 and scrollbar:GetValue() < LoonBestInSlot.BrowserWindow.MaxHeight) then
            if(scrollbar:GetValue()+step > LoonBestInSlot.BrowserWindow.MaxHeight) then
                scrollbar:SetValue(LoonBestInSlot.BrowserWindow.MaxHeight);
            else scrollbar:SetValue(scrollbar:GetValue() + step) end
        end
    end

    --parent frame 
    window:SetSize(800, 600);
    window:SetPoint("CENTER", 0, 0);
    window:SetToplevel(true);
    window:EnableMouse(true);
    window:EnableMouseWheel(true);
    window:SetMovable(true);
    window:SetFrameStrata("HIGH");

    --window:SetBackdrop( { 
--        bgFile = "Interface/DialogFrame/UI-DialogBox-Background",
        --edgeFile = "Interface/Tooltips/UI-Tooltip-Border", edgeSize = 16,
        --insets = { left = 4, right = 4, top = 4, bottom = 4 }
      --});
    --window:SetBackdropColor(0,0,0,1);
    window:RegisterForDrag("LeftButton");

    local getSpecList = function()
        local specList = {};
        for specId, spec in pairs(LoonBestInSlot.ClassSpec) do

            local specString = spec.Class;
            if strlen(spec.Spec) > 0 then
                specString = spec.Spec.." "..specString;
            end
            table.insert(specList, specString)
            LoonBestInSlot.SpecToName[specString] = specId;
        end
        return specList;
    end


    local spec_opts = {
        ['name']='spec',
        ['parent']=window,
        ['title']='Spec:',
        ['items']= getSpecList(),
        ['defaultVal']=LoonBestInSlotSettings.SelectedSpec,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedSpec = dropdown_val;
            LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local specDropDown = createDropdown(spec_opts);
    specDropDown:SetPoint("TOPLEFT", window, 30, -28);

    local spec_opts = {
        ['name']='slot',
        ['parent']=window,
        ['title']='Slot:',
        ['items']= { "All", "Head", "Shoulders", "Back", "Chest", "Bracers", "Gloves", "Belt", "Legs", "Feet", "Neck", "Ring", "Trinket", "MH", "OH", "2H", "Shield", "Ranged", "Wand", "Totem", "Idol", "Libram"},        
        ['defaultVal']=LoonBestInSlotSettings.SelectedSlot,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedSlot = dropdown_val;
            LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 200, -28);

    local spec_opts = {
        ['name']='phase',
        ['parent']=window,
        ['title']='Phase:',
        ['items']= { "All", "PreRaid", "Phase 1", "Phase 2", "Phase 3", "BIS" },
        ['defaultVal']=LoonBestInSlotSettings.SelectedPhase,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedPhase = dropdown_val;
            LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 350, -28);

    local spec_opts = {
        ['name']='source',
        ['parent']=window,
        ['title']='Source:',
        ['items']= { "All", "Drop", "Profession", "Reputation", "Dungeon Token", "Quest" },
        ['defaultVal']= LoonBestInSlotSettings.SelectedSource,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedSource = dropdown_val;
            LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 475, -28);

    local spec_opts = {
        ['name']='zone',
        ['parent']=window,
        ['title']='Zone:',
        ['items']= { "All", "Karazhan", "Gruul's Lair", "Magtheridon's Lair", "Serpentshrine Cavern", "Tempest Keep", "Hyjal Summit", "Black Temple"},
        ['defaultVal']= LoonBestInSlotSettings.SelectedZone,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedZone = dropdown_val;
            LoonBestInSlot.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 625, -28);

    local header = window:CreateFontString();
    header:SetFont("Fonts\\FRIZQT__.TTF", 12); -- Fonts\\ARIALN.TTF - Fonts\\SKURRI.TTF -  -
    header:SetText("Loon Best In Slot Gear");
    header:SetPoint("TOP", window, -5, -5);

    local topLine = window:CreateLine();
    topLine:SetColorTexture(1,1,1,0.5);
    topLine:SetThickness(1);
    topLine:SetStartPoint("TOPLEFT",10, -59);
    topLine:SetEndPoint("TOPRIGHT",-25, -59);

    scrollframe:SetPoint("TOPLEFT", 10, -60);
    scrollframe:SetPoint("BOTTOMRIGHT", -25, 28);

    scrollbar:SetPoint("TOPLEFT", window, "TOPRIGHT", -22, -78);
    scrollbar:SetPoint("BOTTOMLEFT", window, "BOTTOMRIGHT", 22, 42);
    scrollbar:SetMinMaxValues(0,0);
    scrollbar:SetWidth(16);
    scrollbar:SetValue(0);
    scrollbar:SetValueStep(step);
    scrollbar.scrollStep = step;

    scrollbar:SetScript("OnValueChanged",
        function (self, value) 
            self:GetParent():SetVerticalScroll(value);
        end
    );

    local botLine = window:CreateLine();
    botLine:SetColorTexture(1,1,1,0.5);
    botLine:SetThickness(1);
    botLine:SetStartPoint("BOTTOMLEFT", scrollframe, 0, -1);
    botLine:SetEndPoint("BOTTOMRIGHT",scrollframe, 0, -1);

    local tooltipButton = CreateFrame("CheckButton", "TooltipCheckButton", window, "ChatConfigCheckButtonTemplate")
    local tooltipString = tooltipButton:CreateFontString("TooltipText", "OVERLAY", "GameFontNormal");
    tooltipString:SetPoint("TOPRIGHT", tooltipButton, "TOPLEFT", -2, -3);
    tooltipString:SetText("Show Tooltip:");
    tooltipButton:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -175, 2);
    tooltipButton:SetScript("OnClick", function(self)
        LoonBestInSlot:ShowHideTooltip(self:GetChecked());
    end);
    tooltipButton:SetChecked(LoonBestInSlotSettings.ShowTooltip);

    local miniMapButton = CreateFrame("CheckButton", "MinimapCheckButton", window, "ChatConfigCheckButtonTemplate")
    local miniMapString = miniMapButton:CreateFontString("MiniMapText", "OVERLAY", "GameFontNormal");
    miniMapString:SetPoint("TOPRIGHT", miniMapButton, "TOPLEFT", -2, -3);
    miniMapString:SetText("Show Minimap Button:");
    miniMapButton:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 0, 2);
    miniMapButton:SetScript("OnClick", function(self)
        LoonBestInSlot:ShowHideMiniMap(not self:GetChecked());
    end);
    miniMapButton:SetChecked(not LoonBestInSlotSettings.minimap.hide);

    window.scrollframe = scrollframe;
    window.scrollbar = scrollbar;

    window:SetScript("OnMouseWheel", UpdateScrollValue);
    window:SetScript("OnDragStart", function(self) self:StartMoving() end);
    window:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);    

    LoonBestInSlot.BrowserWindow.Window = window;
    LoonBestInSlot.BrowserWindow.Window.ScrollFrame = scrollframe;
    LoonBestInSlot.BrowserWindow.Window.ScrollBar = scrollbar;
    LoonBestInSlot.BrowserWindow.Window.Container = content;

	LoonBestInSlot:RegisterEvent("MODIFIER_STATE_CHANGED", function()
        if IsShiftKeyDown() and itemIsOnEnter then
            GameTooltip_ShowCompareItem()
        else
            ShoppingTooltip1:Hide()
            ShoppingTooltip2:Hide()
        end
    end);

end