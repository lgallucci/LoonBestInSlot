local addonName = ...

LoonBestInSlot = {};
LoonBestInSlot.ClassSpec = {};
LoonBestInSlot.SpecToName = {};
LoonBestInSlot.Items = {};
LoonBestInSlot.SpecItems = {};
LoonBestInSlot.ItemCache = {};
LoonBestInSlot.AllItemsCached = false;
LoonBestInSlot.CurrentPhase = 4;
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

function LoonBestInSlot:RegisterSpec(class, spec, phase)
	
	if not spec then spec = "" end
	
    local classSpec = {
		Class = class,
		Spec = spec,
		Phase = phase
	}
	
	classSpec.Id = class..spec

    LoonBestInSlot.ClassSpec[classSpec.Id] = classSpec

    return classSpec
end

function LoonBestInSlot:AddItem(bisEntry, id, slot, description, bis)

	if strlen(id) <= 0 then
		return
	end
	

	if not LoonBestInSlot.Items[id] then
		LoonBestInSlot.Items[id] = {}
	end
	
	if zone == nil then
		zone = "";
	end

	if bisEntry.Phase == "0" then
		bis = "PreRaid";
	elseif tonumber(bisEntry.Phase) < LoonBestInSlot.CurrentPhase then
		bis = string.gsub(bis, "BIS", "Alt");
	end

	local searchedItem = LoonBestInSlot.Items[id][bisEntry.Id];

	if searchedItem == nil then		

		item = { Id = id, Bis = bis, Phase = bisEntry.Phase, Slot = slot }

		LoonBestInSlot.Items[id][bisEntry.Id] = item

		if not LoonBestInSlot.SpecItems[bisEntry.Id] then
			LoonBestInSlot.SpecItems[bisEntry.Id] = {}
		end
	
		LoonBestInSlot.SpecItems[bisEntry.Id][tonumber(item.Id)] = item;
	else 		
		if bisEntry.Phase > searchedItem.Phase then
			searchedItem.Bis = bis;
		end

		if searchedItem.Phase == "0" then
			searchedItem.Phase = bisEntry.Phase;
		else 

			local firstNumber, lastNumber = LoonBestInSlot:GetPhaseNumbers(searchedItem.Phase);

			if tonumber(bisEntry.Phase) > tonumber(lastNumber) then
				searchedItem.Phase = firstNumber..">"..bisEntry.Phase;
			else
				searchedItem.Phase = bisEntry.Phase;
			end
		end

		LoonBestInSlot.SpecItems[bisEntry.Id][tonumber(id)] = searchedItem		
		LoonBestInSlot.Items[id][bisEntry.Id] = searchedItem;
	end

end