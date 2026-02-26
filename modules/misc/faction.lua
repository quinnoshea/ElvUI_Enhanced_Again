local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local M = E:GetModule('MiscEnh');

local find, gsub, format = string.find, string.gsub, string.format

local incpat = gsub(gsub(FACTION_STANDING_INCREASED, "(%%s)", "(.+)"), "(%%d)", "(.+)")
local changedpat = gsub(gsub(FACTION_STANDING_CHANGED, "(%%s)", "(.+)"), "(%%d)", "(.+)")
local decpat = gsub(gsub(FACTION_STANDING_DECREASED, "(%%s)", "(.+)"), "(%%d)", "(.+)")

-- WoW 12.x API compatibility
local function GetWatchedFactionName()
	if C_Reputation and C_Reputation.GetWatchedFactionData then
		local data = C_Reputation.GetWatchedFactionData()
		return data and data.name
	elseif GetWatchedFactionInfo then
		return GetWatchedFactionInfo()
	end
end

local function GetNumFactionsCompat()
	if C_Reputation and C_Reputation.GetNumFactions then
		return C_Reputation.GetNumFactions()
	elseif GetNumFactions then
		return GetNumFactions()
	end
	return 0
end

local function GetFactionName(factionIndex)
	if C_Reputation and C_Reputation.GetFactionDataByIndex then
		local data = C_Reputation.GetFactionDataByIndex(factionIndex)
		return data and data.name
	elseif GetFactionInfo then
		return GetFactionInfo(factionIndex)
	end
end

local function IsFactionInactiveCompat(factionIndex)
	if C_Reputation and C_Reputation.IsFactionInactive then
		return C_Reputation.IsFactionInactive(factionIndex)
	elseif IsFactionInactive then
		return IsFactionInactive(factionIndex)
	end
end

local function SetWatchedFactionByIndex(factionIndex)
	if C_Reputation and C_Reputation.SetWatchedFactionByIndex then
		C_Reputation.SetWatchedFactionByIndex(factionIndex)
	elseif SetWatchedFactionIndex then
		SetWatchedFactionIndex(factionIndex)
	end
end

function M:SetWatchedFactionOnReputationBar(event, msg)
	if not E.private.general.autorepchange then return end

	local _, _, faction, amount = find(msg, incpat)
	if not faction then _, _, faction, amount = find(msg, changedpat) or find(msg, decpat) end
	if faction then
		if faction == GUILD then
			faction = GetGuildInfo("player")
		end

		local active = GetWatchedFactionName()
		for factionIndex = 1, GetNumFactionsCompat() do
			local name = GetFactionName(factionIndex)
			if name == faction and name ~= active then
				if not IsFactionInactiveCompat(factionIndex) then
					SetWatchedFactionByIndex(factionIndex)
				end
				break
			end
		end
	end
end

function M:LoadWatchedFaction()
	self:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE", 'SetWatchedFactionOnReputationBar')
end