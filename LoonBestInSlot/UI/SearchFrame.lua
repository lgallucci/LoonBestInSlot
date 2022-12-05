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
    eb:SetAutoFocus(false);
    eb:SetMaxLetters(6);

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

    --TODO CREATE LIST OF ITEMS IN THAT SLOT
    --TODO CREATE BUTTONS TO MOVE/REMOVE ITEMS FROM LIST

    LBIS.SearchFrame.Frame = f;
    LBIS.SearchFrame.Frame.SearchLabel = fl;
    LBIS.SearchFrame.Frame.SearchBox = eb;
    
end
