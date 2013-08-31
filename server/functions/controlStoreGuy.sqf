/*
if(!isDedicated) exitWith {};

private ["_guy","_location","_position"];

_guy = _this select 0;
_location = _this select 1;

//_guy disableAI 'MOVE'; _guy DisableAI 'ANIM'; _guy disableAI 'FSM'; 

while {true} do 
{
	_guy moveTo (getMarkerPos _location);

	sleep 10;
};
*/