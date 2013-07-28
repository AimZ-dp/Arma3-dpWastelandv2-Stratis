if (!isServer) exitWith {};

private ["_unit","_delay","_deserted","_position","_type","_damage","_alive","_curtime","_timeout","_respawn","_num","_objectDistance"];

// Define variables

_delay = burningTimeLimit;
_deserted = desertedTimeLimit;

while {true} do
{
	{
		_unit = _x;
		_type = typeOf _unit;
		_status = _unit getVariable ["status", "unknown"];
		
		switch (_status) do
		{
			case "alive": 
			{
				_damage = damage _unit;	
				_alive = {alive _x} count crew _unit;
				_curtime = time;
				_timeout = _unit getVariable ["timeout", -1];
				
				if (_timeout > -1) then 
				{
					if (_alive == 0 and _damage <= 0.90) then 
					{
						if (_curtime > _timeout) then
						{
							_unit setVariable ["status", "respawn", true];
						};
					}
					else
					{
						_unit setVariable ["timeout", (time + desertedTimeLimit + random maxRandomTimeLimit), true];
					};
				};

				// check for badly broken
				if ((_damage > 0.90 and _alive == 0) or !alive _unit) then 
				{
					_unit setDamage 1;
					_unit setVariable ["status", "burn", true];
					_unit setVariable ["timeout", (time + burningTimeLimit), true];
				};
			}; 
			case "burn": 
			{
				_curtime = time;
				_timeout = _unit getVariable ["timeout", (time + burningTimeLimit)];

				if (_curtime > _timeout) then
				{
					_unit setVariable ["status", "respawn", true];
					deleteVehicle _unit;	
				};
			}; 
			case "respawn": 
			{
				if (_unit isKindOf "Car") then
				{
					deleteVehicle _unit;
					
					_position = getMarkerPos format ["Spawn_%1", floor (random 118) + 1];					
					_num = floor (random 100);
					if (_num < 100) then {_type = 0;};
					if (_num < 50) then {_type = 1;};
					
					[_position, _type] spawn vehicleCreation;
				};
				if (_unit isKindOf "ReammoBox_F") then
				{
					deleteVehicle _unit;
					
					_position = getMarkerPos format ["Spawn_%1", floor (random 118) + 1];					
					_type = floor (random (count ammoBoxes));
					
					[_position, _type] spawn boxCreation;
				};
				if (_unit isKindOf "Helicopter") then
				{
					deleteVehicle _unit;
					
					_position = getMarkerPos format ["heliSpawn_%1", floor (random 24) + 1];					
					_type = floor (random (count militaryHelis));
					
					[_position, _type] call HeliCreation;
				};
				if (_unit in survivalObjectList) then
				{
					deleteVehicle _unit;
					
					_position = getMarkerPos format ["Spawn_%1", floor (random 118) + 1];	
					_type = floor (random (count survivalObjectList));
					[_position, _type] call survivalObjectCreation;	
				};
			}; 
			case "unknown": 
			{
				//diag_log format["SPAWN - unknown state for vehicle: %1", _type];
			}; 
		};
		
	} foreach vehicles;

	sleep 5;
};