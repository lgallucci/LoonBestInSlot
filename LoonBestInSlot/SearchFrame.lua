LBIS.SearchFrame = {}

function LBIS.SearchFrame:HideSearchFrame()
    LBIS.BrowserWindow.Window.ScrollBar:Enable();
    LBIS.BrowserWindow.Window.Container:Show();
    LBIS.SearchFrame.Frame:Hide();
end

function LBIS.SearchFrame:ShowSearchFrame(slot)
    LBIS.BrowserWindow.Window.ScrollBar:Disable();
    LBIS.BrowserWindow.Window.Container:Hide();
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

    LBIS.SearchFrame.Frame = f;
    
end
