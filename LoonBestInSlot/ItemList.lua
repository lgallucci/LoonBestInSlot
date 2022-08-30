local VendorPrice = AtlasLoot.Data.VendorPrice;

local itemSlotOrder = {}
itemSlotOrder[LBIS.L["Head"]] = 0;
itemSlotOrder[LBIS.L["Shoulder"]] = 1;
itemSlotOrder[LBIS.L["Back"]] = 2;
itemSlotOrder[LBIS.L["Chest"]] = 3;
itemSlotOrder[LBIS.L["Wrist"]] = 4;
itemSlotOrder[LBIS.L["Hands"]] = 5;
itemSlotOrder[LBIS.L["Waist"]] = 6;
itemSlotOrder[LBIS.L["Legs"]] = 7;
itemSlotOrder[LBIS.L["Feet"]] = 8;
itemSlotOrder[LBIS.L["Neck"]] = 9;
itemSlotOrder[LBIS.L["Ring"]] = 10;
itemSlotOrder[LBIS.L["Trinket"]] = 11;
itemSlotOrder[LBIS.L["Main Hand"]] = 12;
itemSlotOrder[LBIS.L["Off Hand"]] = 13;
itemSlotOrder[LBIS.L["Two Hand"]] = 14;
itemSlotOrder[LBIS.L["Shield"]] = 15;
itemSlotOrder[LBIS.L["Ranged"]] = 16;
itemSlotOrder[LBIS.L["Wand"]] = 17;
itemSlotOrder[LBIS.L["Totem"]] = 18;
itemSlotOrder[LBIS.L["Idol"]] = 19;
itemSlotOrder[LBIS.L["Libram"]] = 20;

local function itemSortFunction(table, k1, k2)

    local item1 = table[k1];
    local item2 = table[k2];

    local item1Score = 0;
    local item2Score = 0;

    if itemSlotOrder[item1.Slot] < itemSlotOrder[item2.Slot] then
        item1Score = item1Score + 1000;
    end
    if itemSlotOrder[item1.Slot] > itemSlotOrder[item2.Slot] then
        item2Score = item2Score +  1000;
    end

    if string.find(item1.Bis, "BIS") ~= nil then
        item1Score = item1Score + 100;
    end    
    if string.find(item2.Bis, "BIS") ~= nil then
        item2Score = item2Score + 100;
    end

    local _, lastNumber1 = LBIS:GetPhaseNumbers(item1.Phase)
    local _, lastNumber2 = LBIS:GetPhaseNumbers(item2.Phase)

    item1Score = item1Score + lastNumber1;
    item2Score = item2Score + lastNumber2;

    if item1Score == item2Score then
        return item1.Id > item2.Id;
    else
        return item1Score > item2Score
    end
end

function spairs(t, order)

    -- collect the keys
    local keys = {}

    if t ~= nil then
        for k in pairs(t) do keys[#keys+1] = k end

        -- if order function given, sort by it by passing the table and keys a, b,
        -- otherwise just sort the keys 
        if order then
            table.sort(keys, function(a,b) return order(t, a, b) end)
        else
            table.sort(keys)
        end    
    end
    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

local alSources = {};
alSources["honor"] = LBIS.L["Honor"];
alSources["honorA"] = LBIS.L["Honor"];
alSources["honorH"] = LBIS.L["Honor"];
alSources["BoJ"] = LBIS.L["Badges of Justice"];
alSources["SpiritShard"] = LBIS.L["Spirit Shards"];
alSources["pvpArathi"] = LBIS.L["Arathi Basin Marks"];
alSources["pvpWarsong"] = LBIS.L["Warsong Gulch Marks"];
alSources["pvpAlterac"] = LBIS.L["Alterac Vally Marks"];
alSources["pvpEye"] = LBIS.L["Eye of the Storm Marks"];
alSources["arena"] = LBIS.L["Arena Points"];

local function printSource(itemId, specItemSource, dl)

    local text = "";

    local sourceText = specItemSource.Source;
    local sourceNumberText = specItemSource.SourceNumber;
    local sourceLocationText = specItemSource.SourceLocation;

    if VendorPrice ~= nil then
        local vendorText = VendorPrice.GetVendorPriceForItem(tonumber(itemId));
        
        if vendorText ~= nil then
            local source1, source1Amount, source2, source2Amount, source3, source3Amount = strsplit(":", vendorText)

            if source1 ~= nil and source1 ~= "" and alSources[source1] ~= nil then
                sourceText = alSources[source1].." ("..source1Amount..")"
                sourceNumberText = "";
            end

            if source2 ~= nil and source2 ~= "" and alSources[source2] ~= nil then
                sourceText = sourceText..", "..alSources[source2].." ("..source2Amount..")"
            end

            if source3 ~= nil and source3 ~= "" and alSources[source3] ~= nil then
                sourceText = sourceText..", "..alSources[source3].." ("..source3Amount..")"
            end
        end
    end

    text = sourceText;

    if sourceNumberText ~= "" then
        text = text.." ("..sourceNumberText..")";    
    end

    if sourceLocationText ~= "" then
        text = text.." - "..sourceLocationText;    
    end

    dl:SetText(text);
end

local failedLoad = false;

local function createItemRow(specItem, specItemSource, point)
    local window = LBIS.BrowserWindow.Window;
    local spacing = 1;
    local alt_color = false;
    local name = "frame_"..specItem.Id;
    local f, t, l, b, d, dl = nil, nil, nil, nil, nil, nil, nil;
    local reusing = false;
    
    -- attempting to reuse a previous child frame if it exists 
    -- (which should include the previously created fontstring and button)
    if(next(deleted_windows) ~= nil) then
        for i=1, #deleted_windows do
            if(name == deleted_windows[i]:GetName()) then
                f = deleted_windows[i];
                reusing = true;
            end
        end
    end
    
    if not resuing then
        f = CreateFrame("Frame", "frame_"..specItem.Id, window.Container);

        LBIS:GetItemInfo(specItem.Id, function(item)
            if item == nil or item.Id == nil or item.Link == nil or item.Type == nil then
                LBIS:Error("Failed Load: "..specItem.Id);
                failedLoad = true;
                return point;
            end
            --Create Item Button and Text
        
            b = CreateFrame("Button", nil, f);
            b:SetSize(32, 32);
            local bt = b:CreateTexture();
            bt:SetAllPoints();
            bt:SetTexture(item.Texture);
            b:SetPoint("TOPLEFT", f, 2, -5);

            SetTooltipOnButton(b, item);
        
            t = f:CreateFontString(nil, nil, "GameFontNormal");
            t:SetText((item.Link or item.Name):gsub("[%[%]]", ""));
            t:SetPoint("TOPLEFT", b, "TOPRIGHT", 2, -2);

            local type = item.Type;
            if item.Subtype and item.Type ~= item.Subtype then
                type = item.Type .. ", " .. item.Subtype;
            end
            type = type.. ", "..specItem.Slot;
            local st = f:CreateFontString(nil, nil,"GameFontNormalGraySmall");
            st:SetText(type);
            st:SetPoint("BOTTOMLEFT", b, "BOTTOMRIGHT", 2, 2);

            local pt = f:CreateFontString(nil, nil, "GameFontNormalLarge");
            if specItem.Phase == "0" then
                pt:SetText("("..specItem.Bis..")");
            else
                pt:SetText("("..specItem.Bis.." "..specItem.Phase..")");
            end
            pt:SetPoint("TOPLEFT", t, "TOPRIGHT", 4, 4);

            --Create Drop Text
            local dtColor = "|cFF7727FF";
            if specItemSource.SourceType == LBIS.L["Profession"] then
                dtColor = "|cFF33ADFF";
            elseif specItemSource.SourceType == LBIS.L["Reputation"] then
                dtColor = "|cFF23E4C4";
            elseif specItemSource.SourceType == LBIS.L["Quest"] then
                dtColor = "|cFFFFEF27";
            elseif specItemSource.SourceType == LBIS.L["Dungeon Token"] then
                dtColor = "|cFFFF276D";
            elseif specItemSource.SourceType == LBIS.L["Vendor"] then
                dtColor = "|cFF43DC00";
            elseif specItemSource.SourceType == LBIS.L["PvP"] then
                dtColor = "|cFFE52AED";
            elseif specItemSource.SourceType == LBIS.L["Transmute"] then
                dtColor = "|cFFFC6A03";
            end
            d = f:CreateFontString(nil, nil, "GameFontNormal");
            d:SetText(dtColor..specItemSource.SourceType);
            d:SetJustifyH("LEFT");
            d:SetWidth(window.ScrollFrame:GetWidth() / 2);
            d:SetPoint("TOPLEFT", (window.ScrollFrame:GetWidth() / 2), -5);

            dl = f:CreateFontString(nil, nil, "GameFontNormalSmall");

            if specItemSource.SourceType == LBIS.L["Transmute"] then
            
                LBIS:GetItemInfo(tonumber(specItemSource.Source), function(transmuteItem)

                    local tb = CreateFrame("Button", nil, f);
                    tb:SetSize(32, 32);
                    local bt = tb:CreateTexture();
                    bt:SetAllPoints();
                    bt:SetTexture(transmuteItem.Texture);
                    tb:SetPoint("BOTTOMLEFT", dl, "BOTTOMRIGHT", 5, -2);
                    SetTooltipOnButton(tb, transmuteItem);
                                        
                    local ft = f:CreateFontString(nil, nil, "GameFontNormalSmall")
                    ft:SetText("From:");
                    ft:SetPoint("TOPRIGHT", tb, "TOPLEFT", -3, -3);
                end);

                dl:SetText(specItemSource.SourceLocation);
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            else
                printSource(specItem.Id, specItemSource, dl)
                dl:SetPoint("TOPLEFT", d, "BOTTOMLEFT", 0, -5);
            end      

            local userItemCache = LBIS.UserItems[item.Id];
            if userItemCache then
                local ot = f:CreateTexture(nil,"BACKGROUND")
                ot:SetSize(24, 24);
                if userItemCache == "player" then
                    ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/checkmark.tga")
                elseif userItemCache == "bag" then
                    ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/bag.tga")
                elseif userItemCache == "bank" then
                    ot:SetTexture("Interface/AddOns/LoonBestInSlot/Icons/bank.tga")
                end
                ot:SetPoint("TOPRIGHT", -2, -6);
            end            
        end);
        
        l = f:CreateLine();
        l:SetColorTexture(1,1,1,0.5);
        l:SetThickness(1);
        l:SetStartPoint("BOTTOMLEFT",5, 0);
        l:SetEndPoint("BOTTOMRIGHT",-5, 0);
    end
    -- even if we are reusing, it may not be in the same order
    f:SetSize(window.ScrollFrame:GetWidth(), 42);
    f:ClearAllPoints();
    f:SetPoint("TOPLEFT", window.Container, 0, point);
    
    point = point - (f:GetHeight()+spacing);
    
    LBIS.BrowserWindow.MaxHeight = LBIS.BrowserWindow.MaxHeight + (f:GetHeight()+spacing);

    f:Show(); -- forcing a show since if we are reusing, the old child was previously hidden

    return point;
end

local function IsInSlot(specItem)
    if LBISSettings.SelectedSlot == LBIS.L["All"] then
        return true;
    elseif LBISSettings.SelectedSlot == specItem.Slot then
        return true;
    end
    return false;
end

local function FindInPhase(phaseText, phase)

    local phaseNumber = tonumber(phase);

    local firstNumber, lastNumber = LBIS:GetPhaseNumbers(phaseText);

    if firstNumber == nil then
        return false;
    end

    return tonumber(firstNumber) <= phaseNumber and tonumber(lastNumber) >= phaseNumber;               
end

local function IsInPhase(specItem, specItemSource)
    if specItemSource.SourceType == LBIS.L["Token"] then
        return false;
    elseif strfind(specItem.Bis, LBIS.L["Transmute"]) ~= nil then
        return false;
    elseif LBISSettings.SelectedPhase == LBIS.L["All"] and specItem.Phase ~= "0" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["PreRaid"] and specItem.Phase == "0" then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 1"] and FindInPhase(specItem.Phase, "1") then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 2"] and FindInPhase(specItem.Phase, "2") then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 3"] and FindInPhase(specItem.Phase, "3") then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 4"] and FindInPhase(specItem.Phase, "4") then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["Phase 5"] and FindInPhase(specItem.Phase, "5") then
        return true;
    elseif LBISSettings.SelectedPhase == LBIS.L["BIS"] and strfind(specItem.Bis, "BIS") ~= nil then
        return true;
    end
    return false;
end

local function IsInSource(specItem)
    if LBISSettings.SelectedSourceType == LBIS.L["All"] then
        return true;
    elseif LBISSettings.SelectedSourceType == specItem.SourceType then
        return true;
    end
    return false;
end

local function IsInZone(specItem)
    if LBISSettings.SelectedZone == LBIS.L["All"] then
        return true;
    elseif strfind(specItem.SourceLocation, LBISSettings.SelectedZone) ~= nil then
        return true;
    end
    return false;
end

local function IsNotInClassic(specItem)
    if specItem.SourceType == LBIS.L["Legacy"] then
        return false
    end
    return true;
end

function updateItemsForSpec()
            
    if LBISSettings.SelectedSpec == "" then
        return;
    end

    local specItems = LBIS.SpecItems[LBIS.SpecToName[LBISSettings.SelectedSpec]];

    local window = LBIS.BrowserWindow.Window;
    local point = -2;
    local function clear_content(self)
        for i=1, self:GetNumChildren() do
        
            local child = select(i, self:GetChildren());
            
            -- Saving a reference to our previous child frame so that we can reuse it later
            if(not tContains(deleted_windows, child)) then 
                tinsert(deleted_windows, child) ;
            end
            
            child:Hide();
        end
    end

    clear_content(window.Container);
    
    LBIS.BrowserWindow.MaxHeight = 0;
    
    window.ScrollFrame.content = nil;

    local topl = window.Container:CreateLine();
    topl:SetColorTexture(1,1,1,0.5);
    topl:SetThickness(1);
    topl:SetStartPoint("TOPLEFT",5, 0);
    topl:SetEndPoint("TOPRIGHT",-5, 0);
    
    failedLoad = false;

    for itemId, specItem in spairs(specItems, itemSortFunction) do
        
        local specItemSource = LBIS.ItemSources[tonumber(specItem.Id)];

        if specItemSource == nil then
            LBIS:Error("Missing item source: ", specItem);
        else
            if IsInSlot(specItem) and IsInPhase(specItem, specItemSource) and IsInSource(specItemSource) and IsInZone(specItemSource) and IsNotInClassic(specItemSource) then
                point = createItemRow(specItem, specItemSource, point);
            end
        end
    end

    if failedLoad then
        LBIS:Error("Failed to load one or more items into browser. Type /reload to attempt to fix", "");
    end

    window.Container:SetSize(window.ScrollFrame:GetWidth(), window.ScrollFrame:GetHeight());

    if LBIS.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight() > 0 then
        window.ScrollBar:SetMinMaxValues(0, (LBIS.BrowserWindow.MaxHeight-window.ScrollFrame:GetHeight()));
        window.ScrollBar:Enable();
    else
        window.ScrollBar:SetMinMaxValues(0, 0);
        window.ScrollBar:Disable();
    end
    window.ScrollFrame.content = window.Container;
    window.ScrollFrame:SetScrollChild(window.Container);

end

function LBIS.ItemList:UpdateItems()
    updateItemsForSpec();
end

function LBIS.ItemList:Open()
    
    local window = LBIS.BrowserWindow.Window;

    local spec_opts = {
        ['name']='slot',
        ['parent']=window,
        ['title']='Slot:',
        ['items']= { LBIS.L["All"], LBIS.L["Head"], LBIS.L["Shoulder"], LBIS.L["Back"], LBIS.L["Chest"], LBIS.L["Wrist"], LBIS.L["Hands"], LBIS.L["Waist"], LBIS.L["Legs"], LBIS.L["Feet"], LBIS.L["Neck"], LBIS.L["Ring"], LBIS.L["Trinket"], LBIS.L["Main Hand"], LBIS.L["Off Hand"], LBIS.L["Two Hand"], LBIS.L["Shield"], LBIS.L["Ranged"], LBIS.L["Wand"], LBIS.L["Totem"], LBIS.L["Idol"], LBIS.L["Libram"], LBIS.L["Relic"]},        
        ['defaultVal']=LBISSettings.SelectedSlot,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LBISSettings.SelectedSlot = dropdown_val;
            updateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 200, -28);

    local spec_opts = {
        ['name']='phase',
        ['parent']=window,
        ['title']='Phase:',
        ['items']= { LBIS.L["All"], LBIS.L["PreRaid"], LBIS.L["Phase 1"], LBIS.L["Phase 2"], LBIS.L["Phase 3"], LBIS.L["Phase 4"], LBIS.L["Phase 5"], "BIS" },
        ['defaultVal']=LBISSettings.SelectedPhase,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LBISSettings.SelectedPhase = dropdown_val;
            updateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 350, -28);

    local spec_opts = {
        ['name']='source',
        ['parent']=window,
        ['title']='Source:',
        ['items']= { LBIS.L["All"], LBIS.L["Drop"], LBIS.L["Profession"], LBIS.L["Reputation"], LBIS.L["Dungeon Token"], LBIS.L["Vendor"], LBIS.L["Quest"], LBIS.L["PvP"], LBIS.L["Transmute"] },
        ['defaultVal']= LBISSettings.SelectedSourceType,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LBISSettings.SelectedSourceType = dropdown_val;
            updateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 475, -28);

    local spec_opts = {
        ['name']='zone',
        ['parent']=window,
        ['title']='Zone:',
        ['items']= { LBIS.L["All"], LBIS.L["Karazhan"], LBIS.L["Gruul's Lair"], LBIS.L["Magtheridon's Lair"], LBIS.L["Serpentshrine Cavern"], LBIS.L["Tempest Keep"], LBIS.L["Hyjal Summit"], LBIS.L["Black Temple"], LBIS.L["Zul'Aman"], LBIS.L["Sunwell Plateau"]},
        ['defaultVal']= LBISSettings.SelectedZone,
        ['changeFunc']=function(dropdown_frame, dropdown_val)
            LBISSettings.SelectedZone = dropdown_val;
            updateItemsForSpec();
        end
    }
    local slotDropDown = createDropdown(spec_opts);
    slotDropDown:SetPoint("TOPLEFT", window, 625, -28);
end