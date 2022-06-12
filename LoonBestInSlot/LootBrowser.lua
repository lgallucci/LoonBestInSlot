LBIS.BrowserWindow = {
    MaxHeight = 0,
    CompareTooltip = {}
}

local deleted_windows = {}
function LBIS.BrowserWindow:OpenWindow()
    LBIS:BuildItemCache()
    if not LBIS.BrowserWindow.Window then
        LBIS.BrowserWindow:CreateBrowserWindow();
    end
    LBIS.BrowserWindow:UpdateItemsForSpec();
    LBIS.BrowserWindow.Window:Show();
end

function LBIS.BrowserWindow:ToggleWindow()
    if LBIS.BrowserWindow.Window and LBIS.BrowserWindow.Window:IsShown() then
        LBIS.BrowserWindow.Window:Hide();
    else
        LBIS.BrowserWindow:OpenWindow();
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
    local dd_title = dropdown:CreateFontString(dropdown, 'OVERLAY', 'GameFontNormalSmall')

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

    local firstNumber, lastNumber = LBIS:GetPhaseNumbers(phaseText);

    if firstNumber == nil then
        return false;
    end

    return tonumber(firstNumber) <= phaseNumber and tonumber(lastNumber) >= phaseNumber;
               
end

local function IsInPhase(specItem, specItemSource)
    if specItemSource.SourceType == LBIS.L["Token"] then
        return false;
    elseif strfind(specItem.Bis, LBIS.L["Transmute"]) ~= nil then
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
    elseif LoonBestInSlotSettings.SelectedPhase == "Phase 4" and FindInPhase(specItem.Phase, "4") then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "Phase 5" and FindInPhase(specItem.Phase, "5") then
        return true;
    elseif LoonBestInSlotSettings.SelectedPhase == "BIS" and strfind(specItem.Bis, "BIS") ~= nil then
        return true;
    end
    return false;
end

local function IsInSource(specItem)
    if LoonBestInSlotSettings.SelectedSource == "All" then
        return true;
    elseif LoonBestInSlotSettings.SelectedSource == specItem.SourceType then
        return true;
    end
    return false;
end

local function IsInZone(specItem)
    if LoonBestInSlotSettings.SelectedZone == "All" then
        return true;
    elseif strfind(specItem.SourceLocation, LoonBestInSlotSettings.SelectedZone) ~= nil then
        return true;
    end
    return false;
end

local function IsNotInClassic(specItem)
    if specItem.SourceLocation == LBIS.L["Molten Core"] then
        return false;
    elseif specItem.SourceLocation == LBIS.L["Blackwing Lair"] then
        return false;
     elseif specItem.SourceLocation == LBIS.L["Zul'Gurub"] then
        return false;
    elseif specItem.SourceLocation == LBIS.L["Ruins of Ahn'Qiraj"] then
        return false;
    elseif specItem.SourceLocation == LBIS.L["Temple of Ahn'Qiraj"] then
        return false;
    elseif specItem.SourceLocation == LBIS.L["Naxxramas"] then
        return false;
    end
    return true;
end


local function SetTooltipOnButton(b, item)
    
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

local failedLoad = false;

local function createItemRow(specItem, specItemSource, point)
    local window = LBIS.BrowserWindow.Window;
    local spacing = 1;
    local alt_color = false;
    local name = "frame_"..item.Id;
    local f, t, l, b, d, dl = nil, nil, nil, nil, nil, nil, nil;
    local reusing = false;
    
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
    
    if not resuing then
        f = CreateFrame("Frame", "frame_"..item.Id, window.Container);

        LBIS:GetItemInfo(specItem.Id, function(item)
            if item == nil or item.Id == nil or item.Link == nil or item.Type == nil then
                LBIS:Error("Failed Load: "..specItem.Id);
                failedLoad = true;
                return point;
            end
            --Create Item Button and Text
        
            b = CreateFrame("Button", nil, f);
            b:SetSize(32, 32);
            local bt = b:CreateTexture();
            bt:SetAllPoints();
            bt:SetTexture(item.Texture);
            b:SetPoint("TOPLEFT", f, 2, -5);

            SetTooltipOnButton(b, item);
        
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

            --Create Drop Text
            local dtColor = "|cFF7727FF";
            if specItemSource.SourceType == LBIS.L["Profession"] then
                dtColor = "|cFF33ADFF";
            elseif specItemSource.SourceType == LBIS.L["Reputation"] then
                dtColor = "|cFF23E4C4";
            elseif specItemSource.SourceType == LBIS.L["Quest"] then
                dtColor = "|cFFFFEF27";
            elseif specItemSource.SourceType == LBIS.L["Dungeon Token"] then
                dtColor = "|cFFFF276D";
            elseif specItemSource.SourceType == LBIS.L["PvP"] then
                dtColor = "|cFFE52AED";
            elseif specItemSource.SourceType == LBIS.L["Transmute"] then
                dtColor = "|cFFFC6A03";
            end
            d = f:CreateFontString(nil, nil, "GameFontNormal");
            d:SetText(dtColor..specItemSource.SourceType);
            d:SetJustifyH("LEFT");
            d:SetWidth(window.ScrollFrame:GetWidth() / 2);
            d:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

            dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");
            if specItemSource.SourceLocation == "" then
                dl:SetText(specItemSource.Source);
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            elseif specItemSource.SourceType == LBIS.L["Transmute"] then
            
                LBIS:GetItemInfo(tonumber(specItemSource.Source), function(transmuteItem)

                    local tb = CreateFrame("Button", nil, f);
                    tb:SetSize(32, 32);
                    local bt = tb:CreateTexture();
                    bt:SetAllPoints();
                    bt:SetTexture(transmuteItem.Texture);
                    tb:SetPoint("BOTTOMLEFT", dl, "BOTTOMRIGHT", 5, -2);
                    SetTooltipOnButton(tb, transmuteItem);
                                        
                    local ft = f:CreateFontString(nil, nil, "GameFontNormalSmall")
                    ft:SetText("From:");
                    ft:SetPoint("TOPRIGHT", tb, "TOPLEFT", -3, -3);
                end);

                dl:SetText(specItemSource.SourceLocation);
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            else
                dl:SetText(specItemSource.Source.." - "..specItemSource.SourceLocation);
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            end      

            local userItemCache = LBIS.UserItems[item.Id];
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
        end);
        
        l = f:CreateLine();
        l:SetColorTexture(1,1,1,0.5);
        l:SetThickness(1);
        l:SetStartPoint("BOTTOMLEFT",5, 0);
        l:SetEndPoint("BOTTOMRIGHT",-5, 0);
    end
    -- even if we are reusing, it may not be in the same order
    f:SetSize(window.ScrollFrame:GetWidth(), 42);
    f:ClearAllPoints();
    f:SetPoint("TOPLEFT", window.Container, 0, point);
    
    point = point - (f:GetHeight()+spacing);
    
    LBIS.BrowserWindow.MaxHeight = LBIS.BrowserWindow.MaxHeight + (f:GetHeight()+spacing);

    f:Show(); -- forcing a show since if we are reusing, the old child was previously hidden

    return point;
end


local itemSlotOrder = {}
itemSlotOrder[LBIS.L["Head"]] = 0;
itemSlotOrder[LBIS.L["Shoulders"]] = 1;
itemSlotOrder[LBIS.L["Back"]] = 2;
itemSlotOrder[LBIS.L["Chest"]] = 3;
itemSlotOrder[LBIS.L["Bracers"]] = 4;
itemSlotOrder[LBIS.L["Gloves"]] = 5;
itemSlotOrder[LBIS.L["Belt"]] = 6;
itemSlotOrder[LBIS.L["Legs"]] = 7;
itemSlotOrder[LBIS.L["Feet"]] = 8;
itemSlotOrder[LBIS.L["Neck"]] = 9;
itemSlotOrder[LBIS.L["Ring"]] = 10;
itemSlotOrder[LBIS.L["Trinket"]] = 11;
itemSlotOrder[LBIS.L["MH"]] = 12;
itemSlotOrder[LBIS.L["OH"]] = 13;
itemSlotOrder[LBIS.L["2H"]] = 14;
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

    if string.find(item1.Bis, "BIS") ~= nil then
        item1Score = item1Score + 100;
    end    
    if string.find(item2.Bis, "BIS") ~= nil then
        item2Score = item2Score + 100;
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

function spairs(t, order)

    -- collect the keys
    local keys = {}

    if t ~= nil then
        for k in pairs(t) do keys[#keys+1] = k end

        -- if order function given, sort by it by passing the table and keys a, b,
        -- otherwise just sort the keys 
        if order then
            table.sort(keys, function(a,b) return order(t, a, b) end)
        else
            table.sort(keys)
        end    
    end
    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

function LBIS.BrowserWindow:UpdateItemsForSpec()
            
    if LoonBestInSlotSettings.SelectedSpec == "" then
        return;
    end

    local specItems = LBIS.SpecItems[LBIS.SpecToName[LoonBestInSlotSettings.SelectedSpec]];

    local window = LBIS.BrowserWindow.Window;
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
    
    LBIS.BrowserWindow.MaxHeight = 0;
    
    window.ScrollFrame.content = nil;

    local topl = window.Container:CreateLine();
    topl:SetColorTexture(1,1,1,0.5);
    topl:SetThickness(1);
    topl:SetStartPoint("TOPLEFT",5, 0);
    topl:SetEndPoint("TOPRIGHT",-5, 0);
    
    failedLoad = false;

    for itemId, specItem in spairs(specItems, itemSortFunction) do
        
        local specItemSource = LBIS.ItemSources[tonumber(specItem.Id)];

        if specItemSource == nil then
            LBIS:Error("Missing item source: ", specItem);
        else
            if IsInSlot(specItem) and IsInPhase(specItem, specItemSource) and IsInSource(specItemSource) and IsInZone(specItemSource) and IsNotInClassic(specItemSource) then
                point = createItemRow(specItem, specItemSource, point);
            end
        end
    end

    if failedLoad then
        LBIS:Error("Failed to load one or more items into browser. Type /reload to attempt to fix", "");
    end

    window.Container:SetSize(window.ScrollFrame:GetWidth(), window.ScrollFrame:GetHeight());

    if LBIS.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight() > 0 then
        window.ScrollBar:SetMinMaxValues(0, (LBIS.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight()));
        window.ScrollBar:Enable();
    else
        window.ScrollBar:SetMinMaxValues(0, 0);
        window.ScrollBar:Disable();
    end
    window.ScrollFrame.content = window.Container;
    window.ScrollFrame:SetScrollChild(window.Container);

end

function LBIS.BrowserWindow:CreateBrowserWindow()
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
        elseif(delta == -1 and scrollbar:GetValue() < LBIS.BrowserWindow.MaxHeight) then
            if(scrollbar:GetValue()+step > LBIS.BrowserWindow.MaxHeight) then
                scrollbar:SetValue(LBIS.BrowserWindow.MaxHeight);
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

    window:RegisterForDrag("LeftButton");

    local getSpecList = function()
        local specList = {};
        for specId, spec in pairs(LBIS.ClassSpec) do

            local specString = spec.Class;
            if strlen(spec.Spec) > 0 then
                specString = spec.Spec.." "..specString;
            end
            table.insert(specList, specString)
            LBIS.SpecToName[specString] = specId;
        end
        table.sort(specList);
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
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local specDropDown = createDropdown(spec_opts);
    specDropDown:SetPoint("TOPLEFT", window, 30, -28);

    local spec_opts = {
        ['name']='slot',
        ['parent']=window,
        ['title']='Slot:',
        ['items']= { LBIS.L["All"], LBIS.L["Head"], LBIS.L["Shoulders"], LBIS.L["Back"], LBIS.L["Chest"], LBIS.L["Bracers"], LBIS.L["Gloves"], LBIS.L["Belt"], LBIS.L["Legs"], LBIS.L["Feet"], LBIS.L["Neck"], LBIS.L["Ring"], LBIS.L["Trinket"], LBIS.L["MH"], LBIS.L["OH"], LBIS.L["2H"], LBIS.L["Shield"], LBIS.L["Ranged"], LBIS.L["Wand"], LBIS.L["Totem"], LBIS.L["Idol"], LBIS.L["Libram"]},        
        ['defaultVal']=LoonBestInSlotSettings.SelectedSlot,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedSlot = dropdown_val;
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 200, -28);

    local spec_opts = {
        ['name']='phase',
        ['parent']=window,
        ['title']='Phase:',
        ['items']= { LBIS.L["All"], LBIS.L["PreRaid"], LBIS.L["Phase 1"], LBIS.L["Phase 2"], LBIS.L["Phase 3"], LBIS.L["Phase 4"], LBIS.L["Phase 5"], "BIS" },
        ['defaultVal']=LoonBestInSlotSettings.SelectedPhase,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedPhase = dropdown_val;
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 350, -28);

    local spec_opts = {
        ['name']='source',
        ['parent']=window,
        ['title']='Source:',
        ['items']= { LBIS.L["All"], LBIS.L["Drop"], LBIS.L["Profession"], LBIS.L["Reputation"], LBIS.L["Dungeon Token"], LBIS.L["Quest"], LBIS.L["PvP"], LBIS.L["Transmute"] },
        ['defaultVal']= LoonBestInSlotSettings.SelectedSource,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedSource = dropdown_val;
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 475, -28);

    local spec_opts = {
        ['name']='zone',
        ['parent']=window,
        ['title']='Zone:',
        ['items']= { LBIS.L["All"], LBIS.L["Karazhan"], LBIS.L["Gruul's Lair"], LBIS.L["Magtheridon's Lair"], LBIS.L["Serpentshrine Cavern"], LBIS.L["Tempest Keep"], LBIS.L["Hyjal Summit"], LBIS.L["Black Temple"], LBIS.L["Zul'Aman"], LBIS.L["Sunwell Plateau"]},
        ['defaultVal']= LoonBestInSlotSettings.SelectedZone,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LoonBestInSlotSettings.SelectedZone = dropdown_val;
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 625, -28);

    local header = window:CreateFontString();
    header:SetFont("Fonts\\FRIZQT__.TTF", 12); -- Fonts\\ARIALN.TTF - Fonts\\SKURRI.TTF -  -
    header:SetText(LBIS.L["Loon Best In Slot List"]);
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
    tooltipButton:SetHitRectInsets(0, 0, 0, 0)
    local tooltipString = tooltipButton:CreateFontString("TooltipText", "OVERLAY", "GameFontNormalSmall");
    tooltipString:SetPoint("TOPRIGHT", tooltipButton, "TOPLEFT", -2, -3);
    tooltipString:SetText(LBIS.L["Show Tooltip:"]);
    tooltipButton:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", -175, 2);
    tooltipButton:SetScript("OnClick", function(self)
        LBIS:ShowHideTooltip(self:GetChecked());
    end);
    tooltipButton:SetChecked(LoonBestInSlotSettings.ShowTooltip);

    local miniMapButton = CreateFrame("CheckButton", "MinimapCheckButton", window, "ChatConfigCheckButtonTemplate")
    miniMapButton:SetHitRectInsets(0, 0, 0, 0)
    local miniMapString = miniMapButton:CreateFontString("MiniMapText", "OVERLAY", "GameFontNormalSmall");
    miniMapString:SetPoint("TOPRIGHT", miniMapButton, "TOPLEFT", -2, -3);
    miniMapString:SetText(LBIS.L["Show Minimap Button:"]);
    miniMapButton:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 0, 2);
    miniMapButton:SetScript("OnClick", function(self)
        LBIS:ShowHideMiniMap(not self:GetChecked());
    end);
    miniMapButton:SetChecked(not LoonBestInSlotSettings.minimap.hide);

    window.scrollframe = scrollframe;
    window.scrollbar = scrollbar;

    window:SetScript("OnMouseWheel", UpdateScrollValue);
    window:SetScript("OnDragStart", function(self) self:StartMoving() end);
    window:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);    

    LBIS.BrowserWindow.Window = window;
    LBIS.BrowserWindow.Window.ScrollFrame = scrollframe;
    LBIS.BrowserWindow.Window.ScrollBar = scrollbar;
    LBIS.BrowserWindow.Window.Container = content;

	LBIS:RegisterEvent("MODIFIER_STATE_CHANGED", function()
        if IsShiftKeyDown() and itemIsOnEnter then
            GameTooltip_ShowCompareItem()
        else
            ShoppingTooltip1:Hide()
            ShoppingTooltip2:Hide()
        end
    end);

end