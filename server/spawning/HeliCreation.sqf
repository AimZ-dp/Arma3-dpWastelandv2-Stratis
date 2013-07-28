//	@file Version: 1.0
//	@file Name: staticHeliCreation.sqf
//	@file Author: [404] Costlyy, AimZ =(dp)=
//	@file Created: 20/12/2012 21:00
//	@file Description: Random static helis
//	@file Args: [int (0 = not wreck | 1 = wreck), array (position)]

if(!X_Server) exitWith {};

private ["_helitype","_heli","_type","_pos"];
_type = _this select 1;
_pos = _this select 0;

_helitype = militaryHelis select _type;

_heli = createVehicle [_helitype, _pos, [], 30, "NONE"];
_heli setVariable["newVehicle",vChecksum,true];
_heli setVariable ["timeout", (time + desertedTimeLimit + random maxRandomTimeLimit), true];
_heli setVariable ["status", "alive", true];

//Clear Inventory
clearMagazineCargoGlobal _heli;
clearWeaponCargoGlobal _heli;

//Set Attributes
// set status of vehicle
_heli setFuel (random 0.50) + 0.10;
_heli setDamage (random 0.25) + 0.50;

// position
_heli setPosATL [getpos _heli select 0,getpos _heli select 1,0.5];
_heli setVelocity [0,0,0.5];
_heli setDir (random 360);

if (count(configFile >> "CfgVehicles" >> (typeOf _heli) >> "Turrets") > 0) then
{
	_heli setVehicleAmmo (random 0.75) + 0.25;
};


