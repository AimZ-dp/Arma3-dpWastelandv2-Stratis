//	@file Version: 1.0
//	@file Name: staticHeliSpawning.sqf
//	@file Author: [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static helis
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_start","_step"];

_counter = 0;
_step = 2;// 6;
_start = floor (random _step);

for "_i" from _start to 24 step _step do
{
	_pos = getMarkerPos format ["heliSpawn_%1", _i];
	_type = floor (random (count staticHeliList - 1));
	[_pos, _type] call staticHeliCreation;
   
	_counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Static helis Spawned",_counter];

