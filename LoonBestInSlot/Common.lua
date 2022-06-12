function LBIS:PreCacheItems()
    if LBIS.AllItemsCached then return LBIS.AllItemsCached; end

    LBIS.AllItemsCached = true;

    for itemId, _ in pairs(LBIS.Items) do

        if itemId and itemId ~= 0 then
            LBIS:CacheItem(itemId);
        end
    end
    return LBIS.AllItemsCached;
end

function LBIS:CacheItem(itemId)
    LBIS:GetItemInfo(itemId, function(cacheItem)
        if not cacheItem or cacheItem.Name == nil then
            LBIS:ReCacheItem(itemId)
        end
    end);
end

function LBIS:ReCacheItem(itemId)
    LBIS:GetItemInfo(itemId, function(cacheItem)
        if not cacheItem or cacheItem.Name == nil then
            LBIS:Error("Failed to cache ("..itemId.."): ", cacheItem);
        end
    end);
end

function LBIS:GetPhaseNumbers(phaseText)
    local firstNumber, lastNumber = strsplit(">", phaseText);

    if firstNumber == nil then
        firstNumber = 0;
    end
    if lastNumber == nil then
        lastNumber = firstNumber;
    end

    return firstNumber, lastNumber;
end

function LBIS:TableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function LBIS:GetItemInfo(itemIdString, returnFunc)

    local itemId = tonumber(itemIdString);

    if not itemId or itemId <= 0 then
        returnFunc({ Name = nil, Link = nil, Quality = nil, Type = nil, SubType = nil, Texture = nil });
    end

    local cachedItem = LBIS.ItemCache[itemId];

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
                LBIS.ItemCache[itemId] = newItem;
            end
            
            returnFunc(newItem);            
        end);
    end           
end

function LBIS:Dump(o)
    if type(o) == 'table' then
       local s = '{ '
       for k,v in pairs(o) do
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. LBIS:Dump(v) .. ','
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
        debugString = LBIS:Dump(object);
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

function LBIS:Debug(startString, object)
    ChatFrame6:AddMessage("LBIS:"..startString..stringify(object));
end

function LBIS:Error(startString, object)
    print("LoonBestInSlot ERROR:"..startString..stringify(object));
end

function LBIS:GetItemIdFromLink(itemLink)

    local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4,
    Suffix, Unique, LinkLvl, Name = string.find(itemLink,
    "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*):?(%-?%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")

    return Id;
end