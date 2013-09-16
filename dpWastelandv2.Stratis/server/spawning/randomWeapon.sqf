//	@file Version: 1.0
//	@file Name: randomWeapon.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args: Element 0 = Vehicle.

if(!isDedicated) exitWith {};

//diag_log format["*** randomWeapon Started ***"];

private ["_car","_additionArray","_weapon","_magArray","_mag","_additionOne","_additionArray","_additionTwo","_additionThree"];

//Grabs carname from array
_car = _this select 0;
_additionArray = vehicleAddition;
if (random 1 < 0.75) then { _car addWeaponCargoGlobal ["Binocular", 1]};
//if (random 1 < 0.15) then { _car addItemCargoGlobal ["NVGoggles", 1]};

//Get Random Gun From randomWeapons Array.
_weapon = vehicleWeapons select floor(random (count vehicleWeapons));
_magArray = getArray (configFile >> "Cfgweapons" >> _weapon >> "magazines");
_mag = _magArray select floor (random (count _magArray));

_additionOne = _additionArray select floor(random (count _additionArray));
_additionArray = _additionArray - [_additionOne];
_additionTwo = _additionArray select floor(random (count _additionArray));
_additionArray = _additionArray - [_additionTwo];
_additionThree = vehicleAddition2 select floor(random (count vehicleAddition2));

//Add guns and magazines, note the Global at the end..
_car addMagazineCargoGlobal [_mag,4];
_car addWeaponCargoGlobal [_weapon,1];
_car addItemCargoGlobal [_additionOne,2];
_car addItemCargoGlobal [_additionTwo,2];
_car addMagazineCargoGlobal [_additionThree,2];

//diag_log format["*** randomWeapon Finished ***"];