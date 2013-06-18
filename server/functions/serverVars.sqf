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
				// A3_Structures_F
			//"Land_Bridge_01_PathLod_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Accessories
			//"Land_Loudspeakers_F", 
			//good//"Land_TreeBin_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_BellTowers
			//"Land_BellTower_01_V1_F", "Land_BellTower_01_V2_F", "Land_BellTower_02_V1_F", "Land_BellTower_02_V2_F", "Land_BellTower_02_V1_ruins_F", "Land_BellTower_02_V2_ruins_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Calvaries
			//good//"Land_Calvary_01_V1_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Camping
			//"Land_Campfire_F", "Campfire_burning_F", "Land_CampingChair_V1_folded_F", "Land_CampingTable_folded_F", "Land_CampingTable_obj_F", "Land_TentA_F", "Land_TentDome_F", 
			"Land_CampingChair_V1_F", 
			"Land_CampingChair_V2_F", 
			"Land_CampingTable_F", 
			"Land_CampingTable_small_F", 
			"Land_FieldToilet_F", 
			"Land_FirePlace_F", 
			"FirePlace_burning_F", 
			"Land_Sunshade_F", 
			"Land_ToiletBox_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Chapels
			//"Land_Chapel_V1_F", "Land_Chapel_V2_F", "Land_Chapel_Small_V2_F", "Land_Chapel_V1_ruins_F", "Land_Chapel_V2_ruins_F", "Land_Chapel_Small_V1_ruins_F", "Land_Chapel_Small_V2_ruins_F", 
			//good//"Land_Chapel_Small_V1_F", 
			// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Constructions
			"Land_Bricks_V1_F", 
			"Land_Bricks_V2_F", 
			"Land_Bricks_V3_F", 
			"Land_Bricks_V4_F", 
			"Land_Coil_F", 
			"Land_ConcretePipe_F", 
			"Land_IronPipes_F", 
			"Land_Pallet_F", 
			"Land_Pallet_vertical_F", 
			"Land_Pallets_F", 
			"Land_Pipes_large_F", 
			"Land_Pipes_small_F", 
			"Land_Scaffolding_F", 
			"Land_WheelCart_F", 
			"Land_WoodenBox_F", 
			"Land_WorkStand_F", 
			"Land_CinderBlocks_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Dead
			//"Land_AnimalBones_cow_F", "Land_AnimalBones_sheep_F", "Land_BodyBag_F", "Land_HumanDead_diver_F", "Land_HumanDead_F", "Land_HumanDead_sitting_F", "Land_HumanSkeleton_burned_F", "Land_MilGrave_East_F", "Land_MilGrave_local_F", "Land_MilGrave_NATO_F",
			//good//"Land_Grave_V1_F", "Land_Grave_V2_F", "Land_Grave_V3_F", "Land_HumanSkeleton_F", "Land_HumanSkull_F", 
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Garbage
			//"Land_GarbageHeap_F", "Land_GarbageHouse_F", "Land_Litter_line_F", "Land_Litter_square_F", "Land_Rubble_F", "Land_Tyre_U_F", 
			"Land_Garbage_line_F", 
			"Land_Garbage_square3_F", 
			"Land_Garbage_square5_F", 
			"Land_GarbageBags_F", 
			"Land_GarbagePallet_F", 
			"Land_GarbageWashingMachine_F", 
			"Land_JunkPile_F", 
			"Land_Tyre_F", 
			"Land_Tyres_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_InfoBoards
			//"Land_Billboard_F", "Land_InfoStand_V1_F", "Land_InfoStand_V2_F", "MapBoard_limnos_F", "Land_Noticeboard_F",
			"Land_MapBoard_F", 
			"MapBoard_stratis_F", 
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Lamps
			//"Land_LampAirport_F", "Land_LampSolar_F", "Land_LampStadium_F", 
			//good//"Land_LampDecor_F", "Land_LampHalogen_F", "Land_LampHarbour_F", "Land_LampShabby_F", "Land_LampStreet_F", "Land_LampStreet_small_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Market
			//"Land_CratesWooden_U_F", "Land_MarketShelter_F", "Land_StallClothes_F", "Land_StallConst_F", "Land_StallFood_F", "Land_StallWeapons_F",
			"Land_Basket_F", 
			"Land_Cages_F", 
			"Land_CratesPlastic_F", 
			"Land_CratesShabby_F", 
			"Land_CratesWooden_F", 
			"Land_Sack_F", 
			"Land_Sacks_goods_F", 
			"Land_Sacks_heap_F", 
			"Land_StallWater_F", 
			"Land_WoodenCart_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Pavements 
			//"Land_Pavement_narrow_corner_F", "Land_Pavement_wide_corner_F", 
			//good//"Land_Pavement_narrow_F", "Land_Pavement_wide_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_PlayGround
			"Land_Slide_F",
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_SportsGrounds
			//"Land_Goal_F", "Land_Tribune_F",
			//good//"Land_BC_Basket_F", "Land_BC_Court_F", 
				// A3_Structures_F:A3_Structures_F_Civ:A3_Structures_F_Civ_Statues
			//"Land_Maroula_base_F", "Land_Maroula_F", 
			//good//"Land_MolonLabe_F",
				// A3_Structures_F:A3_Structures_F_Furniture
			//"Land_ChairWood_F", "Land_Icebox_F", "Land_Mirror_F", "Land_Rack_F", "Land_ShelvesMetal_F", "Land_ShelvesWooden_F", "Land_TableDesk_F",
			//good//"Land_CashDesk_F", 
			"Land_Bench_F", 
			"Land_ChairPlastic_F", 
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Cans 
			//"Land_Can_Rusty_F", "Land_Can_V1_F", "Land_Can_V2_F", "Land_TacticalBacon_F",
			"Land_Can_Dented_F", 
			"Land_Can_V3_F", 
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Electronics
			//"Land_Analyzer_F", "Land_Console_F", "Land_Comms_Radio_F", "Land_Comms_Sat_F", "Land_Desktop_F", "Land_FloodLight_F", "Land_FMradio_F", "Land_Laptop_F", "Land_Laptop_unfolded_F", 
			//"Land_LaptopMil_F", "Land_MobilePhone_old_F", "Land_MobilePhone_smart_F", "Land_PortableLongRangeRadio_F", "Land_Probe_F", "Land_ProbeGround_F", "Land_ProbePole_F", 
			//"Land_SatellitePhone_F", "Land_Screen_F", "Land_ScreenBig_F", "Land_SoundSystem_F", "Land_SurvivalRadio_F", "Land_UAV_Control_Terminal_F",
			//*"Land_ExtensionCord_F", 
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Luggage 
			"Land_Suitcase_F",
			// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Tools
			//"Land_File_F", "Land_Saw_F", "Land_Screwdriver_V1_F", "Land_Screwdriver_V2_F", 
			"Land_DrillAku_F", 
			"Land_DustMask_F", 
			"Land_Gloves_F", 
			"Land_Grinder_F", 
			"Land_Hammer_F", 
			"Land_Meter3m_F", 
			"Land_MultiMeter_F", 
			"Land_Pliers_F", 
			"Land_Wrench_F",
				// A3_Structures_F:A3_Structures_F_Items:A3_Structures_F_Items_Vessels
			//"Land_BarrelTrash_F", "Land_BucketNavy_F", "Land_CanisterOil_F", "MetalBarrel_burning_F", "Land_MetalBarrel_empty_U_F", 
			"Land_BarrelEmpty_F", 
			"Land_BarrelSand_F", 
			"Land_BarrelWater_F", 
			"Land_BottlePlastic_V1_F", 
			"Land_Bucket_F", 
			"Land_CanisterFuel_F", 
			"Land_CanisterPlastic_F", 
			"Land_MetalBarrel_empty_F", 
			"Land_MetalBarrel_F",
				// A3_Structures_F:A3_Structures_F_System 
			"Land_ClutterCutter_large_F", 
			"Land_ClutterCutter_medium_F", 
			"Land_ClutterCutter_small_F",
				// A3_Structures_F:A3_Structures_F_Training
			//"BlockConcrete_F", "Dirthump_1_F", "Dirthump_2_F", "Dirthump_3_F", "Dirthump_4_F", "Land_RampConcrete_F", "Land_RampConcreteHigh_F", "ShootingPos_F", "TargetP_Veh_F", 
			//"TargetP_Inf2_F", "TargetP_Inf2_NoPop_F", "TargetArmor_F", "Land_Shoot_House_Door_F", "Land_Shoot_House_Window_F", "Land_Target_Static_F", "Land_Target_Static_Full_F", 
			//"Land_Target_PopUp_F", "Land_Target_Static_Man_F", "Land_Target_Spinning_F", "Land_Target_Spinning_Wall_F", "Land_Target_Oval_Wall_Left_F", "Land_Target_Oval_Wall_Right_F", 
			//"Land_Target_Oval_Wall_Top_F", "Land_Target_Oval_Wall_Bottom_F", "Land_Target_Hanging_F",
			"Land_Obstacle_Bridge_F", 
			"Land_Obstacle_Climb_F", 
			"Land_Obstacle_Crawl_F", 
			"Land_Obstacle_Cross_F", 
			"Land_Obstacle_Pass_F", 
			"Land_Obstacle_Ramp_F", 
			"Land_Obstacle_RunAround_F", 
			"Land_Obstacle_Saddle_F", 
			"TargetP_Inf_F", 
			"TargetP_Inf_NoPop_F", 
			"Target_F", 
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
			"Land_Target_Oval_F", 
				// A3_Structures_F:A3_Structures_F_Walls
			//"Land_CncShelter_F", "Land_Mil_WallBig_Gate_F", "Land_City_Gate_F", "Land_City2_PillarD_F", "Land_Wall_IndCnc_2deco_F", "Land_Wall_IndCnc_4_D_F", "Land_Wall_IndCnc_4_F", 
			//"Land_Wall_IndCnc_End_2_F", "Land_Wall_IndCnc_Pole_F", "Land_CncBarrier_stripes_F", "Land_StoneBarrier_F", "Land_Net_Fence_4m_F", "Land_Net_Fence_8m_F", 
			//"Land_Net_Fence_Gate_F", "Land_Net_Fence_pole_F", "Land_Net_FenceD_8m_F", 
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
			"Land_RedWhitePole_F",
				// A3_Structures_F_Mil:A3_Structures_F_Mil_Fortification
			//"Land_Barricade_F", "Land_Barricade_concrete_F", "Land_Barricade_wrecks_F", "Land_HBarrierTower_F", "Land_HBarrierWall_corner_F", "Land_HBarrierWall_corridor_F", 
			//"Land_HBarrierWall4_F", "Land_HBarrierWall6_F", "Land_Modblock_F", "Land_ModblockRow_F", 
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