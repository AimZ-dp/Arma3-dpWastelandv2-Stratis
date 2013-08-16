
private ["_class","_position"];

_data = _this select 0;

_class = _data select 0;
_position = _data select 1;
_player = _data select 2;

_object = [_position, _class, false, 15, false] call baseObjectCreation;	



