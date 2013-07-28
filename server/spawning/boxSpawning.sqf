//	@file Version: 1.1
//	@file Name: boxSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_type","_start","_step","_end"];

_counter = 0;
_step = 4;
_start = floor (random _step) + 1;
_end = 118;

for "_i" from _start to _end step _step do
{
	_pos = getMarkerPos format ["Spawn_%1", _i];
	_type = floor (random (count ammoBoxes));
	
	[_pos, _type] call boxCreation;	

    _counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Ammo Caches Spawned",_counter];