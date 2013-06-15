
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
  case 0: {_cartype = civilianVehicles select (random (count civilianVehicles - 1));}; 
  case 1: {_cartype = militaryVehicles select (random (count militaryVehicles - 1));}; 
  case 2: {_cartype = armedMilitaryVehicles select (random (count armedMilitaryVehicles - 1));}; 
};

_car = createVehicle [_cartype,_pos,[], 30,"NONE"];
_car setVariable["newVehicle",vChecksum,true];
[_car, burningTimeLimit, desertedTimeLimit, 0, false] execVM "server\spawning\vehicle.sqf"; 

//Clear Cars Inventory
clearMagazineCargoGlobal _car;
clearWeaponCargoGlobal _car;
	
//Set Cars Attributes
_car setFuel (0.50);
_car setDamage (random 0.25) + 0.5;

// position car
_car setPosATL [getpos _car select 0,getpos _car select 1,0.5];
_car setVelocity [0,0,0];
_car setDir (random 360);

if (_type == 1) then {
    _car setVehicleAmmo (random 0.90);
	_car disableTIEquipment true;
    [_car] call randomWeapons;
};

_car disableTIEquipment true;
[_car] call randomWeapons;

