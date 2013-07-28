//@file Version: 1.0
//@file Name: init.sqf
//@file Author: [404] Deadbeat
//@file Created: 20/11/2012 05:19
//@file Description: The client init.

if(!X_Client) exitWith {};

//Call client compile list.
playerCompiledScripts = false;
player call compileFinal preprocessFileLineNumbers "client\functions\clientCompile.sqf";
waitUntil{sleep 1;playerCompiledScripts};

//init Wasteland Core
player call clientVars;
player call briefing;


waitUntil {!isNull player};
waitUntil{time > 2};

//Stop people being civ's.
if(!(playerSide in [west, east, resistance])) then {
	endMission "LOSER";
};

//Player setup
player call playerSetup;

//Setup player events.
if(!isNil "client_initEH") then {player removeEventHandler ["Respawn", client_initEH];};
player addEventHandler ["Respawn", {[_this] call onRespawn;}];
player addEventHandler ["Killed", {[_this] call onKilled;}];

//Setup player menu scroll action.
player spawn onMouseWheel;

//Setup Key Handler
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];

"currentDate" addPublicVariableEventHandler {[] call timeSync};
"messageSystem" addPublicVariableEventHandler {[] call serverMessage};
"clientMissionMarkers" addPublicVariableEventHandler {[] call updateMissionsMarkers};
"pvar_teamKillList" addPublicVariableEventHandler {[] call updateTeamKiller};
"pvar_teamkillMessage" addPublicVariableEventHandler {if(local(_this select 1)) then {[] spawn teamkillMessage;};};

//client Executes
player call initSurvival;
player call createTownMarkers;
player call createGunStoreMarkers;
player call createGeneralStoreMarkers;
player call updateMissionsMarkers;
//player spawn playerHud;
player spawn drawPlayerIcons;
player spawn getPlayerData;
player spawn getDebugData;
sleep 1;
true spawn playerSpawn;

