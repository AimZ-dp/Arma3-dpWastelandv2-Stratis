//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.
                                                                                                
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
    //Handgun
    ["P07","hgun_P07_F",40,20],	
    ["Rook40","hgun_Rook40_F",40,20], 	
	["ACPC2","hgun_ACPC2_F",40,20], 	
    //Underwater Gun
	["SDAR","arifle_SDAR_F",100,50],		
    //Assault Rifle
    ["TRG-20","arifle_TRG20_F",100,50],	
	["TRG-21","arifle_TRG21_F",100,50],	
    ["TRG-21 GL","arifle_TRG21_GL_F",200,75],	
    ["Katiba","arifle_Katiba_F",100,50],		
    ["Katiba Carabine","arifle_Katiba_C_F",100,50], 
    ["Katiba GL","arifle_Katiba_GL_F",200,75],
	["MX","arifle_MX_F",100,50],	
    ["MXC","arifle_MXC_F",100,50],
    ["MX 3GL","arifle_MX_GL_F",200,75],
    ["MX SW","arifle_MX_SW_F",250,100],
    ["MXM","arifle_MXM_F",450,200],		
    ["Mk20","arifle_Mk20_F",450,200],			
    ["Mk20C","arifle_Mk20C_F",450,200],			
    ["Mk20 GL","arifle_Mk20_GL_F",450,200],	
	//SMG
	["Vermin SMG","SMG_01_F",200,75], 
	["Scorpion EVO-4","SMG_02_F",200,75],	
   	//Light Machine Gun
    ["Mk200","LMG_Mk200_F",250,100],	
    ["Zafir","LMG_Zafir_F",250,100],	
   	//Rocket
    ["NLAW","launch_NLAW_F",300,200],		
    ["RPG-32 Alamut","launch_RPG32_F",300,200],
    ["Titan","launch_Titan_F",300,200],	
    ["Titan (Compact)","launch_Titan_short_F",300,200],	
	
   	//Sniper
    ["EBR","srifle_EBR_F",450,200],
	["M320 LRR","srifle_LRR_F",550,300],		
	["Lynx GM6","srifle_GM6_F",550,300]	
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["9mm 16Rnd Mag","16Rnd_9x21_Mag",10],	
	["9mm 30Rnds Mag","30Rnd_9x21_Mag",30], 		
	[".45 ACP 9Rnd Mag","9Rnd_45ACP_Mag",15],	
	["5.56mm 20Rnd UW Mag","20Rnd_556x45_UW_mag",15],	
	["5.56mm 30Rnd STANAG Mag","30Rnd_556x45_Stanag",15],
	["5.56mm 30Rnd STANAG Mag (Red)","30Rnd_556x45_Stanag_Tracer_Red",15],
	["5.56mm 30Rnd STANAG Mag (Green)","30Rnd_556x45_Stanag_Tracer_Green",15],
	["5.56mm 30Rnd STANAG Mag (Yellow)","30Rnd_556x45_Stanag_Tracer_Yellow",15],	
    //["6.5mm 30Rnd C Mag","30Rnd_65x39_case_mag",25],
	//["6.5mm 30Rnd C Mag (Tracer)","30Rnd_65x39_case_mag_Tracer",25],
	["6.5mm 30Rnd CL Mag","30Rnd_65x39_caseless_mag",30],		
	["6.5mm 30Rnd CL Mag (Tracer)","30Rnd_65x39_caseless_mag_Tracer",30],
	["6.5mm 100Rnd CL Mag","100Rnd_65x39_caseless_mag",50],			
	["6.5mm 100Rnd CL Mag (Tracer)","100Rnd_65x39_caseless_mag_Tracer",50],
	["6.5mm 30Rnd CL Mag (Katiba)","30Rnd_65x39_caseless_green",30],	
	["6.5mm 30Rnd CL Mag (Katiba, Tracer)","30Rnd_65x39_caseless_green_mag_Tracer",30],
	["7.62mm 20Rnd Mag","20Rnd_762x51_Mag",40],			
	["6.5mm 200Rnd Belt","200Rnd_65x39_cased_Box",50],			
	["6.5mm 200Rnd Belt (Tracer)","200Rnd_65x39_cased_Box_Tracer",50],	
	["7.62mm 150Rnd Box","150Rnd_762x51_Box",50],				
	["7.62mm 150Rnd Box (Tracer)","150Rnd_762x51_Box_Tracer",50],			
	["12.7mm 5Rnd Mag (GM6)","5Rnd_127x108_Mag",100], 	
	[".408 7Rnds Mag (LRR)","7Rnd_408_Mag",100], 	
	
	[".45 ACP 30Rnds Mag","30Rnd_45ACP_Mag_SMG_01",30], 	
	[".45 ACP 30Rnds Mag (Tracer)","30Rnd_45ACP_Mag_SMG_01_tracer_green",30], 

	["NLAW Missile","NLAW_F",100],	
    ["RPG32 Missile","RPG32_F",100],	
    ["RPG32 AA Missile","RPG32_AA_F",100],	
    ["Titan AA Missile","Titan_AA",100],		
    ["Titan (Compact) AT Missile","Titan_AT",100],	
    ["Titan (Compact) AP Missile","Titan_AP",100],	
	
	["Mini Grenade", "MiniGrenade", 100],
	["Hand Grenade", "HandGrenade", 100],
    ["AT Mine","ATMine_Range_Mag",100],
    ["APERS Mine","APERSMine_Range_Mag",100],
    ["APERS Bounding Mine","APERSBoundingMine_Range_Mag",100],
    ["M6 SLAM Mine","SLAMDirectionalMine_Wire_Mag",100],
    ["APERS Tripwire Mine","APERSTripMine_Wire_Mag",100],
    ["Claymore Charge","ClaymoreDirectionalMine_Remote_Mag",100],
	["Explosive Charge","DemoCharge_Remote_Mag",100],
    ["Explosive Satchel","SatchelCharge_Remote_Mag",100],	
	
	["1Rnd GL Flare (White)","UGL_FlareWhite_F",45],
	["1Rnd GL Flare (Green)","UGL_FlareGreen_F",45],
	["1Rnd GL Flare (Red)","UGL_FlareRed_F",45],
	["1Rnd GL Flare (Yellow)","UGL_FlareYellow_F",45],
	["1Rnd GL Flare (CIR)","UGL_FlareCIR_F",45],
	["1Rnd HE Grenade Shell","1Rnd_HE_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell","1Rnd_Smoke_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Red)","1Rnd_SmokeRed_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Green)","1Rnd_SmokeGreen_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Yellow)","1Rnd_SmokeYellow_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Purple)","1Rnd_SmokePurple_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Blue)","1Rnd_SmokeBlue_Grenade_shell",45],
	["1Rnd Smoke Grenade Shell (Orange)","1Rnd_SmokeOrange_Grenade_shell",45],
	["3Rnd GL Flare (White)","3Rnd_UGL_FlareWhite_F",45],
	["3Rnd GL Flare (Green)","3Rnd_UGL_FlareGreen_F",45],
	["3Rnd GL Flare (Red)","3Rnd_UGL_FlareRed_F",45],
	["3Rnd GL Flare (Yellow)","3Rnd_UGL_FlareYellow_F",45],
	["3Rnd GL Flare (CIR)","3Rnd_UGL_FlareCIR_F",45],
	["3Rnd HE Grenade Shell","3Rnd_HE_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell","3Rnd_Smoke_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Red)","3Rnd_SmokeRed_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Green)","3Rnd_SmokeGreen_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Yellow)","3Rnd_SmokeYellow_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Purple)","3Rnd_SmokePurple_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Blue)","3Rnd_SmokeBlue_Grenade_shell",45],
	["3Rnd Smoke Grenade Shell (Orange)","3Rnd_SmokeOrange_Grenade_shell",45],

	["Chemlight (Blue)", "Chemlight_blue", 10],
	["Chemlight (Green)", "Chemlight_green", 10],
	["Chemlight (Red)", "Chemlight_red", 10],
	["Chemlight (Yellow)", "Chemlight_yellow", 10],
	
	["SmokeShell", "SmokeShell", 10],
	["SmokeShell (Red)", "SmokeShellRed", 10],
	["SmokeShell (Green)", "SmokeShellGreen", 10],
	["SmokeShell (Yellow)", "SmokeShellYellow", 10],
	["SmokeShell (Purple)", "SmokeShellPurple", 10],
	["SmokeShell (Blue)", "SmokeShellBlue", 10],
	["SmokeShell (Orange)", "SmokeShellOrange", 10]
	
//	["SmokeLauncherMag","SmokeLauncherMag",45],								// good
//	["FlareLauncherMag","FlareLauncherMag",45],								// good
//	["60Rnd_CMFlareMagazine","60Rnd_CMFlareMagazine",45],					// good
//	["120Rnd_CMFlareMagazine","120Rnd_CMFlareMagazine",45],					// good
//	["60Rnd_CMFlare_Chaff_Magazine","60Rnd_CMFlare_Chaff_Magazine",45],		// good
//	["120Rnd_CMFlare_Chaff_Magazine","120Rnd_CMFlare_Chaff_Magazine",45],	// good
//	["168Rnd_CMFlare_Chaff_Magazine","168Rnd_CMFlare_Chaff_Magazine",45],	// good
//	["192Rnd_CMFlare_Chaff_Magazine","192Rnd_CMFlare_Chaff_Magazine",45],	// good
//	["240Rnd_CMFlare_Chaff_Magazine","240Rnd_CMFlare_Chaff_Magazine",45],	// good
//	["300Rnd_CMFlare_Chaff_Magazine","300Rnd_CMFlare_Chaff_Magazine",45],	// good
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["GPS","ItemGPS", 100,"item"],
	["Mine Detector","MineDetector", 100,"item"],	
	
	["Binoculars","Binocular",100,"binoc"],
	["Range Finder","Rangefinder", 200,"binoc"],
	["NV Goggles","NVGoggles",100,"item"],
	
    ["First Aid Kit","FirstAidKit", 100,"item"],
    ["Medical kit","Medikit", 250,"item"],
    ["Tool kit","ToolKit", 250,"item"],

    ["Flash Light","acc_flashlight", 100,"item"], 
	["IR Pointer","acc_pointer_IR", 100,"item"], 
	
  	["Suppressor 9mm","muzzle_snds_L", 100,"item"],	
	["Suppressor ACP","muzzle_snds_acp", 100,"item"], 
	["Suppressor 5.56mm","muzzle_snds_M", 150,"item"],
    ["Suppressor 6.5mm","muzzle_snds_H", 200,"item"],	
    ["Suppressor 6.5mm (LMG)","muzzle_snds_H_MG", 200,"item"], 
    ["Suppressor 7.62mm","muzzle_snds_B", 200,"item"],	
		
    ["Holosight","optic_Holosight", 100,"item"], 
    ["ACO Sight","optic_Aco", 100,"item"],	
	["ACO Sight(Green)","optic_ACO_grn", 100,"item"], 
	["RCO Sight","optic_Hamr", 250,"item"],	
    ["ARCO Sight","optic_Arco", 250,"item"], 
	["MRCO Sight","optic_MRCO", 250,"item"], 
	["SOS Sight(LR)","optic_SOS", 300,"item"] 
];

uniformArray = [	
    ["Range Master", "U_Rangemaster", 100,"uni"],
	["Combat Fatigues (BluFor)","U_B_CombatUniform_mcam", 100,"uni"],
	["Combat Fatigues (OpFor)","U_O_CombatUniform_ocamo", 100,"uni"],
    ["Combat Fatigues TShirt","U_B_CombatUniform_mcam_tshirt", 100,"uni"],
	["Combat Fatigues Vest","U_B_CombatUniform_mcam_vest", 100,"uni"],
	["Pilot Fatigues (BluFor)","U_B_HeliPilotCoveralls", 100,"uni"],
	["Pilot Fatigues (OpFor)","U_O_PilotCoveralls", 100,"uni"],
	["Wetsuit (BluFor)","U_B_Wetsuit", 100,"uni"],
    ["Wetsuit (OpFor)","U_O_Wetsuit", 100,"uni"],
	["Ghillysuit(BluFor)","U_B_Ghilliesuit", 150,"uni"],
    ["Ghillysuit(OpFor)","U_O_Ghilliesuit", 150, "uni"],
	
	["Range Master Belt", "V_Rangemaster_belt", 100,"vest"],
	["Slash Bandolier (Green)","V_BandollierB_rgr", 100,"vest"],
    ["Slash Bandolier (Khaki)","V_BandollierB_khk", 100,"vest"],
	["Slash Bandolier (Coyote)","V_BandollierB_cbr", 100,"vest"],
    ["Chest Rig (Green)","V_ChestrigB_rgr", 100,"vest"],
    ["Chest Rig (Khaki)","V_Chestrig_khk", 100,"vest"],
    ["Tactical Vest (Brown)","V_TacVest_brn", 100,"vest"],
    ["Tactical Vest (Khaki)","V_TacVest_khk", 100,"vest"],
    ["Tactical Vest (Olive)","V_TacVest_oli", 100,"vest"],
    ["Carrier Lite (Green)","V_PlateCarrier1_rgr", 100,"vest"],
    ["Carrier Lite (Coyote)","V_PlateCarrier1_cbr", 100,"vest"],
    ["Carrier Rig (Green)","V_PlateCarrier2_rgr", 100,"vest"],
    ["Carrier Rig GL (Green)","V_PlateCarrierGL_rgr", 100,"vest"],
	["Harness (Brown)","V_HarnessO_brn", 100,"vest"],
	["Harness GL (Brown)","V_HarnessOGL_brn", 100,"vest"],
	["Rebreather (BluFor)","V_RebreatherB", 100,"vest"],
	["Rebreather (OpFor)","V_RebreatherIR", 100,"vest"],
	
    ["Booniehat (MTP)","H_Booniehat_mcamo", 100,"hat"],
    ["Booniehat (Hex)","H_Booniehat_ocamo", 100,"hat"],
    ["Booniehat (Khaki)","H_Booniehat_khk", 100,"hat"],
	["Cap Military (MTP)","H_MilCap_mcamo", 100,"hat"],
    ["Cap Military (Hex)","H_MilCap_ocamo", 100,"hat"],
    ["Enhanced Combat Helmet (BluFor)","H_HelmetB", 100,"hat"],
	["Enhanced Combat Helmet (OpFor)","H_HelmetO_ocamo", 100,"hat"],
    ["Enhanced Combat Helmet (Custom)","H_HelmetB_paint", 100,"hat"],
    ["Enhanced Combat Helmet (Light)","H_HelmetB_light", 100,"hat"],
    ["Pilot Helmet (BluFor)","H_PilotHelmetHeli_B", 100,"hat"],
    ["Pilot Helmet (OpFor)","H_PilotHelmetHeli_O", 100,"hat"],
    ["Cap (Red)","H_Cap_red", 100,"hat"],	
    ["Cap (Blue)","H_Cap_blu", 100,"hat"],
    ["Cap (SERO)","H_Cap_brn_SERO", 100,"hat"],
    ["Pilot Cap","H_Cap_headphones", 100,"hat"],
	
	["Assault Pack (Black)","B_AssaultPack_blk",300,"backpack"],
	["Assault Pack (Coyote)","B_AssaultPack_cbr",300,"backpack"],
	["Assault Pack (Digi)","B_AssaultPack_dgtl",300,"backpack"],
	["Assault Pack (Green)","B_AssaultPack_rgr",300,"backpack"],	
	["Assault Pack (Hex)","B_AssaultPack_ocamo",300,"backpack"],
	["Assault Pack (Khaki)","B_AssaultPack_khk",300,"backpack"],
	["Assault Pack (MTP)","B_AssaultPack_mcamo",300,"backpack"],
	["Assault Pack (Sage)","B_AssaultPack_sgg",1500,"backpack"],
	
	["Assault Pack (Medic)","B_AssaultPack_rgr_Medic",400,"backpack"],
	["Assault Pack (Repair)","B_AssaultPack_rgr_Repair",400,"backpack"],	
	
	["Bergen (Sage)","B_Bergen_sgg",400,"backpack"],
	
	["Carryall Backpack (Hex)","B_Carryall_ocamo",400,"backpack"],
	["Carryall Backpack (Urban)","B_Carryall_oucamo",400,"backpack"],
	
	["Field Pack (Black)","B_FieldPack_blk",350,"backpack"],
	["Field Pack (Coyote)","B_FieldPack_cbr",350,"backpack"],
	["Field Pack (Hex)","B_FieldPack_ocamo",350,"backpack"],
	["Field Pack (Urban)","B_FieldPack_oucamo",350,"backpack"],
	
	["Field Pack (Medic)","B_FieldPack_ocamo_Medic",450,"backpack"],
	["Field Pack (Repair)","B_FieldPack_cbr_Repair",450,"backpack"],

	["Kitbag (Coyote)","B_Kitbag_cbr",450,"backpack"],	
	["Kitbag (MTP)","B_Kitbag_mcamo",450,"backpack"],
	["Kitbag (Sage)","B_Kitbag_sgg",450,"backpack"]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Bottled Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",200,100],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",200,100],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25]
	//["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    //["Slum Canvas (Black)", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150]  
];

// Chernarus town and city array
//Marker Name, Radius, City Name
cityList = [
		["Town_1",180,"Air Station Mike 26"],
		["Town_2",80,"Agios Loannis"],
		["Town_3",80,"Agios Cephas"],
		["Town_4",150,"Girna"],
		["Town_5",150,"Camp Tempest"],
		["Town_6",200,"Stratis Airbase Town"],
		["Town_7",80,"Transmitter Towers"],
		["Town_8",200,"Agia Marina"],
		["Town_9",80,"Kill Farm"],
		["Town_10",180,"Camp Rogain"],
		["Town_11",160,"Kamino Firing Range"],
		["Town_12",150,"Camp Maxwell"],
		["Town_13",120,"Kamino"],
		["Town_14",80,"Outpost"],
		["Town_15",120,"LZ Baldy"],
		["Town_16",180,"Military Range"],		
		["Town_17",80,"Tsoukalia"],
		["Town_18",120,"LZ Connor"],
		["Town_19",80,"Strogos Bay"],
		["Town_20",80,"Jay Cove"],
		["Town_21",80,"Limeri Bay"],
		["Town_22",80,"Kamino Bay"],
		["Town_23",80,"Nisi Bay"],
		["Town_24",80,"Transmitter Towers"]
];
cityLocations = [];
