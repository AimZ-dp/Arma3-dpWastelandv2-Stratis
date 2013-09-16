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
	"C_Offroad_01_F",
	"B_MRAP_01_gmg_F", 
	"B_MRAP_01_hmg_F",	
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",	
	"I_MRAP_03_gmg_F",	
	"I_MRAP_03_hmg_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F",
	"B_Truck_01_transport_F",
	"B_Truck_01_covered_F",
	"O_Truck_02_covered_F",
	"O_Truck_02_transport_F",
	"I_Truck_02_covered_F",
	"I_Truck_02_transport_F"	
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = [
    "C_Quadbike_01_F",
    "B_Quadbike_01_F",
    "O_Quadbike_01_F",    
	"I_Quadbike_01_F",	
	"C_Offroad_01_F",
	"B_MRAP_01_gmg_F", 
	"B_MRAP_01_hmg_F",	
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",	
	"I_MRAP_03_gmg_F",	
	"I_MRAP_03_hmg_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F",
	"B_Truck_01_transport_F",
	"B_Truck_01_covered_F",
	"O_Truck_02_covered_F",
	"O_Truck_02_transport_F",
	"I_Truck_02_covered_F",
	"I_Truck_02_transport_F",		
	"B_APC_Wheeled_01_cannon_F",
	"O_APC_Wheeled_02_rcws_F",
	"B_Heli_Light_01_F",
	"O_Heli_Light_02_F",
	"O_Heli_Light_02_unarmed_F",
	"B_Heli_Transport_01_F",
	"I_Heli_Transport_02_F",
	"B_Heli_Light_01_armed_F",
	"B_Heli_Attack_01_F",
	"O_Heli_Attack_02_F",
	"O_Heli_Attack_02_black_F"
];

/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = [
	"B_Heli_Light_01_F",
	"O_Heli_Light_02_F",
	"O_Heli_Light_02_unarmed_F",
	"B_Heli_Transport_01_F",
	"I_Heli_Transport_02_F",
	"B_Heli_Light_01_armed_F",	
	"B_Heli_Attack_01_F",
	"O_Heli_Attack_02_F",
	"O_Heli_Attack_02_black_F"
];

/**
 * List of class names of liftables objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = [
    "C_Quadbike_01_F",
    "B_Quadbike_01_F",
    "O_Quadbike_01_F",    
	"I_Quadbike_01_F",	
	"C_Offroad_01_F",
	"B_MRAP_01_gmg_F", 
	"B_MRAP_01_hmg_F",	
	"O_MRAP_02_gmg_F",
	"O_MRAP_02_hmg_F",	
	"I_MRAP_03_gmg_F",	
	"I_MRAP_03_hmg_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F",
	"B_Truck_01_transport_F",
	"B_Truck_01_covered_F",
	"O_Truck_02_covered_F",
	"O_Truck_02_transport_F",
	"I_Truck_02_covered_F",
	"I_Truck_02_transport_F",	
	"B_APC_Wheeled_01_cannon_F",
	"O_APC_Wheeled_02_rcws_F"
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
    ["C_Quadbike_01_F", 15],
    ["B_Quadbike_01_F", 15],
    ["O_Quadbike_01_F", 15],    
	["I_Quadbike_01_F", 15],	
	["C_Offroad_01_F", 20],
	["B_MRAP_01_gmg_F", 20],	 
	["B_MRAP_01_hmg_F", 20],	
	["O_MRAP_02_gmg_F", 20],	
	["O_MRAP_02_hmg_F", 20],	
	["I_MRAP_03_gmg_F", 20],	
	["I_MRAP_03_hmg_F", 20],	
	["B_MRAP_01_F", 30],
	["O_MRAP_02_F", 30],
	["I_MRAP_03_F", 30],
	["B_Truck_01_transport_F", 50],
	["B_Truck_01_covered_F", 50],
	["O_Truck_02_covered_F", 50],
	["O_Truck_02_transport_F", 50],
	["I_Truck_02_covered_F", 50],
	["I_Truck_02_transport_F", 50],	
	["B_APC_Wheeled_01_cannon_F", 50],
	["O_APC_Wheeled_02_rcws_F", 50],
	["B_Heli_Light_01_F", 30],
	["O_Heli_Light_02_F", 30],
	["O_Heli_Light_02_unarmed_F", 40],
	["B_Heli_Transport_01_F", 50],
	["I_Heli_Transport_02_F", 50],
	["B_Heli_Light_01_armed_F", 40],
	["B_Heli_Attack_01_F", 20],	
	["O_Heli_Attack_02_F", 20],
	["O_Heli_Attack_02_black_F", 20]
];

/**
 * List of class names of transportables objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
 
R3F_LOG_CFG_objets_transportables =  [
	
	["Box_NATO_Ammo_F", 5],
	["Box_NATO_Wps_F", 5],
	["Box_NATO_Grenades_F", 5],
	["Box_NATO_WpsLaunch_F", 5],
	["Box_NATO_AmmoOrd_F", 5],
	["Box_NATO_WpsSpecial_F", 5],
	["Box_NATO_Support_F", 5],
	["Box_East_Ammo_F", 5],
	["Box_East_Wps_F", 5],
	["Box_East_Grenades_F", 5],
	["Box_East_WpsLaunch_F", 5],
	["Box_East_AmmoOrd_F", 5],
	["Box_East_WpsSpecial_F", 5],
	["Box_East_Support_F", 5],
	["Box_East_AmmoVeh_F", 5],
	["Box_IND_Ammo_F", 5],
	["Box_IND_Wps_F", 5],
	["Box_IND_Grenades_F", 5],
	["Box_IND_WpsLaunch_F", 5],
	["Box_IND_AmmoOrd_F", 5],
	["Box_IND_WpsSpecial_F", 5],
	["Box_IND_Support_F", 5],
	["Box_IND_AmmoVeh_F", 5],
	
	["Land_Sacks_goods_F", 5],
	["Land_Pipes_small_F", 5],
	["Land_Pipes_large_F", 5],
	["Land_MetalBarrel_F", 5],
	["Land_IronPipes_F", 5],
	["Land_ConcretePipe_F", 5],
	["Land_BagFence_Corner_F", 5],
	["Land_BagFence_End_F", 5],
	["Land_BagFence_Long_F", 5],
	["Land_BagFence_Round_F", 5],
	["Land_BagFence_Short_F", 5],
	["Land_BagBunker_Small_F", 5],
	["Land_CncBarrier_F", 5],
	["Land_CncBarrierMedium_F", 5],
	["Land_CncBarrierMedium4_F", 5],
	["Land_CncWall1_F", 5],
	["Land_CncWall4_F", 5],
	["Land_HBarrier_3_F", 5],
	["Land_HBarrier_5_F", 5],
	["Land_HBarrierBig_F", 5],
	["Land_HBarrier_1_F", 5],
	["Land_Crash_barrier_F", 5],
	["Land_LampHalogen_F", 5],
	["Land_CanisterFuel_F", 5],
	["Land_CanisterPlastic_F", 5],
	["Land_Cargo_House_V1_F", 5],
	["Land_Cargo_HQ_V1_F", 5],
	["Land_Cargo_Patrol_V1_F", 5],
	["I_supplyCrate_F", 5],	
	["Land_BarGate_F", 5]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveables by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */

R3F_LOG_CFG_objets_deplacables = [

	"Box_NATO_Ammo_F",
	"Box_NATO_Wps_F",
	"Box_NATO_Grenades_F",
	"Box_NATO_WpsLaunch_F",
	"Box_NATO_AmmoOrd_F",
	"Box_NATO_WpsSpecial_F",
	"Box_NATO_Support_F",
	"Box_East_Ammo_F",
	"Box_East_Wps_F",
	"Box_East_Grenades_F",
	"Box_East_WpsLaunch_F",
	"Box_East_AmmoOrd_F",
	"Box_East_WpsSpecial_F",
	"Box_East_Support_F",
	"Box_East_AmmoVeh_F",
	"Box_IND_Ammo_F",
	"Box_IND_Wps_F",
	"Box_IND_Grenades_F",
	"Box_IND_WpsLaunch_F",
	"Box_IND_AmmoOrd_F",
	"Box_IND_WpsSpecial_F",
	"Box_IND_Support_F",
	"Box_IND_AmmoVeh_F",

	"Land_Sacks_goods_F",
	"Land_Pipes_small_F",
	"Land_Pipes_large_F",
	"Land_MetalBarrel_F",
	"Land_IronPipes_F",
	"Land_ConcretePipe_F",
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
	"Land_HBarrier_1_F",
	"Land_Crash_barrier_F",
	"Land_LampHalogen_F",
	"Land_CanisterFuel_F",
	"Land_CanisterPlastic_F",
	"Land_Cargo_House_V1_F",
	"Land_Cargo_HQ_V1_F",
	"Land_Cargo_Patrol_V1_F",
	"I_supplyCrate_F",
	"Land_BarGate_F"
];

/*
 * List of files adding objects in the arrays of logistics configuration (e.g. R3F_LOG_CFG_remorqueurs)
 * Add an include to the new file here if you want to use the logistics with a new addon.
 * 
 * Liste des fichiers ajoutant des objets dans les tableaux de fonctionnalit�s logistiques (ex : R3F_LOG_CFG_remorqueurs)
 * Ajoutez une inclusion vers votre nouveau fichier ici si vous souhaitez utilisez la logistique avec un nouvel addon.
 */
//#include "addons_config\arma2_CO_objects.sqf"
