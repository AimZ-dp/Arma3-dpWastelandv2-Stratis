if(!isDedicated) exitWith {};

private ["_guy","_location","_position"];

_guy = _this select 0;
_location = _this select 1;

// get the position of the marker
_guyObject = objectFromNetId _guy;
_position = getMarkerPos _location;

//_guy disableAI 'MOVE'; _guy DisableAI 'ANIM'; _guy disableAI 'FSM'; 

while {true} do 
{
	_guyObject setPosATL _position;

	sleep 60;
};
