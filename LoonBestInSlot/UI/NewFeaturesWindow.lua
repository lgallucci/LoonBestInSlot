LBIS.NewFeaturesWindow = {};

local function showNewFeature(window) 
			
	local headerText = window:CreateFontString(nil, nil, "GameFontNormal");
	headerText:SetText("Custom Item Lists !");
	headerText:SetPoint("CENTER", window, 0, -200);


end

function LBIS.NewFeaturesWindow:CreateAndShowWindow()
    local window = CreateFrame("Frame", "NewFeaturesWindow", UIParent, "InsetFrameTemplate");

    local windowCloseButton = CreateFrame("Button", "NewFeaturesWindowCloseButton", window)
    windowCloseButton:SetPoint("TOPRIGHT", window, "TOPRIGHT", 0, 0)
    windowCloseButton:SetSize(32, 32);
    windowCloseButton:SetNormalTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Up");
    windowCloseButton:SetPushedTexture("Interface\\Buttons\\UI-Panel-MinimizeButton-Down")
    windowCloseButton:SetScript("OnClick", function(self)
        window:Hide();
    end);

    --parent frame 
    window:SetSize(400, 300);
    window:SetPoint("CENTER", 0, 0);
    window:SetToplevel(true);
    window:SetMovable(true);
    window:SetFrameStrata("DIALOG");

    window:RegisterForDrag("LeftButton");

    local header = window:CreateFontString(nil, nil, "GameFontHighlightMed2");
    header:SetText(LBIS.L["New Features"]);
    header:SetPoint("TOP", window, -5, -5);

    local topLine = window:CreateLine();
    topLine:SetColorTexture(1,1,1,0.5);
    topLine:SetThickness(1);
    topLine:SetStartPoint("TOPLEFT", 10, -29);
    topLine:SetEndPoint("TOPRIGHT", -10, -29);

    window:SetScript("OnDragStart", function(self) self:StartMoving() end);
    window:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end);

    showNewFeature(window);

    window:Show();
end