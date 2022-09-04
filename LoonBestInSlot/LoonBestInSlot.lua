local addonName = ...;

LBIS.ClassSpec = {};
LBIS.SpecToName = {};
LBIS.Items = {};
LBIS.SpecItems = {};
LBIS.Gems = {};
LBIS.SpecGems = {};
LBIS.Enchants = {};
LBIS.SpecEnchants = {};
LBIS.WowItemCache = {};
LBIS.WowSpellCache = {};
LBIS.AllItemsCached = false;
LBIS.CurrentPhase = 1;
LBIS.EventFrame = CreateFrame("FRAME",addonName.."Events")

LBISSettings = LBISSettings or { SelectedSpec = "", SelectedSlot = LBIS.L["All"], SelectedPhase = LBIS.L["All"], SelectedSourceType = LBIS.L["All"], SelectedZone = LBIS.L["All"], minimap = { hide = false, minimapPos = 180}, ShowTooltip = true }

SLASH_LOONBESTINSLOT1 = '/bis'
SlashCmdList["LOONBESTINSLOT"] = function(command)
	command = command:lower()
    
	if command == "" then
		LBIS.BrowserWindow:OpenWindow()
	end
end

function LBIS:Startup()

	if LBISSettings.ShowTooltip == nil then
		LBISSettings.ShowTooltip = true;
	end

	LBIS:RegisterMiniMap();
    LBIS:PreCacheItems();
end

function LBIS:RegisterEvent(...)
	if not LBIS.EventFrame.RegisteredEvents then
		LBIS.EventFrame.RegisteredEvents = { };
		LBIS.EventFrame:SetScript("OnEvent", function(self, event, ...)
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
			LBIS.EventFrame:RegisterEvent(event);
			LBIS.EventFrame.RegisteredEvents[event] = LBIS.EventFrame.RegisteredEvents[event] or { };
			table.insert(LBIS.EventFrame.RegisteredEvents[event], handler);
		else
			error("LBIS:RegisterEvent: All but the last passed parameters must be event names");
		end
	end
end

function LBIS:RegisterSpec(class, spec, phase)
	
	if not spec then spec = "" end
	
    local classSpec = {
		Class = class,
		Spec = spec,
		Phase = phase
	}
	
	classSpec.Id = class..spec

    LBIS.ClassSpec[classSpec.Id] = classSpec

    return classSpec
end

function LBIS:AddItem(bisEntry, id, slot, bis)

	if strlen(id) <= 0 then
		return
	end

	if LBIS.CurrentPhase < tonumber(bisEntry.Phase) then
		return;
	end
	
	if not LBIS.Items[id] then
		LBIS.Items[id] = {}
	end
	
	if zone == nil then
		zone = "";
	end

	if bisEntry.Phase == "0" then
		bis = LBIS.L["PreRaid"];
	elseif tonumber(bisEntry.Phase) < LBIS.CurrentPhase then
		bis = string.gsub(bis, "BIS", "Alt");
	end

	local searchedItem = LBIS.Items[id][bisEntry.Id];

	if searchedItem == nil then		

		item = { Id = id, Bis = bis, Phase = bisEntry.Phase, Slot = slot }

		LBIS.Items[id][bisEntry.Id] = item

		if not LBIS.SpecItems[bisEntry.Id] then
			LBIS.SpecItems[bisEntry.Id] = {}
		end
	
		LBIS.SpecItems[bisEntry.Id][tonumber(item.Id)] = item;
	else 		
		if bisEntry.Phase > searchedItem.Phase then
			searchedItem.Bis = bis;
		end

		if searchedItem.Phase == "0" then
			searchedItem.Phase = bisEntry.Phase;
		else 

			local firstNumber, lastNumber = LBIS:GetPhaseNumbers(searchedItem.Phase);

			if tonumber(bisEntry.Phase) > tonumber(lastNumber) then
				searchedItem.Phase = firstNumber..">"..bisEntry.Phase;
			else
				searchedItem.Phase = bisEntry.Phase;
			end
		end

		LBIS.SpecItems[bisEntry.Id][tonumber(id)] = searchedItem;
		LBIS.Items[id][bisEntry.Id] = searchedItem;
	end

end

function LBIS:AddGem(bisEntry, id, quality, isMeta)

	if strlen(id) <= 0 then
		return
	end

	if LBIS.CurrentPhase < tonumber(bisEntry.Phase) then
		return;
	end
	
	if not LBIS.Gems[id] then
		LBIS.Gems[id] = {}
	end	

	local searchedItem = LBIS.Gems[id][bisEntry.Id];

	if searchedItem == nil then
		if bisEntry.Phase == "0" then
			phase = "PreRaid";
		else
			phase = "Phase "..bisEntry.Phase;
		end

		searchedItem = { Id = id, Phase = phase, Quality = quality, IsMeta = isMeta }

		if not LBIS.SpecGems[bisEntry.Id] then
			LBIS.SpecGems[bisEntry.Id] = {}
		end
	end

	LBIS.SpecGems[bisEntry.Id][tonumber(searchedItem.Id)] = searchedItem;
	LBIS.Gems[id][bisEntry.Id] = searchedItem
end

function LBIS:AddEnchant(bisEntry, id, slot)

	if strlen(id) <= 0 then
		return
	end

	if LBIS.CurrentPhase < tonumber(bisEntry.Phase) then
		return;
	end
	
	if not LBIS.Enchants[id] then
		LBIS.Enchants[id] = {}
	end	

	local searchedItem = LBIS.Enchants[id][bisEntry.Id];

	if searchedItem == nil then

		searchedItem = { Id = id, Slot = slot, Phase = bisEntry.Phase }

		if not LBIS.SpecEnchants[bisEntry.Id] then
			LBIS.SpecEnchants[bisEntry.Id] = {}
		end
	end

	LBIS.SpecEnchants[bisEntry.Id][tonumber(searchedItem.Id)] = searchedItem;
	LBIS.Enchants[id][bisEntry.Id] = searchedItem
end