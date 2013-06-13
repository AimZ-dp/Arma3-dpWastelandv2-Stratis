
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
[_car] spawn fn_vehicleInit;  
_handle = [_car, 60, 120, 0, false] execVM "server\functions\vehicle.sqf"; 

// add checksum to detect hacked vehicles
_car setVariable["newVehicle",vChecksum,true];

//Clear Cars Inventory
clearMagazineCargoGlobal _car;
clearWeaponCargoGlobal _car;
	
//Set Cars Attributes
_car setFuel (0.50);
_car setDamage (random 0.5) + 0.5;
_car setDir (random 360);
if (_type == 1) then {
    _car setVehicleAmmo (random 0.90);
	_car disableTIEquipment true;
    [_car] call randomWeapons;

	//Set original posistion then add to vehicle array
	_car setVariable["newVehicle",1,true];
    _car setPosATL [getpos _car select 0,getpos _car select 1,0];
	_car setVelocity [0,0,0.1];
};
_car disableTIEquipment true;
[_car] call randomWeapons;

// position car
_car setPosATL [getpos _car select 0,getpos _car select 1,1];
_car setVelocity [0,0,0];
