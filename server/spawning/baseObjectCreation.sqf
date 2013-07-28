
//	@file Version: 1.0
//	@file Name: objectCreation.sqf
//	@file Author: [404] Deadbeat
//	@file Created: DD/MM/YYYY HH:MM
//	@file Args:

if(!X_Server) exitWith {};

private ["_objtype","_obj","_type","_pos"];
_type = _this select 1;
_pos = _this select 0;

_objtype = baseObjectList select _type;

_obj = createVehicle [_objtype,_pos,[], 50, "NONE"]; 
_obj setVariable["newVehicle",vChecksum,true];

// _obj allowDamage false;  // run on local machines
_obj addEventHandler ["HandleDamage", {}]; // might need to use addMPEventHandler.

// Set Attributes
_obj setVariable["R3F_LOG_disabled",false];

// position
//_obj setPosATL [getpos _obj select 0,getpos _obj select 1,0];
//_obj setVelocity [0,0,-0.1];
_obj setDir (random 360);


