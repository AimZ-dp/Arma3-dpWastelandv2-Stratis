
if(!isDedicated) exitWith {};

diag_log format["****** SERVER init Started ******"];

"pvar_createBaseObject" addPublicVariableEventHandler {[_this select 1] call createBaseObject};

//Execute Server Side Scripts.
[] call serverAdminList;
[] call serverVars;
[] call relations;
[] spawn serverTimeSync;
[] spawn broadcaster;

[] spawn {
	_objects = nearestObjects [getMarkerPos "Town_1", ["House_F"], 8000];
	{
		_x allowDamage false;
	} foreach _objects;
};

//Execute Server Spawning.
[] call vehicleSpawning;
[] call HeliSpawning;
[] call boxSpawning;
//[] call baseObjectSpawning;
[] call survivalObjectSpawning;
[] spawn respawnCheck;

//Execute Server Missions.
[] spawn sideMissionController;
[] spawn mainMissionController;

//Execute Server Cleanup.
[] spawn cleanObjects;
//[] spawn cleanDead;

diag_log format["****** SERVER init Finshed ******"];