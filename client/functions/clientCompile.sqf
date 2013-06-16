//	@file Version: 1.0
//	@file Name: clientCompile.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

// Event handlers
onRespawn = compileFinal preprocessfile "client\clientEvents\onRespawn.sqf";
onKilled = compileFinal preprocessfile "client\clientEvents\onKilled.sqf";
onKeyPress = compileFinal preprocessFile "client\clientEvents\onKeyPress.sqf";

// Player details and actions
loadPlayerMenu = compileFinal preprocessFile "client\systems\playerMenu\init.sqf";
playerSpawn = compileFinal preprocessFileLineNumbers "client\functions\playerSpawn.sqf";
playerSetup = compileFinal preprocessFileLineNumbers "client\functions\playerSetup.sqf";
spawnAction = compileFinal preprocessFileLineNumbers "client\functions\spawnAction.sqf";
placeSpawnBeacon = compileFinal preprocessFileLineNumbers "client\systems\playerMenu\placeSpawnBeacon.sqf";
refuelVehicle = compileFinal preprocessFileLineNumbers "client\systems\playerMenu\refuel.sqf";
repairVehicle = compileFinal preprocessFile "client\systems\playerMenu\repair.sqf";

// Sync client with server time
timeSync = compileFinal preprocessFileLineNumbers "client\functions\clientTimeSync.sqf";
serverMessage = compileFinal preprocessFileLineNumbers "client\functions\serverMessage.sqf";

// Update scripts
updateMissionsMarkers = compileFinal preprocessFileLineNumbers "client\functions\updatePlayerMissionMarkers.sqf";
updateRadarMarkers = compileFinal preprocessFileLineNumbers "client\functions\updatePlayerRadarMarkers.sqf";
updateTeamKiller = compileFinal preprocessFileLineNumbers "client\functions\updateTeamKiller.sqf";

// Team-kill system
teamkillAction = compileFinal preprocessFileLineNumbers "client\functions\doTeamKillAction.sqf";
teamkillMessage = compileFinal preprocessFileLineNumbers "client\functions\showTeamKillMessage.sqf";

// Dialog compiles
client_respawnDialog = compileFinal preprocessFileLineNumbers "client\functions\loadRespawnDialog.sqf";
loadGeneralStore = compileFinal preprocessFileLineNumbers "client\systems\generalStore\loadGenStore.sqf";
loadGunStore = compileFinal preprocessFileLineNumbers "client\systems\gunStore\loadGunStore.sqf";

player groupChat "=(dp)= Wasteland - Client Compile Complete";
sleep 1;
playerCompiledScripts = true;