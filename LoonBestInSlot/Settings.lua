LBISSettingsDefault =
{
	SelectedSpec = "", 
	SelectedSlot = LBIS.L["All"], 
	SelectedPhase = LBIS.L["All"], 
	SelectedRank = LBIS.L["All"], 
	SelectedSourceType = LBIS.L["All"], 
	SelectedZone = LBIS.L["All"], 
	SelectedZoneNumber = LBIS.L["All"],
	ShowCustom = false,
	HideObsolete = false,
	OpenTab = "ItemList",
	minimap = {
		hide = false,
		minimapPos = 180
	},
	Tooltip = {
		[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = true,
		[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = true,
		[LBIS.L["Healer"]..LBIS.L["Druid"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Druid"]] = true,
		[LBIS.L["RangedDps"]..LBIS.L["Hunter"]] = true,
		[LBIS.L["MeleeDps"]..LBIS.L["Hunter"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Mage"]] = true,
		[LBIS.L["Healer"]..LBIS.L["Mage"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Paladin"]] = true,
		[LBIS.L["Healer"]..LBIS.L["Paladin"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Paladin"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Priest"]] = true,
		[LBIS.L["Healer"]..LBIS.L["Priest"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Rogue"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Rogue"]] = true,
		[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] = true,
		[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] = true,
		[LBIS.L["Healer"]..LBIS.L["Shaman"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Shaman"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Warlock"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Warlock"]] = true,
		[LBIS.L["Dps"]..LBIS.L["Warrior"]] = true,
		[LBIS.L["Tank"]..LBIS.L["Warrior"]] = true,
		["ERA_"..LBIS.L["Balance"]..LBIS.L["Druid"]] = true;
		["ERA_"..LBIS.L["Bear"]..LBIS.L["Druid"]] = true;
		["ERA_"..LBIS.L["Cat"]..LBIS.L["Druid"]] = true;
		["ERA_"..LBIS.L["Restoration"]..LBIS.L["Druid"]] = true;
		["ERA_"..LBIS.L["Dps"]..LBIS.L["Hunter"]] = true;
		["ERA_"..LBIS.L["Dps"]..LBIS.L["Mage"]] = true,
		["ERA_"..LBIS.L["Holy"]..LBIS.L["Paladin"]] = true;
		["ERA_"..LBIS.L["Protection"]..LBIS.L["Paladin"]] = true;
		["ERA_"..LBIS.L["Retribution"]..LBIS.L["Paladin"]] = true;
		["ERA_"..LBIS.L["Holy"]..LBIS.L["Priest"]] = true;
		["ERA_"..LBIS.L["Shadow"]..LBIS.L["Priest"]] = true;
		["ERA_"..LBIS.L["Dps"]..LBIS.L["Rogue"]] = true,
		["ERA_"..LBIS.L["Elemental"]..LBIS.L["Shaman"]] = true;
		["ERA_"..LBIS.L["Enhancement"]..LBIS.L["Shaman"]] = true;
		["ERA_"..LBIS.L["Restoration"]..LBIS.L["Shaman"]] = true;
		["ERA_"..LBIS.L["Dps"]..LBIS.L["Warlock"]] = true,
		["ERA_"..LBIS.L["Dps"]..LBIS.L["Warrior"]] = true,
		["ERA_"..LBIS.L["Protection"]..LBIS.L["Warrior"]] = true;
	},
	PhaseTooltip = {
		[LBIS.L["PreRaid"]] = true,
		[LBIS.L["Phase 1"]] = true,
		[LBIS.L["Phase 2"]] = true,
		[LBIS.L["Phase 3"]] = true,
		[LBIS.L["Phase 4"]] = true,
		[LBIS.L["Phase 5"]] = true,
		[LBIS.L["Phase 6"]] = true,
		[LBIS.L["Phase 7"]] = true
	}
};

LBISServerSettingsDefault = 
{
	ItemCache = {},
	CustomList = {},
	LastCacheDate = nil,
}

local lbis_options = {
	name = "Loon Best In Slot",
    handler = LBIS,
    type = "group",
    args = {		
		spacer0 = {
			type = "header",
			name = LBIS.L["Settings"],
			width = "full",
			order = 1,
		},
		showMinimapButton = {
			type = "toggle",
			name = LBIS.L["Show Minimap Button"],
			desc = LBIS.L["Show Minimap Button"],
			get = function(info) return not LBISSettings.minimap.hide end,
			set = function(info, val)
					LBIS:ShowHideMiniMap(not val)
				end,
			width = 2.5,
			order = 2,
		},
		spacer1 = {
			type = "header",
			name = LBIS.L["Show Tooltip"],
			width = "full",
			order = 3,
		},
		showSodBalanceDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Balance Dps"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Balance Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 4,
			hidden = not LBIS.IsSOD
		},
		showSodFeralDpsDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Feral Dps"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Feral Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 5,
			hidden = not LBIS.IsSOD
		},
		showSodHealerDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 6,
			hidden = not LBIS.IsSOD
		},
		showSodTankDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 7,
			hidden = not LBIS.IsSOD
		},
		showSodRangedDpsHunter = {
			type = "toggle",
			name = LBIS.L["Hunter"]..": "..LBIS.L["RangedDps"],
			desc = LBIS.L["Hunter"]..": "..LBIS.L["RangedDps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["RangedDps"]..LBIS.L["Hunter"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["RangedDps"]..LBIS.L["Hunter"]] = val end,
			width = 1.1,
			order = 8,
			hidden = not LBIS.IsSOD
		},
		showSodMeleeDpsHunter = {
			type = "toggle",
			name = LBIS.L["Hunter"]..": "..LBIS.L["MeleeDps"],
			desc = LBIS.L["Hunter"]..": "..LBIS.L["MeleeDps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["MeleeDps"]..LBIS.L["Hunter"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["MeleeDps"]..LBIS.L["Hunter"]] = val end,
			width = 1.1,
			order = 9,
			hidden = not LBIS.IsSOD
		},
		showSodDpsMage = {
			type = "toggle",
			name = LBIS.L["Dps"]..": "..LBIS.L["Mage"],
			desc = LBIS.L["Dps"]..": "..LBIS.L["Mage"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] = val end,
			width = 1.1,
			order = 10,
			hidden = not LBIS.IsSOD
		},
		showSodHealerMage = {
			type = "toggle",
			name = LBIS.L["Mage"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Mage"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] = val end,
			width = 1.1,
			order = 11,
			hidden = not LBIS.IsSOD
		},
		showSodDpsPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 12,
			hidden = not LBIS.IsSOD
		},
		showSodHealerPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 13,
			hidden = not LBIS.IsSOD
		},
		showSodTankPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 14,
			hidden = not LBIS.IsSOD
		},
		showSodDpsPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 15,
			hidden = not LBIS.IsSOD
		},
		showSodHealerPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 16,
			hidden = not LBIS.IsSOD
		},
		showSodDpsRogue = {
			type = "toggle",
			name = LBIS.L["Rogue"].." "..LBIS.L["Dps"],
			desc = LBIS.L["Rogue"].." "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] = val end,
			width = 1.1,
			order = 17,
			hidden = not LBIS.IsSOD
		},
		showSodTankRogue = {
			type = "toggle",
			name = LBIS.L["Rogue"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Rogue"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] = val end,
			width = 1.1,
			order = 18,
			hidden = not LBIS.IsSOD
		},
		showSodElementalDpsShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Elemental Dps"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Elemental Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 19,
			hidden = not LBIS.IsSOD
		},
		showSodEnhancementDpsShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement Dps"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 20,
			hidden = not LBIS.IsSOD
		},
		showSodHealerShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 21,
			hidden = not LBIS.IsSOD
		},
		showSodTankShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 22,
			hidden = not LBIS.IsSOD
		},
		showSodDpsWarlock = {
			type = "toggle",
			name = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] = val end,
			width = 1.1,
			order = 23,
			hidden = not LBIS.IsSOD
		},
		showSodTankWarlock = {
			type = "toggle",
			name = LBIS.L["Warlock"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Warlock"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] = val end,
			width = 1.1,
			order = 24,
			hidden = not LBIS.IsSOD
		},
		showSodDpsWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 25,
		},
		showSodTankWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 26,
			hidden = not LBIS.IsSOD
		},
		showEraBalanceDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Balance"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Balance"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Balance"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Balance"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 27,
			hidden = LBIS.IsSOD
		},
		showEraCatDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Cat"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Cat"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Cat"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Cat"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 28,
			hidden = LBIS.IsSOD
		},
		showEraBearDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Bear"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Bear"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Bear"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Bear"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 29,
			hidden = LBIS.IsSOD
		},
		showEraRestorationDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Restoration"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Restoration"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 30,
			hidden = LBIS.IsSOD
		},
		showEraDpsHunter = {
			type = "toggle",
			name = LBIS.L["Hunter"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Hunter"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Hunter"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Hunter"]] = val end,
			width = 1.1,
			order = 31,
			hidden = LBIS.IsSOD
		},
		showEraDpsMage = {
			type = "toggle",
			name = LBIS.L["Mage"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Mage"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Mage"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Mage"]] = val end,
			width = 1.1,
			order = 32,
			hidden = LBIS.IsSOD
		},
		showEraHolyPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Holy"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Holy"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 33,
			hidden = LBIS.IsSOD
		},
		showEraProtectionPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Protection"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Protection"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 34,
			hidden = LBIS.IsSOD
		},
		showEraRetributionPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Retribution"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Retribution"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Retribution"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Retribution"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 35,
			hidden = LBIS.IsSOD
		},
		showEraHolyPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Holy"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Holy"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 36,
			hidden = LBIS.IsSOD
		},
		showEraShadowPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Shadow"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Shadow"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Shadow"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Shadow"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 37,
			hidden = LBIS.IsSOD
		},
		showEraDpsRogue = {
			type = "toggle",
			name = LBIS.L["Rogue"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Rogue"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Rogue"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Rogue"]] = val end,
			width = 1.1,
			order = 38,
			hidden = LBIS.IsSOD
		},
		showEraElementalShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Elemental"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Elemental"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Elemental"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Elemental"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 39,
			hidden = LBIS.IsSOD
		},
		showEraEnhancementShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Enhancement"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Enhancement"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 40,
			hidden = LBIS.IsSOD
		},
		showEraRestorationShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Restoration"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Restoration"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 41,
			hidden = LBIS.IsSOD
		},
		showEraDpsWarlock = {
			type = "toggle",
			name = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warlock"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warlock"]] = val end,
			width = 1.1,
			order = 42,
			hidden = LBIS.IsSOD
		},
		showEraDpsWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 43,
			hidden = LBIS.IsSOD
		},
		showEraProtectionWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Protection"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Protection"],
			get = function(info) return LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 43,
			hidden = LBIS.IsSOD
		},
		selectAll = {
			type = "execute",
			name = LBIS.L["Select"].." "..LBIS.L["All"],
			desc = LBIS.L["Select"].." "..LBIS.L["All"],
			confirm = false,
			func = function(info, val)
				if LBIS.IsSOD then
					LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip[LBIS.L["RangedDps"]..LBIS.L["Hunter"]] = true;
					LBISSettings.Tooltip[LBIS.L["MeleeDps"]..LBIS.L["Hunter"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] = true;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] = true;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] = true;
					LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] = true;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] = true;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] = true;
				else
					LBISSettings.Tooltip["ERA_"..LBIS.L["Balance"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Cat"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Bear"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Druid"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Hunter"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Mage"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Retribution"]..LBIS.L["Paladin"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Priest"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Shadow"]..LBIS.L["Priest"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Rogue"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Elemental"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Enhancement"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Shaman"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warlock"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warrior"]] = true;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Warrior"]] = true;
				end
				
			end,
			width = 1.6,
			order = 50,
		},
		deSelectAll = {
			type = "execute",
			name = LBIS.L["Deselect"].." "..LBIS.L["All"],
			desc = LBIS.L["Deselect"].." "..LBIS.L["All"],
			confirm = false,
			func = function(info, val)
				if LBIS.IsSOD then
					LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip[LBIS.L["RangedDps"]..LBIS.L["Hunter"]] = false;
					LBISSettings.Tooltip[LBIS.L["MeleeDps"]..LBIS.L["Hunter"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] = false;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] = false;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] = false;
					LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] = false;
					LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] = false;
					LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] = false;
				else
					LBISSettings.Tooltip["ERA_"..LBIS.L["Balance"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Cat"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Bear"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Druid"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Hunter"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Mage"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Retribution"]..LBIS.L["Paladin"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Holy"]..LBIS.L["Priest"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Shadow"]..LBIS.L["Priest"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Rogue"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Elemental"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Enhancement"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Restoration"]..LBIS.L["Shaman"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warlock"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Dps"]..LBIS.L["Warrior"]] = false;
					LBISSettings.Tooltip["ERA_"..LBIS.L["Protection"]..LBIS.L["Warrior"]] = false;
				end
			end,
			width = 1.6,
			order = 51,
		},
		spacer2 = {
			type = "header",
			name = "",
			width = "full",
			order = 52,
		},
		showPreRaid = {
			type = "toggle",
			name = LBIS.L["PreRaid"],
			desc = LBIS.L["PreRaid"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["PreRaid"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["PreRaid"]] = val end,
			width = 1.1,
			order = 53,
		},
		showPhase1 = {
			type = "toggle",
			name = LBIS.L["Phase 1"],
			desc = LBIS.L["Phase 1"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 1"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 1"]] = val end,
			width = 1.1,
			order = 54,
		},
		showPhase2 = {
		 	type = "toggle",
		 	name = LBIS.L["Phase 2"],
		 	desc = LBIS.L["Phase 2"],
		 	get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 2"]] end,
		 	set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 2"]] = val end,
		 	width = 1.1,
		 	order = 55,
		},
		showPhase3 = {
		 	type = "toggle",
		 	name = LBIS.L["Phase 3"],
		 	desc = LBIS.L["Phase 3"],
		 	get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 3"]] end,
		 	set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 3"]] = val end,
		 	width = 1.1,
		 	order = 56,
		},
		showPhase4 = {
			type = "toggle",
			name = LBIS.L["Phase 4"],
			desc = LBIS.L["Phase 4"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 4"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 4"]] = val end,
			width = 1.1,
			order = 57,
		},
		showPhase5 = {
			type = "toggle",
			name = LBIS.L["Phase 5"],
			desc = LBIS.L["Phase 5"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 5"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 5"]] = val end,
			width = 1.1,
			order = 58,
		},
		showPhase6 = {
			type = "toggle",
			name = LBIS.L["Phase 6"],
			desc = LBIS.L["Phase 6"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 6"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 6"]] = val end,
			width = 1.1,
			order = 59,
		},
		showPhase7 = {
			type = "toggle",
			name = LBIS.L["Phase 7"],
			desc = LBIS.L["Phase 7"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 7"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 7"]] = val end,
			width = 1.1,
			order = 60,
		},
		spacer3 = {
			type = "header",
			name = "",
			width = "full",
			order = 61,
		},
		showCustom = {
			type = "toggle",
			name = LBIS.L["Show Custom"],
			desc = LBIS.L["Show Custom"],
			get = function(info) return LBISSettings.ShowCustom end,
			set = function(info, val) LBISSettings.ShowCustom = val end,
			width = 1.1,
			order = 62,
		},
		hideObsolete = {
			type = "toggle",
			name = LBIS.L["Hide Obsolete Items"],
			desc = LBIS.L["Hide Obsolete Items"],
			get = function(info) return LBISSettings.HideObsolete end,
			set = function(info, val) LBISSettings.HideObsolete = val end,
			width = 1.1,
			order = 63,
		},
	}
};

function LBIS:CreateSettings()

	LBISSettings = LBIS:DeepCopy(LBISSettingsDefault, LBISSettings);
	LBISServerSettings = LBIS:DeepCopy(LBISServerSettingsDefault, LBISServerSettings);

	if strfind(LBISSettings.SelectedSpec, ":") == nil then
		LBISSettings.SelectedSpec = "";
	end

	LibStub("AceConfig-3.0"):RegisterOptionsTable("Loon Best In Slot", lbis_options, nil)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Loon Best In Slot"):SetParent(InterfaceOptionsFramePanelContainer)
end