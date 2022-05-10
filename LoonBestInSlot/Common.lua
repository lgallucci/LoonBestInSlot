function LoonBestInSlot:PreCacheItems()
    if LoonBestInSlot.AllItemsCached then return LoonBestInSlot.AllItemsCached; end

    LoonBestInSlot.AllItemsCached = true;

    for itemId, _ in pairs(LoonBestInSlot.Items) do

        if itemId and itemId ~= 0 then
            LoonBestInSlot:CacheItem(itemId);
        end
    end
    return LoonBestInSlot.AllItemsCached;
end

function LoonBestInSlot:CacheItem(itemId)
    LoonBestInSlot:GetItemInfo(itemId, function(cacheItem)
        if not cacheItem or cacheItem.Name == nil then
            LoonBestInSlot:ReCacheItem(itemId)
        end
    end);
end

function LoonBestInSlot:ReCacheItem(itemId)
    LoonBestInSlot:GetItemInfo(itemId, function(cacheItem)
        if not cacheItem or cacheItem.Name == nil then
            LoonBestInSlot:Error("Failed to cache ("..itemId.."): ", cacheItem);
        end
    end);
end

function LoonBestInSlot:GetPhaseNumbers(phaseText)
    local firstNumber, lastNumber = strsplit(">", phaseText);

    if firstNumber == nil then
        firstNumber = 0;
    end
    if lastNumber == nil then
        lastNumber = firstNumber;
    end

    return firstNumber, lastNumber;
end

function LoonBestInSlot:TableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function LoonBestInSlot:GetItemInfo(itemIdString, returnFunc)

    local itemId = tonumber(itemIdString);

    if not itemId or itemId <= 0 then
        returnFunc({ Name = nil, Link = nil, Quality = nil, Type = nil, SubType = nil, Texture = nil });
    end

    local cachedItem = LoonBestInSlot.ItemCache[itemId];

    if cachedItem then
        returnFunc(cachedItem);
    else
        local itemCache = Item:CreateFromItemID(itemId)

        itemCache:ContinueOnItemLoad(function()
            local itemId, itemType, subType = GetItemInfoInstant(itemId)

            local name = itemCache:GetItemName();
            
            local newItem = {
                Id = itemId,
                Name = name,
                Link = itemCache:GetItemLink(),
                Quality = itemCache:GetItemQuality(),
                Type = itemType,
                SubType = subType,
                Texture = itemCache:GetItemIcon(),
            };

            if name then
                LoonBestInSlot.ItemCache[itemId] = newItem;
            end
            
            returnFunc(newItem);            
        end);
    end           
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

local function stringify(object)
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
    return debugString
end

function LoonBestInSlot:Debug(startString, object)
    ChatFrame6:AddMessage("LoonBestInSlot:"..startString..stringify(object));
end

function LoonBestInSlot:Error(startString, object)
    print("LoonBestInSlot ERROR:"..startString..stringify(object));
end

function LoonBestInSlot:GetItemIdFromLink(itemLink)

    local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4,
    Suffix, Unique, LinkLvl, Name = string.find(itemLink,
    "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")

    return Id;
end