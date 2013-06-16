//	@file Version: 1.0
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Description: The server init.
//	@file Args:
if(!X_Server) exitWith {};

sideMissions = 1;
serverSpawning = 1;

//Execute Server Side Scripts.
[] execVM "server\admins.sqf";
[] execVM "server\functions\serverVars.sqf";
_serverCompiledScripts = [] execVM "server\functions\serverCompile.sqf";
[] execVM "server\functions\broadcaster.sqf";
[] execVM "server\functions\relations.sqf";
[] execVM "server\functions\serverTimeSync.sqf";
waitUntil{scriptDone _serverCompiledScripts};

diag_log format["WASTELAND SERVER - Server Compile Finished"];

"PlayerCDeath" addPublicVariableEventHandler {_id = (_this select 1) spawn server_playerDied};

//Execute Server Spawning.
if (serverSpawning == 1) then {
    diag_log format["WASTELAND SERVER - Initilizing Server Spawning"];
	_vehSpawn = [] ExecVM "server\spawning\vehicleSpawning.sqf";
	waitUntil{sleep 0.1; scriptDone _vehSpawn};
    _objSpawn = [] ExecVM "server\spawning\objectsSpawning.sqf";
	waitUntil{sleep 0.1; scriptDone _objSpawn};
    _boxSpawn = [] ExecVM "server\spawning\boxSpawning.sqf";
	waitUntil{sleep 0.1; scriptDone _boxSpawn};
    _heliSpawn = [] ExecVM "server\spawning\staticHeliSpawning.sqf";
    waitUntil{sleep 0.1; scriptDone _heliSpawn};
};

//Execute Server Missions.
if (sideMissions == 1) then {
	diag_log format["WASTELAND SERVER - Initilizing Missions"];
    [] execVM "server\missions\sideMissionController.sqf";
    sleep 5;
    [] execVM "server\missions\mainMissionController.sqf";
    //[] execVM "server\missions\worldMissionController.sqf";
};

[] ExecVM "server\functions\cleanObjects.sqf";

if (isDedicated) then {
	_id = [] execFSM "server\WastelandServClean.fsm";
};