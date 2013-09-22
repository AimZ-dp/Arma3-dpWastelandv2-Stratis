//	@file Version: 1.0
//	@file Name: cleanObjects.sqf
//	@file Author: AimZ =(dp)=
//	@file Created: 24/06/2013
//	@file Args:

if(!isDedicated) exitWith {};

diag_log format["*** cleanDead Started ***"];

private ["_bodyCount","_bodyType"];

_bodyCount = 0;

while {true} do 
{
	{ 
		if (!(isNull _x)) then 
		{
			if (_x isKindOf "CAManBase" && !(alive _x) && !(isPlayer _x)) then
			{
				_bodyCount = _x getVariable ["newBodyCount",0];
				_timeout = _x getVariable ["timeout", time + 300];
				//_bodyPos = _x getVariable ["bodyPos", getPosATL _x];
				
				_x setVariable ["last_timeout", time, true];
				
				// initialise the body check..
				if (_bodyCount == 0) then 
				{
					_bodyCount = _bodyCount + 1;
					_x setVariable ["newBodyCount",_bodyCount,true];
					_x setVariable ["timeout", time + 300, true];
					//_x setVariable ["bodyPos",_bodyPos,true];
				};
				
				// make sure things stay above ground...
				/*
				_stillMoving = false;
				_vel = velocity _x;
				{
					if (_x > 0.01) then {_stillMoving = true;}; 
				} foreach _vel;
				if (!_stillMoving) then
				{
					_x setVariable ["bodyPos",_bodyPos,true];
				};
				*/
				//_x setVelocity [0,0,0];
				//_x setPosATL _bodyPos;
				_bodyPos = getPos player;
				_bodyPos set [2, 0.1];
				_x setPosATL _bodyPos; 
				
				// Clean up time...
				if(time > _timeout) then  
				{
					_x removeAllEventHandlers "GetIn";
					_x removeAllEventHandlers "killed";
					_x removeAllEventHandlers "HandleDamage";
					deleteVehicle _x;
				};
			};
		};
		
		sleep 0.1;
	} forEach allDeadMen;

	sleep 1;
};

diag_log format["*** cleanDead Finished ***"];