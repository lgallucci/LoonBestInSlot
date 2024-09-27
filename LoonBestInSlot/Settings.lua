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
		[LBIS.L["Dps"]..LBIS.L["Hunter"]] = true,
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
	},
	PhaseTooltip = {
		--[LBIS.L["PreRaid"]] = true,
		[LBIS.L["Phase 1"]] = true,
		[LBIS.L["Phase 2"]] = true,
		[LBIS.L["Phase 3"]] = true,
		[LBIS.L["Phase 4"]] = true,
		[LBIS.L["Phase 5"]] = true
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
		showBalanceDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Balance Dps"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Balance Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = val end,
			width = 1.1,
			order = 4,
		},
		showFeralDpsDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Feral Dps"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Feral Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 5,
		},
		showHealerDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 6,
		},
		showTankDruid = {
			type = "toggle",
			name = LBIS.L["Druid"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Druid"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = val end,
			width = .825,
			order = 7,
		},
		showDpsHunter = {
			type = "toggle",
			name = LBIS.L["Hunter"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Hunter"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Hunter"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Hunter"]] = val end,
			width = 1.1,
			order = 8,
		},
		showDpsMage = {
			type = "toggle",
			name = LBIS.L["Dps"]..": "..LBIS.L["Mage"],
			desc = LBIS.L["Dps"]..": "..LBIS.L["Mage"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Mage"]] = val end,
			width = 1.1,
			order = 9,
		},
		showHealerMage = {
			type = "toggle",
			name = LBIS.L["Mage"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Mage"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Mage"]] = val end,
			width = 1.1,
			order = 10,
		},
		showDpsPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 11,
		},
		showHealerPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 12,
		},
		showTankPaladin = {
			type = "toggle",
			name = LBIS.L["Paladin"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Paladin"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Paladin"]] = val end,
			width = 1.1,
			order = 13,
		},
		showDpsPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 14,
		},
		showHealerPriest = {
			type = "toggle",
			name = LBIS.L["Priest"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Priest"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Priest"]] = val end,
			width = 1.1,
			order = 15,
		},
		showDpsRogue = {
			type = "toggle",
			name = LBIS.L["Rogue"].." "..LBIS.L["Dps"],
			desc = LBIS.L["Rogue"].." "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Rogue"]] = val end,
			width = 1.1,
			order = 16,
		},
		showTankRogue = {
			type = "toggle",
			name = LBIS.L["Rogue"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Rogue"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Rogue"]] = val end,
			width = 1.1,
			order = 17,
		},
		showElementalDpsShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Elemental Dps"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Elemental Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Elemental Dps"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 18,
		},
		showEnhancementDpsShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement Dps"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Enhancement Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Enhancement Dps"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 19,
		},
		showHealerShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Healer"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Healer"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 20,
		},
		showTankShaman = {
			type = "toggle",
			name = LBIS.L["Shaman"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Shaman"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Shaman"]] = val end,
			width = 1.1,
			order = 21,
		},
		showDpsWarlock = {
			type = "toggle",
			name = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warlock"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warlock"]] = val end,
			width = 1.1,
			order = 22,
		},
		showTankWarlock = {
			type = "toggle",
			name = LBIS.L["Warlock"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Warlock"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warlock"]] = val end,
			width = 1.1,
			order = 23,
		},
		showDpsWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Dps"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 24,
		},
		showTankWarrior = {
			type = "toggle",
			name = LBIS.L["Warrior"]..": "..LBIS.L["Tank"],
			desc = LBIS.L["Warrior"]..": "..LBIS.L["Tank"],
			get = function(info) return LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] end,
			set = function(info, val) LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Warrior"]] = val end,
			width = 1.1,
			order = 25,
		},		
		selectAll = {
			type = "execute",
			name = LBIS.L["Select"].." "..LBIS.L["All"],
			desc = LBIS.L["Select"].." "..LBIS.L["All"],
			confirm = false,
			func = function(info, val)
				LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = true;
				LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = true;
				LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = true;
				LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = true;
				LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Hunter"]] = true;
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
			end,
			width = 1.6,
			order = 37,
		},
		deSelectAll = {
			type = "execute",
			name = LBIS.L["Deselect"].." "..LBIS.L["All"],
			desc = LBIS.L["Deselect"].." "..LBIS.L["All"],
			confirm = false,
			func = function(info, val)
				LBISSettings.Tooltip[LBIS.L["Balance Dps"]..LBIS.L["Druid"]] = false;
				LBISSettings.Tooltip[LBIS.L["Feral Dps"]..LBIS.L["Druid"]] = false;
				LBISSettings.Tooltip[LBIS.L["Healer"]..LBIS.L["Druid"]] = false;
				LBISSettings.Tooltip[LBIS.L["Tank"]..LBIS.L["Druid"]] = false;
				LBISSettings.Tooltip[LBIS.L["Dps"]..LBIS.L["Hunter"]] = false;
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
			end,
			width = 1.6,
			order = 38,
		},
		spacer2 = {
			type = "header",
			name = "",
			width = "full",
			order = 39,
		},
		-- showPreRaid = {
		-- 	type = "toggle",
		-- 	name = LBIS.L["PreRaid"],
		-- 	desc = LBIS.L["PreRaid"],
		-- 	get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["PreRaid"]] end,
		-- 	set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["PreRaid"]] = val end,
		-- 	width = 1.1,
		-- 	order = 40,
		-- },
		showPhase1 = {
			type = "toggle",
			name = LBIS.L["Phase 1"],
			desc = LBIS.L["Phase 1"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 1"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 1"]] = val end,
			width = 1.1,
			order = 41,
		},
		showPhase2 = {
		 	type = "toggle",
		 	name = LBIS.L["Phase 2"],
		 	desc = LBIS.L["Phase 2"],
		 	get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 2"]] end,
		 	set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 2"]] = val end,
		 	width = 1.1,
		 	order = 42,
		},
		showPhase3 = {
		 	type = "toggle",
		 	name = LBIS.L["Phase 3"],
		 	desc = LBIS.L["Phase 3"],
		 	get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 3"]] end,
		 	set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 3"]] = val end,
		 	width = 1.1,
		 	order = 43,
		},
		showPhase4 = {
			type = "toggle",
			name = LBIS.L["Phase 4"],
			desc = LBIS.L["Phase 4"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 4"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 4"]] = val end,
			width = 1.1,
			order = 44,
		},
		showPhase5 = {
			type = "toggle",
			name = LBIS.L["Phase 5"],
			desc = LBIS.L["Phase 5"],
			get = function(info) return LBISSettings.PhaseTooltip[LBIS.L["Phase 5"]] end,
			set = function(info, val) LBISSettings.PhaseTooltip[LBIS.L["Phase 5"]] = val end,
			width = 1.1,
			order = 45,
		},
		spacer3 = {
			type = "header",
			name = "",
			width = "full",
			order = 46,
		},
		showCustom = {
			type = "toggle",
			name = LBIS.L["Show Custom"],
			desc = LBIS.L["Show Custom"],
			get = function(info) return LBISSettings.ShowCustom end,
			set = function(info, val) LBISSettings.ShowCustom = val end,
			width = 1.1,
			order = 47,
		},
		hideObsolete = {
			type = "toggle",
			name = LBIS.L["Hide Obsolete Items"],
			desc = LBIS.L["Hide Obsolete Items"],
			get = function(info) return LBISSettings.HideObsolete end,
			set = function(info, val) LBISSettings.HideObsolete = val end,
			width = 1.1,
			order = 48,
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