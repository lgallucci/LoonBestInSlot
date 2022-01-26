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
	
	for k, v in pairs(entry) do
		local entry = LoonBestInSlot.ClassSpec[k]
		local class = entry.Class:upper()
		local color = RAID_CLASS_COLORS[class]
		local coords = CLASS_ICON_TCOORDS[class]
		local classfontstring = "|T" .. iconpath .. ":14:14:::256:256:" .. iconOffset(coords[1] * 4, coords[3] * 4) .. "|t"
		
        if v.Phase == "0" then
            LibExtraTip:AddDoubleLine(tooltip, classfontstring .. " " .. entry.Class .. " " .. entry.Spec .. " " .. entry.Comment, v.Bis, color.r, color.g, color.b, color.r, color.g, color.b, true)
        else
            LibExtraTip:AddDoubleLine(tooltip, classfontstring .. " " .. entry.Class .. " " .. entry.Spec .. " " .. entry.Comment, v.Bis.." "..v.Phase, color.r, color.g, color.b, color.r, color.g, color.b, true)
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