LBISSettings = LBISSettings or 
{ 
	SelectedSpec = "", 
	SelectedSlot = LBIS.L["All"], 
	SelectedPhase = LBIS.L["All"], 
	SelectedSourceType = LBIS.L["All"], 
	SelectedZone = LBIS.L["All"], 
	minimap = { 
		hide = false, 
		minimapPos = 180
	}, 
	Tooltip = {
		["BloodDeath Knight"] = true,
		["FrostDeath Knight"] = true,
		["UnholyDeath Knight"] = true,
		["BalanceDruid"] = true,
		["BearDruid"] = true,
		["CatDruid"] = true,
		["RestorationDruid"] = true,
		["BeastMasteryHunter"] = true,
		["MarksmanshipHunter"] = true,
		["SurvivalHunter"] = true,
		["ArcaneMage"] = true,
		["FireMage"] = true,
		["FrostMage"] = true,
		["HolyPaladin"] = true,
		["ProtectionPaladin"] = true,
		["RetributionPaladin"] = true,
		["DisciplinePriest"] = true,
		["HolyPriest"] = true,
		["ShadowPriest"] = true,
		["AssassinationRogue"] = true,
		["CombatRogue"] = true,
		["SubtletyRogue"] = true,
		["ElementalShaman"] = true,
		["EnhancementShaman"] = true,
		["RestorationShaman"] = true,
		["AfflictionWarlock"] = true,
		["DemonologyWarlock"] = true,
		["DestructionWarlock"] = true,
		["ArmsWarrior"] = true,
		["FuryWarrior"] = true,
		["ProtectionWarrior"] = true
	}
}


local lbis_options = {
	name = "Loon Best In Slot",
    handler = LBIS,
    type = "group",
    args = {		
		spacer1 = {
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
		showBloodDk = {
			type = "toggle",
			name = LBIS.L["Blood"].." "..LBIS.L["Death Knight"],
			desc = LBIS.L["Blood"].." "..LBIS.L["Death Knight"],
			get = function(info) return LBISSettings.Tooltip["BloodDeath Knight"] end,
			set = function(info, val) LBISSettings.Tooltip["BloodDeath Knight"] = val end,
			width = 1.1,
			order = 4,
		},
		showFrostDk = {
			type = "toggle",
			name = LBIS.L["Frost"].." "..LBIS.L["Death Knight"],
			desc = LBIS.L["Frost"].." "..LBIS.L["Death Knight"],
			get = function(info) return LBISSettings.Tooltip["FrostDeath Knight"] end,
			set = function(info, val) LBISSettings.Tooltip["FrostDeath Knight"] = val end,
			width = 1.1,
			order = 5,
		},
		showUnholyDk = {
			type = "toggle",
			name = LBIS.L["Unholy"].." "..LBIS.L["Death Knight"],
			desc = LBIS.L["Unholy"].." "..LBIS.L["Death Knight"],
			get = function(info) return LBISSettings.Tooltip["UnholyDeath Knight"] end,
			set = function(info, val) LBISSettings.Tooltip["UnholyDeath Knight"] = val end,
			width = 1.1,
			order = 6,
		},
		showBalanceDruid = {
			type = "toggle",
			name = LBIS.L["Balance"].." "..LBIS.L["Druid"],
			desc = LBIS.L["Balance"].." "..LBIS.L["Druid"],
			get = function(info) return LBISSettings.Tooltip["BalanceDruid"] end,
			set = function(info, val) LBISSettings.Tooltip["BalanceDruid"] = val end,
			width = .825,
			order = 7,
		},
		showBearDruid = {
			type = "toggle",
			name = LBIS.L["Bear"].." "..LBIS.L["Druid"],
			desc = LBIS.L["Bear"].." "..LBIS.L["Druid"],
			get = function(info) return LBISSettings.Tooltip["BearDruid"] end,
			set = function(info, val) LBISSettings.Tooltip["BearDruid"] = val end,
			width = .825,
			order = 8,
		},
		showCatDruid = {
			type = "toggle",
			name = LBIS.L["Cat"].." "..LBIS.L["Druid"],
			desc = LBIS.L["Cat"].." "..LBIS.L["Druid"],
			get = function(info) return LBISSettings.Tooltip["CatDruid"] end,
			set = function(info, val) LBISSettings.Tooltip["CatDruid"] = val end,
			width = .825,
			order = 9,
		},
		showRestorationDruid = {
			type = "toggle",
			name = LBIS.L["Restoration"].." "..LBIS.L["Druid"],
			desc = LBIS.L["Restoration"].." "..LBIS.L["Druid"],
			get = function(info) return LBISSettings.Tooltip["RestorationDruid"] end,
			set = function(info, val) LBISSettings.Tooltip["RestorationDruid"] = val end,
			width = .825,
			order = 10,
		},
		showBmHunter = {
			type = "toggle",
			name = LBIS.L["Beast Mastery"].." "..LBIS.L["Hunter"],
			desc = LBIS.L["Beast Mastery"].." "..LBIS.L["Hunter"],
			get = function(info) return LBISSettings.Tooltip["BeastMasteryHunter"] end,
			set = function(info, val) LBISSettings.Tooltip["BeastMasteryHunter"] = val end,
			width = 1.1,
			order = 11,
		},
		showMarksHunter = {
			type = "toggle",
			name = LBIS.L["Marksmanship"].." "..LBIS.L["Hunter"],
			desc = LBIS.L["Marksmanship"].." "..LBIS.L["Hunter"],
			get = function(info) return LBISSettings.Tooltip["MarksmanshipHunter"] end,
			set = function(info, val) LBISSettings.Tooltip["MarksmanshipHunter"] = val end,
			width = 1.1,
			order = 12,
		},
		showSurvivalHunter = {
			type = "toggle",
			name = LBIS.L["Survival"].." "..LBIS.L["Hunter"],
			desc = LBIS.L["Survival"].." "..LBIS.L["Hunter"],
			get = function(info) return LBISSettings.Tooltip["SurvivalHunter"] end,
			set = function(info, val) LBISSettings.Tooltip["SurvivalHunter"] = val end,
			width = 1.1,
			order = 13,
		},
		showArcaneMage = {
			type = "toggle",
			name = LBIS.L["Arcane"].." "..LBIS.L["Mage"],
			desc = LBIS.L["Arcane"].." "..LBIS.L["Mage"],
			get = function(info) return LBISSettings.Tooltip["ArcaneMage"] end,
			set = function(info, val) LBISSettings.Tooltip["ArcaneMage"] = val end,
			width = 1.1,
			order = 14,
		},
		showFireMage = {
			type = "toggle",
			name = LBIS.L["Fire"].." "..LBIS.L["Mage"],
			desc = LBIS.L["Fire"].." "..LBIS.L["Mage"],
			get = function(info) return LBISSettings.Tooltip["FireMage"] end,
			set = function(info, val) LBISSettings.Tooltip["FireMage"] = val end,
			width = 1.1,
			order = 15,
		},
		showFrostMage = {
			type = "toggle",
			name = LBIS.L["Frost"].." "..LBIS.L["Mage"],
			desc = LBIS.L["Frost"].." "..LBIS.L["Mage"],
			get = function(info) return LBISSettings.Tooltip["FrostMage"] end,
			set = function(info, val) LBISSettings.Tooltip["FrostMage"] = val end,
			width = 1.1,
			order = 16,
		},
		showHolyPaladin = {
			type = "toggle",
			name = LBIS.L["Holy"].." "..LBIS.L["Paladin"],
			desc = LBIS.L["Holy"].." "..LBIS.L["Paladin"],
			get = function(info) return LBISSettings.Tooltip["HolyPaladin"] end,
			set = function(info, val) LBISSettings.Tooltip["HolyPaladin"] = val end,
			width = 1.1,
			order = 17,
		},
		showProtPaladin = {
			type = "toggle",
			name = LBIS.L["Protection"].." "..LBIS.L["Paladin"],
			desc = LBIS.L["Protection"].." "..LBIS.L["Paladin"],
			get = function(info) return LBISSettings.Tooltip["ProtectionPaladin"] end,
			set = function(info, val) LBISSettings.Tooltip["ProtectionPaladin"] = val end,
			width = 1.1,
			order = 18,
		},
		showRetPaladin = {
			type = "toggle",
			name = LBIS.L["Retribution"].." "..LBIS.L["Paladin"],
			desc = LBIS.L["Retribution"].." "..LBIS.L["Paladin"],
			get = function(info) return LBISSettings.Tooltip["RetributionPaladin"] end,
			set = function(info, val) LBISSettings.Tooltip["RetributionPaladin"] = val end,
			width = 1.1,
			order = 19,
		},
		showDiscPriest = {
			type = "toggle",
			name = LBIS.L["Discipline"].." "..LBIS.L["Priest"],
			desc = LBIS.L["Discipline"].." "..LBIS.L["Priest"],
			get = function(info) return LBISSettings.Tooltip["DisciplinePriest"] end,
			set = function(info, val) LBISSettings.Tooltip["DisciplinePriest"] = val end,
			width = 1.1,
			order = 20,
		},
		showHolyPriest = {
			type = "toggle",
			name = LBIS.L["Holy"].." "..LBIS.L["Priest"],
			desc = LBIS.L["Holy"].." "..LBIS.L["Priest"],
			get = function(info) return LBISSettings.Tooltip["HolyPriest"] end,
			set = function(info, val) LBISSettings.Tooltip["HolyPriest"] = val end,
			width = 1.1,
			order = 21,
		},
		showShadowPriest = {
			type = "toggle",
			name = LBIS.L["Shadow"].." "..LBIS.L["Priest"],
			desc = LBIS.L["Shadow"].." "..LBIS.L["Priest"],
			get = function(info) return LBISSettings.Tooltip["ShadowPriest"] end,
			set = function(info, val) LBISSettings.Tooltip["ShadowPriest"] = val end,
			width = 1.1,
			order = 22,
		},
		showAssRogue = {
			type = "toggle",
			name = LBIS.L["Assassination"].." "..LBIS.L["Rogue"],
			desc = LBIS.L["Assassination"].." "..LBIS.L["Rogue"],
			get = function(info) return LBISSettings.Tooltip["AssassinationRogue"] end,
			set = function(info, val) LBISSettings.Tooltip["AssassinationRogue"] = val end,
			width = 1.1,
			order = 23,
		},
		showCombatRogue = {
			type = "toggle",
			name = LBIS.L["Combat"].." "..LBIS.L["Rogue"],
			desc = LBIS.L["Combat"].." "..LBIS.L["Rogue"],
			get = function(info) return LBISSettings.Tooltip["CombatRogue"] end,
			set = function(info, val) LBISSettings.Tooltip["CombatRogue"] = val end,
			width = 1.1,
			order = 24,
		},
		showSubtletyRogue = {
			type = "toggle",
			name = LBIS.L["Subtlety"].." "..LBIS.L["Rogue"],
			desc = LBIS.L["Subtlety"].." "..LBIS.L["Rogue"],
			get = function(info) return LBISSettings.Tooltip["SubtletyRogue"] end,
			set = function(info, val) LBISSettings.Tooltip["SubtletyRogue"] = val end,
			width = 1.1,
			order = 25,
		},
		showEleShaman = {
			type = "toggle",
			name = LBIS.L["Elemental"].." "..LBIS.L["Shaman"],
			desc = LBIS.L["Elemental"].." "..LBIS.L["Shaman"],
			get = function(info) return LBISSettings.Tooltip["ElementalShaman"] end,
			set = function(info, val) LBISSettings.Tooltip["ElementalShaman"] = val end,
			width = 1.1,
			order = 26,
		},
		showEnhShaman = {
			type = "toggle",
			name = LBIS.L["Enhancement"].." "..LBIS.L["Shaman"],
			desc = LBIS.L["Enhancement"].." "..LBIS.L["Shaman"],
			get = function(info) return LBISSettings.Tooltip["EnhancementShaman"] end,
			set = function(info, val) LBISSettings.Tooltip["EnhancementShaman"] = val end,
			width = 1.1,
			order = 27,
		},
		showRestShaman = {
			type = "toggle",
			name = LBIS.L["Restoration"].." "..LBIS.L["Shaman"],
			desc = LBIS.L["Restoration"].." "..LBIS.L["Shaman"],
			get = function(info) return LBISSettings.Tooltip["RestorationShaman"] end,
			set = function(info, val) LBISSettings.Tooltip["RestorationShaman"] = val end,
			width = 1.1,
			order = 28,
		},
		showAfflicWarlock = {
			type = "toggle",
			name = LBIS.L["Affliction"].." "..LBIS.L["Warlock"],
			desc = LBIS.L["Affliction"].." "..LBIS.L["Warlock"],
			get = function(info) return LBISSettings.Tooltip["ElementalShaman"] end,
			set = function(info, val) LBISSettings.Tooltip["ElementalShaman"] = val end,
			width = 1.1,
			order = 29,
		},
		showDemonWarlock = {
			type = "toggle",
			name = LBIS.L["Demonology"].." "..LBIS.L["Warlock"],
			desc = LBIS.L["Demonology"].." "..LBIS.L["Warlock"],
			get = function(info) return LBISSettings.Tooltip["DemonologyWarlock"] end,
			set = function(info, val) LBISSettings.Tooltip["DemonologyWarlock"] = val end,
			width = 1.1,
			order = 30,
		},
		showDestWarlock = {
			type = "toggle",
			name = LBIS.L["Destruction"].." "..LBIS.L["Warlock"],
			desc = LBIS.L["Destruction"].." "..LBIS.L["Warlock"],
			get = function(info) return LBISSettings.Tooltip["DestructionWarlock"] end,
			set = function(info, val) LBISSettings.Tooltip["DestructionWarlock"] = val end,
			width = 1.1,
			order = 31,
		},
		showArmsWarrior = {
			type = "toggle",
			name = LBIS.L["Arms"].." "..LBIS.L["Warrior"],
			desc = LBIS.L["Arms"].." "..LBIS.L["Warrior"],
			get = function(info) return LBISSettings.Tooltip["ArmsWarrior"] end,
			set = function(info, val) LBISSettings.Tooltip["ArmsWarrior"] = val end,
			width = 1.1,
			order = 32,
		},
		showFuryWarrior = {
			type = "toggle",
			name = LBIS.L["Fury"].." "..LBIS.L["Warrior"],
			desc = LBIS.L["Fury"].." "..LBIS.L["Warrior"],
			get = function(info) return LBISSettings.Tooltip["FuryWarrior"] end,
			set = function(info, val) LBISSettings.Tooltip["FuryWarrior"] = val end,
			width = 1.1,
			order = 33,
		},
		showProtWarrior = {
			type = "toggle",
			name = LBIS.L["Protection"].." "..LBIS.L["Warrior"],
			desc = LBIS.L["Protection"].." "..LBIS.L["Warrior"],
			get = function(info) return LBISSettings.Tooltip["ProtectionWarrior"] end,
			set = function(info, val) LBISSettings.Tooltip["ProtectionWarrior"] = val end,
			width = 1.1,
			order = 34,
		},
		selectAll = {
			type = "execute",
			name = LBIS.L["Select"].." "..LBIS.L["All"],
			desc = LBIS.L["Select"].." "..LBIS.L["All"],
			confirm = false,
			func = function(info, val)
				LBISSettings.Tooltip["BloodDeath Knight"] = true;
				LBISSettings.Tooltip["FrostDeath Knight"] = true;
				LBISSettings.Tooltip["UnholyDeath Knight"] = true;
				LBISSettings.Tooltip["BalanceDruid"] = true;
				LBISSettings.Tooltip["BearDruid"] = true;
				LBISSettings.Tooltip["CatDruid"] = true;
				LBISSettings.Tooltip["RestorationDruid"] = true;
				LBISSettings.Tooltip["BeastMasteryHunter"] = true;
				LBISSettings.Tooltip["MarksmanshipHunter"] = true;
				LBISSettings.Tooltip["SurvivalHunter"] = true;
				LBISSettings.Tooltip["ArcaneMage"] = true;
				LBISSettings.Tooltip["FireMage"] = true;
				LBISSettings.Tooltip["FrostMage"] = true;
				LBISSettings.Tooltip["HolyPaladin"] = true;
				LBISSettings.Tooltip["ProtectionPaladin"] = true;
				LBISSettings.Tooltip["RetributionPaladin"] = true;
				LBISSettings.Tooltip["DisciplinePriest"] = true;
				LBISSettings.Tooltip["HolyPriest"] = true;
				LBISSettings.Tooltip["ShadowPriest"] = true;
				LBISSettings.Tooltip["AssassinationRogue"] = true;
				LBISSettings.Tooltip["CombatRogue"] = true;
				LBISSettings.Tooltip["SubtletyRogue"] = true;
				LBISSettings.Tooltip["ElementalShaman"] = true;
				LBISSettings.Tooltip["EnhancementShaman"] = true;
				LBISSettings.Tooltip["RestorationShaman"] = true;
				LBISSettings.Tooltip["AfflictionWarlock"] = true;
				LBISSettings.Tooltip["DemonologyWarlock"] = true;
				LBISSettings.Tooltip["DestructionWarlock"] = true;
				LBISSettings.Tooltip["ArmsWarrior"] = true;
				LBISSettings.Tooltip["FuryWarrior"] = true;
				LBISSettings.Tooltip["ProtectionWarrior"] = true;
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
				LBISSettings.Tooltip["BloodDeath Knight"] = false;
				LBISSettings.Tooltip["FrostDeath Knight"] = false;
				LBISSettings.Tooltip["UnholyDeath Knight"] = false;
				LBISSettings.Tooltip["BalanceDruid"] = false;
				LBISSettings.Tooltip["BearDruid"] = false;
				LBISSettings.Tooltip["CatDruid"] = false;
				LBISSettings.Tooltip["RestorationDruid"] = false;
				LBISSettings.Tooltip["BeastMasteryHunter"] = false;
				LBISSettings.Tooltip["MarksmanshipHunter"] = false;
				LBISSettings.Tooltip["SurvivalHunter"] = false;
				LBISSettings.Tooltip["ArcaneMage"] = false;
				LBISSettings.Tooltip["FireMage"] = false;
				LBISSettings.Tooltip["FrostMage"] = false;
				LBISSettings.Tooltip["HolyPaladin"] = false;
				LBISSettings.Tooltip["ProtectionPaladin"] = false;
				LBISSettings.Tooltip["RetributionPaladin"] = false;
				LBISSettings.Tooltip["DisciplinePriest"] = false;
				LBISSettings.Tooltip["HolyPriest"] = false;
				LBISSettings.Tooltip["ShadowPriest"] = false;
				LBISSettings.Tooltip["AssassinationRogue"] = false;
				LBISSettings.Tooltip["CombatRogue"] = false;
				LBISSettings.Tooltip["SubtletyRogue"] = false;
				LBISSettings.Tooltip["ElementalShaman"] = false;
				LBISSettings.Tooltip["EnhancementShaman"] = false;
				LBISSettings.Tooltip["RestorationShaman"] = false;
				LBISSettings.Tooltip["AfflictionWarlock"] = false;
				LBISSettings.Tooltip["DemonologyWarlock"] = false;
				LBISSettings.Tooltip["DestructionWarlock"] = false;
				LBISSettings.Tooltip["ArmsWarrior"] = false;
				LBISSettings.Tooltip["FuryWarrior"] = false;
				LBISSettings.Tooltip["ProtectionWarrior"] = false;
			end,
			width = 1.6,
			order = 38,
		},
	}
};

function LBIS:CreateSettings()

	--TODO: Remove this after a certain amount of time
	if LBISSettings.Tooltip == nil then
		LBISSettings.Tooltip = {			
			["BloodDeath Knight"] = true,
			["FrostDeath Knight"] = true,
			["UnholyDeath Knight"] = true,
			["BalanceDruid"] = true,
			["BearDruid"] = true,
			["CatDruid"] = true,
			["RestorationDruid"] = true,
			["BeastMasteryHunter"] = true,
			["MarksmanshipHunter"] = true,
			["SurvivalHunter"] = true,
			["ArcaneMage"] = true,
			["FireMage"] = true,
			["FrostMage"] = true,
			["HolyPaladin"] = true,
			["ProtectionPaladin"] = true,
			["RetributionPaladin"] = true,
			["DisciplinePriest"] = true,
			["HolyPriest"] = true,
			["ShadowPriest"] = true,
			["AssassinationRogue"] = true,
			["CombatRogue"] = true,
			["SubtletyRogue"] = true,
			["ElementalShaman"] = true,
			["EnhancementShaman"] = true,
			["RestorationShaman"] = true,
			["AfflictionWarlock"] = true,
			["DemonologyWarlock"] = true,
			["DestructionWarlock"] = true,
			["ArmsWarrior"] = true,
			["FuryWarrior"] = true,
			["ProtectionWarrior"] = true
		}
	end

	LibStub("AceConfig-3.0"):RegisterOptionsTable("Loon Best In Slot", lbis_options, nil)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Loon Best In Slot"):SetParent(InterfaceOptionsFramePanelContainer)
end