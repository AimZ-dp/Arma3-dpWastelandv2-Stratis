//	@file Version: 1.0
//	@file Name: cleanObjects.sqf
//	@file Author: AimZ =(dp)=
//	@file Created: 24/06/2013
//	@file Args:

if(!X_Server) exitWith {};

private ["_allMObjects","_vehicleType","_check","_checkCount","_bodyCount","_bodyType"];

diag_log "WASTELAND SERVER - Looking for removeable objects to clean up";

_check = 0;
_checkCount = 0;
_bodyCount = 0;

while {true} do 
{
	_allMObjects = allMissionObjects "All";
	{
		_vehicleType = Format["%1",typeOf _x];
	
		if(!(_vehicleType isKindOf "Civilian") and !(_vehicleType isKindOf "SoldierWB") 
			and !(_vehicleType isKindOf "SoldierEB") and !(_vehicleType isKindOf "Logic")) then 
		{		
			_check = _x getVariable ["newVehicle",0];
			_checkCount = _x getVariable ["newVehicleCount",0];
			
			if (_check != vChecksum) then 
			{
				_checkCount = _checkCount + 1;
				_x setVariable ["newVehicleCount",_checkCount,true];
			};
		
			if(_check != vChecksum and _checkCount >= objectTimeOut) then
			{
				deleteVehicle _x;
			};
		};
	} forEach _allMObjects; 

	{ 
		_bodyCount = _x getVariable ["newBodyCount",0];
		_bodyCount = _bodyCount + 1;
		_x setVariable["newBodyCount",_bodyCount,true];
		
		_bodyType = Format["%1",typeOf _x];	
		if(_bodyCount >= objectTimeOut) then  
		{
			deleteVehicle _x;
		};
	} forEach allDead;
	
	sleep objectCheckDelay;
};