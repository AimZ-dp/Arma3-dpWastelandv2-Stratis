//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, AimZ =(dp)= 
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!isDedicated) exitWith {};

diag_log format["*** serverVar Started ***"];

burningTimeLimit = 60;
desertedTimeLimit = 900;
ammoDesertedTimeLimit = 1800;
maxRandomTimeLimit = 900;

objectTimeOut = 15; 
objectCheckDelay = 10;

pvar_teamSwitchList = [];
publicVariable "pvar_teamSwitchList";
pvar_teamKillList = [];
publicVariable "pvar_teamKillList";
pvar_beaconListBlu = []; 
publicVariable "pvar_beaconListBlu";
pvar_beaconListRed = []; 
publicVariable "pvar_beaconListRed";
clientMissionMarkers = [];
publicVariable "clientMissionMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
// set the game to be tactical - no groups, no permenent team tags, no teamkill kicks
allowPlayerIcons = "ON";
publicVariable "allowPlayerIcons";
allowGroups = "ON";
publicVariable "allowGroups";
clockCycle = "DAY ONLY";
publicVariable "clockCycle";

//Civilian Vehicle List - Random Spawns
civilianVehicles = [
	"C_Offroad_01_F", 
	"C_Quadbike_01_F",
	"C_Offroad_01_F", 
	"B_Quadbike_01_F", 
	"C_Offroad_01_F", 
	"O_Quadbike_01_F",
	"C_Offroad_01_F", 	
	"I_Quadbike_01_F" 
];

//Military Vehicle List - Random Spawns
militaryVehicles = [
	"B_MRAP_01_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_covered_F", 
	"O_MRAP_02_F", 
	"O_Truck_02_transport_F", 
	"O_Truck_02_covered_F", 
	"I_MRAP_03_F", // issue: LODShape::AddLoadHandler: Handler not present in shape [a3\weapons_f\empty.p3d]
	"I_Truck_02_transport_F",
	"I_Truck_02_covered_F"
];
militaryHelis = [
	"B_Heli_Light_01_F", 
	"O_Heli_Light_02_unarmed_F", // issue: HUD: bone Target not found, HUD: bone HorizonBank2 not found
	"B_Heli_Transport_01_F", 
	"B_Heli_Transport_01_camo_F", // issue: Heli_Transport_01_skeleton: Invalid parent bone 'otochlavne' for 'zasleh'
	"I_Heli_Transport_02_F"
];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = [
	"B_MRAP_01_gmg_F", 
	"B_MRAP_01_hmg_F", 
	"O_MRAP_02_gmg_F", 
	"O_MRAP_02_hmg_F", 
	"I_MRAP_03_gmg_F", 
	"I_MRAP_03_hmg_F"
];
APCVehicles = [
	"B_APC_Wheeled_01_cannon_F", 
	"O_APC_Wheeled_02_rcws_F"
];
LightTankVehicles = [
	"O_APC_Tracked_02_cannon_F", 
	"B_APC_Tracked_01_rcws_F"
];
armedMilitaryHelis = [
	"B_Heli_Light_01_armed_F", 
	"O_Heli_Light_02_F", 
	"B_Heli_Attack_01_F", 
	"O_Heli_Attack_02_F", 
	"O_Heli_Attack_02_black_F"
];

//Object List - Random Spawns.
baseObjectList = [
	"Land_Pipes_small_F",
	"Land_Pipes_large_F",
	"Land_IronPipes_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BagBunker_Small_F",
	"Land_CncBarrier_F",
	"Land_CncBarrierMedium_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncWall1_F",
	"Land_CncWall4_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrier_1_F"
	//"Land_Crash_barrier_F"
	//"Land_LampHalogen_F"
];
survivalObjectList = [
	"Land_Sacks_goods_F",
	"Land_MetalBarrel_F",
	//"Land_CanisterFuel_F",
	"Land_CanisterPlastic_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = [
	"arifle_SDAR_F",
	//"arifle_MXM_F",
	"arifle_TRG21_F",
	"arifle_TRG20_F",
	"arifle_TRG21_GL_F",
	//"arifle_MXC_F",
	//"arifle_MX_SW_F",
	//"arifle_MX_GL_F",
	//"arifle_MX_F",
	//"arifle_Katiba_F",
	//"arifle_Katiba_C_F",
	//"arifle_Katiba_GL_F",
	//"srifle_EBR_F",
	"arifle_Mk20_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_GL_F",
	"SMG_01_F",
	"SMG_02_F",
	//"LMG_Mk200_F",
	//"LMG_Zafir_F",
	"hgun_P07_F", // issue: causes server errors when this pistol is used
	"hgun_Rook40_F",
	"hgun_ACPC2_F"
];

removeWeapons = [	
	"hgun_P07_F",
	"arifle_Mk20_GL_ACO_F",
	"arifle_Mk20_Holo_F",
	"arifle_Mk20C_ACO_F",
	"srifle_LRR_F",
	"srifle_GM6_F",
	"LMG_Zafir_F",
	"srifle_EBR_F"
];
removeAmmo = [	
	"MiniGrenade", 
	"HandGrenade"
];

vehicleAddition = [
	"Zasleh2",
	"muzzle_snds_H",
	"muzzle_snds_M",
	"muzzle_snds_L",
	"muzzle_snds_B",
	"muzzle_snds_H_MG",
	"muzzle_snds_acp",
	"optic_Arco",
	"optic_Hamr", 
	"optic_Aco", 
	"optic_ACO_grn", 
	"optic_Holosight", 
	"optic_MRCO",
	"optic_SOS",
	"acc_flashlight", 
	"acc_pointer_IR",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 = [
	"Chemlight_blue",
	"Chemlight_red",
	"Chemlight_green",
	"Chemlight_yellow"
];
 
ammoBoxes = [
	"Box_NATO_Ammo_F",
	"Box_NATO_Wps_F",
	"Box_NATO_Wps_F",
	//"Box_NATO_Grenades_F",	// too many granade spamming happening, these only hold nades and smoke
	//"Box_NATO_WpsLaunch_F",	// too many launchers in game, need to give the helis a chance
	//"Box_NATO_AmmoOrd_F",
	//"Box_NATO_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_East_Ammo_F",
	"Box_East_Wps_F",
	"Box_East_Wps_F",
	//"Box_East_Grenades_F",	// too many granade spamming happening, these only hold nades and smoke
	//"Box_East_WpsLaunch_F",	// too many launchers in game, need to give the helis a chance
	//"Box_East_AmmoOrd_F",
	//"Box_East_WpsSpecial_F",
	"Box_East_Support_F",
	//"Box_East_AmmoVeh_F", 
	"Box_IND_Ammo_F",
	"Box_IND_Wps_F",  			// issue: LODShape::AddLoadHandler: Handler not present in shape [a3\weapons_f\empty.p3d]
	"Box_IND_Wps_F",
	//"Box_IND_Grenades_F",		// too many granade spamming happening, these only hold nades and smoke
	//"Box_IND_WpsLaunch_F",	// too many launchers in game, need to give the helis a chance
	//"Box_IND_AmmoOrd_F",
	//"Box_IND_WpsSpecial_F",
	"Box_IND_Support_F"
	//"Box_IND_AmmoVeh_F" 
];

missionAmmoBoxes = [
	"Box_NATO_Ammo_F",
	"Box_NATO_Wps_F",
	"Box_NATO_Wps_F",
	//"Box_NATO_Grenades_F",	// too many granade spamming happening, these only hold nades and smoke
	"Box_NATO_WpsLaunch_F",	// too many launchers in game, need to give the helis a chance
	"Box_NATO_AmmoOrd_F",
	"Box_NATO_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_East_Ammo_F",
	"Box_East_Wps_F",
	"Box_East_Wps_F",
	//"Box_East_Grenades_F",	// too many granade spamming happening, these only hold nades and smoke
	"Box_East_WpsLaunch_F",	// too many launchers in game, need to give the helis a chance
	"Box_East_AmmoOrd_F",
	"Box_East_WpsSpecial_F",
	"Box_East_Support_F",
	//"Box_East_AmmoVeh_F", 
	"Box_IND_Ammo_F",
	"Box_IND_Wps_F",  			// issue: LODShape::AddLoadHandler: Handler not present in shape [a3\weapons_f\empty.p3d]
	"Box_IND_Wps_F",
	//"Box_IND_Grenades_F",		// too many granade spamming happening, these only hold nades and smoke
	"Box_IND_WpsLaunch_F",		// too many launchers in game, need to give the helis a chance
	"Box_IND_AmmoOrd_F",
	"Box_IND_WpsSpecial_F",
	"Box_IND_Support_F"
	//"Box_IND_AmmoVeh_F" 
];

supplyCrate = [
	"I_supplyCrate_F",
	"O_supplyCrate_F",
	"B_supplyCrate_F"
];
 
MissionSpawnMarkers = [
	["Mission_1",false],
	["Mission_2",false],
	["Mission_3",false],
	["Mission_4",false],
	["Mission_5",false],
	["Mission_6",false],
	["Mission_7",false],
	["Mission_8",false],
	["Mission_9",false],
	["Mission_10",false],
	["Mission_11",false],
	["Mission_12",false],
	["Mission_13",false],
	["Mission_14",false],
	["Mission_15",false],
	["Mission_16",false],
	["Mission_17",false],
	["Mission_18",false],
	["Mission_19",false],
	["Mission_20",false]
];

diag_log format["*** serverVar Finshed ***"];