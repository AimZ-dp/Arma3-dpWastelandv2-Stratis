//	@file Version: 1.0
//	@file Name: cleanObjects.sqf
//	@file Author: AimZ =(dp)=
//	@file Created: 24/06/2013
//	@file Args:

if(!isDedicated) exitWith {};

diag_log format["*** cleanObjects Started ***"];

private ["_vehicleType","_check","_checkCount","_bodyCount","_timeout","_position"];

_check = 0;
_checkCount = 0;

while {true} do 
{
	_allMObjects = allMissionObjects "All"; 
	{
		if (!(isNull _x)) then 
		{
			_x setVariable ["last_timeout", time, true];
		
			_mapbuilding = _x getVariable ["mapbuilding",false];
			if(!(_x isKindOf "CAManBase") and !(_x isKindOf "Logic") and !((_x isKindOf "Wall" || _x isKindOf "House") && _mapbuilding)) then 
			{
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
					_x removeAllEventHandlers "GetIn";
					_x removeAllEventHandlers "killed";
					_x removeAllEventHandlers "HandleDamage";
					deleteVehicle _x;
				};
			};
			/*
			else
			{
				if (_x isKindOf "CAManBase" && !(alive _x) && !(isPlayer _x)) then
				{
					diag_log format["Found Dead Body..."];

					_bodyCount = _x getVariable ["newBodyCount",0];
					_timeout = _x getVariable ["timeout", time + 480];

					// make sure things stay above ground...
					_position = getPosATL _x;
					_position set [2, 0];
					_x setPosATL _position;
					
					if (_bodyCount == 0) then 
					{
						diag_log format["Dead Body Count..."];
						_bodyCount = _bodyCount + 1;
						_x setVariable ["newBodyCount",_bodyCount,true];
						_x setVariable ["timeout", time + 480, true];
					};
					if(time > _timeout) then  
					{
						diag_log format["Dead Body Delete..."];
						_x removeAllEventHandlers "GetIn";
						_x removeAllEventHandlers "killed";
						_x removeAllEventHandlers "HandleDamage";
						deleteVehicle _x;
					};
				};
			};
			*/
		};
		sleep 1;
	} forEach _allMObjects; 
	sleep 1;
};

diag_log format["*** cleanObjects Finished ***"];