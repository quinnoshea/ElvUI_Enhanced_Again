local E, L, V, P, G = unpack(ElvUI); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB, Localize Underscore
local M = E:NewModule('MiscEnh', 'AceHook-3.0', 'AceEvent-3.0');

-- WoW 12.x API compatibility
local function GetSpellName(spellID)
	if C_Spell and C_Spell.GetSpellInfo then
		local info = C_Spell.GetSpellInfo(spellID)
		return info and info.name
	elseif GetSpellInfo then
		return GetSpellInfo(spellID)
	end
end

E.MiscEnh = M;

function M:LoadAutoRelease()
	if not E.private.general.pvpautorelease then return end

	local autoreleasepvp = CreateFrame("frame")
	autoreleasepvp:RegisterEvent("PLAYER_DEAD")
	autoreleasepvp:SetScript("OnEvent", function(self, event)
		local inInstance, instanceType = IsInInstance()
		if (inInstance and (instanceType == "pvp")) then
			local soulstone = GetSpellName(20707)
			if ((E.myclass ~= "SHAMAN") and not (soulstone and AuraUtil.FindAuraByName(soulstone, "player"))) then
				RepopMe()
			end
		end
	end)
end

function M:Initialize()
	self:LoadAutoRelease()
	self:LoadQuestReward()
	self:LoadWatchedFaction()
	self:LoadMoverTransparancy()
end

E:RegisterModule(M:GetName())