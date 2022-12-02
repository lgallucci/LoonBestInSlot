local iconpath = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-Classes"
local iconCutoff = 6

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function isInEnabledPhase(phaseText) 

	local showTooltip = false;
	
	if LBISSettings.PhaseTooltip[LBIS.L["PreRaid"]] == true then
		if strfind(phaseText, "0") ~= nil then
			showTooltip = true;
		end
	end
	if LBISSettings.PhaseTooltip[LBIS.L["Phase 1"]] == true then
		if strfind(phaseText, "1") ~= nil then
			showTooltip = true;
		end
	end
	
	return showTooltip;
end

local function buildCombinedTooltip(entry, combinedTooltip, foundCustom)

	local mageCount, warriorDpsCount, warlockCount = 0, 0, 0;
	local hunterCount, dkCount, rogueCount = 0, 0, 0;

	for k, v in pairs(entry) do
		if LBISSettings.Tooltip[k] and isInEnabledPhase(v.PhaseList) and foundCustom[k] == nil then
			local classSpec = LBIS.ClassSpec[k]
			if classSpec.Class == LBIS.L["Warrior"] and (classSpec.Spec == LBIS.L["Fury"] or classSpec.Spec == LBIS.L["Arms"]) then
				warriorDpsCount = warriorDpsCount + 1;
			end

			if classSpec.Class == LBIS.L["Warlock"] then
				warlockCount = warlockCount + 1;
			end

			if classSpec.Class == LBIS.L["Mage"] then
				mageCount = mageCount + 1;
			end

			if classSpec.Class == LBIS.L["Hunter"] then
				hunterCount = hunterCount + 1;
			end

			if classSpec.Class == LBIS.L["Death Knight"] then
				dkCount = dkCount + 1;
			end
		
			if classSpec.Class == LBIS.L["Rogue"] then
				rogueCount = rogueCount + 1;
			end
		end
	end
	
	for k, v in pairs(entry) do
		if LBISSettings.Tooltip[k] and isInEnabledPhase(v.PhaseList) and foundCustom[k] == nil then
			local classSpec = LBIS.ClassSpec[k]
			local foundMatch = false;

			for _, ttItem in pairs(combinedTooltip) do
				if (ttItem.Class == LBIS.L["Warrior"] and warriorDpsCount == 2) or 
				   (ttItem.Class == LBIS.L["Warlock"] and warlockCount == 3) or 
				   (ttItem.Class == LBIS.L["Mage"] and mageCount == 3) or
				   (ttItem.Class == LBIS.L["Hunter"] and hunterCount == 3) or
				   (ttItem.Class == LBIS.L["Death Knight"] and dkCount == 3) or
				   (ttItem.Class == LBIS.L["Rogue"] and rogueCount == 3) then
					if classSpec.Class == ttItem.Class and v.Bis == ttItem.Bis and v.Phase == ttItem.Phase then
						foundMatch = true;
						if ttItem.Class == LBIS.L["Warrior"] and (ttItem.Spec == LBIS.L["Fury"] or ttItem.Spec == LBIS.L["Arms"]) then
							ttItem.Spec = "DPS";
						else
							ttItem.Spec = "";
						end
					end
				end
			end

			if not foundMatch then
				table.insert(combinedTooltip, { Class = classSpec.Class, Spec = classSpec.Spec, Bis = v.Bis, Phase = v.Phase })
			end
		end
	end
end

local function buildCustomTooltip(priorityEntry, combinedTooltip)

	local foundCustom = {}
	local showTooltip = false;
	if LBISSettings.ShowCustom and priorityEntry ~= nil then
		for k, v in pairs(priorityEntry) do
		
			local classSpec = LBIS.ClassSpec[k]
			foundCustom[k] = true;
				
			table.insert(combinedTooltip, { Class = classSpec.Class, Spec = classSpec.Spec, Bis = "Custom", Phase = "#"..v })
		end
	end

	return foundCustom;
end
    
local function buildTooltip(tooltip, combinedTooltip)

	if #combinedTooltip > 0 then
		local r,g,b = .9,.8,.5
		tooltip:AddLine(" ",r,g,b,true)
		tooltip:AddLine(LBIS.L["# Best for:"],r,g,b,true)
	end

	for k, v in pairs(combinedTooltip) do
		local class = LBIS.ENGLISH_CLASS[v.Class]:upper()
		local color = RAID_CLASS_COLORS[class]
		local coords = CLASS_ICON_TCOORDS[class]
		local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t"
		
        if v.Phase == "0" then
            tooltip:AddDoubleLine(classfontstring .. " " .. v.Class .. " " .. v.Spec, v.Bis, color.r, color.g, color.b, color.r, color.g, color.b, true)
        else
            tooltip:AddDoubleLine(classfontstring .. " " .. v.Class .. " " .. v.Spec, v.Bis.." "..string.gsub(v.Phase, "0", "P"), color.r, color.g, color.b, color.r, color.g, color.b, true)
        end
	end
end

local function CheckRecipe(tt, classID)
	if classID == Enum.ItemClass.Recipe then
		tt.isFirstMoneyLine = not tt.isFirstMoneyLine
		return tt.isFirstMoneyLine
	end
end

local function onTooltipSetItem(tooltip, ...)

	local _, itemLink = tooltip:GetItem()
    if not itemLink then return end
	local itemString = string.match(itemLink, "item[%-?%d:]+")
	local itemId = tonumber(({ strsplit(":", itemString) })[2])

	LBIS:GetItemInfo(itemId, function(item)
		local combinedTooltip = {};
		local foundCustom = {};

		if CheckRecipe(tooltip, item.Class) then
			return;
		end

		if LBIS.CustomList.Items[itemId] then
			foundCustom = buildCustomTooltip(LBIS.CustomList.Items[itemId], combinedTooltip)
		end

		if LBIS.Items[itemId] then
			buildCombinedTooltip(LBIS.Items[itemId], combinedTooltip, foundCustom)
		end

		buildTooltip(tooltip, combinedTooltip);
	end)
end

local function onTooltipSetSpell(tooltip, ...)

	local _, spellId = tooltip:GetSpell()
    if not spellId then return end

	local combinedTooltip = {};

	if LBIS.Spells[spellId] then
		buildCombinedTooltip(LBIS.Spells[spellId], combinedTooltip, {})
	end

	buildTooltip(tooltip, combinedTooltip);
end

local hookStore = {};
local function hookScript(tip, script, prehook)
	if not hookStore[tip] then hookStore[tip] = {} end
	local control
	-- check for existing hook
	control = hookStore[tip][script]
	if control then
		control[1] = prehook or control[1]
		return
	end
	-- prepare upvalues
	local orig = tip:GetScript(script)
	control = {prehook}
	hookStore[tip][script] = control
	-- install hook stub
	local stub = function(...)
		local h
		-- prehook
		h = control[1]
		if h then h(...) end
		-- original hook
		if orig then orig(...) end
	end
	tip:SetScript(script, stub)
end

local function registerTooltip(tooltip)

	hookScript(tooltip, "OnTooltipSetItem", onTooltipSetItem);
	hookScript(tooltip, "OnTooltipSetSpell", onTooltipSetSpell);

end

LBIS:RegisterEvent("PLAYER_ENTERING_WORLD" , function ()
	LBIS.EventFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")

	registerTooltip(GameTooltip);
	registerTooltip(ItemRefTooltip);
	registerTooltip(ShoppingTooltip1);

    LBIS:Startup();
end);