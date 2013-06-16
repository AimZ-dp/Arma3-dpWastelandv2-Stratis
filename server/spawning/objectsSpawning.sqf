//	@file Version: 1.0
//	@file Name: objectsSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_counter","_pos","_type","_start","_step"];

_counter = 0;
_step = 1; //3;
_start = floor (random _step);

for "_i" from _start to 118 step _step do
{
    _pos = getMarkerPos format ["Spawn_%1", _i];
	_type = floor (random (count objectList - 1));
	[_pos, _type] call objectCreation;	
    
    _counter = _counter + 1;
};

diag_log format["WASTELAND SERVER - %1 Objects Spawned",_counter];