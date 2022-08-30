LBIS.BrowserWindow = {
    MaxHeight = 0,
    CompareTooltip = {}
}

local deleted_windows = {}
function LBIS.BrowserWindow:OpenWindow()
    LBIS:BuildItemCache()
    if not LBIS.BrowserWindow.Window then
        LBIS.BrowserWindow:CreateBrowserWindow();
        LBIS.ItemList:Open();
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

local open_tab = "ItemList";
function LBIS.BrowserWindow:UpdateItemsForSpec()
    if open_tab == "ItemList" then
        LBIS.ItemList:UpdateItems();
    else if open_tab == "GemList" then
    else if open_tab == "EnchantList" then
    end
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
        ['defaultVal']=LBISSettings.SelectedSpec,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LBISSettings.SelectedSpec = dropdown_val;
            LBIS.BrowserWindow:UpdateItemsForSpec();
        end
    }
    local specDropDown = createDropdown(spec_opts);
    specDropDown:SetPoint("TOPLEFT", window, 30, -28);    

    local header = window:CreateFontString();
    header:SetFont("Fonts\\FRIZQT__.TTF", 12); -- Fonts\\ARIALN.TTF - Fonts\\SKURRI.TTF -  -
    header:SetText(LBIS.L["Loon Best In Slot Browser"]);
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
    tooltipButton:SetChecked(LBISSettings.ShowTooltip);

    local miniMapButton = CreateFrame("CheckButton", "MinimapCheckButton", window, "ChatConfigCheckButtonTemplate")
    miniMapButton:SetHitRectInsets(0, 0, 0, 0)
    local miniMapString = miniMapButton:CreateFontString("MiniMapText", "OVERLAY", "GameFontNormalSmall");
    miniMapString:SetPoint("TOPRIGHT", miniMapButton, "TOPLEFT", -2, -3);
    miniMapString:SetText(LBIS.L["Show Minimap Button:"]);
    miniMapButton:SetPoint("BOTTOMRIGHT", window, "BOTTOMRIGHT", 0, 2);
    miniMapButton:SetScript("OnClick", function(self)
        LBIS:ShowHideMiniMap(not self:GetChecked());
    end);
    miniMapButton:SetChecked(not LBISSettings.minimap.hide);

    window.scrollframe = scrollframe;
    window.scrollbar = scrollbar;

    window:SetScript("OnMouseWheel", UpdateScrollValue);
    window:SetScript("OnDragStart", function(self) self:StartMoving() end);
    window:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);    

    LBIS.BrowserWindow.Window = window;
    LBIS.BrowserWindow.Window.ScrollFrame = scrollframe;
    LBIS.BrowserWindow.Window.ScrollBar = scrollbar;
    LBIS.BrowserWindow.Window.Container = content;

    LBIS:RegisterTooltip();

end