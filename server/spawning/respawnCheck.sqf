if (!isServer) exitWith {};

diag_log format["****** repawnCheck Started ******"];

private ["_unit","_delay","_deserted","_position","_type","_damage","_alive","_curtime","_timeout","_respawn","_num","_objectDistance"];

// Define variables

_delay = burningTimeLimit;
_deserted = desertedTimeLimit;

while {true} do
{
	{
		if (!(isNull _x)) then
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
					};
				}; 
				case "respawn": 
				{
					_respawn = _unit getVariable ["respawn", false];
					if (!_respawn) then
					{
						deleteVehicle _unit;
					}
					else
					{
						if (_unit isKindOf "Car") then
						{
							deleteVehicle _unit;
							
							_position = getMarkerPos format ["Spawn_%1", floor (random 118) + 1];					
							_type = floor (random 2);
							switch (_type) do 
							{ 
							  case 0: {[_position, civilianVehicles, true, 50, true] call vehicleCreation;}; 
							  case 1: {[_position, militaryVehicles, true, 50, true] call vehicleCreation;}; 
							  case 2: {[_position, armedMilitaryVehicles, true, 50, true] call vehicleCreation;}; 
							};
						};
						if (_unit isKindOf "ReammoBox_F") then
						{
							deleteVehicle _unit;
							
							_position = getMarkerPos format ["Town_%1", floor (random 24) + 1];					
							[_position, ammoBoxes, true, 20, true] call boxCreation;	
						};
						if (_unit isKindOf "Helicopter") then
						{
							deleteVehicle _unit;
							
							_position = getMarkerPos format ["heliSpawn_%1", floor (random 24) + 1];			
							[_position, militaryHelis, true, 50, true] call HeliCreation;	
						};
						if ((typeof _unit) in survivalObjectList) then
						{
							deleteVehicle _unit;
							
							_position = getMarkerPos format ["Town_%1", floor (random 24) + 1];	
							[_position, survivalObjectList, true, 50, true] call survivalObjectCreation;	
						};
					};
				}; 
				case "unknown": 
				{
					//diag_log format["SPAWN - unknown state for vehicle: %1", _type];
				}; 
			};
		};
	} foreach vehicles;

	sleep 5;
};

diag_log format["****** repawnCheck Finished ******"];
