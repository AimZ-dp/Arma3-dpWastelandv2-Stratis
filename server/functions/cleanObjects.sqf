//	@file Version: 1.0
//	@file Name: vehicleTestSpawn.sqf
//	@file Author: [404] Costlyy
//	@file Created: 20/11/2012 05:19
//	@file Args:

if(!X_Server) exitWith {};

diag_log "WASTELAND SERVER - Looking for hacked objects to clean up";

_objectTimeOut = 12;

while {true} do 
{
	_allVehicles = vehicles;
	{
		_check = _x getVariable ["newVehicle",0];
		_checkCount = _x getVariable ["newVehicleCount",0];
		if (_check != vChecksum) then {
			_checkCount = _checkCount + 1;
			 _x setVariable["newVehicleCount",_checkCount,true];
		};

		_vehicleType = Format["%1",typeOf _x];			
		if(_check != vChecksum and _checkCount >= _objectTimeOut) then  //and _vehicleType != "WeaponHolderSimulated"
		{
			diag_log format["CHECK HACKS - Found hacked objects %1", _vehicleType];
			
			//_pos = getPos _x;
			//_x setDamage 1; // if it can explode might as well damage the hacker
			//sleep 10;
			//for "_i" from 1 to 2 do 
			//{
			//	_bomb = "R_60mm_HE" createVehicle _pos;
			//	_bomb setVariable["newVehicle",vChecksum,true];
			//};
			//sleep 5;
			deleteVehicle _x;
		};
	} forEach _allVehicles; 
	
	
	{ 
		_bodyCount = _x getVariable ["newBodyCount",0];
		_bodyCount = _bodyCount + 1;
		_x setVariable["newBodyCount",_bodyCount,true];
		
		_bodyType = Format["%1",typeOf _x];	
		if(_bodyCount >= _objectTimeOut) then  
		{
			diag_log format["CHECK HACKS - Found body objects %1", _bodyType];
			deleteVehicle _x;
		};
	} forEach allDead;
	
	sleep 10;
};