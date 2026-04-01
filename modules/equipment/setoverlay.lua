local E, L, V, P, G = unpack(ElvUI);
local SO = E:NewModule('SetOverlay', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0')
local B = E:GetModule('Bags')
local _G = _G

local byte, format = string.byte, string.format
local tinsert, twipe = table.insert, table.wipe
local bitlib = bit or bit32
local band = bitlib and bitlib.band
local rshift = bitlib and bitlib.rshift
local NativeEquipmentManager_UnpackLocation = EquipmentManager_UnpackLocation

local function FallbackUnpackLocation(location)
	if not band or not rshift then
		return false, false, false, false, nil, nil
	end

	if location < 0 then
		return false, false, false, true, band(-location, 0xFFFF)
	end

	local player = band(location, 0x1) ~= 0
	local bank = band(location, 0x2) ~= 0
	local bags = band(location, 0x4) ~= 0
	local voidStorage = band(location, 0x8) ~= 0
	local slot = rshift(band(location, 0xFF00), 8)
	local bag = rshift(band(location, 0xFF0000), 16)
	return player, bank, bags, voidStorage, slot, bag
end

-- Retail clients have exposed both 5-value and 6-value variants over time.
local function EquipmentManager_UnpackLocation(location)
	if not NativeEquipmentManager_UnpackLocation then
		return FallbackUnpackLocation(location)
	end

	local player, bank, bags, fourth, fifth, sixth = NativeEquipmentManager_UnpackLocation(location)
	if sixth == nil and type(fourth) == "number" then
		return player, bank, bags, false, fourth, fifth
	end

	return player, bank, bags, fourth, fifth, sixth
end

local updateTimer
local containers = {}
local equipmentMap = {}
local fallbackItemMap = {}
local useItemIDFallback = false

local function Utf8Sub(str, start, numChars)
	local currentIndex = start
	while numChars > 0 and currentIndex <= #str do
		local char = byte(str, currentIndex)
		if char > 240 then
			currentIndex = currentIndex + 4
		elseif char > 225 then
			currentIndex = currentIndex + 3
		elseif char > 192 then
			currentIndex = currentIndex + 2
		else
			currentIndex = currentIndex + 1
		end
		numChars = numChars -1
	end
	return str:sub(start, currentIndex - 1)
end

local function MapKey(bag, slot)
	return format("%d_%d", bag, slot)
end

local quickFormat = {
	[0] = function(font, map) font:SetText() end,
	[1] = function(font, map) font:SetFormattedText("|cffffffaa%s|r", Utf8Sub(map[1], 1, 4)) end,
	[2] = function(font, map) font:SetFormattedText("|cffffffaa%s %s|r", Utf8Sub(map[1], 1, 4), Utf8Sub(map[2], 1, 4)) end,
	[3] = function(font, map) font:SetFormattedText("|cffffffaa%s %s %s|r", Utf8Sub(map[1], 1, 4), Utf8Sub(map[2], 1, 4), Utf8Sub(map[3], 1, 4)) end,
}

local function AddSetName(targetMap, key, name)
	if not key or not name then
		return
	end

	local setNames = targetMap[key]
	if not setNames then
		setNames = {}
		targetMap[key] = setNames
	end

	for i = 1, #setNames do
		if setNames[i] == name then
			return
		end
	end

	tinsert(setNames, name)
end

function SO:BuildEquipmentMap(clear)
	for _, v in pairs(equipmentMap) do
		twipe(v)
	end
	for _, v in pairs(fallbackItemMap) do
		twipe(v)
	end
	useItemIDFallback = false
	if clear then return end

	local player, bank, bags, slot, bag, key
	local equipmentSetIDs = C_EquipmentSet.GetEquipmentSetIDs();
	for _, value in pairs(equipmentSetIDs) do
		local name = C_EquipmentSet.GetEquipmentSetInfo(value)
		local infoArray = C_EquipmentSet.GetItemLocations(value)
		for _, location in pairs(infoArray) do
			if location < -1 or location > 1 then
				player, bank, bags, _, slot, bag = EquipmentManager_UnpackLocation(location)
				if ((bank or bags) and slot and bag) then
					key = MapKey(bag, slot)
					AddSetName(equipmentMap, key, name)
				end
			end
		end
	end

	for _, equipmentSetID in pairs(equipmentSetIDs) do
		local setName = C_EquipmentSet.GetEquipmentSetInfo(equipmentSetID)
		local itemIDs = C_EquipmentSet.GetItemIDs(equipmentSetID)
		for _, itemID in pairs(itemIDs) do
			if type(itemID) == "number" and itemID > 0 then
				AddSetName(fallbackItemMap, itemID, setName)
			end
		end
	end

	useItemIDFallback = next(fallbackItemMap) ~= nil
end

function SO:GetSetNamesForSlot(bagID, slotID)
	local setNames = equipmentMap[MapKey(bagID, slotID)]
	if setNames then
		return setNames
	end

	if not useItemIDFallback then
		return nil
	end

	local info = C_Container.GetContainerItemInfo(bagID, slotID)
	local itemID = info and info.itemID
	if not itemID then
		return nil
	end

	return fallbackItemMap[itemID]
end

function SO:UpdateContainerFrame(frame, bag, slot)
	if not frame then
		return
	end

	if (not frame.equipmentinfo) then
		frame.equipmentinfo = frame:CreateFontString(nil, "OVERLAY")
		frame.equipmentinfo:FontTemplate(E.media.font, 12, "THINOUTLINE")
		frame.equipmentinfo:SetWordWrap(true)
		frame.equipmentinfo:SetJustifyH('CENTER')
		frame.equipmentinfo:SetJustifyV('MIDDLE')
	end

	if (frame.equipmentinfo) then
		frame.equipmentinfo:SetAllPoints(frame)

		local setNames = self:GetSetNamesForSlot(bag, slot)
		if setNames then
			quickFormat[#setNames < 4 and #setNames or 3](frame.equipmentinfo, setNames)
		else
			quickFormat[0](frame.equipmentinfo, nil)
		end
	end
end

function SO:UpdateBagInformation(clear)
	updateTimer = nil

	self:BuildEquipmentMap(clear)
	for _, container in pairs(containers) do
		for _, bagID in ipairs(container.BagIDs) do
			for slotID = 1, C_Container.GetContainerNumSlots(bagID) do
				self:UpdateContainerFrame(container.Bags[bagID][slotID], bagID, slotID)
			end
		end
	end
end

function SO:DelayUpdateBagInformation(event)
	-- delay to make sure multiple bag events are consolidated to one update.
	if not updateTimer then
		updateTimer = SO:ScheduleTimer("UpdateBagInformation", .25)
	end
end

function SO:ToggleSettings()
	if updateTimer then
		self:CancelTimer(updateTimer)
	end

	if E.db.eel.equipment.setoverlay.enable then
		self:RegisterEvent("EQUIPMENT_SETS_CHANGED", "DelayUpdateBagInformation")
		self:RegisterEvent("BAG_UPDATE", "DelayUpdateBagInformation")
		SO:UpdateBagInformation()
	else
		self:UnregisterEvent("EQUIPMENT_SETS_CHANGED")
		self:UnregisterEvent("BAG_UPDATE")
		SO:UpdateBagInformation(true)
	end
end

function SO:Initialize()
	if not E.private.bags.enable then return end
	if not E.db.eel.equipment.setoverlay.enable then return end

	tinsert(containers, _G["ElvUI_ContainerFrame"])
	self:SecureHook(B, "OpenBank", function()
		self:Unhook(B, "OpenBank")
		tinsert(containers, _G["ElvUI_BankContainerFrame"])
		SO:ToggleSettings()
	end)

	SO:ToggleSettings()
end

E:RegisterModule(SO:GetName())
