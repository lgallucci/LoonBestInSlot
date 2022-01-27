function LoonBestInSlot:PreCacheItems()
    if LoonBestInSlot.AllItemsCached then return LoonBestInSlot.AllItemsCached; end

    LoonBestInSlot.AllItemsCached = true;

    for itemId, _ in pairs(LoonBestInSlot.Items) do

        if itemId and itemId ~= 0 then
            local cacheSuccessful = LoonBestInSlot:GetItemForCache(itemId);
            LoonBestInSlot.AllItemsCached = LoonBestInSlot.AllItemsCached and cacheSuccessful;

            if not cacheSuccessful then
                LoonBestInSlot.PendingItems[itemId] = true;
            end
        end
    end
    return LoonBestInSlot.AllItemsCached;
end

function LoonBestInSlot:GetItemForCache(itemId)
    local item = LoonBestInSlot:GetItemInfo(itemId);
    if item and item.Name then
        return true;
    end
    return false;
end

function LoonBestInSlot:GetItemInfo(itemIdString)

    local itemId = tonumber(itemIdString);

    if not itemId then
        LoonBestInSlot:Debug("bad itemId: ", itemIdString);
        return;
    end

    local item = LoonBestInSlot.ItemCache[itemId];

    if itemId <= 0 then
        return { Name = nil, Link = nil, Quality = nil, Type = nil, SubType = nil, Texture = nil };
    end

    if not item then
        local name, link, quality, _, _, itemtype, subtype, _, _, texture = GetItemInfo(itemId);

            item = {
                Id = itemId,
                Name = name,
                Link = link,
                Quality = quality,
                Type = itemtype,
                SubType = subtype,
                Texture = texture,
            };

        if name then
            LoonBestInSlot.ItemCache[itemId] = item;
        end
    end

    return item;
end

function LoonBestInSlot:Dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. LoonBestInSlot:Dump(v) .. ','
       end
       return s .. '} '
    else
       return tostring(o)
    end
end

function LoonBestInSlot:Debug(startString, object)
    local objectType = type(object);
    local debugString = "";

    if objectType == "table" then
        debugString = LoonBestInSlot:Dump(object);
    elseif objectType == "number" or objectType == "boolean" then
        debugString = tostring(object);
    elseif objectType == "nil" then
        debugString = "nil";
    elseif objectType == "string" then
        debugString = object;
    else
        debugString = "Tried to debug an unknown type: "..objectType;
    end

    ChatFrame6:AddMessage(startString..debugString);
end

function LoonBestInSlot:GetItemIdFromLink(itemLink)

    local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4,
    Suffix, Unique, LinkLvl, Name = string.find(itemLink,
    "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")

    return Id;
end