//	@file Version: 1.0
//	@file Name: vehicleTestSpawn.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

diag_log "WASTELAND SERVER - Looking for hacked objects to clean up";

while {true} do 
{
	_allVehicles = vehicles;
	{
		_check = _x getVariable ["newVehicle",0];
		_checkCount = _x getVariable ["newVehicleCount",0];
		if (_check != vChecksum && _checkCount < 2) then {
			_checkCount = _checkCount + 1;
			 _x setVariable["newVehicleCount",_checkCount,true];
		};

		_vehicleType = Format["%1",typeOf _x];			
		if(_check != vChecksum and _checkCount > 1 and _vehicleType != "WeaponHolderSimulated") then 
		{
			diag_log format["CHECK HACKS - Found hacked objects %1", _vehicleType];
			
			_pos = getPos _x;
			
			_x setDamage 1; // if it can explode might as well damage the hacker
			
			sleep 10;
			
			for "_i" from 1 to 2 do 
			{
				_bomb = "R_60mm_HE" createVehicle _pos;
				_bomb setVariable["newVehicle",vChecksum,true];
			};
			
			sleep 5;
			
			deleteVehicle _x;
		};
	} forEach _allVehicles; 
	
	sleep 10;
};