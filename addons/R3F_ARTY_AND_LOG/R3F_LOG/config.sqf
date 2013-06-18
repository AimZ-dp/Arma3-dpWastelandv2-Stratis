/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file contains the configuration variables of the logistics system.
 * Fichier contenant les variables de configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/*
 * There are two ways to manage new objects with the logistics system. The first is to add these objects in the
 * folowing appropriate lists. The second is to create a new external file in the /addons_config/ directory,
 * according to the same scheme as the existing ones, and to add a #include at the end of this current file.
 * 
 * Deux moyens existent pour g�rer de nouveaux objets avec le syst�me logistique. Le premier consiste � ajouter
 * ces objets dans les listes appropri�es ci-dessous. Le deuxi�me est de cr�er un fichier externe dans le r�pertoire
 * /addons_config/ selon le m�me sch�ma que ceux qui existent d�j�, et d'ajouter un #include � la fin de ce pr�sent fichier.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"O_Ka60_Unarmed_F",
	"B_MH9_F",
	"O_Ka60_F",
	"B_AH9_F"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = [

	"c_offroad",
	"O_Ifrit_MG_F",
    "B_Hunter_F",
    "B_Hunter_RCWS_F",
    "B_Hunter_HMG_F",
    "O_Ifrit_F",
    "O_Ifrit_GMG_F"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USVehicleBox "weights" 12 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USVehicleBox "p�se" 12 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules (terrestres ou a�riens) pouvant transporter des objets transportables.
 * Le deuxi�me �l�ment des tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_transporteurs = [
	["c_offroad", 30],
	["O_Ifrit_MG_F", 20],
	["B_Hunter_F", 20],
	["B_Hunter_RCWS_F", 20],
	["B_Hunter_HMG_F", 20],
	["O_Ifrit_F", 20],
	["O_Ifrit_GMG_F", 20],
	["O_Ka60_Unarmed_F", 10],
	["B_MH9_F", 10],
	["O_Ka60_F", 10],
    ["O_Quadbike_F", 5],
    ["B_Quadbike_F", 5],
	["B_AH9_F", 10]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
 
R3F_LOG_CFG_objets_transportables =  [
	/*
	["Box_East_Support_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	["Land_Barrelwater_F", 5],
	["Land_Fireplace_F", 5],
	["Land_WoodenBox_F", 5],
	["Land_HBarrier_1_F", 1],
	["Land_HBarrierBig_F", 5],
	["Land_HBarrier_3_F", 5],
    ["Land_HBarrier_5_F", 5],
	["Land_CncBarrier_F", 5],
	["Land_Mound01_8m_F", 5],
	["Land_Scaffolding_F", 5],
	["Land_Razorwire_F", 1],
	["Land_CargoBox_V1_F", 5],
    ["O_Quadbike_F", 10],
    ["B_Quadbike_F", 10],
	["Land_Obstacle_Bridge_F", 5]
	*/
	
	["Box_East_Support_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	
	["Land_CampingChair_V1_F", 5],
	["Land_CampingChair_V2_F", 5],
	["Land_CampingTable_F", 5],
	["Land_CampingTable_small_F", 5],
	["Land_FieldToilet_F", 5],
	["Land_FirePlace_F", 5],
	["FirePlace_burning_F", 5],
	["Land_Sunshade_F", 5],
	["Land_ToiletBox_F",5],
	["Land_Bricks_V1_F", 5],
	["Land_Bricks_V2_F", 5],
	["Land_Bricks_V3_F", 5],
	["Land_Bricks_V4_F", 5],
	["Land_Coil_F", 5],
	["Land_ConcretePipe_F", 5],
	["Land_IronPipes_F", 5],
	["Land_Pallet_F", 5],
	["Land_Pallet_vertical_F", 5],
	["Land_Pallets_F", 5],
	["Land_Pipes_large_F", 5],
	["Land_Pipes_small_F", 5],
	["Land_Scaffolding_F", 5],
	["Land_WheelCart_F", 5],
	["Land_WoodenBox_F", 5],
	["Land_WorkStand_F", 5],
	["Land_CinderBlocks_F",5],
	
	["Land_Garbage_line_F", 5],
	["Land_Garbage_square3_F", 5],
	["Land_Garbage_square5_F", 5],
	["Land_GarbageBags_F", 5],
	["Land_GarbagePallet_F", 5],
	["Land_GarbageWashingMachine_F", 5],
	["Land_JunkPile_F", 5],
	["Land_Tyre_F", 5],
	["Land_Tyres_F",5],
	
	["Land_MapBoard_F", 5],
	["MapBoard_stratis_F", 5],
	
	["Land_Basket_F", 5],
	["Land_Cages_F", 5],
	["Land_CratesPlastic_F", 5],
	["Land_CratesShabby_F", 5],
	["Land_CratesWooden_F", 5],
	["Land_Sack_F", 5],
	["Land_Sacks_goods_F", 5],
	["Land_Sacks_heap_F", 5],
	["Land_StallWater_F", 5],
	["Land_WoodenCart_F",5],
	
	["Land_Slide_F",5],
	
	["Land_Bench_F", 5],
	["Land_ChairPlastic_F", 5],
	
	["Land_Can_Dented_F", 5],
	["Land_Can_V3_F", 5],
	
	["Land_Suitcase_F",5],
	
	["Land_DrillAku_F", 5],
	["Land_DustMask_F", 5],
	["Land_Gloves_F", 5],
	["Land_Grinder_F", 5],
	["Land_Hammer_F", 5],
	["Land_Meter3m_F", 5],
	["Land_MultiMeter_F", 5],
	["Land_Pliers_F", 5],
	["Land_Wrench_F",5],
	
	["Land_BarrelEmpty_F", 5],
	["Land_BarrelSand_F", 5],
	["Land_BarrelWater_F", 5],
	["Land_BottlePlastic_V1_F", 5],
	["Land_Bucket_F", 5],
	["Land_CanisterFuel_F", 5],
	["Land_CanisterPlastic_F", 5],
	["Land_MetalBarrel_empty_F", 5],
	["Land_MetalBarrel_F",5],
	
	//["Land_ClutterCutter_large_F", 5],
	//["Land_ClutterCutter_medium_F", 5],
	//["Land_ClutterCutter_small_F",5],
	
	["Land_Obstacle_Bridge_F", 5],
	["Land_Obstacle_Climb_F", 5],
	["Land_Obstacle_Crawl_F", 5],
	["Land_Obstacle_Cross_F", 5],
	["Land_Obstacle_Pass_F", 5],
	["Land_Obstacle_Ramp_F", 5],
	["Land_Obstacle_RunAround_F", 5],
	["Land_Obstacle_Saddle_F", 5],
	["TargetP_Inf_F", 5],
	["TargetP_Inf_NoPop_F", 5],
	["Target_F", 5],
	["Land_Shoot_House_Wall_F", 5],
	["Land_Shoot_House_Wall_Stand_F", 5],
	["Land_Shoot_House_Wall_Crouch_F", 5],
	["Land_Shoot_House_Wall_Prone_F", 5],
	["Land_Shoot_House_Wall_Long_F", 5],
	["Land_Shoot_House_Wall_Long_Stand_F", 5],
	["Land_Shoot_House_Wall_Long_Crouch_F", 5],
	["Land_Shoot_House_Wall_Long_Prone_F", 5],
	["Land_Shoot_House_Corner_F", 5],
	["Land_Shoot_House_Corner_Stand_F", 5],
	["Land_Shoot_House_Corner_Crouch_F", 5],
	["Land_Shoot_House_Corner_Prone_F", 5],
	["Land_Shoot_House_Panels_F", 5],
	["Land_Shoot_House_Panels_Crouch_F", 5],
	["Land_Shoot_House_Panels_Prone_F", 5],
	["Land_Shoot_House_Panels_Vault_F", 5],
	["Land_Shoot_House_Panels_Window_F", 5],
	["Land_Shoot_House_Panels_Windows_F", 5],
	["Land_Shoot_House_Tunnel_F", 5],
	["Land_Shoot_House_Tunnel_Stand_F", 5],
	["Land_Shoot_House_Tunnel_Crouch_F", 5],
	["Land_Shoot_House_Tunnel_Prone_F", 5],
	["Land_Shoot_House_Leaning_F", 5],
	["Land_Shoot_House_Leaning_Full_F", 5],
	["Land_Shoot_House_Leaning_Stand_F", 5],
	["Land_Shoot_House_Leaning_Crouch_F", 5],
	["Land_Shoot_House_Leaning_Prone_F", 5],
	["Land_Target_Oval_F", 5],
	
	["Land_Mil_WallBig_4m_F", 5],
	["Land_Mil_WallBig_Corner_F", 5],
	["Land_Mil_ConcreteWall_F", 5],
	["Land_Mil_WiredFence_F", 5],
	["Land_Mil_WiredFence_Gate_F", 5],
	["Land_City_4m_F", 5],
	["Land_City_8m_F", 5],
	["Land_Canal_Wall_Stairs_F", 5],
	["Land_City_8mD_F", 5],
	["Land_City_Pillar_F", 5],
	["Land_City2_4m_F", 5],
	["Land_City2_8m_F", 5],
	["Land_City2_8mD_F", 5],
	["Land_Crash_barrier_F", 5],
	["Land_Pipe_fence_4m_F", 5],
	["Land_SportGround_fence_F", 5],
	["Land_Stone_4m_F", 5],
	["Land_Stone_8m_F", 5],
	["Land_Stone_8mD_F", 5],
	["Land_Stone_Gate_F", 5],
	["Land_Stone_pillar_F", 5],
	["Land_Wall_Tin_4_2", 5],
	["Land_Wall_Tin_Pole", 5],
	["Land_Wired_Fence_4m_F", 5],
	["Land_Wired_Fence_8m_F", 5],
	["Land_CncBarrierMedium_F", 5],
	["Land_CncWall1_F", 5],
	["Land_CncWall4_F", 5],
	["Land_CncBarrier_F", 5],
	["Land_Mound01_8m_F", 5],
	["Land_Mound02_8m_F", 5],
	["Land_BarGate_F", 5],
	["Land_RedWhitePole_F",5],
	
	["Land_HBarrier_1_F", 5],
	["Land_HBarrier_3_F", 5],
	["Land_HBarrier_5_F", 5],
	["Land_HBarrierBig_F", 5],
	["Land_Razorwire_F",5],
	
	["Land_CargoBox_V1_F",5],
	["Land_cargo_addon02_V2_F",	5]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */

R3F_LOG_CFG_objets_deplacables = [
/*	"Box_East_Support_F",
	"Box_East_Wps_F",
	"Box_East_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_NATO_Wps_F",
	"Box_NATO_WpsSpecial_F",
	"Land_Barrelwater_F",
	"Land_Fireplace_F",
	"Land_WoodenBox_F",
	"Land_HBarrier_1_F",
	"Land_HBarrierBig_F",
	"Land_HBarrier_3_F",
    "Land_HBarrier_5_F",
//	"Land_CncBarrier_F",
//	"Land_Mound01_8m_F",
	"Land_Scaffolding_F",
//	"Land_Razorwire_F",
	"Land_CargoBox_V1_F",
    "O_Quadbike_F",
    "B_Quadbike_F",
	"Land_Obstacle_Bridge_F"
*/
	"Box_East_Support_F",
	"Box_East_Wps_F", 
	"Box_East_WpsSpecial_F",
	"Box_NATO_Support_F", 
	"Box_NATO_Wps_F", 
	"Box_NATO_WpsSpecial_F", 
	
	"Land_CampingChair_V1_F", 
	"Land_CampingChair_V2_F",
	"Land_CampingTable_F", 
	"Land_CampingTable_small_F", 
	"Land_FieldToilet_F", 
	"Land_FirePlace_F", 
	"FirePlace_burning_F", 
	"Land_Sunshade_F", 
	"Land_ToiletBox_F",
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
	
	"Land_Garbage_line_F", 
	"Land_Garbage_square3_F", 
	"Land_Garbage_square5_F", 
	"Land_GarbageBags_F", 
	"Land_GarbagePallet_F", 
	"Land_GarbageWashingMachine_F", 
	"Land_JunkPile_F", 
	"Land_Tyre_F", 
	"Land_Tyres_F",
	
	"Land_MapBoard_F", 
	"MapBoard_stratis_F", 
	
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
	
	"Land_Slide_F",
	
	"Land_Bench_F", 
	"Land_ChairPlastic_F", 
	
	"Land_Can_Dented_F", 
	"Land_Can_V3_F", 
	
	"Land_Suitcase_F",
	
	"Land_DrillAku_F", 
	"Land_DustMask_F", 
	"Land_Gloves_F", 
	"Land_Grinder_F", 
	"Land_Hammer_F", 
	"Land_Meter3m_F", 
	"Land_MultiMeter_F", 
	"Land_Pliers_F", 
	"Land_Wrench_F",
	
	"Land_BarrelEmpty_F", 
	"Land_BarrelSand_F", 
	"Land_BarrelWater_F", 
	"Land_BottlePlastic_V1_F", 
	"Land_Bucket_F", 
	"Land_CanisterFuel_F", 
	"Land_CanisterPlastic_F", 
	"Land_MetalBarrel_empty_F", 
	"Land_MetalBarrel_F",
	
	//"Land_ClutterCutter_large_F", 
	//"Land_ClutterCutter_medium_F", 
	//"Land_ClutterCutter_small_F",
	
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
	
	"Land_HBarrier_1_F", 
	"Land_HBarrier_3_F", 
	"Land_HBarrier_5_F", 
	"Land_HBarrierBig_F", 
	"Land_Razorwire_F",
	
	"Land_CargoBox_V1_F",
	"Land_cargo_addon02_V2_F"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\arma2_CO_objects.sqf"
