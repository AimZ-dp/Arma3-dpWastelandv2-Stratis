//	@file Version: 1.0
//	@file Name: cleanObjects.sqf
//	@file Author: AimZ =(dp)=
//	@file Created: 24/06/2013
//	@file Args:

if(!isDedicated) exitWith {};

diag_log format["*** cleanObjects Started ***"];

private ["_vehicleType","_check","_checkCount"];

_check = 0;
_checkCount = 0;

while {true} do 
{
	_allMObjects = allMissionObjects "All"; 
	diag_log format["object count=%1", count _allMObjects];
	
	{
		if (!(isNull _x)) then 
		{
			diag_log format["%1",typeOf _x];
			
			//if(!(_x isKindOf "Civilian") and !(_x isKindOf "SoldierWB") and !(_x isKindOf "CAManBase") 
			//	and !(_x isKindOf "SoldierEB") and !(_x isKindOf "Logic")) then 
			if(!(_x isKindOf "CAManBase") and !(_x isKindOf "Logic")) then 
			{
				//diag_log format["we are in..."];
				
				_check = _x getVariable ["newVehicle",0];
				_checkCount = _x getVariable ["newVehicleCount",0];
				_timeout = _x getVariable ["timeout", time + 240];	
				
				if (_check != vChecksum && _checkCount == 0) then 
				{
					_checkCount = _checkCount + 1;
					_x setVariable ["newVehicleCount",_checkCount,true];
					_x setVariable ["timeout", time + 240, true];
				};
			
				if(_check != vChecksum and time > _timeout) then
				{
					deleteVehicle _x;
				};
			}
			else
			{
				if (_x isKindOf "CAManBase" && !(alive _x) && !(isPlayer _x)) then
				{
					_bodyCount = _x getVariable ["newBodyCount",0];
					_timeout = _x getVariable ["timeout", time + 480];

					if (_bodyCount == 0) then 
					{
						_bodyCount = _bodyCount + 1;
						_x setVariable ["newBodyCount",_bodyCount,true];
						_x setVariable ["timeout", time + 480, true];
					};
					if(time > _timeout) then  
					{
						deleteVehicle _x;
					};
				};
			};
		};
		sleep 1;
	} forEach _allMObjects; 
	
	//sleep objectCheckDelay;
	sleep 1;
};

diag_log format["*** cleanObjects Finished ***"];