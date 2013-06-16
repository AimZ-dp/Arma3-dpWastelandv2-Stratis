
//	@file Version: 1.0
//	@file Name: objectCreation.sqf
//	@file Author: [404] Deadbeat
//	@file Created: DD/MM/YYYY HH:MM
//	@file Args:

if(!X_Server) exitWith {};

private ["_objtype","_obj","_type","_pos"];
_type = _this select 1;
_pos = _this select 0;

_objtype = objectList select _type;

_obj = createVehicle [_objtype,_pos,[], 10, "NONE"]; 
_obj setVariable["newVehicle",vChecksum,true];
[_obj, 10, desertedTimeLimit] execVM "server\spawning\object.sqf"; 

// Set Attributes
if(_objtype == "Land_CanisterPlastic_F") then 
{
    _obj setVariable["water",20,true];
};
if(_objtype == "Land_Sacks_goods_F") then 
{
    _obj setVariable["food",20,true];
};

// position
_obj setPosATL [getpos _obj select 0,getpos _obj select 1,0];
//_obj setVelocity [0,0,0];
_obj setDir (random 360);


