//	@file Version: 1.0
//	@file Name: cleanObjects.sqf
//	@file Author: AimZ =(dp)=
//	@file Created: 24/06/2013
//	@file Args:

if(!isDedicated) exitWith {};

diag_log format["*** cleanDead Started ***"];

private ["_bodyCount","_bodyType"];

_bodyCount = 0;
/*
while {true} do 
{
	{ 
		if (!(isNull _x)) then 
		{
			_bodyCount = _x getVariable ["newBodyCount",0];
			_timeout = _x getVariable ["timeout", time + 480];

			if (_bodyCount == 0) then 
			{
				diag_log format["TAG dead %1",typeOf _x];
				_bodyCount = _bodyCount + 1;
				_x setVariable ["newBodyCount",_bodyCount,true];
				_x setVariable ["timeout", time + 480, true];
			};
			if(time > _timeout) then  
			{
				deleteVehicle _x;
			};
		};
	} forEach allDeadMen;
	
	//sleep objectCheckDelay;
	sleep 0.1;
};
*/
diag_log format["*** cleanDead Finished ***"];