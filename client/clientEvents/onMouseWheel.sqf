if (isServer) exitWith {};  

private ["_vehiclePlayer"];

_vehiclePlayer = vehicle player;
playerMenuId = _vehiclePlayer addAction [format ["<t color='#BE6300'>%1</t>", "Player Menu"], "client\systems\playerMenu\init.sqf",[],-10,false,false,"","local player"];	

while {alive player} do {
	if (vehicle player != _vehiclePlayer) then {
		_vehiclePlayer removeaction playerMenuId;
		_vehiclePlayer = vehicle player;
		playerMenuId = _vehiclePlayer addAction [format ["<t color='#BE6300'>%1</t>", "Player Menu"], "client\systems\playerMenu\init.sqf",[],-10,false,false,"","local player"];	
	};
	sleep 0.1;
};

/*
terminate playerMenuHandle;
playerMenuHandle = [] spawn 
{
	waituntil {!isnull player};

	private ["_vehiclePlayer"];
	
	while {isAlive player} do 
	{
		waituntil {vehicle player == player};
		if (!isnil "_veh") then {_veh removeaction playerMenuId};
		playerMenuId = player addAction [format ["<t color='#BE6300'>%1</t>", "Player Menu"], "client\systems\playerMenu\init.sqf",[],-10,false,false,"","local player"];
		waituntil {vehicle player != player};
		player removeaction playerMenuId;
		_veh = vehicle player;
		playerMenuId = _veh addAction [format ["<t color='#BE6300'>%1</t>", "Player Menu"], "client\systems\playerMenu\init.sqf",[],-10,false,false,"","local player"];
	};
};
*/


