//	@file Version: 1.0
//	@file Name: config.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:13
//	@file Description: Main config.
            
diag_log format["*** clientVars Started ***"];
			
objectTimeOut = 15; 
mutexScriptInProgress = false;
respawnDialogActive = false;
groupManagmentActive = false;
pvar_PlayerTeamKiller = objNull;
doCancelAction = false;
currentMissionsMarkers = [];
currentRadarMarkers = [];
playerSetupComplete = false;
camadm = objNull;
camPos = 0;
scannerBattery = 100;
ScannerProgress = 0;
scanningInProgress = false;
refuelVehicle = ["",0];
defuelVehicle = ["",0];
						
//Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost, sell amount
weaponsArray = [
    //Handgun		
	["hgun_P07_F","P07 9 mm",50,20],
	["hgun_Rook40_F","Rook-40 9 mm",50,20],
	["hgun_ACPC2_F","ACP-C2 .45",50,20],
	["hgun_PDW2000_F","PDW2000 9 mm",50,20],
	//SMG
	["SMG_01_F","Vermin SMG .45 ACP",100,40],
	["SMG_02_F","Sting 9 mm",100,40],
    //Underwater Gun
	["arifle_SDAR_F","SDAR 5.56 mm",100,40],
	//Assault Rifle
	["arifle_TRG21_F","TRG-21 5.56 mm",100,40],
	["arifle_TRG20_F","TRG-20 5.56 mm",100,40],
	["arifle_TRG21_GL_F","TRG-21 EGLM 5.56 mm",140,50],
	["arifle_Mk20_F","Mk20 5.56 mm (Camo)",100,40],
	["arifle_Mk20_plain_F","Mk20 5.56 mm",100,40],
	["arifle_Mk20C_F","Mk20C 5.56 mm (Camo)",100,40],
	["arifle_Mk20C_plain_F","Mk20C 5.56 mm",100,40],
	["arifle_Mk20_GL_F","Mk20 EGLM 5.56 mm (C)",140,50],
	["arifle_Mk20_GL_plain_F","Mk20 EGLM 5.56 mm",140,50],
	["arifle_Katiba_F","Katiba 6.5 mm",100,40],
	["arifle_Katiba_C_F","Katiba Carbine 6.5 mm",100,40],
	["arifle_Katiba_GL_F","Katiba GL 6.5 mm",140,50],
	["arifle_MX_F","MX 6.5 mm",100,40],
	["arifle_MX_GL_F","MX 3GL 6.5 mm",140,50],
	["arifle_MXC_F","MXC 6.5 mm",100,40],
	["arifle_MX_SW_F","MX SW 6.5 mm",200,80],
	["arifle_MXM_F","MXM 6.5 mm",200,80],
   	//Light Machine Gun
	["LMG_Mk200_F","Mk200 6.5 mm",200,80],
	["LMG_Zafir_F","Zafir 7.62 mm",200,80],
	//Sniper Rifle
	["srifle_EBR_F","Mk18 ABR 7.62 mm",450,200],
	["srifle_GM6_F","GM6 Lynx 12.7 mm",450,200],
	["srifle_LRR_F","M320 LRR .408",450,200],
	//Launchers
	["launch_NLAW_F","PCML",400,180],	
	["launch_RPG32_F","RPG-42 Alamut",400,180],
	["launch_Titan_F","Titan",400,180],
	["launch_Titan_short_F","Titan (Compact)",400,180]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = [
	["16Rnd_9x21_Mag","9mm 16Rnd Mag",10,5],	
	["30Rnd_9x21_Mag","9mm 30Rnd Mag",30,15], 	
	["9Rnd_45ACP_Mag",".45 ACP 9Rnd Mag",15,7],

	["30Rnd_45ACP_Mag_SMG_01",".45 ACP 30Rnd Vermin Mag",30,15], 
	["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",".45 30Rnd VerminTracers (Green) Mag",30,15], 

	["20Rnd_556x45_UW_mag","5.56mm 20Rnd Dual Purpose Mag",15,7],	

	["30Rnd_556x45_Stanag","5.56mm 30rnd STANAG Mag",15,7],
	["30Rnd_556x45_Stanag_Tracer_Red","5.56mm 30rnd Tracer (Red) Mag",15,7],
	["30Rnd_556x45_Stanag_Tracer_Green","5.56mm 30rnd Tracer (Green) Mag",15,7],
	["30Rnd_556x45_Stanag_Tracer_Yellow","5.56mm 30rnd Tracer (Yellow) Mag",15,7],

	["30Rnd_65x39_caseless_mag","6.5mm 30Rnd STANAG Mag",30,15],	
	["30Rnd_65x39_caseless_green","6.5mm 30Rnd Caseless Mag",30,15],	
	["30Rnd_65x39_caseless_mag_Tracer","6.5mm 30Rnd Tracer (Red) Mag",30,15],	
	["30Rnd_65x39_caseless_green_mag_Tracer","6.5mm 30Rnd Tracer (Green) Mag",30,15],	
	
	["20Rnd_762x51_Mag","7.62mm 20Rnd Mag",40,20],	
	
	["100Rnd_65x39_caseless_mag","6.5mm 100Rnd Belt Case",50,25],	
	["100Rnd_65x39_caseless_mag_Tracer","6.5mm 100Rnd Tracer (Red) Belt Case",50,25],	

	["150Rnd_762x51_Box","7.62mm 150Rnd Box",50,25],	
	["150Rnd_762x51_Box_Tracer","7.62mm 150Rnd Tracer (Green) Box",50,25],	
	
	["200Rnd_65x39_cased_Box","6.5mm 200Rnd Belt Case",50,25],	
	["200Rnd_65x39_cased_Box_Tracer","6.5mm 200Rnd Tracer (Green) Belt Case",50,25],	

	["7Rnd_408_Mag",".408 7Rnd Cheetah Mag",100,50], 
	["5Rnd_127x108_Mag","12.7mm 5Rnd Mag",100,50], 

	["NLAW_F","PCML Missile",100,50],	

	["RPG32_F","RPG-42 Missile",100,50],	
	["RPG32_HE_F","RPG-42 HE Missile",100,50],	

	["Titan_AA","Titan AA Missile",100,50],	
	["Titan_AP","Titan AP Missile",100,50],	
	["Titan_AT","Titan AT Missile",100,50],	
	
	["HandGrenade","RGO Frag Grenade",100,50],	
	["MiniGrenade","Mini Grenade",100,50],	
	["HandGrenade_Stone","Stone",100,50],	

	["ATMine_Range_Mag","AT Mine",100,50],
	["APERSMine_Range_Mag","APERS Mine",100,50],
	["APERSBoundingMine_Range_Mag","APERS Bounding Mine",100,50],
	["SLAMDirectionalMine_Wire_Mag","M6 SLAM Mine",100,50],
	["APERSTripMine_Wire_Mag","APERS Tripwire Mine",100,50],
	["SatchelCharge_Remote_Mag","Explosive Satchel",100,50],
	["DemoCharge_Remote_Mag","Explosive Charge",100,50],

	["Laserbatteries","Designator Batteries",100,50],
	
	["1Rnd_HE_Grenade_shell","40mm HE Grenade Round",45,10],
	["3Rnd_HE_Grenade_shell","40mm 3Rnd HE Grenade",45,10],
	["1Rnd_Smoke_Grenade_shell","Smoke Round (White)",45,10],
	["3Rnd_Smoke_Grenade_shell","3Rnd 3GL Smoke Rounds (White)",45,10],
	["1Rnd_SmokeRed_Grenade_shell","Smoke Round (Red)",45,10],
	["3Rnd_SmokeRed_Grenade_shell","3Rnd 3GL Smoke Rounds (Red)",45,10],
	["1Rnd_SmokeGreen_Grenade_shell","Smoke Round (Green)",45,10],
	["3Rnd_SmokeGreen_Grenade_shell","3Rnd 3GL Smoke Rounds (Green)",45,10],
	["1Rnd_SmokeYellow_Grenade_shell","Smoke Round (Yellow)",45,10],
	["3Rnd_SmokeYellow_Grenade_shell","3Rnd 3GL Smoke Rounds (Yellow)",45,10],
	["1Rnd_SmokePurple_Grenade_shell","Smoke Round (Purple)",45,10],
	["3Rnd_SmokePurple_Grenade_shell","3Rnd 3GL Smoke Rounds (Purple)",45,10],
	["1Rnd_SmokeBlue_Grenade_shell","Smoke Round (Blue)",45,10],
	["3Rnd_SmokeBlue_Grenade_shell","3Rnd 3GL Smoke Rounds (Blue)",45,10],
	["1Rnd_SmokeOrange_Grenade_shell","Smoke Round (Orange)",45,10],
	["3Rnd_SmokeOrange_Grenade_shell","3Rnd 3GL Smoke Rounds (Orange)",45,10],
	
	["SmokeShell","Smoke Grenade (White)", 10,1],
	["SmokeShellRed","Smoke Grenade (Red)", 10,1],
	["SmokeShellGreen","Smoke Grenade (Green)", 10,1],
	["SmokeShellYellow","Smoke Grenade (Yellow)", 10,1],
	["SmokeShellPurple","Smoke Grenade (Purple)", 10,1],
	["SmokeShellBlue","Smoke Grenade (Blue)", 10,1],
	["SmokeShellOrange","Smoke Grenade (Orange)", 10,1],
		
	["UGL_FlareWhite_F","Flare Round (White)", 10,1],
	["UGL_FlareGreen_F","Flare Round (Green)", 10,1],
	["UGL_FlareRed_F","Flare Round (Red)", 10,1],
	["UGL_FlareYellow_F","Flare Round (Yellow)", 10,1],
	["UGL_FlareCIR_F","Flare Round (IR)", 10,1],

	["3Rnd_UGL_FlareWhite_F","3Rnd 3GL Flares (White)", 10,1],
	["3Rnd_UGL_FlareGreen_F","3Rnd 3GL Flares (Green)", 10,1],
	["3Rnd_UGL_FlareRed_F","3Rnd 3GL Flares (Red)", 10,1],
	["3Rnd_UGL_FlareYellow_F","3Rnd 3GL Flares (Yellow)", 10,1],
	["3Rnd_UGL_FlareCIR_F","3Rnd 3GL Flares (IR)", 10,1],
			
	["FlareWhite_F","Flare (White)", 10,1],
	["FlareGreen_F","Flare (Green)", 10,1],
	["FlareRed_F","Flare (Red)", 10,1],
	["FlareYellow_F","Flare (Yellow)", 10,1],

	["Chemlight_green","Chemlight (Green)", 10,1],
	["Chemlight_red","Chemlight (Red)", 10,1],
	["Chemlight_yellow","Chemlight (Yellow)", 10,1],
	["Chemlight_blue","Chemlight (Blue)", 10,1]
];

//Gun Store Equipment List
//Text name, classname, buy cost
accessoriesArray = [
	["ItemWatch","Watch", 100,"item"],
	["ItemCompass","Compass", 100,"item"],
	["ItemGPS","GPS", 100,"item"],
	["ItemRadio","Radio", 100,"item"],
	["ItemMap","Map", 100,"item"],
	["MineDetector","Mine Detector", 100,"item"],

	["Binocular","Binoculars", 200,"binoc"],
	["Rangefinder","Rangefinder", 200,"binoc"],
	["Laserdesignator","Laser Designator", 200,"binoc"],
	["NVGoggles","NV Goggles (blufor)", 100,"item"],
	["NVGoggles_OPFOR","NV Goggles (opfor)", 100,"item"],
	["NVGoggles_INDEP","NV Goggles (indep)", 100,"item"],

	["FirstAidKit","First Aid Kit", 250,"item"],
	["Medikit","Medikit", 250,"item"],
	["ToolKit","Toolkit", 250,"item"],
	
	["acc_flashlight","Flashlight", 100,"item"], 
	["acc_pointer_IR","IR Laser Pointer", 100,"item"], 
	["Laserdesignator_mounted","Laser Marker", 100,"item"], 

	["muzzle_snds_L","Sound Suppressor (9 mm)", 100,"item"],	
	["muzzle_snds_acp","Sound Suppressor (.45 ACP)", 100,"item"],	
	["muzzle_snds_M","Sound Suppressor (5.56 mm)", 100,"item"],	
	["muzzle_snds_H","Sound Suppressor (6.5 mm)", 100,"item"],	
	["muzzle_snds_H_MG","Sound Suppressor LMG (6.5 mm)", 100,"item"],	
	["muzzle_snds_B","Sound Suppressor (7.62 mm)", 100,"item"],	
		
	["optic_Aco","ACO (Red)", 100,"item"], 
	["optic_ACO_grn","ACO (Green)", 100,"item"], 
	["optic_Aco_smg","ACO SMG (Red)", 100,"item"], 
	["optic_ACO_grn_smg","ACO SMG (Green)", 100,"item"], 
	["optic_Holosight","Holosight", 100,"item"], 
	["optic_Holosight_smg","Mk17 Holosight SMG", 100,"item"], 
	["optic_Hamr","RCO", 200,"item"], 
	["optic_Arco","ARCO", 200,"item"], 
	["optic_MRCO","MRCO", 200,"item"], 
	["optic_SOS","SOS", 300,"item"], 
	["optic_NVS","NVS", 350,"item"], 
	["optic_Nightstalker","Nightstalker", 350,"item"], 
	["optic_tws","TWS", 350,"item"], 
	["optic_tws_mg","TWS MG", 350,"item"],

	["B_UavTerminal","UAV Terminal [NATO]", 450,"item"],
	["O_UavTerminal","UAV Terminal [CSAT]", 450,"item"],
	["I_UavTerminal","UAV Terminal [AAF]", 450,"item"]
];

uniformArray = [	

//    ["U_BasicBody","Underwear", 100,"uni"],
    ["U_Rangemaster","Rangemaster Suit", 100,"uni"],
    ["U_Competitor","Competitor Suit", 100,"uni"],
    ["U_NikosBody","Basic Clothes 1", 100,"uni"],
    ["U_MillerBody","Basic Clothes 2", 100,"uni"],
//    ["U_KerryBody","Underwear 3", 100,"uni"],
    ["U_OrestesBody","Jacket and Shorts", 100,"uni"],
//    ["U_AttisBody","Underwear 4", 100,"uni"],
//    ["U_AntigonaBody","Underwear 5", 100,"uni"],
    ["U_B_CombatUniform_mcam","Combat Fatigues (MTP)", 100,"uni"],
    ["U_B_CombatUniform_mcam_tshirt","Combat Fatigues (MTP) (Tee)", 100,"uni"],
    ["U_B_CombatUniform_mcam_vest","Recon Fatigues (MTP)", 100,"uni"],
    ["U_B_GhillieSuit","Ghillie Suit [NATO]", 100,"uni"],
    ["U_B_HeliPilotCoveralls","Heli Pilot Coveralls", 100,"uni"],
    ["U_B_Wetsuit","Wetsuit [NATO]", 100,"uni"],
    ["U_B_CombatUniform_mcam_worn","Worn Combat Fatigues (MTP)", 100,"uni"],
    ["U_B_CombatUniform_wdl","Combat Fatigues (MTP)", 100,"uni"],
    ["U_B_CombatUniform_wdl_tshirt","Combat Fatigues (MTP) (Tee)", 100,"uni"],
    ["U_B_CombatUniform_wdl_vest","Recon Fatigues (MTP)", 100,"uni"],
    ["U_B_CombatUniform_sgg","Combat Fatigues (MTP)", 100,"uni"],
    ["U_B_CombatUniform_sgg_tshirt","Combat Fatigues (MTP) (Tee)", 100,"uni"],
    ["U_B_CombatUniform_sgg_vest","Recon Fatigues (MTP)", 100,"uni"],
    ["U_B_SpecopsUniform_sgg","Specop Fatigues (Sage)", 100,"uni"],
    ["U_B_PilotCoveralls","Pilot Coveralls [NATO]", 100,"uni"],
    ["U_O_CombatUniform_ocamo","Fatigues (Hex) [CSAT]", 100,"uni"],
    ["U_O_GhillieSuit","Ghillie Suit [CSAT]", 100,"uni"],
    ["U_O_PilotCoveralls","Pilot Coveralls [CSAT]", 100,"uni"],
    ["U_O_Wetsuit","Wetsuit [CSAT]", 100,"uni"],
    ["U_O_CombatUniform_oucamo","Fatigues (Urban) [CSAT]", 100,"uni"],
    ["U_O_SpecopsUniform_ocamo","Recon Fatigues (Hex)", 100,"uni"],
    ["U_O_SpecopsUniform_blk","Recon Fatigues (Black)", 100,"uni"],
    ["U_O_OfficerUniform_ocamo","Officer Fatigues (Hex)", 100,"uni"],
    ["U_I_CombatUniform","Combat Fatigues [AAF]", 100,"uni"],
    ["U_I_CombatUniform_tshirt","Combat Fatigues [AAF] (Tee)", 100,"uni"],
    ["U_I_CombatUniform_shortsleeve","Combat Fatigues [AAF]", 100,"uni"],
    ["U_I_pilotCoveralls","Pilot Coveralls [AAF]", 100,"uni"],
    ["U_I_HeliPilotCoveralls","Heli Pilot Coveralls", 100,"uni"],
    ["U_I_GhillieSuit","Ghillie Suit [AAF]", 100,"uni"],
    ["U_I_OfficerUniform","Combat Fatigues [AAF] (Tee)", 100,"uni"],
    ["U_I_Wetsuit","Wetsuit [AAF]", 100,"uni"],
    ["U_C_Poloshirt_blue","Commoner Clothes 1", 100,"uni"],
    ["U_C_Poloshirt_burgundy","Commoner Clothes 2", 100,"uni"],
    ["U_C_Poloshirt_stripped","Commoner Clothes 3", 100,"uni"],
    ["U_C_Poloshirt_tricolour","Commoner Clothes 4", 100,"uni"],
    ["U_C_Poloshirt_salmon","Commoner Clothes 5", 100,"uni"],
    ["U_C_Poloshirt_redwhite","Commoner Clothes 6", 100,"uni"],
    ["U_C_Commoner1_1","Commoner Clothes 7", 100,"uni"],
    ["U_C_Commoner1_2","Commoner Clothes 8", 100,"uni"],
    ["U_C_Commoner1_3","Commoner Clothes 9", 100,"uni"],
//    ["U_C_Novak","Novak's Leisure Suit", 100,"uni"],
    ["U_C_Poor_1","Worn Clothes", 100,"uni"],
    ["U_C_Poor_2","Worn Clothes", 100,"uni"],
    ["U_C_Scavenger_1","Scavenger Clothes (Light)", 100,"uni"],
    ["U_C_Scavenger_2","Scavenger Clothes (Dark)", 100,"uni"],
//    ["U_C_Farmer","Farmer Clothes", 100,"uni"],
//    ["U_C_Fisherman","Fishing Clothes", 100,"uni"],
//    ["U_C_WorkerOveralls","Worker Clothes", 100,"uni"],
//    ["U_C_FishermanOveralls","Fishing Overalls", 100,"uni"],
    ["U_C_WorkerCoveralls","Worker Coveralls", 100,"uni"],
    ["U_C_HunterBody_grn","Hunting Clothes (Green)", 100,"uni"],
    ["U_C_HunterBody_brn","Hunting Clothes (Brown)", 100,"uni"],
    ["U_C_Commoner2_1","Commoner Clothes 4", 100,"uni"],
    ["U_C_Commoner2_2","Commoner Clothes 5", 100,"uni"],
    ["U_C_Commoner2_3","Commoner Clothes 6", 100,"uni"],
    ["U_C_PriestBody","Clerical Robes", 100,"uni"],
    ["U_C_Poor_shorts_1","Worn Shorts 1", 100,"uni"],
    ["U_C_Poor_shorts_2","Worn Shorts 2", 100,"uni"],
    ["U_C_Commoner_shorts","Commoner Shorts", 100,"uni"],
    ["U_C_ShirtSurfer_shorts","Surfer Outfit 1", 100,"uni"],
    ["U_C_TeeSurfer_shorts_1","Surfer Outfit 2", 100,"uni"],
    ["U_C_TeeSurfer_shorts_2","Surfer Outfit 3", 100,"uni"],
//    ["U_IG_Menelaos","Kabeiroi Leader's Outfit", 100,"uni"],
    ["U_IG_Guerilla1_1","Guerilla Smocks 1", 100,"uni"],
    ["U_IG_Guerilla2_1","Guerilla Smocks 2", 100,"uni"],
    ["U_IG_Guerilla2_2","Guerilla Smocks 3", 100,"uni"],
    ["U_IG_Guerilla2_3","Guerilla Smocks 4", 100,"uni"],
    ["U_IG_Guerilla3_1","Guerilla Smocks 5", 100,"uni"],
    ["U_IG_Guerilla3_2","Guerilla Smocks 6", 100,"uni"],
    ["U_IG_leader","Guerilla Smocks Leader", 100,"uni"],
//    ["U_OI_Scientist","Scientist Suit", 100,"uni"],
	
	["V_Rangemaster_belt","Rangemaster Belt", 100,"vest"],
	["V_BandollierB_khk","Slash Bandolier (Khaki)", 100,"vest"],
	["V_BandollierB_cbr","Slash Bandolier (Coyote)", 100,"vest"],
	["V_BandollierB_rgr","Slash Bandolier (Green)", 100,"vest"],
	["V_BandollierB_blk","Slash Bandolier (Black)", 100,"vest"],
	["V_BandollierB_oli","Slash Bandolier (Olive)", 100,"vest"],
	["V_PlateCarrier1_rgr","Carrier Lite (Green)", 100,"vest"],
	["V_PlateCarrier2_rgr","Carrier Lite (Coyote)", 100,"vest"],
	["V_PlateCarrier3_rgr","Carrier Rig (Green)", 100,"vest"],
	["V_PlateCarrierGL_rgr","Carrier GL Rig (Green)", 100,"vest"],
	["V_PlateCarrier1_blk","Carrier Lite (Black)", 100,"vest"],
	["V_PlateCarrierSpec_rgr","Carrier Special Rig (Green)", 100,"vest"],
	["V_PlateCarrierIA1_dgtl","GA Carrier Lite (Digi)", 100,"vest"],
	["V_PlateCarrierIA2_dgtl","GA Carrier Rig (Digi)", 100,"vest"],
	["V_PlateCarrierIAGL_dgtl","GA Carrier GL Rig (Digi)", 100,"vest"],
	["V_Chestrig_khk","Chest rig (Khaki)", 100,"vest"],
	["V_Chestrig_rgr","Chest rig (Khaki)", 100,"vest"],
	["V_Chestrig_blk","Fighter Chestrig (Black)", 100,"vest"],
	["V_Chestrig_oli","Fighter Chestrig (Olive)", 100,"vest"],
	["V_TacVest_khk","Tactical Vest (Khaki)", 100,"vest"],
	["V_TacVest_brn","Tactical Vest (Brown)", 100,"vest"],
	["V_TacVest_oli","Tactical Vest (Olive)", 100,"vest"],
	["V_TacVest_blk","Tactical Vest (Black)", 100,"vest"],
	["V_TacVest_camo","Tactical Vest (Camo)", 100,"vest"],
	["V_TacVest_blk_POLICE","Tactical Vest (Police)", 100,"vest"],
	["V_TacVestIR_blk","Raven Vest", 100,"vest"],
	["V_TacVestCamo_khk","Camouflaged Vest", 100,"vest"],
	["V_HarnessO_brn","LBV Harness", 100,"vest"],
	["V_HarnessOGL_brn","LBV Grenadier Harness", 100,"vest"],
	["V_HarnessO_gry","LBV Harness (Gray)", 100,"vest"],
	["V_HarnessOGL_gry","LBV Grenadier Harness (Gray)", 100,"vest"],
	["V_HarnessOSpec_brn","ELBV Harness", 100,"vest"],
	["V_HarnessOSpec_gry","ELBV Harness (Gray)", 100,"vest"],
	["V_RebreatherB","Rebreather", 100,"vest"],
	["V_RebreatherIR","Rebreather", 100,"vest"],
	["V_RebreatherIA","Rebreather", 100,"vest"],
	
	["H_HelmetB","ECH", 100,"hat"],
	["H_HelmetB_camo","ECH (Camo)", 100,"hat"],
	["H_HelmetB_paint","ECH (Spraypaint)", 100,"hat"],
	["H_HelmetB_light","ECH (Light)", 100,"hat"],
	["H_HelmetB_plain_mcamo","Combat Helmet (Camo)", 100,"hat"],
	["H_HelmetB_plain_blk","Combat Helmet (Black)", 100,"hat"],
	["H_HelmetSpecB","SF Helmet", 100,"hat"],
	["H_HelmetSpecB_paint1","SF Helmet (Light paint)", 100,"hat"],
	["H_HelmetSpecB_paint2","SF Helmet (Dark paint)", 100,"hat"],
	["H_HelmetSpecB_blk","SF Helmet (Black)", 100,"hat"],
	["H_PilotHelmetHeli_B","Heli Pilot Helmet [NATO]", 100,"hat"],
	["H_PilotHelmetFighter_B","Pilot Helmet [NATO]", 100,"hat"],
	["H_HelmetCrew_B","Crew Helmet", 100,"hat"],
	["H_CrewHelmetHeli_B","Heli Crew Helmet [NATO]", 100,"hat"],
	["H_HelmetO_ocamo","Protector Helmet (Hex)", 100,"hat"],
	["H_HelmetO_oucamo","Protector Helmet (Urban)", 100,"hat"],
	["H_HelmetLeaderO_ocamo","Defender Helmet (Hex)", 100,"hat"],
	["H_HelmetLeaderO_oucamo","Defender Helmet (Urban)", 100,"hat"],
	["H_HelmetSpecO_ocamo","Assassin Helmet (Hex)", 100,"hat"],
	["H_HelmetSpecO_blk","Assassin Helmet (Black)", 100,"hat"],
	["H_PilotHelmetHeli_O","Heli Pilot Helmet [CSAT]", 100,"hat"],
	["H_PilotHelmetFighter_O","Pilot Helmet [CSAT]", 100,"hat"],
	["H_HelmetCrew_O","Crew Helmet [CSAT]", 100,"hat"],
	["H_CrewHelmetHeli_O","Heli Crew Helmet [CSAT]", 100,"hat"],
	["H_HelmetIA","MICH", 100,"hat"],
	["H_HelmetIA_net","MICH (Camo)", 100,"hat"],
	["H_HelmetIA_camo","MICH2 (Camo)", 100,"hat"],
	["H_PilotHelmetHeli_I","Heli Pilot Helmet [AAF]", 100,"hat"],
	["H_PilotHelmetFighter_I","Pilot Helmet [AAF]", 100,"hat"],
	["H_HelmetCrew_I","Crew Helmet [AAF]", 100,"hat"],
	["H_CrewHelmetHeli_I","Heli Crew Helmet [AAF]", 100,"hat"],
	["H_Booniehat_khk","Booniehat (Hex)", 100,"hat"],
	["H_Booniehat_indp","Booniehat (Khaki)", 100,"hat"],
	["H_Booniehat_mcamo","Booniehat (MTP)", 100,"hat"],
	["H_Booniehat_grn","Booniehat (Green)", 100,"hat"],
	["H_Booniehat_tan","Booniehat (Tan)", 100,"hat"],
	["H_Booniehat_dirty","Booniehat (Dirty)", 100,"hat"],
	["H_Booniehat_dgtl","Booniehat (Digi)", 100,"hat"],
	["H_Cap_red","Cap (Red)", 100,"hat"],
	["H_Cap_blu","Cap (Blue)", 100,"hat"],
	["H_Cap_oli","Cap (Green)", 100,"hat"],
	["H_Cap_tan","Cap (Tan)", 100,"hat"],
	["H_Cap_blk","Cap (Black)", 100,"hat"],
	["H_Cap_blk_CMMG","Cap (CMMG)", 100,"hat"],
	["H_Cap_brn_SPECOPS","Cap (SPECOPS)", 100,"hat"],
	["H_Cap_tan_specops_US","Cap (SF)", 100,"hat"],
	["H_Cap_khaki_specops_UK","Cap (SAS)", 100,"hat"],
	["H_Cap_grn","Cap (Green)", 100,"hat"],
	["H_Cap_grn_BI","Cap (BI)", 100,"hat"],
	["H_Cap_blk_Raven","Cap (Raven Security)", 100,"hat"],
	["H_Cap_blk_ION","Cap (ION)", 100,"hat"],
	["H_Cap_headphones","Rangemaster Cap", 100,"hat"],
	["H_MilCap_ocamo","Military Cap (Hex)", 100,"hat"],
	["H_MilCap_mcamo","Military Cap (MTP)", 100,"hat"],
	["H_MilCap_oucamo","Military Cap (Urban)", 100,"hat"],
	["H_MilCap_rucamo","Military Cap (Russia)", 100,"hat"],
	["H_MilCap_gry","Military Cap (Gray)", 100,"hat"],
	["H_MilCap_dgtl","Military Cap [AAF]", 100,"hat"],
	["H_MilCap_blue","Blue Cap", 100,"hat"],
	["H_Bandanna_surfer","Bandanna (Surfer)", 100,"hat"],
	["H_Bandanna_khk","Bandanna (Khaki)", 100,"hat"],
	["H_Bandanna_cbr","Bandanna (Coyote)", 100,"hat"],
	["H_Bandanna_sgg","Bandanna (Sage)", 100,"hat"],
	["H_Bandanna_gry","Bandanna (Gray)", 100,"hat"],
	["H_Bandanna_camo","Bandanna (Camo)", 100,"hat"],
	["H_Bandanna_mcamo","Bandanna (MTP)", 100,"hat"],
//	["H_BandMask_blk","Bandanna Mask (Black)", 100,"hat"],
//	["H_BandMask_khk","Bandanna Mask (Khaki)", 100,"hat"],
//	["H_BandMask_reaper","Bandanna Mask (Reaper)", 100,"hat"],
//	["H_BandMask_demon","Bandanna Mask (Demon)", 100,"hat"],
	["H_Hat_blue","Hat (Blue)", 100,"hat"],
	["H_Hat_brown","Hat (Brown)", 100,"hat"],
	["H_Hat_camo","Hat (Camo)", 100,"hat"],
	["H_Hat_grey","Hat (Gray)", 100,"hat"],
	["H_Hat_checker","Hat (Checker)", 100,"hat"],
	["H_Hat_tan","Hat (Tan)", 100,"hat"],
	["H_Shemag_khk","Shemag mask (Khaki)", 100,"hat"],
	["H_Shemag_tan","Shemag mask (Tan)", 100,"hat"],
	["H_Shemag_olive","Shemag (Olive)", 100,"hat"],
	["H_ShemagOpen_khk","Shemag (Khaki)", 100,"hat"],
	["H_ShemagOpen_tan","Shemag (Tan)", 100,"hat"],
	["H_Beret_blk","Beret (Black)", 100,"hat"],
	["H_Beret_blk_POLICE","Beret (Police)", 100,"hat"],
	["H_Beret_red","Beret (Red)", 100,"hat"],
	["H_Beret_grn","Beret (Green)", 100,"hat"],
	["H_Beret_grn_SF","Beret (SF)", 100,"hat"],
	["H_Beret_brn_SF","Beret (SAS)", 100,"hat"],
	["H_Beret_ocamo","Beret [CSAT]", 100,"hat"],
	["H_Watchcap_blk","Beanie", 100,"hat"],
	["H_Watchcap_khk","Beanie (Khaki)", 100,"hat"],
	["H_Watchcap_camo","Beanie (Camo)", 100,"hat"],
	["H_Watchcap_sgg","Beanie (Sage)", 100,"hat"],
//	["H_TurbanO_blk","Black Turban", 100,"hat"],
	["H_StrawHat","Straw Hat", 100,"hat"],
	["H_StrawHat_dark","Straw hat (Dark)", 100,"hat"],

    ["B_Parachute","Steerable Parachute",50,"backpack"],
	
	//maximumLoad=120, mass=15
    ["B_OutdoorPack_blk","Outdoor Pack (Black)",50,"backpack"],
    ["B_OutdoorPack_tan","Outdoor Pack (Tan)",50,"backpack"],
    ["B_OutdoorPack_blu","Outdoor Pack (Blue)",50,"backpack"],

//	["B_HuntingBackpack","Hunting Backpack",50,"backpack"],

	//maximumLoad=160, mass=20
    ["B_AssaultPack_khk","Assault Pack (Khaki)",100,"backpack"],
    ["B_AssaultPack_dgtl","Assault Pack (Digi)",100,"backpack"],
    ["B_AssaultPack_rgr","Assault Pack (Green)",100,"backpack"],
    ["B_AssaultPack_sgg","Assault Pack (Sage)",100,"backpack"],
    ["B_AssaultPack_blk","Assault Pack (Black)",100,"backpack"],
    ["B_AssaultPack_cbr","Assault Pack (Coyote)",100,"backpack"],
    ["B_AssaultPack_mcamo","Assault Pack (MTP)",100,"backpack"],
    ["B_AssaultPack_ocamo","Assault Pack (Hex)",100,"backpack"],
	
//	["B_TacticalPack_rgr","Tactical Backpack (Green)",100,"backpak"],
//    ["B_TacticalPack_mcamo","Tactical Backpack (MTP)",100,"backpack"],
//    ["B_TacticalPack_ocamo","Tactical Backpack (Hex)",100,"backpack"],
//    ["B_TacticalPack_blk","Tactical Backpack (Black)",100,"backpack"],
//    ["B_TacticalPack_oli","Tactical Backpack (Olive)",100,"backpack"],
	
	//maximumLoad=200, mass=25
    ["B_Kitbag_mcamo","Kitbag (MTP)",150,"backpack"],
    ["B_Kitbag_sgg","Kitbag (Sage)",150,"backpack"],
    ["B_Kitbag_cbr","Kitbag (Coyote)",150,"backpack"],

//	["B_AssaultPackG","Assault Pack",150,"backpack"],
//    ["G_AssaultPack","Assault Pack",150,"backpack"],
	
	//maximumLoad=240, mass=30
    ["B_FieldPack_blk","Field Pack (Black)",200,"backpack"],
    ["B_FieldPack_ocamo","Field Pack (Hex)",200,"backpack"],
    ["B_FieldPack_oucamo","Field Pack (Urban)",200,"backpack"],
    ["B_FieldPack_cbr","Field Pack (Coyote)",200,"backpack"],
    ["B_FieldPack_khk","Field Pack (Khaki)",200,"backpack"],
    ["B_FieldPack_oli","Field Pack (Olive)",200,"backpack"],

	//maximumLoad=280, mass=35
    ["B_Bergen_sgg","Bergen (Sage)",250,"backpack"],
    ["B_Bergen_mcamo","Bergen (MTP)",250,"backpack"],
    ["B_Bergen_rgr","Bergen (Green)",250,"backpack"],
    ["B_Bergen_blk","Bergen (Black)",250,"backpack"],
		
//    ["G_Bergen","Bergen",250,"backpack"],
//	["B_BergenG","Bergen",250,"backpack"],
	
	//maximumLoad=320, mass=40
    ["B_Carryall_ocamo","Carryall Backpack (Hex)",300,"backpack"],
    ["B_Carryall_oucamo","Carryall Backpack (Urban)",300,"backpack"],
    ["B_Carryall_mcamo","Carryall Backpack (MTP)",300,"backpack"],
    ["B_Carryall_oli","Carryall Backpack (Olive)",300,"backpack"],
    ["B_Carryall_khk","Carryall Backpack (Khaki)",300,"backpack"],
    ["B_Carryall_cbr","Carryall Backpack (Coyote)",300,"backpack"],
	
//	["B_Mortar_01_support_F","Folded Mk6 Mortar Bipod",1000,"backpack"],
//    ["B_HMG_01_support_F","Folded Tripod",1000,"backpack"],
	["O_UAV_01_backpack_F","UAV Bag [CSAT]",1000,"backpack"],
	["I_UAV_01_backpack_F","UAV Bag [AAF]",1000,"backpack"],
	["B_UAV_01_backpack_F","UAV Bag [NATO]",1000,"backpack"]
//    ["B_Mortar_01_weapon_F","Folded Mk6 Mortar Tube",1000,"backpack"],
//    ["B_HMG_01_weapon_F","Dismantled Mk30 HMG",1000,"backpack"],
//    ["B_HMG_01_high_weapon_F","Dismantled Mk30 HMG (Raised)",1000,"backpack"],
//    ["B_AA_01_weapon_F","Static Titan Launcher (AA)",1000,"backpack"],
//    ["B_AT_01_weapon_F","Static Titan Launcher (AT)",1000,"backpack"]

];

//Object List - Random Spawns.
baseObjectList = [
	["Building - Cargo House","Land_Cargo_House_V1_F",200],
	["Building - Cargo HQ","Land_Cargo_HQ_V1_F",200],	
	["Building - Cargo Tower","Land_Cargo_Patrol_V1_F",200],	
	["Storage - Supply Crate","I_supplyCrate_F",50],
	["Bar Gate","Land_BarGate_F",50],
	["Pipes (Small)","Land_Pipes_small_F",100],
	["Pipes (Large)","Land_Pipes_large_F",100],
	["Pipes (Iron)","Land_IronPipes_F",100],
	["Bag Fence (Corner)","Land_BagFence_Corner_F",50],
	["Bag Fence (End)","Land_BagFence_End_F",50],
	["Bag Fence (Long)","Land_BagFence_Long_F",50],
	["Bag Fence (Round)","Land_BagFence_Round_F",50],
	["Bag Fence (Short)","Land_BagFence_Short_F",50],
	["Bag Bunker (Small)","Land_BagBunker_Small_F",150],
	["CNC Barrier","Land_CncBarrier_F",100],
	["CNC Barrier (Medium)","Land_CncBarrierMedium_F",100],
	["CNC Barrier (Meduim4)","Land_CncBarrierMedium4_F",100],
	["CNC Wall 1","Land_CncWall1_F",100],
	["CNC Wall 4","Land_CncWall4_F",100],
	["HBarrier 1","Land_HBarrier_1_F",100],
	["HBarrier 3","Land_HBarrier_3_F",100],
	["HBarrier 5","Land_HBarrier_5_F",100],
	["HBarrier (Big)","Land_HBarrierBig_F",100],
	["Crash Barrier","Land_Crash_barrier_F",50],
	["Halogen Lamp","Land_LampHalogen_F",100]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
generalStore = [
	["Bottled Water","water",localize "STR_WL_ShopDescriptions_Water","client\ui\icons\water.paa",30,15],
	["Canned Food","canfood",localize "STR_WL_ShopDescriptions_CanFood","client\ui\icons\cannedfood.paa",30,15],
	["Repair Kit","repairkits",localize "STR_WL_ShopDescriptions_RepairKit","client\ui\icons\briefcase.paa",200,100],
	["Medical Kit","medkits",localize "STR_WL_ShopDescriptions_MedKit","client\ui\icons\medkit.paa",200,100],
	["Jerry Can (Full)","fuelFull",localize "STR_WL_ShopDescriptions_fuelFull","client\ui\icons\jerrycan.paa",100,75],
    ["Jerry Can (Empty)","fuelEmpty",localize "STR_WL_ShopDescriptions_fuelEmpty","client\ui\icons\jerrycan.paa",50,25]
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
		["Town_7",80,"Old Transmitter Towers"],
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
		["Town_24",80,"New Transmitter Towers"]
];
cityLocations = [];

diag_log format["*** clientVars Finished ***"];
