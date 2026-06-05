LBIS.UserItems = {}
LBIS.UserSlotCache = {}
LBIS.UserItemCacheBuilt = false

-- Complete list of equipment slots
local wowSlotCodes = {
    "HEADSLOT", "NECKSLOT", "SHOULDERSLOT", "CHESTSLOT", "WAISTSLOT", "LEGSSLOT", 
    "FEETSLOT", "WRISTSLOT", "HANDSSLOT", "FINGER0SLOT", "FINGER1SLOT", 
    "TRINKET0SLOT", "TRINKET1SLOT", "BACKSLOT", "MAINHANDSLOT", "SECONDARYHANDSLOT"
}

--- ====================================================================
--- CLASSIC API WRAPPER LAYER
--- ====================================================================
local GetContainerSlots, GetContainerLink

if C_Container and C_Container.GetContainerNumSlots then
    -- Modern API (Dragonflight/The War Within engine, modern Classic clients)
    GetContainerSlots = C_Container.GetContainerNumSlots
    GetContainerLink = C_Container.GetContainerItemLink
else
    -- Legacy API (Older Classic Era client baselines)
    GetContainerSlots = _G["GetContainerNumSlots"]
    GetContainerLink = _G["GetContainerItemLink"]
end

-- Classic inventory structures:
-- 0 = Backpack
-- 1 through 4 = Character Bag Slots
-- -1 = Main Bank Tab
-- 5 through 11 = Bank Bag Slots (Classic caps out at 11 total bag containers)
local classicContainerIds = { 0, 1, 2, 3, 4, -1, 5, 6, 7, 8, 9, 10, 11 }

-- Helper to check if a bag ID belongs to the bank in Classic
local function IsBankBag(bagId)
    return bagId == -1 or (bagId >= 5 and bagId <= 11)
end

local readBagsWithApi = function()
    for _, bag in ipairs(classicContainerIds) do        
        local numSlots = GetContainerSlots(bag)
        if numSlots and numSlots > 0 then
            for slot = 1, numSlots do
                local itemLink = GetContainerLink(bag, slot)
                if itemLink then
                    local itemId = LBIS:GetItemIdFromLink(itemLink)
                    if itemId then
                        local loc = IsBankBag(bag) and "bank" or "bag"
                        LBIS.UserItems[tonumber(itemId)] = loc
                    end
                end
            end
        end
    end
end

function LBIS:BuildItemCache()
    -- Clear previous cache safely
    table.wipe(LBIS.UserItems)
    table.wipe(LBIS.UserSlotCache)

    -- 1. Cache equipped items
    for i, slotCode in ipairs(wowSlotCodes) do
        local slotId = GetInventorySlotInfo(slotCode)
        if slotId then
            local itemLink = GetInventoryItemLink("player", slotId)
            if itemLink then
                local itemId = LBIS:GetItemIdFromLink(itemLink)
                if itemId then
                    LBIS.UserItems[tonumber(itemId)] = "player"
                    LBIS.UserSlotCache[slotCode] = tonumber(itemId)
                end
            end
        end
    end

    -- 2. Cache bag & bank items
    readBagsWithApi()

    LBIS.UserItemCacheBuilt = true
end

--- ====================================================================
--- EVENT HANDLING (Handles responsive updates across all versions)
--- ====================================================================

local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("PLAYER_LOGIN")
eventFrame:RegisterEvent("BAG_UPDATE")

-- 'PLAYER_EQUIPMENT_CHANGED' doesn't exist in early Classic codebases.
-- We fall back to 'UNIT_INVENTORY_CHANGED' to ensure compatibility with all Classic clients.
eventFrame:RegisterEvent("UNIT_INVENTORY_CHANGED")
eventFrame:RegisterEvent("BANKFRAME_OPENED")

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_LOGIN" then
        LBIS:BuildItemCache()
    elseif event == "BAG_UPDATE" then
        LBIS:BuildItemCache()
    elseif event == "UNIT_INVENTORY_CHANGED" then
        local unit = ...
        if unit == "player" then
            LBIS:BuildItemCache()
        end
    elseif event == "BANKFRAME_OPENED" then
        -- The WoW client will not supply bank inventory data over the API 
        -- until the player physically interacts with a bank NPC.
        LBIS:BuildItemCache()
    end
end)