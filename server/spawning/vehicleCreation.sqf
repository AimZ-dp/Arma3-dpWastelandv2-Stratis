
//	@file Version: 2.0
//	@file Name: vehicleCreation.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_cartype","_car","_type","_pos"];
_type = _this select 1;
_pos = _this select 0;

switch (_type) do 
{ 
  case 0: {_cartype = civilianVehicles select floor(random (count civilianVehicles));}; 
  case 1: {_cartype = militaryVehicles select floor(random (count militaryVehicles));}; 
  case 2: {_cartype = armedMilitaryVehicles select floor(random (count armedMilitaryVehicles));}; 
};

_car = createVehicle [_cartype,_pos,[], 30,"NONE"];
_car setVariable ["newVehicle",vChecksum,true];
_car setVariable ["timeout", (time + desertedTimeLimit + random maxRandomTimeLimit), true];
_car setVariable ["status", "alive", true];

//Clear Inventory
clearMagazineCargoGlobal _car;
clearWeaponCargoGlobal _car;
	
//Set Cars Attributes
_car setFuel (random 0.50) + 0.10;
_car setDamage (random 0.25) + 0.50;

// position car
_car setPosATL [getpos _car select 0,getpos _car select 1,0.5];
_car setVelocity [0,0,0.1];
_car setDir (random 360);

if (count(configFile >> "CfgVehicles" >> (typeOf _car) >> "Turrets") > 0) then
{
	_car setVehicleAmmo (random 0.75) + 0.25;
};

//_car disableTIEquipment true;
[_car] call randomWeapons;

