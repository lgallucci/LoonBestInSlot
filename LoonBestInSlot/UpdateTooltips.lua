local LibExtraTip = LibStub("LibExtraTip-1")
local iconpath = "Interface\\GLUES\\CHARACTERCREATE\\UI-CharacterCreate-Classes"
local iconCutoff = 6

local function iconOffset(col, row)
	local offsetString = (col * 64 + iconCutoff) .. ":" .. ((col + 1) * 64 - iconCutoff)
	return offsetString .. ":" .. (row * 64 + iconCutoff) .. ":" .. ((row + 1) * 64 - iconCutoff)
end

local function buildExtraTip(tooltip, entry)
    local r,g,b = .9,.8,.5
    LibExtraTip:AddLine(tooltip," ",r,g,b,true)
	LibExtraTip:AddLine(tooltip,"# Gear best for:",r,g,b,true)

	local combinedTooltip = {};
	local mageCount = 0;
	local warriorDpsCount = 0;
	local warlockCount = 0;
	local hunterCount = 0;

	for k, v in pairs(entry) do
		local classSpec = LoonBestInSlot.ClassSpec[k]
		if classSpec.Class == "Warrior" and (classSpec.Spec == "Fury" or classSpec.Spec == "Arms") then
			warriorDpsCount = warriorDpsCount + 1;
		end

		if classSpec.Class == "Warlock" then
			warlockCount = warlockCount + 1;
		end

		if classSpec.Class == "Mage" then
			mageCount = mageCount + 1;
		end

		if classSpec.Class == "Hunter" then
			hunterCount = hunterCount + 1;
		end
	end

	for k, v in pairs(entry) do
		local classSpec = LoonBestInSlot.ClassSpec[k]
		local foundMatch = false;

		for _, ttItem in pairs(combinedTooltip) do
			if (ttItem.Class == "Warrior" and warriorDpsCount == 2) or 
			   (ttItem.Class == "Warlock" and warlockCount == 3) or 
			   (ttItem.Class == "Mage" and mageCount == 3) or
			   (ttItem.Class == "Hunter" and hunterCount == 3) then
				if classSpec.Class == ttItem.Class and v.Bis == ttItem.Bis and v.Phase == ttItem.Phase then
					foundMatch = true;
					if ttItem.Class == "Warrior" and (ttItem.Spec == "Fury" or ttItem.Spec == "Arms") then
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

	for k, v in pairs(combinedTooltip) do
		local class = v.Class:upper()
		local color = RAID_CLASS_COLORS[class]
		local coords = CLASS_ICON_TCOORDS[class]
		local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t"
		
        if v.Phase == "0" then
            LibExtraTip:AddDoubleLine(tooltip, classfontstring .. " " .. v.Class .. " " .. v.Spec, v.Bis, color.r, color.g, color.b, color.r, color.g, color.b, true)
        else
            LibExtraTip:AddDoubleLine(tooltip, classfontstring .. " " .. v.Class .. " " .. v.Spec, v.Bis.." "..v.Phase, color.r, color.g, color.b, color.r, color.g, color.b, true)
        end
		
	end
	
end

local function onTooltipSetItem(tooltip, itemLink, quantity)
    if not itemLink then return end
    
	local itemString = string.match(itemLink, "item[%-?%d:]+")
	local itemId = ({ strsplit(":", itemString) })[2]

	if LoonBestInSlot.Items[itemId] and LoonBestInSlotSettings.ShowTooltip then
		buildExtraTip(tooltip, LoonBestInSlot.Items[itemId])
	end
end  

LoonBestInSlot:RegisterEvent("PLAYER_ENTERING_WORLD" , function ()
	LoonBestInSlot.EventFrame:UnregisterEvent("PLAYER_ENTERING_WORLD")
	LibExtraTip:AddCallback({type = "item", callback = onTooltipSetItem, allevents = true})
	LibExtraTip:RegisterTooltip(GameTooltip)
	LibExtraTip:RegisterTooltip(ItemRefTooltip)

    LoonBestInSlot:Startup();
end);