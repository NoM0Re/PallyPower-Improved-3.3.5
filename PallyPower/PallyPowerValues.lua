local L = AceLibrary("AceLocale-2.2"):new("PallyPower");
--local BS = AceLibrary("Babble-Spell-2.2")

PallyPower.commPrefix = "PLPWR";

PALLYPOWER_MAXCLASSES = 11;
PALLYPOWER_MAXPERCLASS = 8;
PALLYPOWER_NORMALBLESSINGDURATION = 10*60;
PALLYPOWER_GREATERBLESSINGDURATION = 30*60;
PALLYPOWER_MAXAURAS = 7;

PallyPower.CONFIG_DRAGHANDLE = L["DRAGHANDLE"];

PALLYPOWER_DEFAULT_VALUES = {
	buffscale = 0.75,
	configscale = 0.65,
	smartbuffs = true,
	smartpets = true,
	greaterbuffs = true,
	rfbuff = false,
	auras = false,
	extras = false,
	autobuff = {
		autokey1 = ",",
		autokey2 = "CTRL-,",
		autobutton = true,
		waitforpeople = false,
	},
	display = {
		-- buttons
		rows = 11,
		columns = 1,
		gapping = -1,
		buttonWidth = 100,
		buttonHeight = 34,
		alignClassButtons = "9",
		alignPlayerButtons = "compact-left",
		edges = true,
        frameLocked = false,
		hideDragHandle = false,
		hidePlayerButtons = false,
		hideClassButtons = true,
		classColor = false,
		nameClassColor = false,
		flashBuffAutoButtons = true,
		PlainButtons = false,
		HideKeyText = false,
		HideCount = false,
        LockBuffBars = false,
        HideCountText = false,
		HideTimerText = false,
	},
	ShowInParty = true,
	ShowWhenSingle = true,
	skin = "Smooth",
	cBuffNeedAll     = {r = 1.0, g = 0.0, b = 0.0, t = 0.5},
 	cBuffNeedSome    = {r = 1.0, g = 1.0, b = 0.5, t = 0.5},
 	cBuffNeedSpecial = {r = 0.0, g = 0.0, b = 1.0, t = 0.5},
	cBuffGood        = {r = 0.0, g = 0.7, b = 0.0, t = 0.5},
	sets = { 
		["primary"] = {
						seal = 1, 	-- wisdom
						aura = 0, 	-- devotion
						rf = false, -- RF off
						buffs = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,}
					},
		["secondary"] = {
						seal = 1, 	-- wisdom
						aura = 0, 	-- devotion
						rf = false, -- RF off
						buffs = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,}
					},
	},
	-- default assignments
	seal = 1,
	aura = 1,
	disabled = false,
	layout = "Layout 1",
	};

PallyPower_Credits1 = "Pally Power - by Aznamir";
--PallyPower_Credits2 = "Version "..PallyPower_Version;

PallyPower.BuffBarTitle = "Pally Buffs (%d)";

PallyPower.ClassID = { 
	[1] = "WARRIOR",
	[2] = "ROGUE",
	[3] = "PRIEST",
	[4] = "DRUID",
	[5] = "PALADIN",
	[6] = "HUNTER",
	[7] = "MAGE",
	[8] = "WARLOCK",
	[9] = "SHAMAN",
	[10] = "DEATHKNIGHT",
	[11] = "PET"};
	
PallyPower.ClassToID = {
	["WARRIOR"] 	= 1,
	["ROGUE"] 		= 2,
	["PRIEST"] 		= 3,
	["DRUID"] 		= 4,
	["PALADIN"] 	= 5,
	["HUNTER"] 		= 6,
	["MAGE"] 		= 7,
	["WARLOCK"]		= 8,
	["SHAMAN"]		= 9,
	["DEATHKNIGHT"]	= 10,
	["PET"]			= 11};	

PallyPower.ClassIcons = {
	[1] = "Interface\\AddOns\\PallyPower\\Icons\\Warrior",
	[2] = "Interface\\AddOns\\PallyPower\\Icons\\Rogue",
	[3] = "Interface\\AddOns\\PallyPower\\Icons\\Priest",
	[4] = "Interface\\AddOns\\PallyPower\\Icons\\Druid",
	[5] = "Interface\\AddOns\\PallyPower\\Icons\\Paladin",
	[6] = "Interface\\AddOns\\PallyPower\\Icons\\Hunter",
	[7] = "Interface\\AddOns\\PallyPower\\Icons\\Mage",
	[8] = "Interface\\AddOns\\PallyPower\\Icons\\Warlock",
	[9] = "Interface\\AddOns\\PallyPower\\Icons\\Shaman",
	[10] = "Interface\\AddOns\\PallyPower\\Icons\\DeathKnight",
	[11] = "Interface\\AddOns\\PallyPower\\Icons\\Pet"};

PallyPower.BlessingIcons = {
    [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofKings",
	[3] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
	[4] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary"};
	
PallyPower.NormalBlessingIcons = {
    [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
	[2] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
	[3] = "Interface\\Icons\\Spell_Magic_MageArmor",
	[4] = "Interface\\Icons\\Spell_Nature_LightningShield"};

PallyPower.AuraIcons = {
    [-1] = "",
	[1] = "Interface\\Icons\\Spell_Holy_DevotionAura",
	[2] = "Interface\\Icons\\Spell_Holy_AuraOfLight",
	[3] = "Interface\\Icons\\Spell_Holy_MindSooth",
	[4] = "Interface\\Icons\\Spell_Shadow_SealOfKings",
	[5] = "Interface\\Icons\\Spell_Frost_WizardMark",
	[6] = "Interface\\Icons\\Spell_Fire_SealOfFire",
	[7] = "Interface\\Icons\\Spell_Holy_CrusaderAura",
};

--
-- Need to add localizations
--
PALLYPOWER_CLEAR = L["PP_CLEAR"];
PALLYPOWER_REFRESH = L["PP_REFRESH"];
PALLYPOWER_OPTIONS = L["PP_OPTIONS"];
PALLYPOWER_AUTOASSIGN = L["AUTOASSIGN"]
PALLYPOWER_FREEASSIGN = L["FREEASSIGN"]

PALLYPOWER_ASSIGNMENTS1 = L["PP_RAS1"];
PALLYPOWER_ASSIGNMENTS2 = L["PP_RAS2"];

-- get translations directly
PallyPower.Spells = {
	[0] = "",
	[1] = GetSpellInfo(19742), --BS["Blessing of Wisdom"],
	[2] = GetSpellInfo(19740), --BS["Blessing of Might"],
	[3] = GetSpellInfo(20217), --BS["Blessing of Kings"],
	[4] = GetSpellInfo(20911), --BS["Blessing of Sanctuary"],
};

PallyPower.GSpells = {
	[0] = "",
	[1] = GetSpellInfo(25894), --BS["Greater Blessing of Wisdom"],
	[2] = GetSpellInfo(25782), --BS["Greater Blessing of Might"],
	[3] = GetSpellInfo(25898), --BS["Greater Blessing of Kings"],
	[4] = GetSpellInfo(25899), --BS["Greater Blessing of Sanctuary"],
};

PallyPower.RFSpell = GetSpellInfo(25780) --BS["Righteous Fury"]

PallyPower.HLSpell = GetSpellInfo(635)

PallyPower.Skins = {
    ["None"] = "Interface\\Tooltips\\UI-Tooltip-Background",
	["Banto"] = "Interface\\AddOns\\PallyPower\\Skins\\Banto",
	["BantoBarReverse"] = "Interface\\AddOns\\PallyPower\\Skins\\BantoBarReverse",
	["Glaze"] = "Interface\\AddOns\\PallyPower\\Skins\\Glaze",
	["Gloss"] = "Interface\\AddOns\\PallyPower\\Skins\\Gloss",
	["Healbot"] = "Interface\\AddOns\\PallyPower\\Skins\\Healbot",
	["oCB"] = "Interface\\AddOns\\PallyPower\\Skins\\oCB",
	["Smooth"] = "Interface\\AddOns\\PallyPower\\Skins\\Smooth",
};

PallyPower.Edge = 'Interface\\Tooltips\\UI-Tooltip-Border'
--PallyPower.Edge = ''	

PallyPower.Seals = {
    [0] = "",
    [1] = GetSpellInfo(20164), -- seal of justice
	[2] = GetSpellInfo(20165), -- seal of light
    [3] = GetSpellInfo(20166), -- seal of wisdom
    [4] = GetSpellInfo(21084), -- seal of right
    [5] = GetSpellInfo(53720), -- seal of martyr
    [6] = GetSpellInfo(31801), -- seal of vengeance
    [7] = GetSpellInfo(20375), -- seal of command
    [8] = GetSpellInfo(53736), -- seal of corruption
    [9] = GetSpellInfo(31892), -- seal of blood
    [10] = "",
};

PallyPower.Auras = {
	[0] = "",
	[1] = GetSpellInfo(465), --BS["Devotion Aura"],
	[2] = GetSpellInfo(7294), --BS["Retribution Aura"],
	[3] = GetSpellInfo(19746), --BS["Concentration Aura"],
	[4] = GetSpellInfo(19876), --BS["Shadow Resistance Aura"],
	[5] = GetSpellInfo(19888), --BS["Frost Resistance Aura"],
	[6] = GetSpellInfo(19891), --BS["Fire Resistance Aura"],
	[7] = GetSpellInfo(32223), --BS["Crusader Aura"],
};
-- Buff templates
PallyPower.Templates={
	[1] = {
		[1]=  {3},
		[2]=  {3},
		[3]=  {3},
		[4]=  {3},
		[5]=  {3},
		[6]=  {3},
		[7]=  {3},
		[8]=  {3},
		[9]=  {3},
		[10]= {3},
		[11]= {3},
	},
	[2] = {
		[1]=  {2, 3},
		[2]=  {2, 3},
		[3]=  {1, 3},
		[4]=  {1, 3},
		[5]=  {1, 3},
		[6]=  {2, 3},
		[7]=  {1, 3},
		[8]=  {1, 3},
		[9]=  {1, 3},
		[10]= {2, 3},
		[11]= {2, 3},
	},
	[3]= {
		[1]=  {2, 4, 3},
		[2]=  {2, 4, 3},
		[3]=  {1, 4, 3},
		[4]=  {1, 2, 3},
		[5]=  {1, 2, 3},
		[6]=  {2, 1, 3},
		[7]=  {1, 4, 3},
		[8]=  {1, 4, 3},
		[9]=  {1, 2, 3},
		[10]= {2, 4, 3},
		[11]= {2, 1, 3},
	},
	[4]= {
		[1]=  {2, 4, 3},
		[2]=  {2, 4, 3},
		[3]=  {1, 4, 3},
		[4]=  {1, 2, 4, 3},
		[5]=  {1, 2, 4, 3},
		[6]=  {2, 1, 4, 3},
		[7]=  {1, 4, 3},
		[8]=  {1, 4, 3},
		[9]=  {1, 2, 4, 3},
		[10]= {2, 4, 3},
		[11]= {2, 1, 4, 3},
	},
}
-- Layouts
PallyPower.Layouts = {
	["Layout 1"] = { 	
					c = {
							[1] = {	
									x = 0, y = 0, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[2] = {
									x = 0, y = -1, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[3] = {
									x = 0, y = -2, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[4] = {
									x = 0, y = -3, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[5] = {
									x = 0, y = -4, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[6] = {
									x = 0, y = -5, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[7] = {
									x = 0, y = -6, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[8] = {
									x = 0, y = -7, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[9] = {
									x = 0, y = -8, 
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[10] = {
									x = 0, y = -9,
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
							[11] = {
									x = 0, y = -10,
									p = { 
											[1] = {x = 1, y = 0},
											[2] = {x = 1, y = -1},
											[3] = {x = 1, y = -2},
											[4] = {x = 1, y = -3},
											[5] = {x = 1, y = -4},
											[6] = {x = 1, y = -5},
											[7] = {x = 1, y = -6},
											[8] = {x = 1, y = -7},
										},
								},
		 		},
				ab = {x = 0, y = 1},
    			rf = {x = 0, y = 2},
		 		au = {x = 0, y = 3},

	},
	["Layout 2"] = { 	
					c = {
							[1] = {	
									x = 0, y = 0, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[2] = {
									x = 0, y = -1, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[3] = {
									x = 0, y = -2, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[4] = {
									x = 0, y = -3, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[5] = {
									x = 0, y = -4, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[6] = {
									x = 0, y = -5, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[7] = {
									x = 0, y = -6, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[8] = {
									x = 0, y = -7, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[9] = {
									x = 0, y = -8, 
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[10] = {
									x = 0, y = -9,
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
							[11] = {
									x = 0, y = -10,
									p = { 
											[1] = {x = -1, y = 0},
											[2] = {x = -1, y = -1},
											[3] = {x = -1, y = -2},
											[4] = {x = -1, y = -3},
											[5] = {x = -1, y = -4},
											[6] = {x = -1, y = -5},
											[7] = {x = -1, y = -6},
											[8] = {x = -1, y = -7},
										},
								},
		 		},
				ab = {x = 0, y = 1},
    			rf = {x = 0, y = 2},
		 		au = {x = 0, y = 3},
	},	
	["Layout 3"] = { 	
					c = {
							[1] = {	
									x = 0, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[2] = {
									x = 1, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[3] = {
									x = 2, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[4] = {
									x = 3, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[5] = {
									x = 4, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[6] = {
									x = 5, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[7] = {
									x = 6, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[8] = {
									x = 7, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[9] = {
									x = 8, y = 0, 
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[10] = {
									x = 9, y = 0,
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
							[11] = {
									x = 10, y = 0,
									p = { 
											[1] = {x = 0, y = -1},
											[2] = {x = 0, y = -2},
											[3] = {x = 0, y = -3},
											[4] = {x = 0, y = -4},
											[5] = {x = 0, y = -5},
											[6] = {x = 0, y = -6},
											[7] = {x = 0, y = -7},
											[8] = {x = 0, y = -8},
										},
								},
		 		},
				ab = {x = -1, y = 0},
    			rf = {x = -2, y = 0},
		 		au = {x = -3, y = 0},
	},
	["Layout 4"] = { 	
					c = {
							[1] = {	
									x = 0, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[2] = {
									x = 1, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[3] = {
									x = 2, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[4] = {
									x = 3, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[5] = {
									x = 4, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[6] = {
									x = 5, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[7] = {
									x = 6, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
									},
							[8] = {
									x = 7, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[9] = {
									x = 8, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[10] = {
									x = 9, y = 0,
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[11] = {
									x = 10, y = 0,
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
		 		},
				ab = {x = -1, y = 0},
    			rf = {x = -2, y = 0},
		 		au = {x = -3, y = 0},
	},	
	["Layout 5"] = { 	
					c = {
							[1] = {	
									x = -0, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[2] = {
									x = -1, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[3] = {
									x = -2, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[4] = {
									x = -3, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[5] = {
									x = -4, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[6] = {
									x = -5, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[7] = {
									x = -6, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
									},
							[8] = {
									x = -7, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[9] = {
									x = -8, y = 0, 
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[10] = {
									x = -9, y = 0,
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
							[11] = {
									x = -10, y = 0,
									p = { 
											[1] = {x = 0, y = 1},
											[2] = {x = 0, y = 2},
											[3] = {x = 0, y = 3},
											[4] = {x = 0, y = 4},
											[5] = {x = 0, y = 5},
											[6] = {x = 0, y = 6},
											[7] = {x = 0, y = 7},
											[8] = {x = 0, y = 8},
										},
								},
		 		},
				ab = {x = 3, y = 0},
    			rf = {x = 2, y = 0},
		 		au = {x = 1, y = 0},
	},
 }