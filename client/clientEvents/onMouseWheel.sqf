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
	sleep 1;
};

_vehiclePlayer removeaction playerMenuId;
		
