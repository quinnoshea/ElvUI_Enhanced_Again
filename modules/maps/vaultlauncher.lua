local E, L, V, P, G = unpack(ElvUI)
local EEL = E:GetModule("ElvuiEnhancedAgain")

local LDB = LibStub:GetLibrary("LibDataBroker-1.1", true)
local LibDBIcon = LibStub:GetLibrary("LibDBIcon-1.0", true)
local Vault = E:NewModule("VaultLauncher", "AceEvent-3.0")

local dataObject
local isRegistered = false

local ICON = "Interface\\Minimap\\Tracking\\Banker"
local LAUNCHER_NAME = "ElvUIEnhancedGreatVault"

local function UpdateMinimapButtonBar()
	local MB = E:GetModule("MinimapButtons", true)
	if MB and E.minimapbuttons then
		MB:ScheduleTimer("SkinMinimapButtons", 0.05)
		MB:ScheduleTimer("UpdateLayout", 0.1)
	end
end

function Vault:GetDB()
	return E.db and E.db.eel and E.db.eel.minimap and E.db.eel.minimap.vaultlauncher
end

function Vault:UpdateButtonIcon()
	if not LibDBIcon or not LibDBIcon.GetMinimapButton then
		return
	end

	local button = LibDBIcon:GetMinimapButton(LAUNCHER_NAME)
	if not button then
		return
	end

	if not button.icon then
		button.icon = button:CreateTexture(nil, "ARTWORK")
		button.icon:SetPoint("TOPLEFT", button, "TOPLEFT", 2, -2)
		button.icon:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -2, 2)
		button.icon:SetTexCoord(0.1, 0.9, 0.1, 0.9)
	end

	button.icon:SetTexture(ICON)
	button.icon:SetDrawLayer("ARTWORK")
	button.icon:SetAlpha(1)
	button.icon:Show()
end

function Vault:CreateLauncher()
	if isRegistered or not LDB or not LibDBIcon then
		return
	end

	dataObject = LDB:NewDataObject(LAUNCHER_NAME, {
		type = "launcher",
		icon = ICON,
		label = L["Great Vault"],
		OnClick = function(_, button)
			if button == "LeftButton" or button == "RightButton" then
				EEL:OpenGreatVault()
			end
		end,
		OnTooltipShow = function(tooltip)
			tooltip:AddLine(L["Great Vault"])
			tooltip:AddLine("/vault", 1, 1, 1)
		end,
	})

	LibDBIcon:Register(LAUNCHER_NAME, dataObject, self:GetDB())
	isRegistered = true
	self:UpdateButtonIcon()
end

function Vault:UpdateVisibility()
	local db = self:GetDB()
	if not db then return end

	db.hide = not db.enable
	self:CreateLauncher()

	if not isRegistered then
		return
	end

	if db.enable then
		LibDBIcon:Show(LAUNCHER_NAME)
	else
		LibDBIcon:Hide(LAUNCHER_NAME)
	end

	self:UpdateButtonIcon()
	UpdateMinimapButtonBar()
end

function Vault:Initialize()
	if not E.Retail or not EEL.initialized then
		return
	end

	self:UpdateVisibility()
end

E:RegisterModule(Vault:GetName())
