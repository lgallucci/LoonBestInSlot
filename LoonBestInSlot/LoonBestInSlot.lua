local addonName = ...

LoonBestInSlot = {}
LoonBestInSlot.ClassSpec = {}
LoonBestInSlot.SpecToName = {}
LoonBestInSlot.Items = {}
LoonBestInSlot.SpecItems = {}
LoonBestInSlot.ItemCache = {}
LoonBestInSlot.AllItemsCached = false;
LoonBestInSlot.PendingItems = {}
LoonBestInSlot.EventFrame = CreateFrame("FRAME",addonName.."Events")

LoonBestInSlotSettings = LoonBestInSlotSettings or { SelectedSpec = "", SelectedSlot = "All", SelectedPhase = "All", SelectedSource = "All", SelectedZone = "All", minimap = { hide = false, minimapPos = 180}, ShowTooltip = true }

SLASH_LOONBESTINSLOT1 = '/bis'
SlashCmdList["LOONBESTINSLOT"] = function(command)
	command = command:lower()
    
	if command == "" then
		LoonBestInSlot.BrowserWindow:OpenWindow()
	end
end

function LoonBestInSlot:Startup()
	LoonBestInSlot:RegisterEvent("GET_ITEM_INFO_RECEIVED", function(itemId, success)
        if success and LoonBestInSlot.PendingItems[itemId] then
            local cacheSuccessful = LoonBestInSlot:GetItemForCache(itemId);
            
            if cacheSuccessful then
                self.PendingItems[itemId] = nil;
            end
        end
    end);

	if LoonBestInSlotSettings.ShowTooltip == nil then
		LoonBestInSlotSettings.ShowTooltip = true;
	end

	LoonBestInSlot:RegisterMiniMap();
    LoonBestInSlot:PreCacheItems();
end

function LoonBestInSlot:RegisterEvent(...)
	if not LoonBestInSlot.EventFrame.RegisteredEvents then
		LoonBestInSlot.EventFrame.RegisteredEvents = { };
		LoonBestInSlot.EventFrame:SetScript("OnEvent", function(self, event, ...)
			local handlers = self.RegisteredEvents[event];
			if handlers then
				for _, handler in ipairs(handlers) do
					handler(...);
				end
			end
		end);
	end

	local params = select("#", ...);

	local handler = select(params, ...);
	if type(handler) ~= "function" then
		error("LoonMasterLoot:RegisterEvent: The last passed parameter must be the handler function");
		return;
	end

	for i = 1, params - 1 do
		local event = select(i, ...);
		if type(event) == "string" then
			LoonBestInSlot.EventFrame:RegisterEvent(event);
			LoonBestInSlot.EventFrame.RegisteredEvents[event] = LoonBestInSlot.EventFrame.RegisteredEvents[event] or { };
			table.insert(LoonBestInSlot.EventFrame.RegisteredEvents[event], handler);
		else
			error("LoonMasterLoot:RegisterEvent: All but the last passed parameters must be event names");
		end
	end
end

function LoonBestInSlot:RegisterSpec(class, spec)
	
	if not spec then spec = "" end
	
    local classSpec = {
		Class = class,
		Spec = spec
	}
	
	classSpec.ID = class..spec

    LoonBestInSlot.ClassSpec[classSpec.ID] = classSpec
    return classSpec
end

function LoonBestInSlot:AddItem(bisEntry, id, slot, description, bis, phase, source, dropLocation, zone)

	if strlen(id) <= 0 then
		return
	end

	if not LoonBestInSlot.Items[id] then
		LoonBestInSlot.Items[id] = {}
	end
	
	if zone == nil then
		zone = "";
	end

	item = { Id = id, Bis = bis, Phase = phase, Slot = slot, Source = source, DropLocation = dropLocation, Zone = zone }

	LoonBestInSlot.Items[id][bisEntry.ID] = item

	if not LoonBestInSlot.SpecItems[bisEntry.ID] then
		LoonBestInSlot.SpecItems[bisEntry.ID] = {}
	end
	
	table.insert(LoonBestInSlot.SpecItems[bisEntry.ID], item);
end