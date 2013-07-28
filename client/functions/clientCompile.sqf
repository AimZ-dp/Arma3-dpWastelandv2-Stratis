//	@file Version: 1.0
//	@file Name: clientCompile.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

// Initialise
clientVars = compileFinal preprocessfile "client\config.sqf";
briefing = compileFinal preprocessfile "client\briefing.sqf";

// Event handlers
onRespawn = compileFinal preprocessfile "client\clientEvents\onRespawn.sqf";
onKilled = compileFinal preprocessfile "client\clientEvents\onKilled.sqf";
onKeyPress = compileFinal preprocessFile "client\clientEvents\onKeyPress.sqf";
onMouseWheel = compileFinal preprocessFile "client\clientEvents\onMouseWheel.sqf";

// Player details and actions
loadPlayerMenu = compileFinal preprocessFile "client\systems\playerMenu\init.sqf";
playerSpawn = compileFinal preprocessFileLineNumbers "client\functions\playerSpawn.sqf";
playerSetup = compileFinal preprocessFileLineNumbers "client\functions\playerSetup.sqf";
playerActions = compileFinal preprocessFileLineNumbers "client\functions\playerActions.sqf";
initSurvival = compileFinal preprocessFileLineNumbers "client\functions\initSurvival.sqf";
spawnAction = compileFinal preprocessFileLineNumbers "client\functions\spawnAction.sqf";
placeSpawnBeacon = compileFinal preprocessFileLineNumbers "client\systems\playerMenu\placeSpawnBeacon.sqf";
refuelVehicle = compileFinal preprocessFileLineNumbers "client\systems\playerMenu\refuel.sqf";
repairVehicle = compileFinal preprocessFile "client\systems\playerMenu\repair.sqf";

// Sync client with server time
timeSync = compileFinal preprocessFileLineNumbers "client\functions\clientTimeSync.sqf";
serverMessage = compileFinal preprocessFileLineNumbers "client\functions\serverMessage.sqf";

// Update scripts
updateMissionsMarkers = compileFinal preprocessFileLineNumbers "client\functions\updatePlayerMissionMarkers.sqf";
updateTeamKiller = compileFinal preprocessFileLineNumbers "client\functions\updateTeamKiller.sqf";

// Team-kill system
teamkillAction = compileFinal preprocessFileLineNumbers "client\functions\doTeamKillAction.sqf";
teamkillMessage = compileFinal preprocessFileLineNumbers "client\functions\showTeamKillMessage.sqf";

// Dialog compiles
client_respawnDialog = compileFinal preprocessFileLineNumbers "client\functions\loadRespawnDialog.sqf";
loadGeneralStore = compileFinal preprocessFileLineNumbers "client\systems\generalStore\loadGenStore.sqf";
loadGunStore = compileFinal preprocessFileLineNumbers "client\systems\gunStore\loadGunStore.sqf";

// HUD graphics
playerHud = compileFinal preprocessFileLineNumbers "client\systems\hud\playerHud.sqf";
drawPlayerIcons = compileFinal preprocessFileLineNumbers "client\systems\hud\playerIcons.sqf";
getPlayerData = compileFinal preprocessFileLineNumbers "client\systems\hud\getPlayerData.sqf";
getDebugData = compileFinal preprocessFileLineNumbers "client\systems\hud\getDebugData.sqf";

// Update markers
createTownMarkers = compileFinal preprocessFileLineNumbers "client\functions\createTownMarkers.sqf";
createGunStoreMarkers = compileFinal preprocessFileLineNumbers "client\functions\createGunStoreMarkers.sqf";
createGeneralStoreMarkers = compileFinal preprocessFileLineNumbers "client\functions\createGeneralStoreMarkers.sqf";

player groupChat "=(dp)= Wasteland - Client Compile Complete";

sleep 1;
playerCompiledScripts = true;