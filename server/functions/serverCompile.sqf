//	@file Version: 1.0
//	@file Name: serverCompile.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

diag_log format["WASTELAND SERVER - Initilizing Server Compile"];

//Main Mission Compiles

mission_ArmedHeli = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_ArmedHeli.sqf";
mission_CivHeli = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_CivHeli.sqf";
mission_Convoy = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_Convoy.sqf";
mission_LightArmVeh = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_LightArmVeh.sqf";
/*
mission_APC = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_APC.sqf";
mission_LightTank = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_LightTank.sqf";
mission_MBT = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_MBT.sqf";
mission_Outpost = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_Outpost.sqf";
mission_RadarTruck = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_RadarTruck.sqf";
mission_SupplyDrop = compileFinal preprocessFileLineNumbers "server\missions\mainMissions\mission_SupplyDrop.sqf";
*/

//Side Mission Compiles
mission_AirWreck = compileFinal preprocessFileLineNumbers "server\missions\sideMissions\mission_AirWreck.sqf";
mission_WepCache = compileFinal preprocessFileLineNumbers "server\missions\sideMissions\mission_WepCache.sqf";
/*
mission_Truck = compileFinal preprocessFileLineNumbers "server\missions\sideMissions\mission_Truck.sqf";
mission_ReconVeh = compileFinal preprocessFileLineNumbers "server\missions\sideMissions\mission_ReconVeh.sqf";
*/

//Factory Compiles
createMissionLocation = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createMissionLocation.sqf";
createClientMarker = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createClientMarker.sqf";
createWaitCondition = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createWaitCondition.sqf";
deleteClientMarker = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\deleteClientMarker.sqf";
createRandomSoldier = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\createRandomSoldier.sqf";
createSmallGroup = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\smallGroup.sqf";
createMidGroup = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\midGroup.sqf";
createLargeGroup = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createUnits\largeGroup.sqf";
createMissionVehicle = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createMissionVehicle.sqf";
createSupplyDrop = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createSupplyDrop.sqf";
createCargoItem = compileFinal preprocessFileLineNumbers "server\missions\factoryMethods\createCargoItem.sqf";
defendArea = compileFinal preprocessFileLineNumbers "server\functions\defendArea.sqf";

//Spawning Compiles
randomWeapons = compileFinal preprocessFileLineNumbers "server\spawning\randomWeapon.sqf";
boxCreation = compileFinal preprocessFileLineNumbers "server\spawning\boxCreation.sqf";
vehicleCreation = compileFinal preprocessFileLineNumbers "server\spawning\vehicleCreation.sqf";
objectCreation = compileFinal preprocessFileLineNumbers "server\spawning\objectCreation.sqf";
staticGunCreation = compileFinal preprocessFileLineNumbers "server\spawning\staticGunCreation.sqf";
staticHeliCreation = compileFinal preprocessFileLineNumbers "server\spawning\staticHeliCreation.sqf";
fn_refillbox = compileFinal preprocessFileLineNumbers "server\functions\fn_refillbox.sqf";

//Player Management
server_playerDied = compileFinal preprocessFileLineNumbers "server\functions\serverPlayerDied.sqf";

