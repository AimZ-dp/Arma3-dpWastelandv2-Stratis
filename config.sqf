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
    ["Rook-40","hgun_Rook40_F",40,20], 
    //Underwater Gun
	["SDAR","arifle_SDAR_F",100,50],
    //Assault Rifle
    ["TRG-20","arifle_TRG20_F",100,50],
	["TRG-21","arifle_TRG21_F",100,50],
    ["TRG-21 EGLM","arifle_TRG21_GL_F",275,150],
	["MX","arifle_MX_F",100,50],
    ["MXC","arifle_MXC_F",100,50],
    ["MXM","arifle_MXM_F",450,300],
    ["MX SW","arifle_MX_SW_F",250,100],
    ["MX 3GL","arifle_MX_GL_F",200,100],
    ["Katiba","arifle_Khaybar_F",100,50],
    ["Katiba Carabine","arifle_Khaybar_C_F",100,50],
    ["Katiba GL","arifle_Khaybar_GL_F",200,100],
   	//Light Machine Gun
    ["Mk200","LMG_Mk200_F",250,100],
   	//Rocket
    ["NLAWr","launch_NLAW_F",300,200],
    ["RPG-42 Alamut","launch_RPG32_F",300,200],
   	//Sniper
    ["EBR","srifle_EBR_F",450,100],
	["M320 LRR","srifle_LRR_SOS_f",650,300],
	["Lynx GM6", "srifle_GM6_SOS_f",650,300]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["9mm 16Rnd Mag","16Rnd_9x21_Mag",10],
	["5.56mm 20Rnd Mag","20Rnd_556x45_UW_mag",10],
	["5.56mm 30Rnd STANAG Mag","30Rnd_556x45_Stanag",10],
    ["6.5mm 30Rnd CL Mag","30Rnd_65x39_caseless_mag",30],
	["6.5mm 30Rnd CL Mag","30Rnd_65x39_caseless_green",30],
	["6.5mm 30Rnd CL Mag","30Rnd_65x39_caseless_green_mag_Tracer",30],
    ["6.5mm 30Rnd C Mag","30Rnd_65x39_case_mag",25],
	["6.5mm 100Rnd Belt","100Rnd_65x39_caseless_mag_Tracer",50],
	["6.5mm 200Rnd Belt","200Rnd_65x39_cased_Box",100],
	["7.62mm 20Rnd Mag","20Rnd_762x51_Mag",20],
	["12.7mm 5Rnd Mag","5Rnd_127x108_Mag",100], // GM6 five-round magazine
	["408 7Rnds LRR Mag","7Rnd_408_Mag",100], // LRR seven-round magazine
	["GL Flare 40mm (white)","UGL_FlareWhite_F",45],
	["GL Flare 40mm (green)","UGL_FlareGreen_F",45],
	["GL Flare 40mm (Red)","UGL_FlareRed_F",45],
	["GL Flare 40mm (Yellow)","UGL_FlareYellow_F",45],
	["GL Flare 40mm (Cir)","UGL_FlareCIR_F",45],
	["NLAW Missile","NLAW_F",100],
    ["RPG32 Missile","RPG32_F",100],
    ["RPG32 AA Missile","RPG32_AA_F",100],
	["Explosive Charge","DemoCharge_Remote_Mag",100],
    ["Explosive Satchel","SatchelCharge_Remote_Mag",100],
    ["AT Mine","ATMine_Range_Mag",100],
    ["M6 SLAM Mine","SLAMDirectionalMine_Wire_Mag",100],
    ["Claymore Charge","ClaymoreDirectionalMine_Remote_Mag",100],
    ["APERS Mine","APERSMine_Range_Mag",100],
    ["APERS Bounding Mine","APERSBoundingMine_Range_Mag",100],
    ["APERS Tripwire Mine","APERSTripMine_Wire_Mag",100]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["GPS","ItemGPS", 100,"item"],
	["Binoculars","Binocular",100,"binoc"],
	["Range Finder","Rangefinder", 200,"binoc"],
	["NV Goggles","NVGoggles",100,"item"],
    ["First Aid","FirstAidKit", 100,"item"],
    ["Medical kit","Medikit", 250,"item"],
    ["Tool kit","ToolKit", 250,"item"],
  	["Suppressor 9mm","muzzle_snds_L", 100,"item"],
    ["Suppressor 6.5mm","muzzle_snds_H", 200,"item"],
    ["Suppressor 6.5mm (LMG)","muzzle_snds_H_MG", 200,"item"],
    ["Suppressor 7.62mm","muzzle_snds_B", 200,"item"],
    ["Flash Light","acc_flashlight", 100,"item"],
    ["Holosight","optic_Holosight", 100,"item"],
    ["ACO Sight","optic_Aco", 100,"item"],
	["ACO Sight(Green)","optic_ACO_grn", 100,"item"], 
	["RCO Sight","optic_Hamr", 250,"item"],
    ["ARCO Sight","optic_Arco", 250,"item"],
	["SOS Sight(LR)","optic_SOS", 200,"item"],
    ["Carrier GL Rig (Green)","V_PlateCarrierGL_rgr", 100,"vest"],
    ["Carrier Lite (Coyote)","V_PlateCarrier1_cbr", 100,"vest"],
    ["Carrier Lite (Green)","V_PlateCarrier1_rgr", 100,"vest"],
    ["Carrier Rig (Green)","V_PlateCarrier2_rgr", 100,"vest"],
    ["Chest Rig (Khaki)","V_Chestrig_khk", 100,"vest"],
    ["Chest Rig (Green)","V_ChestrigB_rgr", 100,"vest"],
    ["Slash Bandolier (Coyote)","V_BandollierB_cbr", 100,"vest"],
    ["Slash Bandolier (Khaki)","V_BandollierB_khk", 100,"vest"],
    ["Tactical Vest (Brown)","V_TacVest_brn", 100,"vest"],
    ["Tactical Vest (Khaki)","V_TacVest_khk", 100,"vest"],
    ["Tactical Vest (Olive)","V_TacVest_oli", 100,"vest"],
    ["Combat Fatigues (MTP)","U_B_CombatUniform_mcam", 100,"uni"],
    ["Combat Fatigues (Tee)","U_B_CombatUniform_mcam_tshirt", 100,"uni"],
	["Dive Goggles","G_Diving", 50,"gogg"],
    ["Rebreather 1","V_RebreatherB", 100,"vest"],
    ["Rebreather 2","V_RebreatherIR", 100,"vest"],
	["Wetsuit (Blue)","U_B_Wetsuit", 100,"uni"],
    ["Wetsuit (Red)","U_OI_Wetsuit", 100,"uni"],
    ["Ghillysuit(Blue)","U_B_Ghilliesuit", 150,"uni"],
    ["Ghillysuit(Red)","U_O_Ghilliesuit", 150, "uni"],
    ["ECH","H_HelmetB", 100,"hat"],
    ["ECH (Light)","H_HelmetB_light", 100,"hat"],
    ["ECH (Custom)","H_HelmetB_paint", 100,"hat"],
    ["Booniehat (Hex)","H_Booniehat_ocamo", 100,"hat"],
    ["Booniehat (Khaki)","H_Booniehat_khk", 100,"hat"],
    ["Booniehat (MTP)","H_Booniehat_mcamo", 100,"hat"],
    ["Cap (Blue)","H_Cap_blu", 100,"hat"],
    ["Cap (Red)","H_Cap_red", 100,"hat"],
    ["Cap (SERO)","H_Cap_brn_SERO", 100,"hat"],
    ["Cap Rangemaster","H_Cap_headphones", 100,"hat"],
    ["Cap Military (Hex)","H_MilCap_ocamo", 100,"hat"],
    ["Cap Military (MTP)","H_MilCap_mcamo", 100,"hat"],
    ["Pilot Helmet (Blue)","H_PilotHelmetHeli_B", 100,"hat"],
    ["Pilot Helmet (Red)","H_PilotHelmetHeli_O", 100,"hat"],
    ["Backpack (Large)","B_Bergen_Base", 500,"backpack"],
    ["Backpack (Extra Large)","B_Carryall_Base", 750,"backpack"], 
	["Backpack Small 1","B_AssaultPack_dgtl",1500,"backpack"],
	["Backpack Small 2","B_AssaultPack_rgr",1500,"backpack"],
	["Backpack Small 3","B_AssaultPack_sgg",1500,"backpack"],
	["Backpack Small 4","B_AssaultPack_blk",1500,"backpack"],
	["Backpack Small 5","B_AssaultPack_mcamo",1500,"backpack"],
	["Backpack Medium 1","B_Carryall_Base",2500,"backpack"],
	["Backpack Medium 2","B_AssaultPack_Base",2500,"backpack"],
	["Backpack Medium 3","B_Kitbag_Base",2500,"backpack"],
	["Backpack Medium 4","B_FieldPack_Base",2500,"backpack"],
	["Backpack Medium 5","B_Kitbag_Base",2500,"backpack"],
	["Backpack Large 1","B_Carryall_ocamo",3500,"backpack"],
	["Backpack Large 2","B_FieldPack_ocamo",3500,"backpack"],
	["Backpack Large 3","B_FieldPack_blk",3500,"backpack"],
	["Backpack Large 4","B_FieldPack_cbr",3500,"backpack"],
	["Backpack AT","B_FieldPack_cbr_AT",3500,"backpack"],
	["Diver Bag 1","B_FieldPack_blk_DiverExp",4500,"backpack"],
	["Diver Bag 2","B_FieldPack_blk_DiverTL",4500,"backpack"],
	["Medic Pack","B_AssaultPack_rgr_Medic",5000,"backpack"],
	["Repair Pack","B_AssaultPack_rgr_Repair",5000,"backpack"]	
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Bottled Water","water",localize "STR_WL_ShopDescriptions_Water","client\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\icons\briefcase.paa",1000,500],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\icons\medkit.paa",400,200],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\icons\jerrycan.paa",150,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\icons\jerrycan.paa",50,25],
	["Spawn Beacon","spawnBeacon",localize "STR_WL_ShopDescriptions_spawnBeacon","",3000,1500],
    ["Slum Canvas (Black)", "camonet", localize "STR_WL_ShopDescriptions_Camo", "",300,150]  
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
