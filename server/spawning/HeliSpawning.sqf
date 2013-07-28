//	@file Version: 1.0
//	@file Name: staticHeliSpawning.sqf
//	@file Author: [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static helis
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_type","_start","_step","_end"];

_counter = 0;
_step = 4;
_start = floor (random _step) + 1;
_end = 24;

for "_i" from _start to _end step _step do
{
	_pos = getMarkerPos format ["heliSpawn_%1", _i];
	_type = floor (random (count militaryHelis));
	
	[_pos, _type] call HeliCreation;
   
	_counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Static helis Spawned",_counter];

