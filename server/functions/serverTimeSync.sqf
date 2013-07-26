//	@file Version: 1.1
//	@file Name: serverTimeSync.sqf
//	@file Author: [404] Deadbeat, AimZ =(dp)=
//	@file Created: 20/11/2012 05:19

if(!X_Server) exitWith {};

private ["_dateStamp","_hours","_minutes","_prevMinutes","_prevHours"];

_dateStamp = Date;
currentDate = _dateStamp;
publicVariable "currentDate";
_prevHours = _dateStamp select 3;
_prevMinutes = _dateStamp select 4;


while{true} do
{	
	_dateStamp = Date;
	_hours = _dateStamp select 3;
	_minutes = _dateStamp select 4;

	if (_minutes - _prevMinutes > 15 || _hours != _prevHours) then
	{
		currentDate = _dateStamp;
		publicVariable "currentDate";
		
		_prevMinutes = _minutes;
		_prevHours = _hours;
	};
	
	if (_hours > 18 && _minutes > 29) then 
	{
		_hours = 4;
		_minutes = 30;
		_dateStamp set [3, _hours];
		_dateStamp set [4, _minutes];
		setDate _dateStamp;
		
		currentDate = _dateStamp;
		publicVariable "currentDate";
	};
	
	sleep 0.1;
};