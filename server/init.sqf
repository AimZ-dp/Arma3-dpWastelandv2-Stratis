//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Description: The server init.
//	@file Args:
if(!X_Server) exitWith {};

//Execute Server Side Scripts.
diag_log format["WASTELAND SERVER - Initilizing Server Compile"];
_serverCompiledScripts = [] execVM "server\functions\serverCompile.sqf";
waitUntil{sleep 1;scriptDone _serverCompiledScripts};
[] call admins;
[] call serverVars;
[] call relations;
[] spawn serverTimeSync;

// Public Variable Handlers
"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

//Execute Server Spawning.
diag_log format["WASTELAND SERVER - Initilizing Server Spawning"];
[] call vehicleSpawning;
[] call HeliSpawning;
[] call boxSpawning;
[] call baseObjectSpawning;
[] call survivalObjectSpawning;
[] spawn respawnCheck;

//Execute Server Missions.
diag_log format["WASTELAND SERVER - Initilizing Missions"];
	
[] spawn sideMissionController;
[] spawn mainMissionController;

//Execute Server Cleanup.
diag_log format["WASTELAND SERVER - Initilizing Cleanup"];
[] spawn cleanObjects;
