//	@file Version: 1.0
//	@file Name: vehicleSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_type","_num","_start","_step","_end"];

_counter = 0;
_step = 1;//2;
_start = floor (random _step) + 1;
_end = 118;

for "_i" from _start to _end step _step do
{
	_pos = getMarkerPos format ["Spawn_%1", _i];
	_type = 0;
    _num = floor (random 100);
	if (_num < 100) then {_type = 0;};
	if (_num < 50) then {_type = 1;};
	
	[_pos, _type] call vehicleCreation;
		
	_counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Vehicles Spawned",_counter];