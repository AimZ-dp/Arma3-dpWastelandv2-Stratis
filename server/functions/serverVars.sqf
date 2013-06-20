//	@file Version: 1.0
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, AimZ =(dp)= 
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Vars"];

burningTimeLimit = 60;
desertedTimeLimit = 1200;

//CVG_weapons = [];
//CVG_weapons = CVG_rifles;
//CVG_weapons = CVG_weapons + CVG_Scoped;
//CVG_weapons = CVG_weapons + CVG_Heavy;
//CVG_weapons = CVG_weapons + CVG_pistols;
//CVG_weapons = CVG_weapons + CVG_Launchers;

//sideMissionPos = "";
//mainMissionPos = "";

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
clientRadarMarkers = [];
publicVariable "clientRadarMarkers";
currentDate = [];
publicVariable "currentDate";
currentInvites = [];
publicVariable "currentInvites";
                  
//Civilian Vehicle List - Random Spawns
civilianVehicles = ["c_offroad"];
civilianBoats = ["C_Rubberboat","O_Lifeboat", "B_Lifeboat"];

//Military Vehicle List - Random Spawns
militaryVehicles = ["B_Quadbike_F", "O_Quadbike_F", "O_Ifrit_F","B_Hunter_F"];
militaryBoats = ["O_Assaultboat", "B_Assaultboat"];
militaryHelis = ["B_MH9_F", "O_Ka60_Unarmed_F"];

//Armed Military Vehicle List - Random Spawns
armedMilitaryVehicles = ["O_Ifrit_GMG_F", "O_Ifrit_MG_F", "B_Hunter_HMG_F", "B_Hunter_RCWS_F"];
armedMilitaryBoats = ["O_SpeedBoat", "B_SpeedBoat"];
armedMilitaryHelis = ["B_AH9_F", "O_Ka60_F"];

//Object List - Random Spawns.
staticWeaponsList = ["B_MK6"];

//Object List - Random Spawns.
objectList = [
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Camping
			"Land_CampingChair_V1_F", 
			"Land_CampingChair_V2_F", 
			"Land_CampingTable_F", 
			"Land_FieldToilet_F", 
			"Land_Sunshade_F", 
			"Land_ToiletBox_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Constructions
			"Land_Coil_F", 
			"Land_ConcretePipe_F", 
			"Land_IronPipes_F", 
			"Land_Pipes_large_F", 
			"Land_Pipes_small_F", 
			"Land_Scaffolding_F", 
			"Land_WoodenBox_F", 
			"Land_WorkStand_F", 
			"Land_CinderBlocks_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_InfoBoards
			"Land_MapBoard_F", 
			"MapBoard_stratis_F", 
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Market
			"Land_Basket_F", 
			"Land_Cages_F", 
			"Land_CratesPlastic_F", 
			"Land_CratesShabby_F", 
			"Land_CratesWooden_F", 
			"Land_Sack_F", 
			"Land_Sacks_goods_F", 
			"Land_Sacks_heap_F", 
			"Land_StallWater_F", 
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_PlayGround
			"Land_Slide_F",
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Luggage 
			"Land_Suitcase_F",
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Vessels
			"Land_BarrelEmpty_F", 
			"Land_BarrelSand_F", 
			"Land_BarrelWater_F", 
			"Land_BottlePlastic_V1_F", 
			"Land_Bucket_F", 
			"Land_CanisterFuel_F", 
			"Land_CanisterPlastic_F", 
			"Land_MetalBarrel_empty_F", 
			"Land_MetalBarrel_F",
				// A3_Structures_F:A3_Structures_F_Training
			"Land_Shoot_House_Wall_F", 
			"Land_Shoot_House_Wall_Stand_F", 
			"Land_Shoot_House_Wall_Crouch_F", 
			"Land_Shoot_House_Wall_Prone_F", 
			"Land_Shoot_House_Wall_Long_F", 
			"Land_Shoot_House_Wall_Long_Stand_F", 
			"Land_Shoot_House_Wall_Long_Crouch_F", 
			"Land_Shoot_House_Wall_Long_Prone_F", 
			"Land_Shoot_House_Corner_F", 
			"Land_Shoot_House_Corner_Stand_F", 
			"Land_Shoot_House_Corner_Crouch_F", 
			"Land_Shoot_House_Corner_Prone_F", 
			"Land_Shoot_House_Panels_F", 
			"Land_Shoot_House_Panels_Crouch_F", 
			"Land_Shoot_House_Panels_Prone_F", 
			"Land_Shoot_House_Panels_Vault_F", 
			"Land_Shoot_House_Panels_Window_F", 
			"Land_Shoot_House_Panels_Windows_F", 
			"Land_Shoot_House_Tunnel_F", 
			"Land_Shoot_House_Tunnel_Stand_F", 
			"Land_Shoot_House_Tunnel_Crouch_F", 
			"Land_Shoot_House_Tunnel_Prone_F", 
			"Land_Shoot_House_Leaning_F", 
			"Land_Shoot_House_Leaning_Full_F", 
			"Land_Shoot_House_Leaning_Stand_F", 
			"Land_Shoot_House_Leaning_Crouch_F", 
			"Land_Shoot_House_Leaning_Prone_F", 
				// A3_Structures_F:A3_Structures_F_Walls
			"Land_Mil_WallBig_4m_F", 
			"Land_Mil_WallBig_Corner_F", 
			"Land_Mil_ConcreteWall_F", 
			"Land_Mil_WiredFence_F", 
			"Land_Mil_WiredFence_Gate_F", 
			"Land_City_4m_F", 
			"Land_City_8m_F", 
			"Land_Canal_Wall_Stairs_F", 
			"Land_City_8mD_F", 
			"Land_City_Pillar_F", 
			"Land_City2_4m_F", 
			"Land_City2_8m_F", 
			"Land_City2_8mD_F", 
			"Land_Crash_barrier_F", 
			"Land_Pipe_fence_4m_F", 
			"Land_SportGround_fence_F", 
			"Land_Stone_4m_F", 
			"Land_Stone_8m_F", 
			"Land_Stone_8mD_F", 
			"Land_Stone_Gate_F", 
			"Land_Stone_pillar_F", 
			"Land_Wall_Tin_4_2", 
			"Land_Wall_Tin_Pole", 
			"Land_Wired_Fence_4m_F", 
			"Land_Wired_Fence_8m_F", 
			"Land_CncBarrierMedium_F", 
			"Land_CncWall1_F", 
			"Land_CncWall4_F", 
			"Land_CncBarrier_F", 
			"Land_Mound01_8m_F", 
			"Land_Mound02_8m_F", 
			"Land_BarGate_F", 
				// A3_Structures_F_Mil:A3_Structures_F_Mil_Fortification
			"Land_HBarrier_1_F", 
			"Land_HBarrier_3_F", 
			"Land_HBarrier_5_F", 
			"Land_HBarrierBig_F", 
			"Land_Razorwire_F",
			
			// UNKNOWN
			"Land_CargoBox_V1_F",
			"Land_cargo_addon02_V2_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons = ["arifle_SDAR_F",
				"arifle_MXM_F",
				"arifle_TRG21_F",
				"arifle_TRG20_F",
				"arifle_MXC_F",
                "arifle_MX_SW_F",
                "arifle_MX_GL_F",
                "arifle_TRG21_GL_F",
                "arifle_MX_F",
                "arifle_Khaybar_F",
                "arifle_Khaybar_C_F",
                "arifle_Khaybar_GL_F",
                "arifle_SDAR_F",
                "srifle_EBR_F",
                "LMG_Mk200_F",
                "hgun_P07_F",
                "hgun_Rook40_F"];

vehicleAddition = [
			"Zasleh2",
			"muzzle_snds_H",
			"muzzle_snds_L",
			"muzzle_snds_B",
			"muzzle_snds_H_MG",
			"optic_Arco",
			"optic_Hamr", 
			"optic_Aco", 
			"optic_ACO_grn", 
			"optic_Holosight", 
			"acc_flashlight", 
			"acc_pointer_IR",
			"Medikit",
            "FirstAidKit",
            "ToolKit"
];

vehicleAddition2 = [
	"Chemlight_blue",
	"Chemlight_red",
	"Chemlight_green"
];
 
ammoBoxes = [
	"Box_East_Support_F",
	"Box_East_Wps_F",
	"Box_East_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F"
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