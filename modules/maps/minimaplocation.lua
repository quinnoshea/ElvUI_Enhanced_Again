local E, L, V, P, G = unpack(ElvUI); --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local EEL = E:GetModule('ElvuiEnhancedAgain')
local M = E:GetModule('Minimap')
local ML = E:NewModule('MinimapLocation', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0');


local init = false
local baseHolderPoint, baseHolderRelativeTo, baseHolderRelativePoint, baseHolderX, baseHolderY, baseHolderHeight
local cluster, panel, location, xMap, yMap
local mmScale = E.db.general.minimap.scale

local digits ={
	[0] = { .5, '%.0f' },
	[1] = { .2, '%.1f' },
	[2] = { .1, '%.2f' },
}

local function UpdateLocation(self, elapsed)
	--if inRestrictedArea then return; end
	
	location.elapsed = (location.elapsed or 0) + elapsed
	if location.elapsed < digits[E.db.eel.minimap.minimapcords.locationdigits][1] then return end

	if E.MapInfo then
		xMap.text:SetFormattedText(digits[E.db.eel.minimap.minimapcords.locationdigits][2], E.MapInfo.xText or 0)
		yMap.text:SetFormattedText(digits[E.db.eel.minimap.minimapcords.locationdigits][2], E.MapInfo.yText or 0)
	else
		xMap.text:SetText("N/A")
		yMap.text:SetText("N/A")
	end

	location.elapsed = 0
end

local function CreateEnhancedMaplocation()
	cluster = _G['MinimapCluster']

	panel = CreateFrame('Frame', 'EnhancedLocationPanel', _G['MinimapCluster'], 'BackdropTemplate')
	panel:SetTemplate('Transparent')
	panel:SetFrameStrata("BACKGROUND")
	panel:Point("CENTER", M.MapHolder, "CENTER", 0, 0)
	panel:Size(220, 22)

	xMap = CreateFrame('Frame', "MapCoordinatesX", panel)
	
	xMap.text = xMap:CreateFontString(nil, "OVERLAY")
	xMap.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")
	xMap.text:SetAllPoints(xMap)

	location = CreateFrame('Frame', "EnhancedLocationText", panel)
	
	location.text = location:CreateFontString(nil, "OVERLAY")
	location.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")
	location.text:SetAllPoints(location)

	yMap = CreateFrame('Frame', "MapCoordinatesY", panel)

	yMap.text = yMap:CreateFontString(nil, "OVERLAY")
	yMap.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")
	yMap.text:SetAllPoints(yMap)	
end

local function FadeFrame(frame, direction, startAlpha, endAlpha, time, func)
	UIFrameFade(frame, {
		mode = direction,
		finishedFunc = func,
		startAlpha = startAlpha,
		endAlpha = endAlpha,
		timeToFade = time,
	})
end

local function HideMinimap()
	cluster:Hide()
end

local function FadeInMinimap()
	if not InCombatLockdown() then
		FadeFrame(cluster, "IN", 0, 1, .5, function() if not InCombatLockdown() then cluster:Show() end end)
	end
end

local function ShowMinimap()
	if E.private.general.minimap.fadeindelay == 0 then
		FadeInMinimap()		
	else
		E:Delay(E.private.general.minimap.fadeindelay, FadeInMinimap)
	end
end

function ML:CreateFrame()
	if not init then
		init = true
		CreateEnhancedMaplocation()
	end

	mmScale = E.db.general.minimap.scale
	
	if E.private.general.minimap.hideincombat then
		M:RegisterEvent("PLAYER_REGEN_DISABLED", HideMinimap)	
		M:RegisterEvent("PLAYER_REGEN_ENABLED", ShowMinimap)
	else
		M:UnregisterEvent("PLAYER_REGEN_DISABLED")	
		M:UnregisterEvent("PLAYER_REGEN_ENABLED")
	end

	--local holder = _G['MMHolder']
	local holder = M.MapHolder
	local minimap = _G.Minimap
	local minimapEdge = minimap.backdrop or minimap

	if not baseHolderPoint then
		baseHolderPoint, baseHolderRelativeTo, baseHolderRelativePoint, baseHolderX, baseHolderY = holder:GetPoint()
		baseHolderHeight = holder:GetHeight()
	end

	panel:SetParent(holder:GetParent() or cluster or E.UIParent)
	panel:ClearAllPoints()
	panel:SetPoint('BOTTOM', minimap, 'TOP', 0, 0)
	panel:SetPoint('LEFT', minimapEdge, 'LEFT', 0, 0)
	panel:SetPoint('RIGHT', minimapEdge, 'RIGHT', 0, 0)
	panel:SetHeight(22 / mmScale)
	panel:SetFrameStrata("MEDIUM")
	panel:SetFrameLevel(50)
	xMap:ClearAllPoints()
	xMap:SetPoint('LEFT', panel, 'LEFT', 2 / mmScale, 0)
	xMap:SetSize(40 / mmScale, 22 / mmScale)
	xMap.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")
	yMap:ClearAllPoints()
	yMap:SetPoint('RIGHT', panel, 'RIGHT', -(2 / mmScale), 0)
	yMap:SetSize(40 / mmScale, 22 / mmScale)
	yMap.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")
	location:ClearAllPoints()
	location:SetPoint('TOPLEFT', xMap, 'TOPRIGHT', 0, 0)
	location:SetPoint('BOTTOMRIGHT', yMap, 'BOTTOMLEFT', 0, 0)
	location.text:FontTemplate(E.media.font, 12 / mmScale, "OUTLINE")

	if E.db.general.minimap.locationText == 'ABOVE' then
		holder:ClearAllPoints()
		holder:SetPoint(baseHolderPoint, baseHolderRelativeTo, baseHolderRelativePoint, baseHolderX, baseHolderY - (22 / mmScale))
		holder:SetHeight(baseHolderHeight + (22 / mmScale))
		panel:SetScript('OnUpdate', UpdateLocation)
		panel:Show()
	else
		holder:ClearAllPoints()
		holder:SetPoint(baseHolderPoint, baseHolderRelativeTo, baseHolderRelativePoint, baseHolderX, baseHolderY)
		holder:SetHeight(baseHolderHeight)
		panel:SetScript('OnUpdate', nil)
		panel:Hide()
	end

	-- Re-scan minimap buttons after toggle to maintain skinning
	local MB = E:GetModule('MinimapButtons', true)
	if MB and E.minimapbuttons then
		MB:UpdateDefaultAnchor()
		MB:ScheduleTimer("SkinMinimapButtons", 0.5)
	end
end

local function StartHooks()
	hooksecurefunc(M, 'UpdateSettings', function()
		if not E.private.general.minimap.enable then return end
		ML:CreateFrame()
	end)

	hooksecurefunc(M, 'Update_ZoneText', function()
		location.text:SetTextColor(M:GetLocTextColor())
		location.text:SetText(strsub(GetMinimapZoneText(),1,25))
	end)
end

function ML:Initialize()
	if not EEL.initialized or not E.db.eel.minimap.minimapcords.enable or not E.private.general.minimap.enable then return end 
	ML:CreateFrame()
	StartHooks()
	location.text:SetTextColor(M:GetLocTextColor())
	location.text:SetText(strsub(GetMinimapZoneText(),1,25))
end

E:RegisterModule(ML:GetName())


