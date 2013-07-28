//	@file Version: 1.0
//	@file Name: boxCreation.sqf
//	@file Author: [404] Costlyy, AimZ =(dp)= 
//	@file Created: 19/12/2012 23:19
//	@file Args: 

// This file is to address the serious imbalance caused by the default load-out of all weapon crates.

if(!X_Server) exitWith {};

private ["_boxtype","_box","_type","_pos","_weapons","_weapontype"];
_type = _this select 1;
_pos = _this select 0;

_boxtype = ammoBoxes select _type;

_box = createVehicle [_boxtype, _pos,[], 10, "NONE"];
_box setVariable ["newVehicle",vChecksum,true];
_box setVariable ["timeout", (time + ammoDesertedTimeLimit + random maxRandomTimeLimit), true];
_box setVariable ["status", "alive", true];

// remove weapons
_weapons = getWeaponCargo _box;
_weapontype = _weapons select 0;
_weaponcount = _weapons select 1;
	
clearWeaponCargoGlobal _box;
{
	if (!(_x in removeWeapons)) then {
		_box addWeaponCargoGlobal [_x, _weaponcount select _forEachIndex];
	};
} foreach _weapontype;

// position
_box setPosATL [getpos _box select 0,getpos _box select 1,0.0];
_box setVelocity [0,0,0];
_box setDir (random 360);

