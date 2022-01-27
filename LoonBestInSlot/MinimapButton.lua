local LDB = LibStub ("LibDataBroker-1.1", true)
local LBISButton = LDB and LibStub ("LibDBIcon-1.0", true)

function LoonBestInSlot:RegisterMiniMap()
    
    if LDB then
  
        local databroker = LDB:NewDataObject ("LoonBestInSlot", {
        type = "data source",
        icon = "Interface\\AddOns\\LoonBestInSlot\\Icons\\loon",
        text = "0",
        
        HotCornerIgnore = true,
        
        OnClick = function (self, button)
        
            if button == "LeftButton" then 
                LoonBestInSlot.BrowserWindow:ToggleWindow()
            end

        end,

        OnTooltipShow = function (tooltip)
            tooltip:AddLine ("Loon Best In Slot");
            tooltip:AddLine("|cFF9CD6DELeft-Click|r: Open Browser Window");
        end,
        })
        
        if (databroker and not LBISButton:IsRegistered ("LoonBestInSlot")) then
            LBISButton:Register ("LoonBestInSlot", databroker, LoonBestInSlotSettings.minimap)
        end

        LoonBestInSlot:ShowHideMiniMap(LoonBestInSlotSettings.minimap.hide);
  
    end

  end

  function LoonBestInSlot:ShowHideMiniMap(shouldHide)
    LoonBestInSlotSettings.minimap.hide = shouldHide;
    if shouldHide then
        LBISButton:Hide("LoonBestInSlot");
    else
        LBISButton:Show("LoonBestInSlot");
    end

    function LoonBestInSlot:ShowHideTooltip(shouldHide)
        LoonBestInSlotSettings.ShowTooltip = shouldHide;
    end
end