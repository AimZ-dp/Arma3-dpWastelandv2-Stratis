//	@file Version: 1.0
//	@file Name: vehicleTestSpawn.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

private ["_allMObjects","_vehicleType","_check","_checkCount","_bodyCount","_bodyType"];

diag_log "WASTELAND SERVER - Looking for removeable objects to clean up";

while {true} do 
{
	_allMObjects = allMissionObjects "All";
	{
		_vehicleType = Format["%1",typeOf _x];
		if (DEBUG_MESSAGES) then {diag_log format["CHECK DELETE - objects %1", _vehicleType];};
	
		if(!(_vehicleType isKindOf "Civilian") and !(_vehicleType isKindOf "SoldierWB") 
			and !(_vehicleType isKindOf "SoldierEB") and !(_vehicleType isKindOf "Logic")) then 
		{		
			_check = _x getVariable ["newVehicle",0];
			_checkCount = _x getVariable ["newVehicleCount",0];
			if (DEBUG_MESSAGES) then {diag_log format["CHECK DELETE - objects %1, check %2, sum %3", _vehicleType, _check, vChecksum];};
			
			if (_check != vChecksum) then 
			{
				_checkCount = _checkCount + 1;
				if (DEBUG_MESSAGES) then {diag_log format["CHECK DELETE - objects %1, count %2", _vehicleType, _checkCount];};
				_x setVariable ["newVehicleCount",_checkCount,true];
			};
		
			if(_check != vChecksum and _checkCount >= objectTimeOut) then
			{
				diag_log format["CHECK DELETE - Found removeable objects %1", _vehicleType];
				deleteVehicle _x;
			};
		};
	} forEach _allMObjects; //entities "All"; // vehicles; 

	{ 
		_bodyCount = _x getVariable ["newBodyCount",0];
		_bodyCount = _bodyCount + 1;
		_x setVariable["newBodyCount",_bodyCount,true];
		
		_bodyType = Format["%1",typeOf _x];	
		if(_bodyCount >= objectTimeOut) then  
		{
			diag_log format["CHECK DELETE - Found body objects %1", _bodyType];
			deleteVehicle _x;
		};
	} forEach allDead;
	
	sleep objectCheckDelay;
};