// moved to respawnCheck

// collect all debug info to draw...
while {true} do
{
	debugArray = [];
	{
		_timeOut = _x getVariable ["timeout", -1];
		_status = _x getVariable ["status", "unknown"];
		_objectPos = visiblePosition _x;
		_objectDistance = _objectPos distance player;
		_target = cursorTarget;
		if (_target == _x && _timeOut > -1 && _objectDistance <= 100 && _status == "alive") then
		{
			debugArray set [count debugArray, _x];
		};
	} foreach vehicles;	
	
	sleep 2;
};
